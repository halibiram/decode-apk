package kotlinx.coroutines.channels;

import defpackage.AbstractC0892xc141c517;
import defpackage.C1235x45926c21;
import defpackage.C1236x32dffcb8;
import defpackage.C1237x17a3594d;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.EventLoop_commonKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a;\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"", "delayMillis", "initialDelayMillis", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/channels/TickerMode;", "mode", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "ticker", "(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"})
/* loaded from: classes3.dex */
public final class TickerChannelsKt {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r6, r0) != r1) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0059, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r8, r0) == r1) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0076 -> B:12:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object access$fixedDelayTicker(long j, long j2, SendChannel sendChannel, Continuation continuation) {
        C1235x45926c21 c1235x45926c21;
        Object coroutine_suspended;
        int i;
        SendChannel sendChannel2;
        SendChannel sendChannel3;
        Unit unit;
        if (continuation instanceof C1235x45926c21) {
            C1235x45926c21 c1235x45926c212 = (C1235x45926c21) continuation;
            int i2 = c1235x45926c212.f5646x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1235x45926c212.f5646x75d576dc = i2 - Integer.MIN_VALUE;
                c1235x45926c21 = c1235x45926c212;
                Object obj = c1235x45926c21.f5645x1378447b;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1235x45926c21.f5646x75d576dc;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                j = c1235x45926c21.f5643xfbe0c504;
                                sendChannel2 = c1235x45926c21.f5644x3271d0aa;
                                ResultKt.throwOnFailure(obj);
                                sendChannel3 = sendChannel2;
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            j = c1235x45926c21.f5643xfbe0c504;
                            sendChannel2 = c1235x45926c21.f5644x3271d0aa;
                            ResultKt.throwOnFailure(obj);
                            c1235x45926c21.f5644x3271d0aa = sendChannel2;
                            c1235x45926c21.f5643xfbe0c504 = j;
                            c1235x45926c21.f5646x75d576dc = 3;
                        }
                    } else {
                        j = c1235x45926c21.f5643xfbe0c504;
                        SendChannel sendChannel4 = c1235x45926c21.f5644x3271d0aa;
                        ResultKt.throwOnFailure(obj);
                        sendChannel3 = sendChannel4;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    c1235x45926c21.f5644x3271d0aa = sendChannel;
                    c1235x45926c21.f5643xfbe0c504 = j;
                    c1235x45926c21.f5646x75d576dc = 1;
                    sendChannel3 = sendChannel;
                }
                unit = Unit.INSTANCE;
                c1235x45926c21.f5644x3271d0aa = sendChannel3;
                c1235x45926c21.f5643xfbe0c504 = j;
                c1235x45926c21.f5646x75d576dc = 2;
                if (sendChannel3.send(unit, c1235x45926c21) != coroutine_suspended) {
                    sendChannel2 = sendChannel3;
                    c1235x45926c21.f5644x3271d0aa = sendChannel2;
                    c1235x45926c21.f5643xfbe0c504 = j;
                    c1235x45926c21.f5646x75d576dc = 3;
                }
                return coroutine_suspended;
            }
        }
        c1235x45926c21 = new ContinuationImpl(continuation);
        Object obj2 = c1235x45926c21.f5645x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1235x45926c21.f5646x75d576dc;
        if (i == 0) {
        }
        unit = Unit.INSTANCE;
        c1235x45926c21.f5644x3271d0aa = sendChannel3;
        c1235x45926c21.f5643xfbe0c504 = j;
        c1235x45926c21.f5646x75d576dc = 2;
        if (sendChannel3.send(unit, c1235x45926c21) != coroutine_suspended) {
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ec, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r4, r1) == r2) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0105, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(r4, r1) != r2) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00ec -> B:13:0x004e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0105 -> B:13:0x004e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object access$fixedPeriodTicker(long j, long j2, SendChannel sendChannel, Continuation continuation) {
        C1236x32dffcb8 c1236x32dffcb8;
        Object coroutine_suspended;
        int i;
        AbstractTimeSource abstractTimeSource;
        long nanoTime;
        long j3;
        long j4;
        SendChannel sendChannel2;
        long delayToNanos;
        long j5;
        long j6;
        SendChannel sendChannel3;
        AbstractTimeSource abstractTimeSource2;
        long nanoTime2;
        long coerceAtLeast;
        SendChannel sendChannel4;
        Unit unit;
        if (continuation instanceof C1236x32dffcb8) {
            C1236x32dffcb8 c1236x32dffcb82 = (C1236x32dffcb8) continuation;
            int i2 = c1236x32dffcb82.f5651x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1236x32dffcb82.f5651x9738a56c = i2 - Integer.MIN_VALUE;
                c1236x32dffcb8 = c1236x32dffcb82;
                Object obj = c1236x32dffcb8.f5650x75d576dc;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1236x32dffcb8.f5651x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 4) {
                                    j6 = c1236x32dffcb8.f5648x3271d0aa;
                                    j5 = c1236x32dffcb8.f5647xfbe0c504;
                                    sendChannel3 = c1236x32dffcb8.f5649x1378447b;
                                    ResultKt.throwOnFailure(obj);
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                j6 = c1236x32dffcb8.f5648x3271d0aa;
                                j5 = c1236x32dffcb8.f5647xfbe0c504;
                                sendChannel3 = c1236x32dffcb8.f5649x1378447b;
                                ResultKt.throwOnFailure(obj);
                            }
                            long j7 = j6;
                            j4 = j5;
                            delayToNanos = j7;
                            sendChannel4 = sendChannel3;
                            long j8 = j4 + delayToNanos;
                            unit = Unit.INSTANCE;
                            c1236x32dffcb8.f5649x1378447b = sendChannel4;
                            c1236x32dffcb8.f5647xfbe0c504 = j8;
                            c1236x32dffcb8.f5648x3271d0aa = delayToNanos;
                            c1236x32dffcb8.f5651x9738a56c = 2;
                            if (sendChannel4.send(unit, c1236x32dffcb8) != coroutine_suspended) {
                                sendChannel3 = sendChannel4;
                                j6 = delayToNanos;
                                j5 = j8;
                                abstractTimeSource2 = AbstractTimeSourceKt.f1751xfbe0c504;
                                if (abstractTimeSource2 == null) {
                                    nanoTime2 = abstractTimeSource2.nanoTime();
                                } else {
                                    nanoTime2 = System.nanoTime();
                                }
                                coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(j5 - nanoTime2, 0L);
                                if (coerceAtLeast != 0 && j6 != 0) {
                                    long j9 = j6 - ((nanoTime2 - j5) % j6);
                                    j5 = nanoTime2 + j9;
                                    long delayNanosToMillis = EventLoop_commonKt.delayNanosToMillis(j9);
                                    c1236x32dffcb8.f5649x1378447b = sendChannel3;
                                    c1236x32dffcb8.f5647xfbe0c504 = j5;
                                    c1236x32dffcb8.f5648x3271d0aa = j6;
                                    c1236x32dffcb8.f5651x9738a56c = 3;
                                } else {
                                    long delayNanosToMillis2 = EventLoop_commonKt.delayNanosToMillis(coerceAtLeast);
                                    c1236x32dffcb8.f5649x1378447b = sendChannel3;
                                    c1236x32dffcb8.f5647xfbe0c504 = j5;
                                    c1236x32dffcb8.f5648x3271d0aa = j6;
                                    c1236x32dffcb8.f5651x9738a56c = 4;
                                }
                                long j82 = j4 + delayToNanos;
                                unit = Unit.INSTANCE;
                                c1236x32dffcb8.f5649x1378447b = sendChannel4;
                                c1236x32dffcb8.f5647xfbe0c504 = j82;
                                c1236x32dffcb8.f5648x3271d0aa = delayToNanos;
                                c1236x32dffcb8.f5651x9738a56c = 2;
                                if (sendChannel4.send(unit, c1236x32dffcb8) != coroutine_suspended) {
                                }
                            }
                            return coroutine_suspended;
                        }
                        j6 = c1236x32dffcb8.f5648x3271d0aa;
                        j5 = c1236x32dffcb8.f5647xfbe0c504;
                        sendChannel3 = c1236x32dffcb8.f5649x1378447b;
                        ResultKt.throwOnFailure(obj);
                        abstractTimeSource2 = AbstractTimeSourceKt.f1751xfbe0c504;
                        if (abstractTimeSource2 == null) {
                        }
                        coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(j5 - nanoTime2, 0L);
                        if (coerceAtLeast != 0) {
                        }
                        long delayNanosToMillis22 = EventLoop_commonKt.delayNanosToMillis(coerceAtLeast);
                        c1236x32dffcb8.f5649x1378447b = sendChannel3;
                        c1236x32dffcb8.f5647xfbe0c504 = j5;
                        c1236x32dffcb8.f5648x3271d0aa = j6;
                        c1236x32dffcb8.f5651x9738a56c = 4;
                    } else {
                        j4 = c1236x32dffcb8.f5648x3271d0aa;
                        long j10 = c1236x32dffcb8.f5647xfbe0c504;
                        SendChannel sendChannel5 = c1236x32dffcb8.f5649x1378447b;
                        ResultKt.throwOnFailure(obj);
                        sendChannel2 = sendChannel5;
                        j3 = j10;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
                    if (abstractTimeSource != null) {
                        nanoTime = abstractTimeSource.nanoTime();
                    } else {
                        nanoTime = System.nanoTime();
                    }
                    long delayToNanos2 = nanoTime + EventLoop_commonKt.delayToNanos(j2);
                    SendChannel sendChannel6 = sendChannel;
                    c1236x32dffcb8.f5649x1378447b = sendChannel6;
                    j3 = j;
                    c1236x32dffcb8.f5647xfbe0c504 = j3;
                    c1236x32dffcb8.f5648x3271d0aa = delayToNanos2;
                    c1236x32dffcb8.f5651x9738a56c = 1;
                    if (DelayKt.delay(j2, c1236x32dffcb8) != coroutine_suspended) {
                        j4 = delayToNanos2;
                        sendChannel2 = sendChannel6;
                    }
                    return coroutine_suspended;
                }
                delayToNanos = EventLoop_commonKt.delayToNanos(j3);
                sendChannel4 = sendChannel2;
                long j822 = j4 + delayToNanos;
                unit = Unit.INSTANCE;
                c1236x32dffcb8.f5649x1378447b = sendChannel4;
                c1236x32dffcb8.f5647xfbe0c504 = j822;
                c1236x32dffcb8.f5648x3271d0aa = delayToNanos;
                c1236x32dffcb8.f5651x9738a56c = 2;
                if (sendChannel4.send(unit, c1236x32dffcb8) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
        }
        c1236x32dffcb8 = new ContinuationImpl(continuation);
        Object obj2 = c1236x32dffcb8.f5650x75d576dc;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1236x32dffcb8.f5651x9738a56c;
        if (i == 0) {
        }
        delayToNanos = EventLoop_commonKt.delayToNanos(j3);
        sendChannel4 = sendChannel2;
        long j8222 = j4 + delayToNanos;
        unit = Unit.INSTANCE;
        c1236x32dffcb8.f5649x1378447b = sendChannel4;
        c1236x32dffcb8.f5647xfbe0c504 = j8222;
        c1236x32dffcb8.f5648x3271d0aa = delayToNanos;
        c1236x32dffcb8.f5651x9738a56c = 2;
        if (sendChannel4.send(unit, c1236x32dffcb8) != coroutine_suspended) {
        }
        return coroutine_suspended;
    }

    @ObsoleteCoroutinesApi
    @NotNull
    public static final ReceiveChannel<Unit> ticker(long j, long j2, @NotNull CoroutineContext coroutineContext, @NotNull TickerMode tickerMode) {
        if (j >= 0) {
            if (j2 >= 0) {
                return ProduceKt.produce(GlobalScope.INSTANCE, Dispatchers.getUnconfined().plus(coroutineContext), 0, new C1237x17a3594d(tickerMode, j, j2, null));
            }
            throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j2 + " ms").toString());
        }
        throw new IllegalArgumentException(("Expected non-negative delay, but has " + j + " ms").toString());
    }

    public static /* synthetic */ ReceiveChannel ticker$default(long j, long j2, CoroutineContext coroutineContext, TickerMode tickerMode, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = j;
        }
        if ((i & 4) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 8) != 0) {
            tickerMode = TickerMode.FIXED_PERIOD;
        }
        return ticker(j, j2, coroutineContext, tickerMode);
    }
}
