package junit.framework;

import org.junit.runner.Describable;
import org.junit.runner.Description;

/* loaded from: classes3.dex */
public class JUnit4TestCaseFacade implements Test, Describable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Description f1154xfbe0c504;

    public JUnit4TestCaseFacade(Description description) {
        this.f1154xfbe0c504 = description;
    }

    @Override // junit.framework.Test
    public int countTestCases() {
        return 1;
    }

    @Override // org.junit.runner.Describable
    public Description getDescription() {
        return this.f1154xfbe0c504;
    }

    @Override // junit.framework.Test
    public void run(TestResult testResult) {
        throw new RuntimeException("This test stub created only for informational purposes.");
    }

    public String toString() {
        return getDescription().toString();
    }
}
