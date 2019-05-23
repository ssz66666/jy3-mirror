
package com.alice.game;
import android.util.Log;

import com.alice.lib.LuaVM;

public class test
{	
	public static int add(final int num1,final int num2){
		return num1 + num2;
	}
	
	public static void callbackLua(final int luaFunc,final String ret){
		Log.i("ALICE",ret);
		LuaVM.call(luaFunc, "success");
		LuaVM.unref(luaFunc);
	}
}