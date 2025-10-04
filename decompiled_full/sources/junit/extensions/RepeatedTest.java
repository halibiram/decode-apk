package junit.extensions;

import defpackage.AbstractC0362x4440ab85;
import junit.framework.Test;
import junit.framework.TestResult;

/* loaded from: classes3.dex */
public class RepeatedTest extends TestDecorator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int f1142xfbe0c504;

    public RepeatedTest(Test test, int i) {
        super(test);
        if (i >= 0) {
            this.f1142xfbe0c504 = i;
            return;
        }
        throw new IllegalArgumentException("Repetition count must be >= 0");
    }

    @Override // junit.extensions.TestDecorator, junit.framework.Test
    public int countTestCases() {
        return super.countTestCases() * this.f1142xfbe0c504;
    }

    @Override // junit.extensions.TestDecorator, junit.framework.Test
    public void run(TestResult testResult) {
        for (int i = 0; i < this.f1142xfbe0c504 && !testResult.shouldStop(); i++) {
            super.run(testResult);
        }
    }

    @Override // junit.extensions.TestDecorator
    public String toString() {
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), super.toString(), "(repeated)");
    }
}
