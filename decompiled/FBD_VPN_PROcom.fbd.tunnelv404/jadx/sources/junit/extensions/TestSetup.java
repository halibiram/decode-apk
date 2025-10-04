package junit.extensions;

import defpackage.C0582x14b6ab62;
import junit.framework.Test;
import junit.framework.TestResult;

/* loaded from: classes3.dex */
public class TestSetup extends TestDecorator {
    public TestSetup(Test test) {
        super(test);
    }

    @Override // junit.extensions.TestDecorator, junit.framework.Test
    public void run(TestResult testResult) {
        testResult.runProtected(this, new C0582x14b6ab62(this, testResult));
    }

    public void setUp() {
    }

    public void tearDown() {
    }
}
