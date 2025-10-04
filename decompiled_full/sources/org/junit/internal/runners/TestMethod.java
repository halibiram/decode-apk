package org.junit.internal.runners;

import java.lang.reflect.Method;
import java.util.List;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

@Deprecated
/* loaded from: classes3.dex */
public class TestMethod {
    private final Method method;
    private TestClass testClass;

    public TestMethod(Method method, TestClass testClass) {
        this.method = method;
        this.testClass = testClass;
    }

    public boolean expectsException() {
        if (getExpectedException() != null) {
            return true;
        }
        return false;
    }

    public List<Method> getAfters() {
        return this.testClass.getAnnotatedMethods(After.class);
    }

    public List<Method> getBefores() {
        return this.testClass.getAnnotatedMethods(Before.class);
    }

    public Class<? extends Throwable> getExpectedException() {
        Test test = (Test) this.method.getAnnotation(Test.class);
        if (test != null && test.expected() != Test.None.class) {
            return test.expected();
        }
        return null;
    }

    public long getTimeout() {
        Test test = (Test) this.method.getAnnotation(Test.class);
        if (test == null) {
            return 0L;
        }
        return test.timeout();
    }

    public void invoke(Object obj) {
        this.method.invoke(obj, null);
    }

    public boolean isIgnored() {
        if (this.method.getAnnotation(Ignore.class) != null) {
            return true;
        }
        return false;
    }

    public boolean isUnexpected(Throwable th) {
        return !getExpectedException().isAssignableFrom(th.getClass());
    }
}
