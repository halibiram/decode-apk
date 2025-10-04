package junit.framework;

import org.junit.internal.Throwables;

/* loaded from: classes3.dex */
public class TestFailure {
    protected Test fFailedTest;
    protected Throwable fThrownException;

    public TestFailure(Test test, Throwable th) {
        this.fFailedTest = test;
        this.fThrownException = th;
    }

    public String exceptionMessage() {
        return thrownException().getMessage();
    }

    public Test failedTest() {
        return this.fFailedTest;
    }

    public boolean isFailure() {
        return thrownException() instanceof AssertionFailedError;
    }

    public Throwable thrownException() {
        return this.fThrownException;
    }

    public String toString() {
        return this.fFailedTest + ": " + this.fThrownException.getMessage();
    }

    public String trace() {
        return Throwables.getStacktrace(thrownException());
    }
}
