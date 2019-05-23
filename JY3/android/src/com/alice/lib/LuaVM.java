package com.alice.lib;

public class LuaVM
{
    public static native int call(int luaFunctionId, String value);
    public static native int callGlobal(String luaFunctionName, String value);
    public static native int ref(int luaFunctionId);
    public static native int unref(int luaFunctionId);
}
