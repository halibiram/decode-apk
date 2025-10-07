package defpackage;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* renamed from: 딁딝돨딝둥딟땨뒻돤땭땜딄땤돴뎨딐딽듽땵둑도땵땭땻들딹돴땜땁딹땝뒼땍땁딐뒀뒵땥딃땯딐땋땣땩뒐뒐둘땵돝땨땁땧돰따따둡땲뒀땱돵딻딐뒤땯땩뎹듔돨땰땔딟뒬될땝딌땃듸땰뒛땠뎨돸돴뒉땅딜땸돝돼듌듬땐뒀땭듔딟돼땳뒝뒤땜땳둘든될땍뒙뒝딄딄돷땅땯둑뒨뒵땤됐땳돵돛딨땃듼딅듨뒵땀딀뎽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0902x2a985365 extends CancellableContinuationImpl {

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final JobSupport f5030x9e171bf9;

    public C0902x2a985365(JobSupport jobSupport, Continuation continuation) {
        super(continuation, 1);
        this.f5030x9e171bf9 = jobSupport;
    }

    @Override // kotlinx.coroutines.CancellableContinuationImpl
    public final Throwable getContinuationCancellationCause(Job job) {
        Throwable m3470x3271d0aa;
        Object state$kotlinx_coroutines_core = this.f5030x9e171bf9.getState$kotlinx_coroutines_core();
        if ((state$kotlinx_coroutines_core instanceof C0904x698af4e0) && (m3470x3271d0aa = ((C0904x698af4e0) state$kotlinx_coroutines_core).m3470x3271d0aa()) != null) {
            return m3470x3271d0aa;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return job.getCancellationException();
    }

    @Override // kotlinx.coroutines.CancellableContinuationImpl
    public final String nameString() {
        return "AwaitContinuation";
    }
}
