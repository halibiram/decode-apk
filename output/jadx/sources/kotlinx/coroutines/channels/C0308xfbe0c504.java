package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.selects.SelectClause2;

/* renamed from: kotlinx.coroutines.channels.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public class C0308xfbe0c504 extends AbstractCoroutine implements ProducerScope, BroadcastChannel {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final BroadcastChannel f1851x75d576dc;

    public C0308xfbe0c504(CoroutineContext coroutineContext, BroadcastChannel broadcastChannel, boolean z) {
        super(coroutineContext, false, z);
        this.f1851x75d576dc = broadcastChannel;
        initParentJob((Job) coroutineContext.get(Job.INSTANCE));
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final /* synthetic */ boolean cancel(Throwable th) {
        if (th == null) {
            th = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void cancelInternal(Throwable th) {
        CancellationException cancellationException$default = JobSupport.toCancellationException$default(this, th, null, 1, null);
        this.f1851x75d576dc.cancel(cancellationException$default);
        cancelCoroutine(cancellationException$default);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean close(Throwable th) {
        boolean close = this.f1851x75d576dc.close(th);
        start();
        return close;
    }

    @Override // kotlinx.coroutines.channels.ProducerScope
    public final SendChannel getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final SelectClause2 getOnSend() {
        return this.f1851x75d576dc.getOnSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final void invokeOnClose(Function1 function1) {
        this.f1851x75d576dc.invokeOnClose(function1);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean isClosedForSend() {
        return this.f1851x75d576dc.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean offer(Object obj) {
        return this.f1851x75d576dc.offer(obj);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCancelled(Throwable th, boolean z) {
        if (!this.f1851x75d576dc.close(th) && !z) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        }
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCompleted(Object obj) {
        SendChannel.DefaultImpls.close$default(this.f1851x75d576dc, null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel openSubscription() {
        return this.f1851x75d576dc.openSubscription();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        return this.f1851x75d576dc.send(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public final Object mo2254trySendJP2dKIU(Object obj) {
        return this.f1851x75d576dc.mo2254trySendJP2dKIU(obj);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }
}
