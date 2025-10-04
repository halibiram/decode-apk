package com.google.common.reflect;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class AbstractInvocationHandler implements InvocationHandler {
    private static final Object[] NO_ARGS = new Object[0];

    private static boolean isProxyOfSameInterfaces(Object obj, Class<?> cls) {
        if (!cls.isInstance(obj) && (!Proxy.isProxyClass(obj.getClass()) || !Arrays.equals(obj.getClass().getInterfaces(), cls.getInterfaces()))) {
            return false;
        }
        return true;
    }

    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @CheckForNull
    public abstract Object handleInvocation(Object obj, Method method, Object[] objArr);

    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    @CheckForNull
    public final Object invoke(Object obj, Method method, @CheckForNull Object[] objArr) {
        if (objArr == null) {
            objArr = NO_ARGS;
        }
        if (objArr.length == 0 && method.getName().equals(new ObfuscatedString(new long[]{-3160310991631377694L, -2239414836794697258L}).toString())) {
            return Integer.valueOf(hashCode());
        }
        boolean z = true;
        if (objArr.length == 1 && method.getName().equals(new ObfuscatedString(new long[]{-6700725514012239622L, 1637505979450535285L}).toString()) && method.getParameterTypes()[0] == Object.class) {
            Object obj2 = objArr[0];
            if (obj2 == null) {
                return Boolean.FALSE;
            }
            if (obj == obj2) {
                return Boolean.TRUE;
            }
            if (!isProxyOfSameInterfaces(obj2, obj.getClass()) || !equals(Proxy.getInvocationHandler(obj2))) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        if (objArr.length == 0 && method.getName().equals(new ObfuscatedString(new long[]{8249069136839640931L, 3143608795170921171L}).toString())) {
            return toString();
        }
        return handleInvocation(obj, method, objArr);
    }

    public String toString() {
        return super.toString();
    }
}
