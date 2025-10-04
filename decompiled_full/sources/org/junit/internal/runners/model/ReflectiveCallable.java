package org.junit.internal.runners.model;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public abstract class ReflectiveCallable {
    public Object run() {
        try {
            return runReflectiveCall();
        } catch (InvocationTargetException e) {
            throw e.getTargetException();
        }
    }

    public abstract Object runReflectiveCall();
}
