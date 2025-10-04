package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Reflection {
    private Reflection() {
    }

    public static String getPackageName(Class<?> cls) {
        return getPackageName(cls.getName());
    }

    public static void initialize(Class<?>... clsArr) {
        for (Class<?> cls : clsArr) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    public static <T> T newProxy(Class<T> cls, InvocationHandler invocationHandler) {
        Preconditions.checkNotNull(invocationHandler);
        Preconditions.checkArgument(cls.isInterface(), new ObfuscatedString(new long[]{2748690237623607251L, -6721306144803896467L, 5447061418325627669L, 5691713595563879339L}).toString(), cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static String getPackageName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? new ObfuscatedString(new long[]{4819367982211540477L}).toString() : str.substring(0, lastIndexOf);
    }
}
