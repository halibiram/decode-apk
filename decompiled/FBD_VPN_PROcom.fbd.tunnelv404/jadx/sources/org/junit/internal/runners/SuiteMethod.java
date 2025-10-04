package org.junit.internal.runners;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import junit.framework.Test;
import junit.runner.BaseTestRunner;

/* loaded from: classes3.dex */
public class SuiteMethod extends JUnit38ClassRunner {
    public SuiteMethod(Class<?> cls) {
        super(testFromSuiteMethod(cls));
    }

    public static Test testFromSuiteMethod(Class<?> cls) {
        try {
            Method method = cls.getMethod(BaseTestRunner.SUITE_METHODNAME, null);
            if (Modifier.isStatic(method.getModifiers())) {
                return (Test) method.invoke(null, null);
            }
            throw new Exception(cls.getName().concat(".suite() must be static"));
        } catch (InvocationTargetException e) {
            throw e.getCause();
        }
    }
}
