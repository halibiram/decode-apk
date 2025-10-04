package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;

/* renamed from: 돠듸뒈듻땥돰둬딝딁듬뎡돛땃돼땝땪뎽땵뒼딞뒵뒵뎸뒘듔땜됫뒛돶둠뎽땸땥들둘땅둑딻딄땔듸됩돝땪땄돼땯뒬땵딟돼뎸뒼땋딻딝딽뎻땄땄딄땁되돠뒼뒀뒀뒨딽뒀듬듸뎸뒈든듔땝땠뎡딠뒻둣땨뒋땧득땟돴딎되딎돸뒘돷땤땨딸땦둣뒤땤뒀뒾드땁돨뒘돷뒷땫딝듻땀딝듨땜뒐됐딄땫땝따따땫뎹땩둘듻딹땐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0437xf057c2bb {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f3882x3271d0aa = AtomicIntegerFieldUpdater.newUpdater(C0437xf057c2bb.class, "notCompletedCount$volatile");
    private volatile /* synthetic */ int notCompletedCount$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Deferred[] f3883xfbe0c504;

    public C0437xf057c2bb(Deferred[] deferredArr) {
        this.f3883xfbe0c504 = deferredArr;
        this.notCompletedCount$volatile = deferredArr.length;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m3084xfbe0c504(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Deferred[] deferredArr = this.f3883xfbe0c504;
        int length = deferredArr.length;
        C0435xdda04007[] c0435xdda04007Arr = new C0435xdda04007[length];
        for (int i = 0; i < length; i++) {
            Deferred deferred = deferredArr[i];
            deferred.start();
            C0435xdda04007 c0435xdda04007 = new C0435xdda04007(this, cancellableContinuationImpl);
            c0435xdda04007.f3879x9738a56c = JobKt.invokeOnCompletion$default(deferred, false, c0435xdda04007, 1, null);
            c0435xdda04007Arr[i] = c0435xdda04007;
        }
        C0436xdc381bd6 c0436xdc381bd6 = new C0436xdc381bd6(c0435xdda04007Arr);
        for (int i2 = 0; i2 < length; i2++) {
            C0435xdda04007 c0435xdda040072 = c0435xdda04007Arr[i2];
            c0435xdda040072.getClass();
            C0435xdda04007.f3877x34271fae.set(c0435xdda040072, c0436xdc381bd6);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            c0436xdc381bd6.m3083xfbe0c504();
        } else {
            CancellableContinuationKt.invokeOnCancellation(cancellableContinuationImpl, c0436xdc381bd6);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
