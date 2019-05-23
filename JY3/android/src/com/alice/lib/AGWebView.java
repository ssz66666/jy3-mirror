package com.alice.lib;

import java.util.HashMap;
import java.util.Map;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;


public class AGWebView {

	private static Activity sActivityInstance;
	private static LinearLayout sWebLayout;
	private static WebView sWebView;
	
	

	public static void init(final Activity activity) {
		if (sActivityInstance == null && activity != null) {
			sActivityInstance = activity;
			sWebLayout = new LinearLayout(sActivityInstance);
			sActivityInstance.getWindow().addContentView(sWebLayout, new LayoutParams(
					LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT));
			setBackgroundColor(0x00);
		}
	}

	public static void setBackgroundColor(final int color) {
		Log.e("WebView", "setBackgroundColor " + color);
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				if (sWebView != null) {
					sWebView.setBackgroundColor(color);
				}
			}
		});
	}

	public static void gotoUrl(final String urlStr) {
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				try {
					final Uri uri = Uri.parse(urlStr);
					Intent intent = new Intent(Intent.ACTION_VIEW, uri);
					sActivityInstance.startActivity(intent);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});

	}

	public static void setBackgroundResource(final int resid) {
		Log.e("WebView", "setBackgroundResource " + resid);
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				if (sWebView != null) {
					sWebView.setBackgroundResource(resid);
				}
			}
		});
	}

	public static void addWebView(final int x, final int y, final int width,
			final int height) {
		Log.e("WebView", String.format(
				"addWebView x=%d, y=%d, width=%d, height=%d", x, y, width,
				height));

		sActivityInstance.runOnUiThread(new Runnable() {
			@SuppressLint("SetJavaScriptEnabled")
			public void run() {
				if (sWebView == null) {
					sWebView = new WebView(sActivityInstance);
					sWebLayout.addView(sWebView);

					LinearLayout.LayoutParams linearParams = (LinearLayout.LayoutParams) sWebView
							.getLayoutParams();
					linearParams.leftMargin = x;
					linearParams.topMargin = y;
					linearParams.width = width;
					linearParams.height = height;
					sWebView.setLayoutParams(linearParams);

					sWebView.getSettings().setCacheMode(
							WebSettings.LOAD_NO_CACHE);
					sWebView.getSettings().setAppCacheEnabled(false);
					sWebView.getSettings().setJavaScriptEnabled(true);
					sWebView.getSettings().setDefaultTextEncodingName("UTF-8");
					sWebView.setBackgroundColor(0);
					sWebView.setWebViewClient(new WebViewClient() {
						@Override
						public boolean shouldOverrideUrlLoading(WebView view,
								String url) {
							// 重写此方法表明点击网页里面的链接还是在当前的webview里跳转，不跳到浏览器那边
							view.loadUrl(url);
							return true;
						}

						@Override
						public void onReceivedSslError(WebView view,
								final SslErrorHandler handler,
								android.net.http.SslError error) {
							// 重写此方法可以让webview处理https请求
							final AlertDialog.Builder builder = new AlertDialog.Builder(sActivityInstance);
						    builder.setMessage("SSL ERROR");
						    builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
						        @Override
						        public void onClick(DialogInterface dialog, int which) {
						            handler.proceed();
						        }
						    });
						    builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
						        @Override
						        public void onClick(DialogInterface dialog, int which) {
						            handler.cancel();
						        }
						    });
						    final AlertDialog dialog = builder.create();
						    dialog.show();
						}
					});
				}
			}
		});

	}
	
	private static Map<String,String> header = new HashMap<String,String>();
	
	public static void addHeader(String k,String v){
		header.put(k,v);
	}

	public static void updateURL(final String url) {
		Log.e("WebView", "updateURL:" + url);
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				if (sWebView != null) {
					if(header.isEmpty())
						sWebView.loadUrl(url);
					else
						sWebView.loadUrl(url, header);
				}
			}
		});
	}

	public static void removeWebView() {
		Log.e("WebView", "removeWebView");
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				if (sWebView != null) {
					sWebView.getSettings().setJavaScriptEnabled(false);
					sWebLayout.removeView(sWebView);
					sWebView.destroy();
					sWebView = null;
					header.clear();
				}
			}
		});
	}

	/***
	 * 
	 Constant Value Description visible 0 Visible on screen; the default
	 * value. invisible 1 Not displayed, but taken into account during layout
	 * (space is left for it). gone 2 Completely hidden, as if the view had not
	 * been added.
	 * 
	 * @param visible
	 */
	public static void setVisible(final int visible) {
		sActivityInstance.runOnUiThread(new Runnable() {
			public void run() {
				if (sWebView != null) {
					sWebView.setVisibility(visible);
				}
			}
		});
	}
	
	public static boolean hasWebView(){
		return sWebView!=null;
	}
}
