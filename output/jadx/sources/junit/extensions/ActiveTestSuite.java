package junit.extensions;

import defpackage.C0364xfad01aba;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestResult;
import junit.framework.TestSuite;

/* loaded from: classes3.dex */
public class ActiveTestSuite extends TestSuite {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public volatile int f1141x1378447b;

    public ActiveTestSuite() {
    }

    @Override // junit.framework.TestSuite, junit.framework.Test
    public void run(TestResult testResult) {
        this.f1141x1378447b = 0;
        super.run(testResult);
        synchronized (this) {
            while (this.f1141x1378447b < testCount()) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }
    }

    public synchronized void runFinished() {
        this.f1141x1378447b++;
        notifyAll();
    }

    @Override // junit.framework.TestSuite
    public void runTest(Test test, TestResult testResult) {
        new C0364xfad01aba(this, test, testResult).start();
    }

    public ActiveTestSuite(Class<? extends TestCase> cls) {
        super(cls);
    }

    public ActiveTestSuite(String str) {
        super(str);
    }

    public ActiveTestSuite(Class<? extends TestCase> cls, String str) {
        super(cls, str);
    }
}
