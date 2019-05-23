package com.alice.lib;

import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.content.res.AssetManager;
import android.util.Log;
import android.view.View;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import android.net.Uri;

import android.content.Intent;

import static android.content.ContentValues.TAG;

public class AGActivity extends Activity {	
	public  void openURL(String url) {
		try {
			Log.i("ALICE", url);
			Intent i = new Intent(Intent.ACTION_VIEW);
			i.setData(Uri.parse(url));
			this.startActivity(i);
		} catch (Exception e) {
			e.printStackTrace();
			Log.i("ALICE", e.getMessage());
		}
	}	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		mGLView = new AGSurfaceView(this);
		mLib = new AGLib(this);
		setRequestedOrientation(6);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);
		setContentView(mGLView);

		AGWebView.init(this);
		hideBar();
	}

	@Override
	protected void onRestart() {
		super.onRestart();
		AGLib.nativeSignal(4);
	};

	@Override
	protected void onPause() {
		AGLib.nativeSignal(2);
		super.onPause();
		mGLView.onPause();
	}

	@Override
	protected void onResume() {
		super.onResume();
		mGLView.onResume();
		AGLib.nativeSignal(1);
	}

	@Override
	protected void onStop() {
		AGLib.nativeSignal(3);
		super.onStop();
	};

	@Override
	protected void onDestroy() {
		AGLib.nativeSignal(5);
		super.onDestroy();
	};


	public void onBackPressed() {
		AGLib.nativeSignal(6);
	}

	public void hideBar(){
		if (Build.VERSION.SDK_INT >= 19) {
			// use reflection to remove dependence of API level

			Class viewClass = View.class;

			try {
				final int SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION");
				final int SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN");
				final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_HIDE_NAVIGATION");
				final int SYSTEM_UI_FLAG_FULLSCREEN = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_FULLSCREEN");
				final int SYSTEM_UI_FLAG_IMMERSIVE_STICKY = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY");
				final int SYSTEM_UI_FLAG_LAYOUT_STABLE = ReflectionHelper.<Integer>getConstantValue(viewClass, "SYSTEM_UI_FLAG_LAYOUT_STABLE");

				// getWindow().getDecorView().setSystemUiVisibility();
				final Object[] parameters = new Object[]{SYSTEM_UI_FLAG_LAYOUT_STABLE
						| SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
						| SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
						| SYSTEM_UI_FLAG_HIDE_NAVIGATION // hide nav bar
						| SYSTEM_UI_FLAG_FULLSCREEN // hide status bar
						| SYSTEM_UI_FLAG_IMMERSIVE_STICKY};
				ReflectionHelper.<Void>invokeInstanceMethod(getWindow().getDecorView(),
						"setSystemUiVisibility",
						new Class[]{Integer.TYPE},
						parameters);
			} catch (NullPointerException e) {
				Log.e(TAG, "hideVirtualButton", e);
			}
		}
	}

	public GLSurfaceView mGLView;
	public AGLib mLib;

}
