package org.hamcrest.internal;

import defpackage.AbstractC0362x4440ab85;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class ReflectiveTypeFinder {
    private final int expectedNumberOfParameters;
    private final String methodName;
    private final int typedParameter;

    public ReflectiveTypeFinder(String str, int i, int i2) {
        this.methodName = str;
        this.expectedNumberOfParameters = i;
        this.typedParameter = i2;
    }

    public boolean canObtainExpectedTypeFrom(Method method) {
        if (method.getName().equals(this.methodName) && method.getParameterTypes().length == this.expectedNumberOfParameters && !method.isSynthetic()) {
            return true;
        }
        return false;
    }

    public Class<?> expectedTypeFrom(Method method) {
        return method.getParameterTypes()[this.typedParameter];
    }

    public Class<?> findExpectedType(Class<?> cls) {
        while (cls != Object.class) {
            for (Method method : cls.getDeclaredMethods()) {
                if (canObtainExpectedTypeFrom(method)) {
                    return expectedTypeFrom(method);
                }
            }
            cls = cls.getSuperclass();
        }
        throw new Error(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder("Cannot determine correct type for "), this.methodName, "() method."));
    }
}
