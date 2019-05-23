package com.alice.lib;

import android.util.Log;
import android.content.Context;
import android.content.res.AssetManager;

import android.opengl.GLSurfaceView;
import android.graphics.PixelFormat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;


class AGSurfaceView extends GLSurfaceView {
	final static int GLES_VER = 2;
	public AGSurfaceView(Context context) {
		super(context);
		if(GLES_VER == 2){
			setEGLContextFactory(new AGContextFactory());
		}
		setEGLConfigChooser(new AGConfigChooser());
		mRenderer = new AGRenderer();
		setRenderer(mRenderer);
	}

	public boolean onTouchEvent(final MotionEvent event) {
		if (event.getAction() == MotionEvent.ACTION_DOWN) {
			AGLib.nativeTouch(1, event.getX(), event.getY());
		}
		if (event.getAction() == MotionEvent.ACTION_UP) {
			AGLib.nativeTouch(2, event.getX(), event.getY());
		}
		if (event.getAction() == MotionEvent.ACTION_MOVE) {
			AGLib.nativeTouch(0, event.getX(), event.getY());
		}
		return true;
	}
	
	public 

	AGRenderer mRenderer;	
	
    private static void checkEglError(String prompt, EGL10 egl) {
        int error;
        while ((error = egl.eglGetError()) != EGL10.EGL_SUCCESS) {
            Log.e("Alice", String.format("%s: EGL error: 0x%x", prompt, error));
        }
    }
    
    private static class AGContextFactory implements GLSurfaceView.EGLContextFactory {
        private static int EGL_CONTEXT_CLIENT_VERSION = 0x3098;
        public EGLContext createContext(EGL10 egl, EGLDisplay display, EGLConfig eglConfig) {
            Log.i("Alice", "creating OpenGL ES 2.0 context");
            checkEglError("Before eglCreateContext", egl);
            int[] attrib_list = {EGL_CONTEXT_CLIENT_VERSION, 2, EGL10.EGL_NONE };
            EGLContext context = egl.eglCreateContext(display, eglConfig, EGL10.EGL_NO_CONTEXT, attrib_list);
            checkEglError("After eglCreateContext", egl);
            return context;
        }

        public void destroyContext(EGL10 egl, EGLDisplay display, EGLContext context) {
            egl.eglDestroyContext(display, context);
        }
    }

    
	private static class AGConfigChooser implements GLSurfaceView.EGLConfigChooser {

		public AGConfigChooser() {
		}
		private int[] mValue = new int[1];
		
		private static int EGL_OPENGL_ES2_BIT = 4;
		private static int[] s_configAttribs2 =
		{
		    EGL10.EGL_RED_SIZE, 4,
		    EGL10.EGL_GREEN_SIZE, 4,
		    EGL10.EGL_BLUE_SIZE, 4,
		    EGL10.EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
		    EGL10.EGL_NONE
		};
		private static int[] s_configAttribs1 =
		{
		    EGL10.EGL_RED_SIZE, 4,
		    EGL10.EGL_GREEN_SIZE, 4,
		    EGL10.EGL_BLUE_SIZE, 4,
		    EGL10.EGL_NONE
		};
		
		@Override
		public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {

			int[] num_config = new int[1];
			int[] configAttrib;
			if(AGSurfaceView.GLES_VER == 2){
				configAttrib = s_configAttribs2;
			}else{
				configAttrib = s_configAttribs1;
			}
			egl.eglChooseConfig(display, configAttrib, null, 0, num_config);

			int numConfigs = num_config[0];

			if (numConfigs <= 0) {
				throw new IllegalArgumentException("No configs match configSpec");
			}
			
			EGLConfig[] configs = new EGLConfig[numConfigs];
			egl.eglChooseConfig(display, configAttrib, configs, numConfigs, num_config);
			return chooseConfig(egl, display, configs);
		}
		
		public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs) {
		    for(EGLConfig config : configs) {
			int d = findConfigAttrib(egl, display, config, EGL10.EGL_DEPTH_SIZE, 0);
			int s = findConfigAttrib(egl, display, config,	EGL10.EGL_STENCIL_SIZE, 0);
			    
			if (d < 4 || s < 4)
			    continue;

			// We want an *exact* match for red/green/blue/alpha
			int r = findConfigAttrib(egl, display, config, EGL10.EGL_RED_SIZE, 0);
			int g = findConfigAttrib(egl, display, config, EGL10.EGL_GREEN_SIZE, 0);
			int b = findConfigAttrib(egl, display, config, EGL10.EGL_BLUE_SIZE, 0);
			//int a = findConfigAttrib(egl, display, config, EGL10.EGL_ALPHA_SIZE, 0);

			if (r < 4 ||g < 4 || b < 4)
			    continue;
			
			return config;
		    }
		    return null;
		}

		private int findConfigAttrib(EGL10 egl, EGLDisplay display,
			EGLConfig config, int attribute, int defaultValue) {

		    if (egl.eglGetConfigAttrib(display, config, attribute, mValue)) {
			return mValue[0];
		    }
		    return defaultValue;
		}
	}

	private class AGRenderer implements GLSurfaceView.Renderer {
		private long startTime = 0;
		public void onSurfaceCreated(GL10 gl, EGLConfig config) {
			Log.i("ALICE", "nativeInit1");
			AGLib.nativeInit((Context) AGLib.sContext, AGLib.assetManager);
		}

		public void onSurfaceChanged(GL10 gl, int w, int h) {
			// gl.glViewport(0, 0, w, h);
			AGLib.nativeResize(w, h);
		}

		public void onDrawFrame(GL10 gl) {
			if(startTime != 0){
				long endTime = System.currentTimeMillis();
				long dt = endTime - startTime;
				if (dt < 20)
				{
					try {
						Thread.sleep(20 - dt);
					}catch (InterruptedException e) {
						// Thread error
						e.printStackTrace();
					}
				}
			}				
			startTime = System.currentTimeMillis();
			AGLib.nativeRender();
		}
	}
}

