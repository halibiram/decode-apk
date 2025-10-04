package junit.framework;

import defpackage.C1004x4e52037f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class TestResult {
    protected List<TestFailure> fFailures = new ArrayList();
    protected List<TestFailure> fErrors = new ArrayList();
    protected List<TestListener> fListeners = new ArrayList();
    protected int fRunTests = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public boolean f1156xfbe0c504 = false;

    public synchronized void addError(Test test, Throwable th) {
        this.fErrors.add(new TestFailure(test, th));
        Iterator it = m1761xfbe0c504().iterator();
        while (it.hasNext()) {
            ((TestListener) it.next()).addError(test, th);
        }
    }

    public synchronized void addFailure(Test test, AssertionFailedError assertionFailedError) {
        this.fFailures.add(new TestFailure(test, assertionFailedError));
        Iterator it = m1761xfbe0c504().iterator();
        while (it.hasNext()) {
            ((TestListener) it.next()).addFailure(test, assertionFailedError);
        }
    }

    public synchronized void addListener(TestListener testListener) {
        this.fListeners.add(testListener);
    }

    public void endTest(Test test) {
        Iterator it = m1761xfbe0c504().iterator();
        while (it.hasNext()) {
            ((TestListener) it.next()).endTest(test);
        }
    }

    public synchronized int errorCount() {
        return this.fErrors.size();
    }

    public synchronized Enumeration<TestFailure> errors() {
        return Collections.enumeration(this.fErrors);
    }

    public synchronized int failureCount() {
        return this.fFailures.size();
    }

    public synchronized Enumeration<TestFailure> failures() {
        return Collections.enumeration(this.fFailures);
    }

    public synchronized void removeListener(TestListener testListener) {
        this.fListeners.remove(testListener);
    }

    public void run(TestCase testCase) {
        startTest(testCase);
        runProtected(testCase, new C1004x4e52037f(testCase));
        endTest(testCase);
    }

    public synchronized int runCount() {
        return this.fRunTests;
    }

    public void runProtected(Test test, Protectable protectable) {
        try {
            protectable.protect();
        } catch (ThreadDeath e) {
            throw e;
        } catch (AssertionFailedError e2) {
            addFailure(test, e2);
        } catch (Throwable th) {
            addError(test, th);
        }
    }

    public synchronized boolean shouldStop() {
        return this.f1156xfbe0c504;
    }

    public void startTest(Test test) {
        int countTestCases = test.countTestCases();
        synchronized (this) {
            this.fRunTests += countTestCases;
        }
        Iterator it = m1761xfbe0c504().iterator();
        while (it.hasNext()) {
            ((TestListener) it.next()).startTest(test);
        }
    }

    public synchronized void stop() {
        this.f1156xfbe0c504 = true;
    }

    public synchronized boolean wasSuccessful() {
        boolean z;
        if (failureCount() == 0) {
            if (errorCount() == 0) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final synchronized ArrayList m1761xfbe0c504() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.fListeners);
        return arrayList;
    }
}
