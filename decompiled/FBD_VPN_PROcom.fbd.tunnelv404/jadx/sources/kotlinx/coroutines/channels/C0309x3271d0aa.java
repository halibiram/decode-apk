package kotlinx.coroutines.channels;

import defpackage.AbstractC0892xc141c517;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;

/* renamed from: kotlinx.coroutines.channels.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0309x3271d0aa implements ChannelIterator, Waiter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public Object f1852xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public CancellableContinuationImpl f1853x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ BufferedChannel f1854x1378447b;

    public C0309x3271d0aa(BufferedChannel bufferedChannel) {
        Symbol symbol;
        this.f1854x1378447b = bufferedChannel;
        symbol = BufferedChannelKt.f1836x1aebc6d9;
        this.f1852xfbe0c504 = symbol;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final void m2302xfbe0c504(C0309x3271d0aa c0309x3271d0aa) {
        CancellableContinuationImpl cancellableContinuationImpl = c0309x3271d0aa.f1853x3271d0aa;
        Intrinsics.checkNotNull(cancellableContinuationImpl);
        c0309x3271d0aa.f1853x3271d0aa = null;
        c0309x3271d0aa.f1852xfbe0c504 = BufferedChannelKt.getCHANNEL_CLOSED();
        Throwable closeCause = c0309x3271d0aa.f1854x1378447b.getCloseCause();
        if (closeCause == null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Boolean.FALSE));
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(closeCause)));
        }
    }

    @Override // kotlinx.coroutines.channels.ChannelIterator
    public final Object hasNext(Continuation continuation) {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        Symbol symbol6;
        Boolean boxBoolean;
        Symbol symbol7;
        Symbol symbol8;
        Symbol symbol9;
        Object obj = this.f1852xfbe0c504;
        symbol = BufferedChannelKt.f1836x1aebc6d9;
        boolean z = true;
        if (obj == symbol || this.f1852xfbe0c504 == BufferedChannelKt.getCHANNEL_CLOSED()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.f1817x95f25580;
            BufferedChannel bufferedChannel = this.f1854x1378447b;
            ChannelSegment channelSegment = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
            while (true) {
                if (bufferedChannel.isClosedForReceive()) {
                    this.f1852xfbe0c504 = BufferedChannelKt.getCHANNEL_CLOSED();
                    Throwable closeCause = bufferedChannel.getCloseCause();
                    if (closeCause == null) {
                        z = false;
                    } else {
                        throw StackTraceRecoveryKt.recoverStackTrace(closeCause);
                    }
                } else {
                    long andIncrement = BufferedChannel.f1813x75d576dc.getAndIncrement(bufferedChannel);
                    long j = BufferedChannelKt.SEGMENT_SIZE;
                    long j2 = andIncrement / j;
                    int i = (int) (andIncrement % j);
                    if (channelSegment.id != j2) {
                        ChannelSegment m2265x75d576dc = bufferedChannel.m2265x75d576dc(j2, channelSegment);
                        if (m2265x75d576dc == null) {
                            continue;
                        } else {
                            channelSegment = m2265x75d576dc;
                        }
                    }
                    Object m2278xc20437a5 = bufferedChannel.m2278xc20437a5(channelSegment, i, null, andIncrement);
                    symbol2 = BufferedChannelKt.f1833x1db10c9d;
                    if (m2278xc20437a5 != symbol2) {
                        symbol3 = BufferedChannelKt.f1835x8c6fc18a;
                        if (m2278xc20437a5 != symbol3) {
                            symbol4 = BufferedChannelKt.f1834xd2bcb0cf;
                            if (m2278xc20437a5 == symbol4) {
                                BufferedChannel bufferedChannel2 = this.f1854x1378447b;
                                CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
                                try {
                                    this.f1853x3271d0aa = orCreateCancellableContinuation;
                                    Object m2278xc20437a52 = bufferedChannel2.m2278xc20437a5(channelSegment, i, this, andIncrement);
                                    symbol5 = BufferedChannelKt.f1833x1db10c9d;
                                    if (m2278xc20437a52 != symbol5) {
                                        symbol6 = BufferedChannelKt.f1835x8c6fc18a;
                                        Function3 function3 = null;
                                        if (m2278xc20437a52 == symbol6) {
                                            if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                channelSegment.cleanPrev();
                                            }
                                            ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.f1817x95f25580.get(bufferedChannel2);
                                            while (true) {
                                                if (bufferedChannel2.isClosedForReceive()) {
                                                    m2302xfbe0c504(this);
                                                    break;
                                                }
                                                long andIncrement2 = BufferedChannel.f1813x75d576dc.getAndIncrement(bufferedChannel2);
                                                long j3 = BufferedChannelKt.SEGMENT_SIZE;
                                                long j4 = andIncrement2 / j3;
                                                int i2 = (int) (andIncrement2 % j3);
                                                if (channelSegment2.id != j4) {
                                                    ChannelSegment m2265x75d576dc2 = bufferedChannel2.m2265x75d576dc(j4, channelSegment2);
                                                    if (m2265x75d576dc2 != null) {
                                                        channelSegment2 = m2265x75d576dc2;
                                                    }
                                                }
                                                Object m2278xc20437a53 = bufferedChannel2.m2278xc20437a5(channelSegment2, i2, this, andIncrement2);
                                                symbol7 = BufferedChannelKt.f1833x1db10c9d;
                                                if (m2278xc20437a53 != symbol7) {
                                                    symbol8 = BufferedChannelKt.f1835x8c6fc18a;
                                                    if (m2278xc20437a53 != symbol8) {
                                                        symbol9 = BufferedChannelKt.f1834xd2bcb0cf;
                                                        if (m2278xc20437a53 != symbol9) {
                                                            channelSegment2.cleanPrev();
                                                            this.f1852xfbe0c504 = m2278xc20437a53;
                                                            this.f1853x3271d0aa = null;
                                                            boxBoolean = Boxing.boxBoolean(true);
                                                            Function1<E, Unit> function1 = bufferedChannel2.onUndeliveredElement;
                                                            if (function1 != 0) {
                                                                function3 = BufferedChannel.access$bindCancellationFun(bufferedChannel2, function1, m2278xc20437a53);
                                                            }
                                                        } else {
                                                            throw new IllegalStateException("unexpected");
                                                        }
                                                    } else if (andIncrement2 < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                        channelSegment2.cleanPrev();
                                                    }
                                                } else {
                                                    BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, channelSegment2, i2);
                                                    break;
                                                }
                                            }
                                        } else {
                                            channelSegment.cleanPrev();
                                            this.f1852xfbe0c504 = m2278xc20437a52;
                                            this.f1853x3271d0aa = null;
                                            boxBoolean = Boxing.boxBoolean(true);
                                            Function1<E, Unit> function12 = bufferedChannel2.onUndeliveredElement;
                                            if (function12 != 0) {
                                                function3 = BufferedChannel.access$bindCancellationFun(bufferedChannel2, function12, m2278xc20437a52);
                                            }
                                        }
                                        orCreateCancellableContinuation.resume((CancellableContinuationImpl) boxBoolean, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) function3);
                                    } else {
                                        BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, channelSegment, i);
                                    }
                                    Object result = orCreateCancellableContinuation.getResult();
                                    if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                                        DebugProbesKt.probeCoroutineSuspended(continuation);
                                    }
                                    return result;
                                } catch (Throwable th) {
                                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                    throw th;
                                }
                            }
                            channelSegment.cleanPrev();
                            this.f1852xfbe0c504 = m2278xc20437a5;
                        } else if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                            channelSegment.cleanPrev();
                        }
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
            }
        }
        return Boxing.boxBoolean(z);
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f1853x3271d0aa;
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.invokeOnCancellation(segment, i);
        }
    }

    @Override // kotlinx.coroutines.channels.ChannelIterator
    public final /* synthetic */ Object next(Continuation continuation) {
        return ChannelIterator.DefaultImpls.next(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ChannelIterator
    public final Object next() {
        Symbol symbol;
        Symbol symbol2;
        Throwable m2266x9738a56c;
        Object obj = this.f1852xfbe0c504;
        symbol = BufferedChannelKt.f1836x1aebc6d9;
        if (obj != symbol) {
            symbol2 = BufferedChannelKt.f1836x1aebc6d9;
            this.f1852xfbe0c504 = symbol2;
            if (obj != BufferedChannelKt.getCHANNEL_CLOSED()) {
                return obj;
            }
            m2266x9738a56c = this.f1854x1378447b.m2266x9738a56c();
            throw StackTraceRecoveryKt.recoverStackTrace(m2266x9738a56c);
        }
        throw new IllegalStateException("`hasNext()` has not been invoked");
    }
}
