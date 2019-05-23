package com.aoi.jy3;

import com.alice.lib.AGActivity;

import android.os.Bundle;
import android.content.res.Configuration;
import android.content.Intent;

public class MainActivity extends AGActivity {
	public static MainActivity sContext = null;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		sContext = this;
		super.onCreate(savedInstanceState);	
	}

	@Override
	protected void onRestart() {
		super.onRestart();
	};

	@Override
	protected void onPause() {
		super.onPause();
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	protected void onStop() {
		super.onStop();
	};

	@Override
	protected void onDestroy() {
		super.onDestroy();
	};

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
	};

	@Override
	protected void onNewIntent(Intent intent) {
		super.onNewIntent(intent);
	};

}