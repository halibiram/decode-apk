package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ActorScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelCoroutine;

/* renamed from: 뎻듔땩땩뎽됨듐될됩땱돸됨뒐딽뒷듌두땝땩딻딁딌됩돠뒀땔뒐뒼땦따돳뎽딁딞딨땦뎬땱땋뒹뒷돛딝둠돛뎬땅둣딄땳땋됨돼딁딞뎻딅땝두뎨땣땻듐따땄땮땝땥둣딞땍땵뒘뒋뒀땜땟땔둣땅뒾뒻돵땸땪땹듸돶뒻땪듔땹들딐땥땐뒈땤땟딁땵둡딞딠뒵딀딝뒝땫뎬돶돤될뒈듰드땍딃됩땲땧뎹돝뎰들돰땹둔뎬뒤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public class C0392x4aa4fbad extends ChannelCoroutine implements ActorScope {
    public C0392x4aa4fbad(CoroutineContext coroutineContext, Channel channel, boolean z) {
        super(coroutineContext, channel, false, z);
        initParentJob((Job) coroutineContext.get(Job.INSTANCE));
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean handleJobException(Throwable th) {
        CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onCancelling(Throwable th) {
        Channel channel = get_channel();
        CancellationException cancellationException = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                cancellationException = (CancellationException) th;
            }
            if (cancellationException == null) {
                cancellationException = ExceptionsKt.CancellationException(DebugStringsKt.getClassSimpleName(this) + " was cancelled", th);
            }
        }
        channel.cancel(cancellationException);
    }
}
