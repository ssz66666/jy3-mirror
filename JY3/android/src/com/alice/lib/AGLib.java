package com.alice.lib;

import android.os.Build;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.content.res.AssetManager;
import android.util.Log;
import android.provider.Settings.Secure;
import android.os.Environment;
import com.alice.lib.LuaVM;

import android.view.View;
import android.view.Gravity;
import android.widget.FrameLayout;
import android.view.ViewGroup;
import android.widget.TextView;
import android.view.KeyEvent;
import android.widget.TextView.OnEditorActionListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.text.InputType;
import android.view.inputmethod.EditorInfo;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.Editable;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.widget.LinearLayout;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.net.NetworkInterface;
import java.util.List;
import java.util.Collections;

import android.text.TextWatcher;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;

public class AGLib {
	static {
		System.loadLibrary("GAndroidApp");
	}
	
	public static native void nativeInit(Context ctx, AssetManager assetManager);

	public static native void nativeResize(int w, int h);

	public static native void nativeRender();

	public static native void nativeDone();

	public static native void nativeText(final int n, final String text);

	public static native void nativeBuffer(final int width, final int height,
			final byte[] pixels);
	
	public static native void nativeTouch(int n, float fX, float fY);
	
	public static native void nativeSignal(final int state);	
	
	public static AGActivity sContext = null;
	static AssetManager assetManager;
	private static String mMacString = null;
	private static String mTelephonyDeviceID = null;
	private static WifiManager mWifiManager = null;
	private static FrameLayout.LayoutParams mParams;
	private static EditText mEdit = null;
	public static LinearLayout mask = null;
	public static AlertDialog sDialog = null;
	
	public AGLib(AGActivity act) {
		sContext = act;
		
		assetManager = sContext.getAssets();
		try {
			TelephonyManager tm = (TelephonyManager) sContext.getSystemService(Context.TELEPHONY_SERVICE);
			mTelephonyDeviceID = tm.getDeviceId();
		} catch (Exception e) {
		}

		mEdit = new EditText(sContext);
		mEdit.setImeOptions(EditorInfo.IME_ACTION_GO);
        mEdit.setInputType(EditorInfo.TYPE_CLASS_TEXT);
        mEdit.setSingleLine(true);
		mParams = new FrameLayout.LayoutParams(
				FrameLayout.LayoutParams.WRAP_CONTENT,
				FrameLayout.LayoutParams.WRAP_CONTENT);
		mParams.topMargin = 0;
		mParams.gravity = Gravity.TOP | Gravity.CENTER_VERTICAL;
		mEdit.setOnEditorActionListener(new OnEditorActionListener() {
			@Override
			public boolean onEditorAction(TextView v, int actionId,
					KeyEvent event) {
				if (actionId == EditorInfo.IME_ACTION_DONE
						|| actionId == EditorInfo.IME_ACTION_SEND
						|| actionId == EditorInfo.IME_ACTION_SEARCH
						|| actionId == EditorInfo.IME_ACTION_GO) {
					final InputMethodManager imm = (InputMethodManager) sContext
							.getSystemService(Context.INPUT_METHOD_SERVICE);
					imm.hideSoftInputFromWindow(mEdit.getWindowToken(), 0);
					AGLib.nativeText(1, mEdit.getText().toString());
					((ViewGroup) mEdit.getParent()).removeView(mEdit);
					sContext.mGLView.requestFocus();
				}
				return false;
			}
		});

		mEdit.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                
            }
            public void afterTextChanged(Editable s) {              
				AGLib.nativeText(1, mEdit.getText().toString());
            }
        });
	}

	public static void luaCallBack(final int luafunc, final String value){
        sContext.mGLView.queueEvent(new Runnable() {
            @Override
            public void run() {
                LuaVM.call(luafunc, value);
                LuaVM.unref(luafunc);
            }
        });
    }

	public final static String getWritePath() {
		return sContext.getFilesDir().getAbsolutePath();
	}

	public final static String getExWritePath() {
		final String state = Environment.getExternalStorageState();
		if (state.equals(Environment.MEDIA_MOUNTED)) {// sd card is ready to us
			return Environment.getExternalStorageDirectory().getAbsolutePath();
		}
		return state;
	}

	public final static void openURL(final String url) {
		sContext.openURL(url);
	}
	
	public static void msgBox(final String title, final  String message){
		sContext.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				if(sDialog != null) {
					sDialog.setTitle(title);
					sDialog.setMessage(message);
					if(sDialog.isShowing() == false)
						sDialog.show();
				}
				else {
					AlertDialog.Builder builder = new AlertDialog.Builder(sContext);
					builder.setTitle(title);
					builder.setMessage(message);
					builder.setPositiveButton("OK", null);
					builder.setCancelable(false);
					sDialog = builder.create();
					sDialog.show();
				}
			}
		});
	}
	
	public final static void ShowKeyboard(final String text) {
		sContext.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				// sContext.getWindow().addContentView(mEdit,params);
				if (((ViewGroup) mEdit.getParent()) != null)
					((ViewGroup) mEdit.getParent()).removeView(mEdit);
				sContext.getWindow().addContentView(mEdit, mParams);
				mEdit.requestFocus();
				mEdit.setText(text);
				final InputMethodManager imm = (InputMethodManager) sContext
						.getSystemService(Context.INPUT_METHOD_SERVICE);
				imm.toggleSoftInput(InputMethodManager.SHOW_FORCED,
						InputMethodManager.HIDE_IMPLICIT_ONLY);
				imm.showSoftInput(mEdit, 0);
			}
		});
	}
	
	public final static String getMacAddress() {
		try {
			List<NetworkInterface> all = Collections.list(NetworkInterface.getNetworkInterfaces());
			for (NetworkInterface nif : all) {
				if (!nif.getName().equalsIgnoreCase("wlan0")) continue;
 
				byte[] macBytes = nif.getHardwareAddress();
				if (macBytes == null) {
					return "";
				}
 
				StringBuilder res1 = new StringBuilder();
				for (byte b : macBytes) {
					res1.append(String.format("%02X:", b));
				}
 
				if (res1.length() > 0) {
					res1.deleteCharAt(res1.length() - 1);
				}
				return res1.toString();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "";
	}

	public final static String getOldMacAddress() {
		try {
			mWifiManager = (WifiManager) sContext
					.getSystemService(Context.WIFI_SERVICE);
			mMacString = new String(mWifiManager.getConnectionInfo()
					.getMacAddress());
		} catch (Exception e) {
			/* no-op */
		}
		return mMacString;
	}

	public final static String getUniqeID() {
		return java.util.UUID.randomUUID().toString();
	}

	public final static String getTelephonyDeviceID() {
		return mTelephonyDeviceID;
	}

	public static String getOSVersion() {
		return "Android" + Build.VERSION.SDK_INT;
	}

	public final static String getAndroidID() {
		String androidID = Secure.getString(sContext.getContentResolver(),
				Secure.ANDROID_ID);
		androidID = ReplaceStrangeString(androidID);
		return androidID;
	}

	public final static String ReplaceStrangeString(String input) {
		input = input.replace(':', '#');
		input = input.replace('\n', '#');
		input = input.replace('"', '#');
		return input;
	}

	public static void quitGame() {
		android.os.Process.killProcess(android.os.Process.myPid());
	}

	public final static int RenderFont(final int glyph, final int grid,
			final int width, final int height, final int stroke) {
		byte[] ch = new byte[] { (byte) (glyph >>> 24), (byte) (glyph >>> 16),
				(byte) (glyph >>> 8), (byte) glyph };
		String str = new String(ch, Charset.forName("UTF-32BE"));
		// Log.i("RenderFont",str);
		float fSize = (float) height;
		fSize = fSize * 0.75f;
		final Paint paint = new Paint();
		paint.setColor(Color.WHITE);
		paint.setHinting(0);
		paint.clearShadowLayer();
		paint.setStyle(Paint.Style.FILL);
		paint.setTextSize(fSize);
		paint.setAntiAlias(true);
		paint.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.NORMAL));
		paint.setTextAlign(Align.LEFT);
		// paint.setARGB(fontTintA, fontTintR, fontTintG, fontTintB);

		final FontMetricsInt fm = paint.getFontMetricsInt();
		final int h = (int) Math.ceil(fm.bottom - fm.top);
		final int w = (int) Math.ceil(paint.measureText(str));
		if (w > 0 && h > 0) {
			final Bitmap bitmap = Bitmap.createBitmap(w, h,
					Bitmap.Config.ARGB_8888);
			final Canvas canvas = new Canvas(bitmap);
			canvas.drawARGB(0, 255, 255, 255);
			canvas.drawText(str, 0, -fm.top, paint);

			final byte[] pixels = new byte[w * h * 4];
			final ByteBuffer buf = ByteBuffer.wrap(pixels);
			buf.order(ByteOrder.nativeOrder());
			bitmap.copyPixelsToBuffer(buf);
			nativeBuffer(w, h, pixels);
		} else {
			nativeBuffer(0, 0, null);
		}

		return 0;// ( (w <<< 16) | (h & 0xffff));
	}

}
