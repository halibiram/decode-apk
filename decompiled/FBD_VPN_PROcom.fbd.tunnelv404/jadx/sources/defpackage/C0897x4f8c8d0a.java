package defpackage;

import junit.framework.JUnit4TestAdapterCache;
import junit.framework.TestResult;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;

/* renamed from: 딁둔뒹뒋돠될뒤뒙드됨됩땭돼땳돸뎹딌듻땐땳땟듽딎듬뎸딞뒼뒵뒘돴딎뒘둣땡돝둠드땤따듽뒐땻든딠땣딌둠둘돵돼뎡딤듐딅뒼뎽뒵딸땅뒨딄뒻돛둠듐듸딐땩둬땜뎸땣땳도돴둔돨뒾땋땩땨뎡땨듰땋땃땩뎨뎠뎹딻뒝돸돳딟딅딜딸땲듬땦둘듔뒾땲돴딌땭땤딠도돰딌둠돴딀들딁땲뒤듰딌돨돳딄딨듼뎬뒛딐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0897x4f8c8d0a extends RunListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ TestResult f5021xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ JUnit4TestAdapterCache f5022x3271d0aa;

    public C0897x4f8c8d0a(JUnit4TestAdapterCache jUnit4TestAdapterCache, TestResult testResult) {
        this.f5022x3271d0aa = jUnit4TestAdapterCache;
        this.f5021xfbe0c504 = testResult;
    }

    @Override // org.junit.runner.notification.RunListener
    public final void testFailure(Failure failure) {
        this.f5021xfbe0c504.addError(this.f5022x3271d0aa.asTest(failure.getDescription()), failure.getException());
    }

    @Override // org.junit.runner.notification.RunListener
    public final void testFinished(Description description) {
        this.f5021xfbe0c504.endTest(this.f5022x3271d0aa.asTest(description));
    }

    @Override // org.junit.runner.notification.RunListener
    public final void testStarted(Description description) {
        this.f5021xfbe0c504.startTest(this.f5022x3271d0aa.asTest(description));
    }
}
