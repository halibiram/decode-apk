package kotlinx.coroutines.channels;

import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC1312xe0b2b7ff;
import defpackage.C0346x75d576dc;
import defpackage.C0456xaafeb960;
import defpackage.C0535x8db55c8b;
import defpackage.C0537xe312b7d3;
import defpackage.C0539x6809d1ad;
import defpackage.C0541x243af54f;
import defpackage.C0543xd5876917;
import defpackage.C0544xf10ee286;
import defpackage.C0545xe1106999;
import defpackage.C0546x9a9b8f97;
import defpackage.C0547x15e9dda5;
import defpackage.C0548x37d0ef46;
import defpackage.C0549x73b75b0;
import defpackage.C0550x66d3eb8d;
import defpackage.C0552x99cb5576;
import defpackage.C0553x8ceee08c;
import defpackage.C0554xc5f96099;
import defpackage.C0555x63eddcc;
import defpackage.C0556x59d95826;
import defpackage.C0557x55e68857;
import defpackage.C0558x1df0948b;
import defpackage.C0559x48de63ba;
import defpackage.C0560x41ffe65f;
import defpackage.C0561x90b5f938;
import defpackage.C0562x85a44bc1;
import defpackage.C0563xfd34acf9;
import defpackage.C0564x83ea4d5e;
import defpackage.C0565xf7f4835c;
import defpackage.C0567xb8631db4;
import defpackage.C0568x5775b425;
import defpackage.C0569x7ed2592c;
import defpackage.C0570xa9e8836a;
import defpackage.C0571xb103f13e;
import defpackage.C0572xaa66191c;
import defpackage.C0573xb657c7a;
import defpackage.C0574xbc8cfca0;
import defpackage.C0575xf16ed574;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.selects.SelectClause1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰", "kotlinx/coroutines/channels/뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ChannelsKt {

    @NotNull
    public static final String DEFAULT_CLOSE_MESSAGE = "Channel was closed";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object any(ReceiveChannel receiveChannel, Continuation continuation) {
        C0539x6809d1ad c0539x6809d1ad;
        int i;
        try {
            if (continuation instanceof C0539x6809d1ad) {
                C0539x6809d1ad c0539x6809d1ad2 = (C0539x6809d1ad) continuation;
                int i2 = c0539x6809d1ad2.f4096x1378447b;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0539x6809d1ad2.f4096x1378447b = i2 - Integer.MIN_VALUE;
                    c0539x6809d1ad = c0539x6809d1ad2;
                    Object obj = c0539x6809d1ad.f4095x3271d0aa;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c0539x6809d1ad.f4096x1378447b;
                    if (i == 0) {
                        if (i == 1) {
                            receiveChannel = c0539x6809d1ad.f4094xfbe0c504;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        ChannelIterator it = receiveChannel.iterator();
                        c0539x6809d1ad.f4094xfbe0c504 = receiveChannel;
                        c0539x6809d1ad.f4096x1378447b = 1;
                        obj = it.hasNext(c0539x6809d1ad);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    cancelConsumed(receiveChannel, null);
                    return obj;
                }
            }
            if (i == 0) {
            }
            cancelConsumed(receiveChannel, null);
            return obj;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                cancelConsumed(receiveChannel, th);
                throw th2;
            }
        }
        c0539x6809d1ad = new ContinuationImpl(continuation);
        Object obj2 = c0539x6809d1ad.f4095x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0539x6809d1ad.f4096x1378447b;
    }

    @PublishedApi
    public static final void cancelConsumed(@NotNull ReceiveChannel<?> receiveChannel, @Nullable Throwable th) {
        CancellationException cancellationException = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                cancellationException = (CancellationException) th;
            }
            if (cancellationException == null) {
                cancellationException = ExceptionsKt.CancellationException("Channel was consumed, consumer had failed", th);
            }
        }
        receiveChannel.cancel(cancellationException);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @ObsoleteCoroutinesApi
    public static final <E, R> R consume(@NotNull BroadcastChannel<E> broadcastChannel, @NotNull Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        ReceiveChannel<E> openSubscription = broadcastChannel.openSubscription();
        try {
            return function1.invoke(openSubscription);
        } finally {
            InlineMarker.finallyStart(1);
            ReceiveChannel.DefaultImpls.cancel$default((ReceiveChannel) openSubscription, (CancellationException) null, 1, (Object) null);
            InlineMarker.finallyEnd(1);
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
    @Nullable
    public static final <E> Object consumeEach(@NotNull BroadcastChannel<E> broadcastChannel, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return AbstractC0312x9738a56c.m2303xfbe0c504(broadcastChannel, function1, continuation);
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> consumes(@NotNull ReceiveChannel<?> receiveChannel) {
        return new C0456xaafeb960(receiveChannel, 1);
    }

    @PublishedApi
    @NotNull
    public static final Function1<Throwable, Unit> consumesAll(@NotNull ReceiveChannel<?>... receiveChannelArr) {
        return new C0346x75d576dc(receiveChannelArr, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #3 {all -> 0x002f, blocks: (B:11:0x002b, B:12:0x005a, B:14:0x0062), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0057 -> B:12:0x005a). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object count(ReceiveChannel receiveChannel, Continuation continuation) {
        C0541x243af54f c0541x243af54f;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        Ref.IntRef intRef;
        ReceiveChannel receiveChannel3;
        ChannelIterator it;
        Object hasNext;
        if (continuation instanceof C0541x243af54f) {
            C0541x243af54f c0541x243af54f2 = (C0541x243af54f) continuation;
            int i2 = c0541x243af54f2.f4106x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0541x243af54f2.f4106x9738a56c = i2 - Integer.MIN_VALUE;
                c0541x243af54f = c0541x243af54f2;
                Object obj = c0541x243af54f.f4105x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0541x243af54f.f4106x9738a56c;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0541x243af54f.f4104x1378447b;
                        receiveChannel2 = c0541x243af54f.f4103x3271d0aa;
                        intRef = c0541x243af54f.f4102xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            ChannelIterator channelIterator2 = channelIterator;
                            if (!((Boolean) obj).booleanValue()) {
                                try {
                                    channelIterator2.next();
                                    intRef.element++;
                                    c0541x243af54f.f4102xfbe0c504 = intRef;
                                    c0541x243af54f.f4103x3271d0aa = receiveChannel3;
                                    c0541x243af54f.f4104x1378447b = it;
                                    c0541x243af54f.f4106x9738a56c = 1;
                                    hasNext = it.hasNext(c0541x243af54f);
                                    if (hasNext == coroutine_suspended) {
                                        receiveChannel2 = receiveChannel3;
                                        obj = hasNext;
                                        channelIterator2 = it;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel2, null);
                                            return Boxing.boxInt(intRef.element);
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    receiveChannel2 = receiveChannel3;
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        cancelConsumed(receiveChannel2, th);
                                        throw th3;
                                    }
                                }
                                receiveChannel3 = receiveChannel2;
                                it = channelIterator2;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        intRef = new Ref.IntRef();
                        receiveChannel3 = receiveChannel;
                        it = receiveChannel.iterator();
                        c0541x243af54f.f4102xfbe0c504 = intRef;
                        c0541x243af54f.f4103x3271d0aa = receiveChannel3;
                        c0541x243af54f.f4104x1378447b = it;
                        c0541x243af54f.f4106x9738a56c = 1;
                        hasNext = it.hasNext(c0541x243af54f);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        receiveChannel2 = receiveChannel;
                        th = th5;
                        throw th;
                    }
                }
            }
        }
        c0541x243af54f = new ContinuationImpl(continuation);
        Object obj2 = c0541x243af54f.f4105x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0541x243af54f.f4106x9738a56c;
        if (i == 0) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final ReceiveChannel distinct(ReceiveChannel receiveChannel) {
        return distinctBy$default(receiveChannel, null, new SuspendLambda(2, null), 1, null);
    }

    @PublishedApi
    @NotNull
    public static final <E, K> ReceiveChannel<E> distinctBy(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0543xd5876917(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel distinctBy$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return distinctBy(receiveChannel, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel drop(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0544xf10ee286(receiveChannel, i, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel drop$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return drop(receiveChannel, i, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel dropWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0545xe1106999(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel dropWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return dropWhile(receiveChannel, coroutineContext, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:12:0x0031, B:13:0x0060, B:15:0x0068, B:26:0x007a, B:27:0x0091), top: B:11:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a A[Catch: all -> 0x0035, TRY_ENTER, TryCatch #1 {all -> 0x0035, blocks: (B:12:0x0031, B:13:0x0060, B:15:0x0068, B:26:0x007a, B:27:0x0091), top: B:11:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005b -> B:13:0x0060). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object elementAt(ReceiveChannel receiveChannel, int i, Continuation continuation) {
        C0546x9a9b8f97 c0546x9a9b8f97;
        int i2;
        ReceiveChannel receiveChannel2;
        Throwable th;
        int i3;
        ChannelIterator channelIterator;
        Object hasNext;
        try {
            if (continuation instanceof C0546x9a9b8f97) {
                C0546x9a9b8f97 c0546x9a9b8f972 = (C0546x9a9b8f97) continuation;
                int i4 = c0546x9a9b8f972.f4132x9e171bf9;
                if ((i4 & Integer.MIN_VALUE) != 0) {
                    c0546x9a9b8f972.f4132x9e171bf9 = i4 - Integer.MIN_VALUE;
                    c0546x9a9b8f97 = c0546x9a9b8f972;
                    Object obj = c0546x9a9b8f97.f4131x9738a56c;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i2 = c0546x9a9b8f97.f4132x9e171bf9;
                    if (i2 == 0) {
                        if (i2 == 1) {
                            int i5 = c0546x9a9b8f97.f4128x3271d0aa;
                            i = c0546x9a9b8f97.f4127xfbe0c504;
                            ChannelIterator channelIterator2 = c0546x9a9b8f97.f4130x75d576dc;
                            receiveChannel2 = c0546x9a9b8f97.f4129x1378447b;
                            try {
                                ResultKt.throwOnFailure(obj);
                                if (!((Boolean) obj).booleanValue()) {
                                    Object next = channelIterator2.next();
                                    int i6 = i5 + 1;
                                    if (i == i5) {
                                        cancelConsumed(receiveChannel2, null);
                                        return next;
                                    }
                                    channelIterator = channelIterator2;
                                    receiveChannel = receiveChannel2;
                                    i3 = i6;
                                    c0546x9a9b8f97.f4129x1378447b = receiveChannel;
                                    c0546x9a9b8f97.f4130x75d576dc = channelIterator;
                                    c0546x9a9b8f97.f4127xfbe0c504 = i;
                                    c0546x9a9b8f97.f4128x3271d0aa = i3;
                                    c0546x9a9b8f97.f4132x9e171bf9 = 1;
                                    hasNext = channelIterator.hasNext(c0546x9a9b8f97);
                                    if (hasNext == coroutine_suspended) {
                                        receiveChannel2 = receiveChannel;
                                        i5 = i3;
                                        channelIterator2 = channelIterator;
                                        obj = hasNext;
                                        if (!((Boolean) obj).booleanValue()) {
                                            throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + i + '.');
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    throw th;
                                } catch (Throwable th3) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th3;
                                }
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        if (i >= 0) {
                            i3 = 0;
                            channelIterator = receiveChannel.iterator();
                            c0546x9a9b8f97.f4129x1378447b = receiveChannel;
                            c0546x9a9b8f97.f4130x75d576dc = channelIterator;
                            c0546x9a9b8f97.f4127xfbe0c504 = i;
                            c0546x9a9b8f97.f4128x3271d0aa = i3;
                            c0546x9a9b8f97.f4132x9e171bf9 = 1;
                            hasNext = channelIterator.hasNext(c0546x9a9b8f97);
                            if (hasNext == coroutine_suspended) {
                            }
                        } else {
                            throw new IndexOutOfBoundsException("ReceiveChannel doesn't contain element at index " + i + '.');
                        }
                    }
                }
            }
            if (i2 == 0) {
            }
        } catch (Throwable th4) {
            receiveChannel2 = receiveChannel;
            th = th4;
        }
        c0546x9a9b8f97 = new ContinuationImpl(continuation);
        Object obj2 = c0546x9a9b8f97.f4131x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i2 = c0546x9a9b8f97.f4132x9e171bf9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #2 {all -> 0x007e, blocks: (B:13:0x0065, B:18:0x006d, B:24:0x0050, B:45:0x004b), top: B:44:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0061 -> B:13:0x0065). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object elementAtOrNull(ReceiveChannel receiveChannel, int i, Continuation continuation) {
        C0547x15e9dda5 c0547x15e9dda5;
        int i2;
        int i3;
        Throwable th;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        C0547x15e9dda5 c0547x15e9dda52;
        Object hasNext;
        if (continuation instanceof C0547x15e9dda5) {
            C0547x15e9dda5 c0547x15e9dda53 = (C0547x15e9dda5) continuation;
            int i4 = c0547x15e9dda53.f4138x9e171bf9;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c0547x15e9dda53.f4138x9e171bf9 = i4 - Integer.MIN_VALUE;
                c0547x15e9dda5 = c0547x15e9dda53;
                Object obj = c0547x15e9dda5.f4137x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i2 = c0547x15e9dda5.f4138x9e171bf9;
                if (i2 == 0) {
                    if (i2 == 1) {
                        int i5 = c0547x15e9dda5.f4134x3271d0aa;
                        i = c0547x15e9dda5.f4133xfbe0c504;
                        ChannelIterator channelIterator2 = c0547x15e9dda5.f4136x75d576dc;
                        receiveChannel2 = c0547x15e9dda5.f4135x1378447b;
                        try {
                            ResultKt.throwOnFailure(obj);
                            i3 = i5;
                            receiveChannel = receiveChannel2;
                            C0547x15e9dda5 c0547x15e9dda54 = c0547x15e9dda5;
                            ChannelIterator channelIterator3 = channelIterator2;
                            if (((Boolean) obj).booleanValue()) {
                                Object next = channelIterator3.next();
                                int i6 = i3 + 1;
                                if (i == i3) {
                                    cancelConsumed(receiveChannel, null);
                                    return next;
                                }
                                channelIterator = channelIterator3;
                                c0547x15e9dda52 = c0547x15e9dda54;
                                i3 = i6;
                                c0547x15e9dda52.f4135x1378447b = receiveChannel;
                                c0547x15e9dda52.f4136x75d576dc = channelIterator;
                                c0547x15e9dda52.f4133xfbe0c504 = i;
                                c0547x15e9dda52.f4134x3271d0aa = i3;
                                c0547x15e9dda52.f4138x9e171bf9 = 1;
                                hasNext = channelIterator.hasNext(c0547x15e9dda52);
                                if (hasNext == coroutine_suspended) {
                                    C0547x15e9dda5 c0547x15e9dda55 = c0547x15e9dda52;
                                    channelIterator3 = channelIterator;
                                    obj = hasNext;
                                    c0547x15e9dda54 = c0547x15e9dda55;
                                    if (((Boolean) obj).booleanValue()) {
                                    }
                                } else {
                                    return coroutine_suspended;
                                }
                            }
                            cancelConsumed(receiveChannel, null);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                if (i >= 0) {
                    try {
                        i3 = 0;
                        c0547x15e9dda52 = c0547x15e9dda5;
                        channelIterator = receiveChannel.iterator();
                        c0547x15e9dda52.f4135x1378447b = receiveChannel;
                        c0547x15e9dda52.f4136x75d576dc = channelIterator;
                        c0547x15e9dda52.f4133xfbe0c504 = i;
                        c0547x15e9dda52.f4134x3271d0aa = i3;
                        c0547x15e9dda52.f4138x9e171bf9 = 1;
                        hasNext = channelIterator.hasNext(c0547x15e9dda52);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                cancelConsumed(receiveChannel, null);
                return null;
            }
        }
        c0547x15e9dda5 = new ContinuationImpl(continuation);
        Object obj2 = c0547x15e9dda5.f4137x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i2 = c0547x15e9dda5.f4138x9e171bf9;
        if (i2 == 0) {
        }
    }

    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> filter(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0548x37d0ef46(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filter$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filter(receiveChannel, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterIndexed(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0549x73b75b0(receiveChannel, function3, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel filterIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterIndexed(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel filterNot(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return filter(receiveChannel, coroutineContext, new C0550x66d3eb8d(function2, null));
    }

    public static /* synthetic */ ReceiveChannel filterNot$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return filterNot(receiveChannel, coroutineContext, function2);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @PublishedApi
    @NotNull
    public static final <E> ReceiveChannel<E> filterNotNull(@NotNull ReceiveChannel<? extends E> receiveChannel) {
        ReceiveChannel<E> filter$default = filter$default(receiveChannel, null, new SuspendLambda(2, null), 1, null);
        Intrinsics.checkNotNull(filter$default, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.filterNotNull>");
        return filter$default;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x005b, B:14:0x0063, B:16:0x0069, B:18:0x0046), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0058 -> B:12:0x005b). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object filterNotNullTo(ReceiveChannel receiveChannel, Collection collection, Continuation continuation) {
        C0552x99cb5576 c0552x99cb5576;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator it;
        Collection collection2;
        Object hasNext;
        if (continuation instanceof C0552x99cb5576) {
            C0552x99cb5576 c0552x99cb55762 = (C0552x99cb5576) continuation;
            int i2 = c0552x99cb55762.f4160x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0552x99cb55762.f4160x9738a56c = i2 - Integer.MIN_VALUE;
                c0552x99cb5576 = c0552x99cb55762;
                Object obj = c0552x99cb5576.f4159x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0552x99cb5576.f4160x9738a56c;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        collection2 = collection;
                        c0552x99cb5576.f4156xfbe0c504 = collection2;
                        c0552x99cb5576.f4157x3271d0aa = receiveChannel2;
                        c0552x99cb5576.f4158x1378447b = it;
                        c0552x99cb5576.f4160x9738a56c = 1;
                        hasNext = it.hasNext(c0552x99cb5576);
                        if (hasNext != coroutine_suspended) {
                        }
                    } catch (Throwable th2) {
                        receiveChannel2 = receiveChannel;
                        th = th2;
                        throw th;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ChannelIterator channelIterator = c0552x99cb5576.f4158x1378447b;
                    receiveChannel2 = c0552x99cb5576.f4157x3271d0aa;
                    Collection collection3 = c0552x99cb5576.f4156xfbe0c504;
                    try {
                        ResultKt.throwOnFailure(obj);
                        ChannelIterator channelIterator2 = channelIterator;
                        if (!((Boolean) obj).booleanValue()) {
                            cancelConsumed(receiveChannel2, null);
                            return collection3;
                        }
                        Object next = channelIterator2.next();
                        if (next != null) {
                            collection3.add(next);
                        }
                        collection2 = collection3;
                        it = channelIterator2;
                        c0552x99cb5576.f4156xfbe0c504 = collection2;
                        c0552x99cb5576.f4157x3271d0aa = receiveChannel2;
                        c0552x99cb5576.f4158x1378447b = it;
                        c0552x99cb5576.f4160x9738a56c = 1;
                        hasNext = it.hasNext(c0552x99cb5576);
                        if (hasNext != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        collection3 = collection2;
                        obj = hasNext;
                        channelIterator2 = it;
                        if (!((Boolean) obj).booleanValue()) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            cancelConsumed(receiveChannel2, th);
                            throw th4;
                        }
                    }
                }
            }
        }
        c0552x99cb5576 = new ContinuationImpl(continuation);
        Object obj2 = c0552x99cb5576.f4159x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0552x99cb5576.f4160x9738a56c;
        if (i != 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #2 {all -> 0x002d, blocks: (B:11:0x0029, B:12:0x004f, B:14:0x0057, B:18:0x0060, B:19:0x0067), top: B:10:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[Catch: all -> 0x002d, TRY_ENTER, TryCatch #2 {all -> 0x002d, blocks: (B:11:0x0029, B:12:0x004f, B:14:0x0057, B:18:0x0060, B:19:0x0067), top: B:10:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object first(ReceiveChannel receiveChannel, Continuation continuation) {
        C0554xc5f96099 c0554xc5f96099;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        if (continuation instanceof C0554xc5f96099) {
            C0554xc5f96099 c0554xc5f960992 = (C0554xc5f96099) continuation;
            int i2 = c0554xc5f960992.f4169x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0554xc5f960992.f4169x75d576dc = i2 - Integer.MIN_VALUE;
                c0554xc5f96099 = c0554xc5f960992;
                obj = c0554xc5f96099.f4168x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0554xc5f96099.f4169x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        channelIterator = c0554xc5f96099.f4167x3271d0aa;
                        receiveChannel2 = c0554xc5f96099.f4166xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0554xc5f96099.f4166xfbe0c504 = receiveChannel;
                        c0554xc5f96099.f4167x3271d0aa = it;
                        c0554xc5f96099.f4169x75d576dc = 1;
                        Object hasNext = it.hasNext(c0554xc5f96099);
                        if (hasNext != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (!((Boolean) obj).booleanValue()) {
                    coroutine_suspended = channelIterator.next();
                    cancelConsumed(receiveChannel2, null);
                    return coroutine_suspended;
                }
                throw new NoSuchElementException("ReceiveChannel is empty.");
            }
        }
        c0554xc5f96099 = new ContinuationImpl(continuation);
        obj = c0554xc5f96099.f4168x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0554xc5f96099.f4169x75d576dc;
        if (i == 0) {
        }
        if (!((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c A[Catch: all -> 0x002d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x002d, blocks: (B:11:0x0029, B:12:0x004f, B:18:0x005c), top: B:10:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object firstOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        C0555x63eddcc c0555x63eddcc;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator channelIterator;
        if (continuation instanceof C0555x63eddcc) {
            C0555x63eddcc c0555x63eddcc2 = (C0555x63eddcc) continuation;
            int i2 = c0555x63eddcc2.f4173x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0555x63eddcc2.f4173x75d576dc = i2 - Integer.MIN_VALUE;
                c0555x63eddcc = c0555x63eddcc2;
                obj = c0555x63eddcc.f4172x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0555x63eddcc.f4173x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        channelIterator = c0555x63eddcc.f4171x3271d0aa;
                        receiveChannel2 = c0555x63eddcc.f4170xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0555x63eddcc.f4170xfbe0c504 = receiveChannel;
                        c0555x63eddcc.f4171x3271d0aa = it;
                        c0555x63eddcc.f4173x75d576dc = 1;
                        Object hasNext = it.hasNext(c0555x63eddcc);
                        if (hasNext != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    cancelConsumed(receiveChannel2, null);
                    return null;
                }
                Object next = channelIterator.next();
                cancelConsumed(receiveChannel2, null);
                return next;
            }
        }
        c0555x63eddcc = new ContinuationImpl(continuation);
        obj = c0555x63eddcc.f4172x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0555x63eddcc.f4173x75d576dc;
        if (i == 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel flatMap(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0556x59d95826(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel flatMap$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return flatMap(receiveChannel, coroutineContext, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x0061, B:14:0x006a, B:16:0x0074, B:21:0x007e, B:23:0x004d), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005e -> B:12:0x0061). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object indexOf(ReceiveChannel receiveChannel, Object obj, Continuation continuation) {
        C0557x55e68857 c0557x55e68857;
        int i;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator it;
        Ref.IntRef intRef;
        Object obj2;
        Object hasNext;
        if (continuation instanceof C0557x55e68857) {
            C0557x55e68857 c0557x55e688572 = (C0557x55e68857) continuation;
            int i2 = c0557x55e688572.f4184x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0557x55e688572.f4184x9e171bf9 = i2 - Integer.MIN_VALUE;
                c0557x55e68857 = c0557x55e688572;
                Object obj3 = c0557x55e68857.f4183x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0557x55e68857.f4184x9e171bf9;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0557x55e68857.f4182x75d576dc;
                        receiveChannel2 = c0557x55e68857.f4181x1378447b;
                        intRef = c0557x55e68857.f4180x3271d0aa;
                        Object obj4 = c0557x55e68857.f4179xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj3);
                            ChannelIterator channelIterator2 = channelIterator;
                            if (((Boolean) obj3).booleanValue()) {
                                if (Intrinsics.areEqual(obj4, channelIterator2.next())) {
                                    Integer boxInt = Boxing.boxInt(intRef.element);
                                    cancelConsumed(receiveChannel2, null);
                                    return boxInt;
                                }
                                intRef.element++;
                                obj2 = obj4;
                                it = channelIterator2;
                                c0557x55e68857.f4179xfbe0c504 = obj2;
                                c0557x55e68857.f4180x3271d0aa = intRef;
                                c0557x55e68857.f4181x1378447b = receiveChannel2;
                                c0557x55e68857.f4182x75d576dc = it;
                                c0557x55e68857.f4184x9e171bf9 = 1;
                                hasNext = it.hasNext(c0557x55e68857);
                                if (hasNext == coroutine_suspended) {
                                    obj4 = obj2;
                                    obj3 = hasNext;
                                    channelIterator2 = it;
                                    if (((Boolean) obj3).booleanValue()) {
                                    }
                                } else {
                                    return coroutine_suspended;
                                }
                            } else {
                                cancelConsumed(receiveChannel2, null);
                                return Boxing.boxInt(-1);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj3);
                    Ref.IntRef intRef2 = new Ref.IntRef();
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        intRef = intRef2;
                        obj2 = obj;
                        c0557x55e68857.f4179xfbe0c504 = obj2;
                        c0557x55e68857.f4180x3271d0aa = intRef;
                        c0557x55e68857.f4181x1378447b = receiveChannel2;
                        c0557x55e68857.f4182x75d576dc = it;
                        c0557x55e68857.f4184x9e171bf9 = 1;
                        hasNext = it.hasNext(c0557x55e68857);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
            }
        }
        c0557x55e68857 = new ContinuationImpl(continuation);
        Object obj32 = c0557x55e68857.f4183x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0557x55e68857.f4184x9e171bf9;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b A[Catch: all -> 0x0032, TRY_LEAVE, TryCatch #0 {all -> 0x0032, blocks: (B:12:0x002e, B:13:0x0083, B:15:0x008b), top: B:11:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0069 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #2 {all -> 0x0046, blocks: (B:40:0x0042, B:41:0x0061, B:43:0x0069, B:45:0x009b, B:46:0x00a2), top: B:39:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009b A[Catch: all -> 0x0046, TRY_ENTER, TryCatch #2 {all -> 0x0046, blocks: (B:40:0x0042, B:41:0x0061, B:43:0x0069, B:45:0x009b, B:46:0x00a2), top: B:39:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007f -> B:13:0x0083). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object last(ReceiveChannel receiveChannel, Continuation continuation) {
        C0558x1df0948b c0558x1df0948b;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Object next;
        ChannelIterator channelIterator2;
        Object hasNext;
        if (continuation instanceof C0558x1df0948b) {
            C0558x1df0948b c0558x1df0948b2 = (C0558x1df0948b) continuation;
            int i2 = c0558x1df0948b2.f4189x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0558x1df0948b2.f4189x9738a56c = i2 - Integer.MIN_VALUE;
                c0558x1df0948b = c0558x1df0948b2;
                obj = c0558x1df0948b.f4188x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0558x1df0948b.f4189x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj2 = c0558x1df0948b.f4187x1378447b;
                            ChannelIterator channelIterator3 = c0558x1df0948b.f4186x3271d0aa;
                            ReceiveChannel receiveChannel3 = c0558x1df0948b.f4185xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                ChannelIterator channelIterator4 = channelIterator3;
                                if (!((Boolean) obj).booleanValue()) {
                                    next = channelIterator4.next();
                                    receiveChannel = receiveChannel3;
                                    channelIterator2 = channelIterator4;
                                    c0558x1df0948b.f4185xfbe0c504 = receiveChannel;
                                    c0558x1df0948b.f4186x3271d0aa = channelIterator2;
                                    c0558x1df0948b.f4187x1378447b = next;
                                    c0558x1df0948b.f4189x9738a56c = 2;
                                    hasNext = channelIterator2.hasNext(c0558x1df0948b);
                                    if (hasNext == coroutine_suspended) {
                                        receiveChannel3 = receiveChannel;
                                        obj2 = next;
                                        obj = hasNext;
                                        channelIterator4 = channelIterator2;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel3, null);
                                            return obj2;
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                receiveChannel2 = receiveChannel3;
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th2;
                                }
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        channelIterator = c0558x1df0948b.f4186x3271d0aa;
                        receiveChannel2 = c0558x1df0948b.f4185xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0558x1df0948b.f4185xfbe0c504 = receiveChannel;
                        c0558x1df0948b.f4186x3271d0aa = it;
                        c0558x1df0948b.f4189x9738a56c = 1;
                        Object hasNext2 = it.hasNext(c0558x1df0948b);
                        if (hasNext2 != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext2;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (!((Boolean) obj).booleanValue()) {
                    next = channelIterator.next();
                    ReceiveChannel receiveChannel4 = receiveChannel2;
                    channelIterator2 = channelIterator;
                    receiveChannel = receiveChannel4;
                    c0558x1df0948b.f4185xfbe0c504 = receiveChannel;
                    c0558x1df0948b.f4186x3271d0aa = channelIterator2;
                    c0558x1df0948b.f4187x1378447b = next;
                    c0558x1df0948b.f4189x9738a56c = 2;
                    hasNext = channelIterator2.hasNext(c0558x1df0948b);
                    if (hasNext == coroutine_suspended) {
                    }
                } else {
                    throw new NoSuchElementException("ReceiveChannel is empty.");
                }
            }
        }
        c0558x1df0948b = new ContinuationImpl(continuation);
        obj = c0558x1df0948b.f4188x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0558x1df0948b.f4189x9738a56c;
        if (i == 0) {
        }
        if (!((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0075 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:11:0x002f, B:12:0x006d, B:14:0x0075, B:16:0x007f, B:17:0x0083, B:19:0x0057), top: B:10:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006a -> B:12:0x006d). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object lastIndexOf(ReceiveChannel receiveChannel, Object obj, Continuation continuation) {
        C0559x48de63ba c0559x48de63ba;
        int i;
        Ref.IntRef intRef;
        ReceiveChannel receiveChannel2;
        Throwable th;
        ChannelIterator it;
        Ref.IntRef intRef2;
        Object obj2;
        Object hasNext;
        if (continuation instanceof C0559x48de63ba) {
            C0559x48de63ba c0559x48de63ba2 = (C0559x48de63ba) continuation;
            int i2 = c0559x48de63ba2.f4196x34271fae;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0559x48de63ba2.f4196x34271fae = i2 - Integer.MIN_VALUE;
                c0559x48de63ba = c0559x48de63ba2;
                Object obj3 = c0559x48de63ba.f4195x9e171bf9;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0559x48de63ba.f4196x34271fae;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0559x48de63ba.f4194x9738a56c;
                        receiveChannel2 = c0559x48de63ba.f4193x75d576dc;
                        intRef = c0559x48de63ba.f4192x1378447b;
                        intRef2 = c0559x48de63ba.f4191x3271d0aa;
                        Object obj4 = c0559x48de63ba.f4190xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj3);
                            ChannelIterator channelIterator2 = channelIterator;
                            if (((Boolean) obj3).booleanValue()) {
                                if (Intrinsics.areEqual(obj4, channelIterator2.next())) {
                                    intRef2.element = intRef.element;
                                }
                                intRef.element++;
                                obj2 = obj4;
                                it = channelIterator2;
                                c0559x48de63ba.f4190xfbe0c504 = obj2;
                                c0559x48de63ba.f4191x3271d0aa = intRef2;
                                c0559x48de63ba.f4192x1378447b = intRef;
                                c0559x48de63ba.f4193x75d576dc = receiveChannel2;
                                c0559x48de63ba.f4194x9738a56c = it;
                                c0559x48de63ba.f4196x34271fae = 1;
                                hasNext = it.hasNext(c0559x48de63ba);
                                if (hasNext == coroutine_suspended) {
                                    obj4 = obj2;
                                    obj3 = hasNext;
                                    channelIterator2 = it;
                                    if (((Boolean) obj3).booleanValue()) {
                                    }
                                } else {
                                    return coroutine_suspended;
                                }
                            } else {
                                cancelConsumed(receiveChannel2, null);
                                return Boxing.boxInt(intRef2.element);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj3);
                    Ref.IntRef intRef3 = new Ref.IntRef();
                    intRef3.element = -1;
                    intRef = new Ref.IntRef();
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        intRef2 = intRef3;
                        obj2 = obj;
                        c0559x48de63ba.f4190xfbe0c504 = obj2;
                        c0559x48de63ba.f4191x3271d0aa = intRef2;
                        c0559x48de63ba.f4192x1378447b = intRef;
                        c0559x48de63ba.f4193x75d576dc = receiveChannel2;
                        c0559x48de63ba.f4194x9738a56c = it;
                        c0559x48de63ba.f4196x34271fae = 1;
                        hasNext = it.hasNext(c0559x48de63ba);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
            }
        }
        c0559x48de63ba = new ContinuationImpl(continuation);
        Object obj32 = c0559x48de63ba.f4195x9e171bf9;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0559x48de63ba.f4196x34271fae;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0092 A[Catch: all -> 0x0034, TRY_LEAVE, TryCatch #1 {all -> 0x0034, blocks: (B:12:0x002f, B:13:0x008a, B:15:0x0092), top: B:11:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0070 A[Catch: all -> 0x0048, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0048, blocks: (B:40:0x0044, B:41:0x0063, B:45:0x0070), top: B:39:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0086 -> B:13:0x008a). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object lastOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        C0560x41ffe65f c0560x41ffe65f;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Object next;
        ChannelIterator channelIterator2;
        Object hasNext;
        if (continuation instanceof C0560x41ffe65f) {
            C0560x41ffe65f c0560x41ffe65f2 = (C0560x41ffe65f) continuation;
            int i2 = c0560x41ffe65f2.f4201x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0560x41ffe65f2.f4201x9738a56c = i2 - Integer.MIN_VALUE;
                c0560x41ffe65f = c0560x41ffe65f2;
                obj = c0560x41ffe65f.f4200x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0560x41ffe65f.f4201x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj2 = c0560x41ffe65f.f4199x1378447b;
                            ChannelIterator channelIterator3 = c0560x41ffe65f.f4198x3271d0aa;
                            ReceiveChannel receiveChannel3 = c0560x41ffe65f.f4197xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                ChannelIterator channelIterator4 = channelIterator3;
                                if (!((Boolean) obj).booleanValue()) {
                                    next = channelIterator4.next();
                                    receiveChannel = receiveChannel3;
                                    channelIterator2 = channelIterator4;
                                    c0560x41ffe65f.f4197xfbe0c504 = receiveChannel;
                                    c0560x41ffe65f.f4198x3271d0aa = channelIterator2;
                                    c0560x41ffe65f.f4199x1378447b = next;
                                    c0560x41ffe65f.f4201x9738a56c = 2;
                                    hasNext = channelIterator2.hasNext(c0560x41ffe65f);
                                    if (hasNext == coroutine_suspended) {
                                        receiveChannel3 = receiveChannel;
                                        obj2 = next;
                                        obj = hasNext;
                                        channelIterator4 = channelIterator2;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel3, null);
                                            return obj2;
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                receiveChannel2 = receiveChannel3;
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th2;
                                }
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        channelIterator = c0560x41ffe65f.f4198x3271d0aa;
                        receiveChannel2 = c0560x41ffe65f.f4197xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0560x41ffe65f.f4197xfbe0c504 = receiveChannel;
                        c0560x41ffe65f.f4198x3271d0aa = it;
                        c0560x41ffe65f.f4201x9738a56c = 1;
                        Object hasNext2 = it.hasNext(c0560x41ffe65f);
                        if (hasNext2 != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext2;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    cancelConsumed(receiveChannel2, null);
                    return null;
                }
                next = channelIterator.next();
                ReceiveChannel receiveChannel4 = receiveChannel2;
                channelIterator2 = channelIterator;
                receiveChannel = receiveChannel4;
                c0560x41ffe65f.f4197xfbe0c504 = receiveChannel;
                c0560x41ffe65f.f4198x3271d0aa = channelIterator2;
                c0560x41ffe65f.f4199x1378447b = next;
                c0560x41ffe65f.f4201x9738a56c = 2;
                hasNext = channelIterator2.hasNext(c0560x41ffe65f);
                if (hasNext == coroutine_suspended) {
                }
            }
        }
        c0560x41ffe65f = new ContinuationImpl(continuation);
        obj = c0560x41ffe65f.f4200x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0560x41ffe65f.f4201x9738a56c;
        if (i == 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> map(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0561x90b5f938(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel map$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return map(receiveChannel, coroutineContext, function2);
    }

    @PublishedApi
    @NotNull
    public static final <E, R> ReceiveChannel<R> mapIndexed(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull CoroutineContext coroutineContext, @NotNull Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0562x85a44bc1(receiveChannel, function3, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel mapIndexed$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapIndexed(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapIndexedNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3) {
        return filterNotNull(mapIndexed(receiveChannel, coroutineContext, function3));
    }

    public static /* synthetic */ ReceiveChannel mapIndexedNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapIndexedNotNull(receiveChannel, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel mapNotNull(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return filterNotNull(map(receiveChannel, coroutineContext, function2));
    }

    public static /* synthetic */ ReceiveChannel mapNotNull$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return mapNotNull(receiveChannel, coroutineContext, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a1 A[Catch: all -> 0x00af, TRY_LEAVE, TryCatch #3 {all -> 0x00af, blocks: (B:15:0x0099, B:17:0x00a1, B:20:0x0084, B:56:0x0056), top: B:55:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x007c A[Catch: all -> 0x0050, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:45:0x004c, B:46:0x006f, B:50:0x007c), top: B:44:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0095 -> B:14:0x0037). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object maxWith(ReceiveChannel receiveChannel, Comparator comparator, Continuation continuation) {
        C0563xfd34acf9 c0563xfd34acf9;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Comparator comparator2;
        Object next;
        Comparator comparator3;
        ChannelIterator channelIterator2;
        C0563xfd34acf9 c0563xfd34acf92;
        Object hasNext;
        if (continuation instanceof C0563xfd34acf9) {
            C0563xfd34acf9 c0563xfd34acf93 = (C0563xfd34acf9) continuation;
            int i2 = c0563xfd34acf93.f4222x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0563xfd34acf93.f4222x9e171bf9 = i2 - Integer.MIN_VALUE;
                c0563xfd34acf9 = c0563xfd34acf93;
                obj = c0563xfd34acf9.f4221x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0563xfd34acf9.f4222x9e171bf9;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj2 = c0563xfd34acf9.f4220x75d576dc;
                            ChannelIterator channelIterator3 = c0563xfd34acf9.f4219x1378447b;
                            ReceiveChannel receiveChannel3 = c0563xfd34acf9.f4218x3271d0aa;
                            comparator3 = c0563xfd34acf9.f4217xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                C0563xfd34acf9 c0563xfd34acf94 = c0563xfd34acf9;
                                Object obj3 = obj2;
                                receiveChannel = receiveChannel3;
                                ChannelIterator channelIterator4 = channelIterator3;
                                C0563xfd34acf9 c0563xfd34acf95 = c0563xfd34acf94;
                                if (!((Boolean) obj).booleanValue()) {
                                    next = channelIterator4.next();
                                    if (comparator3.compare(obj3, next) >= 0) {
                                        next = obj3;
                                    }
                                    c0563xfd34acf92 = c0563xfd34acf95;
                                    channelIterator2 = channelIterator4;
                                    c0563xfd34acf92.f4217xfbe0c504 = comparator3;
                                    c0563xfd34acf92.f4218x3271d0aa = receiveChannel;
                                    c0563xfd34acf92.f4219x1378447b = channelIterator2;
                                    c0563xfd34acf92.f4220x75d576dc = next;
                                    c0563xfd34acf92.f4222x9e171bf9 = 2;
                                    hasNext = channelIterator2.hasNext(c0563xfd34acf92);
                                    if (hasNext == coroutine_suspended) {
                                        c0563xfd34acf94 = c0563xfd34acf92;
                                        obj3 = next;
                                        obj = hasNext;
                                        channelIterator4 = channelIterator2;
                                        C0563xfd34acf9 c0563xfd34acf952 = c0563xfd34acf94;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel, null);
                                            return obj3;
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                receiveChannel2 = receiveChannel3;
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th2;
                                }
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        channelIterator = c0563xfd34acf9.f4219x1378447b;
                        receiveChannel2 = c0563xfd34acf9.f4218x3271d0aa;
                        comparator2 = c0563xfd34acf9.f4217xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0563xfd34acf9.f4217xfbe0c504 = comparator;
                        c0563xfd34acf9.f4218x3271d0aa = receiveChannel;
                        c0563xfd34acf9.f4219x1378447b = it;
                        c0563xfd34acf9.f4222x9e171bf9 = 1;
                        Object hasNext2 = it.hasNext(c0563xfd34acf9);
                        if (hasNext2 != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext2;
                            comparator2 = comparator;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    cancelConsumed(receiveChannel2, null);
                    return null;
                }
                next = channelIterator.next();
                comparator3 = comparator2;
                ReceiveChannel receiveChannel4 = receiveChannel2;
                channelIterator2 = channelIterator;
                receiveChannel = receiveChannel4;
                c0563xfd34acf92 = c0563xfd34acf9;
                c0563xfd34acf92.f4217xfbe0c504 = comparator3;
                c0563xfd34acf92.f4218x3271d0aa = receiveChannel;
                c0563xfd34acf92.f4219x1378447b = channelIterator2;
                c0563xfd34acf92.f4220x75d576dc = next;
                c0563xfd34acf92.f4222x9e171bf9 = 2;
                hasNext = channelIterator2.hasNext(c0563xfd34acf92);
                if (hasNext == coroutine_suspended) {
                }
            }
        }
        c0563xfd34acf9 = new ContinuationImpl(continuation);
        obj = c0563xfd34acf9.f4221x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0563xfd34acf9.f4222x9e171bf9;
        if (i == 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a1 A[Catch: all -> 0x00af, TRY_LEAVE, TryCatch #3 {all -> 0x00af, blocks: (B:15:0x0099, B:17:0x00a1, B:20:0x0084, B:56:0x0056), top: B:55:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x007c A[Catch: all -> 0x0050, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:45:0x004c, B:46:0x006f, B:50:0x007c), top: B:44:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0095 -> B:14:0x0037). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object minWith(ReceiveChannel receiveChannel, Comparator comparator, Continuation continuation) {
        C0564x83ea4d5e c0564x83ea4d5e;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Comparator comparator2;
        Object next;
        Comparator comparator3;
        ChannelIterator channelIterator2;
        C0564x83ea4d5e c0564x83ea4d5e2;
        Object hasNext;
        if (continuation instanceof C0564x83ea4d5e) {
            C0564x83ea4d5e c0564x83ea4d5e3 = (C0564x83ea4d5e) continuation;
            int i2 = c0564x83ea4d5e3.f4228x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0564x83ea4d5e3.f4228x9e171bf9 = i2 - Integer.MIN_VALUE;
                c0564x83ea4d5e = c0564x83ea4d5e3;
                obj = c0564x83ea4d5e.f4227x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0564x83ea4d5e.f4228x9e171bf9;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj2 = c0564x83ea4d5e.f4226x75d576dc;
                            ChannelIterator channelIterator3 = c0564x83ea4d5e.f4225x1378447b;
                            ReceiveChannel receiveChannel3 = c0564x83ea4d5e.f4224x3271d0aa;
                            comparator3 = c0564x83ea4d5e.f4223xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                C0564x83ea4d5e c0564x83ea4d5e4 = c0564x83ea4d5e;
                                Object obj3 = obj2;
                                receiveChannel = receiveChannel3;
                                ChannelIterator channelIterator4 = channelIterator3;
                                C0564x83ea4d5e c0564x83ea4d5e5 = c0564x83ea4d5e4;
                                if (!((Boolean) obj).booleanValue()) {
                                    next = channelIterator4.next();
                                    if (comparator3.compare(obj3, next) <= 0) {
                                        next = obj3;
                                    }
                                    c0564x83ea4d5e2 = c0564x83ea4d5e5;
                                    channelIterator2 = channelIterator4;
                                    c0564x83ea4d5e2.f4223xfbe0c504 = comparator3;
                                    c0564x83ea4d5e2.f4224x3271d0aa = receiveChannel;
                                    c0564x83ea4d5e2.f4225x1378447b = channelIterator2;
                                    c0564x83ea4d5e2.f4226x75d576dc = next;
                                    c0564x83ea4d5e2.f4228x9e171bf9 = 2;
                                    hasNext = channelIterator2.hasNext(c0564x83ea4d5e2);
                                    if (hasNext == coroutine_suspended) {
                                        c0564x83ea4d5e4 = c0564x83ea4d5e2;
                                        obj3 = next;
                                        obj = hasNext;
                                        channelIterator4 = channelIterator2;
                                        C0564x83ea4d5e c0564x83ea4d5e52 = c0564x83ea4d5e4;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel, null);
                                            return obj3;
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                receiveChannel2 = receiveChannel3;
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th2;
                                }
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        channelIterator = c0564x83ea4d5e.f4225x1378447b;
                        receiveChannel2 = c0564x83ea4d5e.f4224x3271d0aa;
                        comparator2 = c0564x83ea4d5e.f4223xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0564x83ea4d5e.f4223xfbe0c504 = comparator;
                        c0564x83ea4d5e.f4224x3271d0aa = receiveChannel;
                        c0564x83ea4d5e.f4225x1378447b = it;
                        c0564x83ea4d5e.f4228x9e171bf9 = 1;
                        Object hasNext2 = it.hasNext(c0564x83ea4d5e);
                        if (hasNext2 != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext2;
                            comparator2 = comparator;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    cancelConsumed(receiveChannel2, null);
                    return null;
                }
                next = channelIterator.next();
                comparator3 = comparator2;
                ReceiveChannel receiveChannel4 = receiveChannel2;
                channelIterator2 = channelIterator;
                receiveChannel = receiveChannel4;
                c0564x83ea4d5e2 = c0564x83ea4d5e;
                c0564x83ea4d5e2.f4223xfbe0c504 = comparator3;
                c0564x83ea4d5e2.f4224x3271d0aa = receiveChannel;
                c0564x83ea4d5e2.f4225x1378447b = channelIterator2;
                c0564x83ea4d5e2.f4226x75d576dc = next;
                c0564x83ea4d5e2.f4228x9e171bf9 = 2;
                hasNext = channelIterator2.hasNext(c0564x83ea4d5e2);
                if (hasNext == coroutine_suspended) {
                }
            }
        }
        c0564x83ea4d5e = new ContinuationImpl(continuation);
        obj = c0564x83ea4d5e.f4227x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0564x83ea4d5e.f4228x9e171bf9;
        if (i == 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object none(ReceiveChannel receiveChannel, Continuation continuation) {
        C0565xf7f4835c c0565xf7f4835c;
        int i;
        try {
            if (continuation instanceof C0565xf7f4835c) {
                C0565xf7f4835c c0565xf7f4835c2 = (C0565xf7f4835c) continuation;
                int i2 = c0565xf7f4835c2.f4231x1378447b;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0565xf7f4835c2.f4231x1378447b = i2 - Integer.MIN_VALUE;
                    c0565xf7f4835c = c0565xf7f4835c2;
                    Object obj = c0565xf7f4835c.f4230x3271d0aa;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c0565xf7f4835c.f4231x1378447b;
                    if (i == 0) {
                        if (i == 1) {
                            receiveChannel = c0565xf7f4835c.f4229xfbe0c504;
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        ChannelIterator it = receiveChannel.iterator();
                        c0565xf7f4835c.f4229xfbe0c504 = receiveChannel;
                        c0565xf7f4835c.f4231x1378447b = 1;
                        obj = it.hasNext(c0565xf7f4835c);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    coroutine_suspended = Boxing.boxBoolean(!((Boolean) obj).booleanValue());
                    cancelConsumed(receiveChannel, null);
                    return coroutine_suspended;
                }
            }
            if (i == 0) {
            }
            coroutine_suspended = Boxing.boxBoolean(!((Boolean) obj).booleanValue());
            cancelConsumed(receiveChannel, null);
            return coroutine_suspended;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                cancelConsumed(receiveChannel, th);
                throw th2;
            }
        }
        c0565xf7f4835c = new ContinuationImpl(continuation);
        Object obj2 = c0565xf7f4835c.f4230x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0565xf7f4835c.f4231x1378447b;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'onReceiveCatching'")
    public static final /* synthetic */ SelectClause1 onReceiveOrNull(ReceiveChannel receiveChannel) {
        Intrinsics.checkNotNull(receiveChannel, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.onReceiveOrNull?>");
        return receiveChannel.getOnReceiveOrNull();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'receiveCatching'", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    public static final /* synthetic */ Object receiveOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        Intrinsics.checkNotNull(receiveChannel, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E of kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt.receiveOrNull?>");
        return receiveChannel.receiveOrNull(continuation);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final /* synthetic */ void sendBlocking(SendChannel sendChannel, Object obj) {
        if (!ChannelResult.m2295isSuccessimpl(sendChannel.mo2254trySendJP2dKIU(obj))) {
            BuildersKt.runBlocking$default(null, new C0535x8db55c8b(sendChannel, obj, null), 1, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008b A[Catch: all -> 0x0093, TRY_ENTER, TryCatch #2 {all -> 0x0093, blocks: (B:14:0x007e, B:19:0x008b, B:20:0x0092, B:48:0x004d), top: B:47:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006a A[Catch: all -> 0x0048, TRY_LEAVE, TryCatch #3 {all -> 0x0048, blocks: (B:37:0x0044, B:38:0x0062, B:40:0x006a, B:43:0x0097, B:44:0x009e), top: B:36:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097 A[Catch: all -> 0x0048, TRY_ENTER, TryCatch #3 {all -> 0x0048, blocks: (B:37:0x0044, B:38:0x0062, B:40:0x006a, B:43:0x0097, B:44:0x009e), top: B:36:0x0044 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object single(ReceiveChannel receiveChannel, Continuation continuation) {
        C0567xb8631db4 c0567xb8631db4;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Throwable th;
        if (continuation instanceof C0567xb8631db4) {
            C0567xb8631db4 c0567xb8631db42 = (C0567xb8631db4) continuation;
            int i2 = c0567xb8631db42.f4237x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0567xb8631db42.f4237x75d576dc = i2 - Integer.MIN_VALUE;
                c0567xb8631db4 = c0567xb8631db42;
                obj = c0567xb8631db4.f4236x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0567xb8631db4.f4237x75d576dc;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj2 = c0567xb8631db4.f4235x3271d0aa;
                            ReceiveChannel receiveChannel3 = c0567xb8631db4.f4234xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                coroutine_suspended = obj2;
                                receiveChannel = receiveChannel3;
                                if (((Boolean) obj).booleanValue()) {
                                    cancelConsumed(receiveChannel, null);
                                    return coroutine_suspended;
                                }
                                throw new IllegalArgumentException("ReceiveChannel has more than one element.");
                            } catch (Throwable th2) {
                                th = th2;
                                receiveChannel2 = receiveChannel3;
                            }
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ChannelIterator channelIterator2 = (ChannelIterator) c0567xb8631db4.f4235x3271d0aa;
                        receiveChannel2 = c0567xb8631db4.f4234xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            channelIterator = channelIterator2;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        cancelConsumed(receiveChannel2, th);
                        throw th4;
                    }
                }
                ResultKt.throwOnFailure(obj);
                try {
                    ChannelIterator it = receiveChannel.iterator();
                    c0567xb8631db4.f4234xfbe0c504 = receiveChannel;
                    c0567xb8631db4.f4235x3271d0aa = it;
                    c0567xb8631db4.f4237x75d576dc = 1;
                    Object hasNext = it.hasNext(c0567xb8631db4);
                    if (hasNext != coroutine_suspended) {
                        receiveChannel2 = receiveChannel;
                        channelIterator = it;
                        obj = hasNext;
                    }
                    return coroutine_suspended;
                } catch (Throwable th5) {
                    receiveChannel2 = receiveChannel;
                    th = th5;
                }
                if (!((Boolean) obj).booleanValue()) {
                    Object next = channelIterator.next();
                    c0567xb8631db4.f4234xfbe0c504 = receiveChannel2;
                    c0567xb8631db4.f4235x3271d0aa = next;
                    c0567xb8631db4.f4237x75d576dc = 2;
                    Object hasNext2 = channelIterator.hasNext(c0567xb8631db4);
                    if (hasNext2 != coroutine_suspended) {
                        coroutine_suspended = next;
                        obj = hasNext2;
                        receiveChannel = receiveChannel2;
                        if (((Boolean) obj).booleanValue()) {
                        }
                    }
                    return coroutine_suspended;
                }
                throw new NoSuchElementException("ReceiveChannel is empty.");
            }
        }
        c0567xb8631db4 = new ContinuationImpl(continuation);
        obj = c0567xb8631db4.f4236x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0567xb8631db4.f4237x75d576dc;
        if (i == 0) {
        }
        if (!((Boolean) obj).booleanValue()) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0070 A[Catch: all -> 0x0049, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0049, blocks: (B:38:0x0045, B:39:0x0063, B:42:0x0070), top: B:37:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object singleOrNull(ReceiveChannel receiveChannel, Continuation continuation) {
        C0568x5775b425 c0568x5775b425;
        Object obj;
        int i;
        ReceiveChannel receiveChannel2;
        ChannelIterator channelIterator;
        Object obj2;
        if (continuation instanceof C0568x5775b425) {
            C0568x5775b425 c0568x5775b4252 = (C0568x5775b425) continuation;
            int i2 = c0568x5775b4252.f4241x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0568x5775b4252.f4241x75d576dc = i2 - Integer.MIN_VALUE;
                c0568x5775b425 = c0568x5775b4252;
                obj = c0568x5775b425.f4240x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0568x5775b425.f4241x75d576dc;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Object obj3 = c0568x5775b425.f4239x3271d0aa;
                            ReceiveChannel receiveChannel3 = c0568x5775b425.f4238xfbe0c504;
                            try {
                                ResultKt.throwOnFailure(obj);
                                obj2 = obj3;
                                receiveChannel = receiveChannel3;
                                if (!((Boolean) obj).booleanValue()) {
                                    cancelConsumed(receiveChannel, null);
                                    return null;
                                }
                                cancelConsumed(receiveChannel, null);
                                return obj2;
                            } catch (Throwable th) {
                                th = th;
                                receiveChannel2 = receiveChannel3;
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    cancelConsumed(receiveChannel2, th);
                                    throw th2;
                                }
                            }
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ChannelIterator channelIterator2 = (ChannelIterator) c0568x5775b425.f4239x3271d0aa;
                    receiveChannel2 = c0568x5775b425.f4238xfbe0c504;
                    try {
                        ResultKt.throwOnFailure(obj);
                        channelIterator = channelIterator2;
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        ChannelIterator it = receiveChannel.iterator();
                        c0568x5775b425.f4238xfbe0c504 = receiveChannel;
                        c0568x5775b425.f4239x3271d0aa = it;
                        c0568x5775b425.f4241x75d576dc = 1;
                        Object hasNext = it.hasNext(c0568x5775b425);
                        if (hasNext != coroutine_suspended) {
                            receiveChannel2 = receiveChannel;
                            channelIterator = it;
                            obj = hasNext;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
                if (((Boolean) obj).booleanValue()) {
                    cancelConsumed(receiveChannel2, null);
                    return null;
                }
                Object next = channelIterator.next();
                c0568x5775b425.f4238xfbe0c504 = receiveChannel2;
                c0568x5775b425.f4239x3271d0aa = next;
                c0568x5775b425.f4241x75d576dc = 2;
                Object hasNext2 = channelIterator.hasNext(c0568x5775b425);
                if (hasNext2 != coroutine_suspended) {
                    obj2 = next;
                    obj = hasNext2;
                    receiveChannel = receiveChannel2;
                    if (!((Boolean) obj).booleanValue()) {
                    }
                } else {
                    return coroutine_suspended;
                }
            }
        }
        c0568x5775b425 = new ContinuationImpl(continuation);
        obj = c0568x5775b425.f4240x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0568x5775b425.f4241x75d576dc;
        if (i == 0) {
        }
        if (((Boolean) obj).booleanValue()) {
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel take(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0569x7ed2592c(receiveChannel, i, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel take$default(ReceiveChannel receiveChannel, int i, CoroutineContext coroutineContext, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return take(receiveChannel, i, coroutineContext);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel takeWhile(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0570xa9e8836a(receiveChannel, function2, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel takeWhile$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return takeWhile(receiveChannel, coroutineContext, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:12:0x002e, B:17:0x0064, B:19:0x006c, B:39:0x0045), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.coroutines.Continuation, 됨땦딻돴돴땔땵뎻딁땩뎡돠돰돛둣돴땬돴듸딎땫됐땥딽뎬뒤뒤땋듔땍땋둠딅땧땱둥듌딁땵땣뎰뎹뒘딅뒵뎠뒷뎠땍뒵땝땩도뒨땝뒈딝돴됨딅딞땄둬뒈둠돸딅땍뒹딽땔도뒵뒝득둡뒤땁땯듌뒙듽들돷딜땩뒨될돼듐딅땱땡땳뒻딽드딝딜땹듸둑든된뒘돨뒾득딽뒝돴땩듌둠뒾듟뒾땩뒻딹딄딤된뒷돼딐뎸뎰뒼땐] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [C extends kotlinx.coroutines.channels.SendChannel<? super E>] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v9, types: [kotlinx.coroutines.channels.ChannelIterator] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007c -> B:13:0x0031). Please report as a decompilation issue!!! */
    @PublishedApi
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends SendChannel<? super E>> Object toChannel(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        ?? r0;
        int i;
        ChannelIterator channelIterator;
        Object obj;
        ?? r8;
        SendChannel sendChannel;
        Object hasNext;
        try {
            if (continuation instanceof C0571xb103f13e) {
                C0571xb103f13e c0571xb103f13e = (C0571xb103f13e) continuation;
                int i2 = c0571xb103f13e.f4258x9738a56c;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0571xb103f13e.f4258x9738a56c = i2 - Integer.MIN_VALUE;
                    r0 = c0571xb103f13e;
                    Object obj2 = r0.f4257x75d576dc;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = r0.f4258x9738a56c;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                channelIterator = r0.f4256x1378447b;
                                ReceiveChannel<? extends E> receiveChannel2 = (C) r0.f4255x3271d0aa;
                                SendChannel sendChannel2 = r0.f4254xfbe0c504;
                                ResultKt.throwOnFailure(obj2);
                                SendChannel sendChannel3 = sendChannel2;
                                ReceiveChannel<? extends E> receiveChannel3 = receiveChannel2;
                                boolean z = (ChannelIterator<? extends E>) channelIterator;
                                receiveChannel = receiveChannel3;
                                sendChannel = (C) sendChannel3;
                                r8 = z;
                                r0.f4254xfbe0c504 = sendChannel;
                                r0.f4255x3271d0aa = receiveChannel;
                                r0.f4256x1378447b = r8;
                                r0.f4258x9738a56c = 1;
                                hasNext = r8.hasNext(r0);
                                if (hasNext != coroutine_suspended) {
                                    SendChannel sendChannel4 = sendChannel;
                                    boolean z2 = (C) receiveChannel;
                                    channelIterator = r8;
                                    obj2 = hasNext;
                                    obj = sendChannel4;
                                    c = z2;
                                    if (!((Boolean) obj2).booleanValue()) {
                                        Object next = channelIterator.next();
                                        r0.f4254xfbe0c504 = obj;
                                        r0.f4255x3271d0aa = (ReceiveChannel) c;
                                        r0.f4256x1378447b = channelIterator;
                                        r0.f4258x9738a56c = 2;
                                        Object send = obj.send(next, r0);
                                        sendChannel3 = obj;
                                        receiveChannel3 = c;
                                        if (send == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        boolean z3 = (ChannelIterator<? extends E>) channelIterator;
                                        receiveChannel = receiveChannel3;
                                        sendChannel = (C) sendChannel3;
                                        r8 = z3;
                                        r0.f4254xfbe0c504 = sendChannel;
                                        r0.f4255x3271d0aa = receiveChannel;
                                        r0.f4256x1378447b = r8;
                                        r0.f4258x9738a56c = 1;
                                        hasNext = r8.hasNext(r0);
                                        if (hasNext != coroutine_suspended) {
                                        }
                                    } else {
                                        cancelConsumed((ReceiveChannel) c, null);
                                        return obj;
                                    }
                                } else {
                                    return coroutine_suspended;
                                }
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            channelIterator = r0.f4256x1378447b;
                            boolean z4 = (C) r0.f4255x3271d0aa;
                            SendChannel sendChannel5 = r0.f4254xfbe0c504;
                            ResultKt.throwOnFailure(obj2);
                            obj = sendChannel5;
                            c = z4;
                            if (!((Boolean) obj2).booleanValue()) {
                            }
                        }
                    } else {
                        ResultKt.throwOnFailure(obj2);
                        try {
                            sendChannel = c;
                            r8 = receiveChannel.iterator();
                            r0.f4254xfbe0c504 = sendChannel;
                            r0.f4255x3271d0aa = receiveChannel;
                            r0.f4256x1378447b = r8;
                            r0.f4258x9738a56c = 1;
                            hasNext = r8.hasNext(r0);
                            if (hasNext != coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            c = receiveChannel;
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                cancelConsumed(c, th);
                                throw th2;
                            }
                        }
                    }
                }
            }
            if (i == 0) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        r0 = new ContinuationImpl(continuation);
        Object obj22 = r0.f4257x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = r0.f4258x9738a56c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0063 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:11:0x002d, B:12:0x005b, B:14:0x0063, B:16:0x0046), top: B:10:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.coroutines.Continuation, 됩둑땲딅뎰두땄딌땟땸득돸돠둠딽뎰땹딟뒙땄듸됐돵뎠둥땦뎻돝뒈딃둥뎸될디딝땭됩땵땃땮디땃뎰딐됴딨드돵듼듐둑뎰딨뒻따땭듐땠뒈딸뒷땜땜땩뎹땋딌뒋딟듰땰됨뒘돳딅뒤땥땤뎸둡땐땻땯뒀땡땻돶땳듸뎽땀뎨딄되땦돴뒙땃땝뎻땟둑딜뒙됫된돴땃도땅든둑땅둬딀땻뎰땣뒛땮땹땯듔딽땯돝땱돶딜땜] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v5, types: [kotlinx.coroutines.channels.ChannelIterator] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0058 -> B:12:0x005b). Please report as a decompilation issue!!! */
    @PublishedApi
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E, C extends Collection<? super E>> Object toCollection(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        ?? r0;
        int i;
        ReceiveChannel<? extends E> receiveChannel2;
        Throwable th;
        ?? it;
        C c2;
        Object hasNext;
        if (continuation instanceof C0572xaa66191c) {
            C0572xaa66191c c0572xaa66191c = (C0572xaa66191c) continuation;
            int i2 = c0572xaa66191c.f4263x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0572xaa66191c.f4263x9738a56c = i2 - Integer.MIN_VALUE;
                r0 = c0572xaa66191c;
                Object obj = r0.f4262x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = r0.f4263x9738a56c;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = r0.f4261x1378447b;
                        receiveChannel2 = r0.f4260x3271d0aa;
                        Collection collection = r0.f4259xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            Object obj2 = collection;
                            ChannelIterator channelIterator2 = channelIterator;
                            if (!((Boolean) obj).booleanValue()) {
                                obj2.add(channelIterator2.next());
                                c2 = obj2;
                                it = channelIterator2;
                                r0.f4259xfbe0c504 = c2;
                                r0.f4260x3271d0aa = receiveChannel2;
                                r0.f4261x1378447b = it;
                                r0.f4263x9738a56c = 1;
                                hasNext = it.hasNext(r0);
                                if (hasNext == coroutine_suspended) {
                                    obj2 = c2;
                                    obj = hasNext;
                                    channelIterator2 = it;
                                    if (!((Boolean) obj).booleanValue()) {
                                        cancelConsumed(receiveChannel2, null);
                                        return obj2;
                                    }
                                } else {
                                    return coroutine_suspended;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                cancelConsumed(receiveChannel2, th);
                                throw th3;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        c2 = c;
                        r0.f4259xfbe0c504 = c2;
                        r0.f4260x3271d0aa = receiveChannel2;
                        r0.f4261x1378447b = it;
                        r0.f4263x9738a56c = 1;
                        hasNext = it.hasNext(r0);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th4) {
                        receiveChannel2 = receiveChannel;
                        th = th4;
                        throw th;
                    }
                }
            }
        }
        r0 = new ContinuationImpl(continuation);
        Object obj3 = r0.f4262x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = r0.f4263x9738a56c;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0071 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #2 {all -> 0x0035, blocks: (B:11:0x0031, B:12:0x0069, B:14:0x0071), top: B:10:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0066 -> B:12:0x0069). Please report as a decompilation issue!!! */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <E> Object toList(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super List<? extends E>> continuation) {
        C0537xe312b7d3 c0537xe312b7d3;
        int i;
        ReceiveChannel<? extends E> receiveChannel2;
        Throwable th;
        List list;
        ChannelIterator it;
        List list2;
        Object hasNext;
        if (continuation instanceof C0537xe312b7d3) {
            C0537xe312b7d3 c0537xe312b7d32 = (C0537xe312b7d3) continuation;
            int i2 = c0537xe312b7d32.f4092x9e171bf9;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0537xe312b7d32.f4092x9e171bf9 = i2 - Integer.MIN_VALUE;
                c0537xe312b7d3 = c0537xe312b7d32;
                Object obj = c0537xe312b7d3.f4091x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0537xe312b7d3.f4092x9e171bf9;
                if (i == 0) {
                    if (i == 1) {
                        ChannelIterator channelIterator = c0537xe312b7d3.f4090x75d576dc;
                        ReceiveChannel<? extends E> receiveChannel3 = c0537xe312b7d3.f4089x1378447b;
                        List list3 = c0537xe312b7d3.f4088x3271d0aa;
                        list = c0537xe312b7d3.f4087xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            List list4 = list3;
                            ChannelIterator channelIterator2 = channelIterator;
                            if (!((Boolean) obj).booleanValue()) {
                                try {
                                    list4.add(channelIterator2.next());
                                    c0537xe312b7d3.f4087xfbe0c504 = list;
                                    c0537xe312b7d3.f4088x3271d0aa = list2;
                                    c0537xe312b7d3.f4089x1378447b = receiveChannel2;
                                    c0537xe312b7d3.f4090x75d576dc = it;
                                    c0537xe312b7d3.f4092x9e171bf9 = 1;
                                    hasNext = it.hasNext(c0537xe312b7d3);
                                    if (hasNext == coroutine_suspended) {
                                        receiveChannel3 = receiveChannel2;
                                        obj = hasNext;
                                        list4 = list2;
                                        channelIterator2 = it;
                                        if (!((Boolean) obj).booleanValue()) {
                                            cancelConsumed(receiveChannel3, null);
                                            return AbstractC0586x968d4673.build(list);
                                        }
                                    } else {
                                        return coroutine_suspended;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        cancelConsumed(receiveChannel2, th);
                                        throw th3;
                                    }
                                }
                                receiveChannel2 = receiveChannel3;
                                list2 = list4;
                                it = channelIterator2;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            receiveChannel2 = receiveChannel3;
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    try {
                        List createListBuilder = AbstractC0586x968d4673.createListBuilder();
                        list = createListBuilder;
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        list2 = createListBuilder;
                        c0537xe312b7d3.f4087xfbe0c504 = list;
                        c0537xe312b7d3.f4088x3271d0aa = list2;
                        c0537xe312b7d3.f4089x1378447b = receiveChannel2;
                        c0537xe312b7d3.f4090x75d576dc = it;
                        c0537xe312b7d3.f4092x9e171bf9 = 1;
                        hasNext = it.hasNext(c0537xe312b7d3);
                        if (hasNext == coroutine_suspended) {
                        }
                    } catch (Throwable th5) {
                        receiveChannel2 = receiveChannel;
                        th = th5;
                        throw th;
                    }
                }
            }
        }
        c0537xe312b7d3 = new ContinuationImpl(continuation);
        Object obj2 = c0537xe312b7d3.f4091x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0537xe312b7d3.f4092x9e171bf9;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005e A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #2 {all -> 0x002f, blocks: (B:11:0x002b, B:12:0x0056, B:14:0x005e, B:16:0x0044), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.coroutines.Continuation, 됩듽딸뎬듔둘둠땳두듨뒹딁딸뎠둬딀뎻땻된뎡듬뒈땲땅땸뒷딟돨땝땁딄됩땁땡땹뒝뒝뎹듔뎰땱땀둬딄뒙딽듨뎠따땨땨딎뒹돳돤디딐뒛땤땨땸딨딐땤돰땠땹땔뒷돵듔뒋딎돷둠듟둣딞뎸뎠둥땪돴딌땵듐딌땜딝듟둑딹됐듟뒼땫돳듬둑뒤듐딐뒐땹땬뎠땅땻딠들딻딄됨뎸뎰돨땫뒐드듐뒈될돨됨뒋돨딝땱땜땋] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [kotlinx.coroutines.channels.ChannelIterator] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0053 -> B:12:0x0056). Please report as a decompilation issue!!! */
    @PublishedApi
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <K, V, M extends Map<? super K, ? super V>> Object toMap(@NotNull ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel, @NotNull M m, @NotNull Continuation<? super M> continuation) {
        ?? r0;
        int i;
        ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel2;
        Throwable th;
        ?? it;
        M m2;
        Object hasNext;
        if (continuation instanceof C0573xb657c7a) {
            C0573xb657c7a c0573xb657c7a = (C0573xb657c7a) continuation;
            int i2 = c0573xb657c7a.f4268x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0573xb657c7a.f4268x9738a56c = i2 - Integer.MIN_VALUE;
                r0 = c0573xb657c7a;
                Object obj = r0.f4267x75d576dc;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = r0.f4268x9738a56c;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    try {
                        receiveChannel2 = receiveChannel;
                        it = receiveChannel.iterator();
                        m2 = m;
                        r0.f4264xfbe0c504 = m2;
                        r0.f4265x3271d0aa = receiveChannel2;
                        r0.f4266x1378447b = it;
                        r0.f4268x9738a56c = 1;
                        hasNext = it.hasNext(r0);
                        if (hasNext != coroutine_suspended) {
                        }
                    } catch (Throwable th2) {
                        receiveChannel2 = receiveChannel;
                        th = th2;
                        throw th;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ChannelIterator channelIterator = r0.f4266x1378447b;
                    receiveChannel2 = r0.f4265x3271d0aa;
                    Map map = r0.f4264xfbe0c504;
                    try {
                        ResultKt.throwOnFailure(obj);
                        Object obj2 = map;
                        ChannelIterator channelIterator2 = channelIterator;
                        if (!((Boolean) obj).booleanValue()) {
                            Pair pair = (Pair) channelIterator2.next();
                            obj2.put(pair.getFirst(), pair.getSecond());
                            m2 = obj2;
                            it = channelIterator2;
                            r0.f4264xfbe0c504 = m2;
                            r0.f4265x3271d0aa = receiveChannel2;
                            r0.f4266x1378447b = it;
                            r0.f4268x9738a56c = 1;
                            hasNext = it.hasNext(r0);
                            if (hasNext != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj2 = m2;
                            obj = hasNext;
                            channelIterator2 = it;
                            if (!((Boolean) obj).booleanValue()) {
                                cancelConsumed(receiveChannel2, null);
                                return obj2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            throw th;
                        } catch (Throwable th4) {
                            cancelConsumed(receiveChannel2, th);
                            throw th4;
                        }
                    }
                }
            }
        }
        r0 = new ContinuationImpl(continuation);
        Object obj3 = r0.f4267x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = r0.f4268x9738a56c;
        if (i != 0) {
        }
    }

    @PublishedApi
    @Nullable
    public static final <E> Object toMutableSet(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Set<E>> continuation) {
        return toCollection(receiveChannel, new LinkedHashSet(), continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object trySendBlocking(@NotNull SendChannel<? super E> sendChannel, E e) {
        Object mo2254trySendJP2dKIU = sendChannel.mo2254trySendJP2dKIU(e);
        if (!(mo2254trySendJP2dKIU instanceof ChannelResult.Failed)) {
            return ChannelResult.INSTANCE.m2300successJP2dKIU(Unit.INSTANCE);
        }
        return ((ChannelResult) BuildersKt.runBlocking$default(null, new C0311x75d576dc(sendChannel, e, null), 1, null)).getHolder();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ ReceiveChannel withIndex(ReceiveChannel receiveChannel, CoroutineContext coroutineContext) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumes(receiveChannel), new C0574xbc8cfca0(receiveChannel, null), 6, null);
    }

    public static /* synthetic */ ReceiveChannel withIndex$default(ReceiveChannel receiveChannel, CoroutineContext coroutineContext, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return withIndex(receiveChannel, coroutineContext);
    }

    public static /* synthetic */ ReceiveChannel zip$default(ReceiveChannel receiveChannel, ReceiveChannel receiveChannel2, CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineContext = Dispatchers.getUnconfined();
        }
        return zip(receiveChannel, receiveChannel2, coroutineContext, function2);
    }

    @Nullable
    public static final <E> Object consumeEach(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return AbstractC1312xe0b2b7ff.m4336xfbe0c504(receiveChannel, function1, continuation);
    }

    @PublishedApi
    @NotNull
    public static final <E, R, V> ReceiveChannel<V> zip(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull ReceiveChannel<? extends R> receiveChannel2, @NotNull CoroutineContext coroutineContext, @NotNull Function2<? super E, ? super R, ? extends V> function2) {
        return ProduceKt.produce$default(GlobalScope.INSTANCE, coroutineContext, 0, null, consumesAll(receiveChannel, receiveChannel2), new C0575xf16ed574(receiveChannel2, receiveChannel, function2, null), 6, null);
    }

    public static final <E, R> R consume(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super ReceiveChannel<? extends E>, ? extends R> function1) {
        try {
            R invoke = function1.invoke(receiveChannel);
            InlineMarker.finallyStart(1);
            cancelConsumed(receiveChannel, null);
            InlineMarker.finallyEnd(1);
            return invoke;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0069 A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:12:0x002e, B:17:0x0061, B:19:0x0069, B:21:0x006f, B:41:0x0042), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r0v2, types: [될듔땀뒐땻돝둘돸땄뒵딅뎽딹딌돠땁돝둑딠듸돼땤됴딌땃돛듔땨뎨둔뎠돸뒋돠딹듌딹뒤돠땟딽듸뎰딁딨든땍딄된드뎰둔도도듻디뎠땜돷돝딞땯듟돨됨땍뒉땪둑됐돸뒵뒷듨땲딃듟땵뒐둔듟둔돤딟뎬딹돵듨듻뒀듐돸딄돸땩된땀뎽둠딎둡땮디둣땨뒀땄되둑땲땍든뒙듨땀땳듻딄둣땯듸됨딐땝뒤뒋딐땭땵듻, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.channels.SendChannel] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v9, types: [kotlinx.coroutines.channels.ChannelIterator] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006d -> B:13:0x007e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x007b -> B:13:0x007e). Please report as a decompilation issue!!! */
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object filterNotNullTo(ReceiveChannel receiveChannel, SendChannel sendChannel, Continuation continuation) {
        ?? r0;
        int i;
        ChannelIterator channelIterator;
        Object obj;
        ?? r8;
        SendChannel sendChannel2;
        Object hasNext;
        try {
            if (continuation instanceof C0553x8ceee08c) {
                C0553x8ceee08c c0553x8ceee08c = (C0553x8ceee08c) continuation;
                int i2 = c0553x8ceee08c.f4165x9738a56c;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c0553x8ceee08c.f4165x9738a56c = i2 - Integer.MIN_VALUE;
                    r0 = c0553x8ceee08c;
                    Object obj2 = r0.f4164x75d576dc;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = r0.f4165x9738a56c;
                    if (i != 0) {
                        ResultKt.throwOnFailure(obj2);
                        try {
                            sendChannel2 = sendChannel;
                            r8 = receiveChannel.iterator();
                            r0.f4161xfbe0c504 = sendChannel2;
                            r0.f4162x3271d0aa = receiveChannel;
                            r0.f4163x1378447b = r8;
                            r0.f4165x9738a56c = 1;
                            hasNext = r8.hasNext(r0);
                            if (hasNext == coroutine_suspended) {
                            }
                        } catch (Throwable th) {
                            sendChannel = receiveChannel;
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                cancelConsumed(sendChannel, th);
                                throw th2;
                            }
                        }
                    } else if (i == 1) {
                        channelIterator = r0.f4163x1378447b;
                        ReceiveChannel receiveChannel2 = r0.f4162x3271d0aa;
                        SendChannel sendChannel3 = r0.f4161xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                        obj = sendChannel3;
                        sendChannel = receiveChannel2;
                        if (((Boolean) obj2).booleanValue()) {
                        }
                    } else {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        channelIterator = r0.f4163x1378447b;
                        ReceiveChannel receiveChannel3 = r0.f4162x3271d0aa;
                        SendChannel sendChannel4 = r0.f4161xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                        SendChannel sendChannel5 = sendChannel4;
                        ReceiveChannel receiveChannel4 = receiveChannel3;
                        r8 = channelIterator;
                        receiveChannel = receiveChannel4;
                        sendChannel2 = sendChannel5;
                        r0.f4161xfbe0c504 = sendChannel2;
                        r0.f4162x3271d0aa = receiveChannel;
                        r0.f4163x1378447b = r8;
                        r0.f4165x9738a56c = 1;
                        hasNext = r8.hasNext(r0);
                        if (hasNext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        SendChannel sendChannel6 = sendChannel2;
                        sendChannel = receiveChannel;
                        channelIterator = r8;
                        obj2 = hasNext;
                        obj = sendChannel6;
                        if (((Boolean) obj2).booleanValue()) {
                            cancelConsumed(sendChannel, null);
                            return obj;
                        }
                        Object next = channelIterator.next();
                        sendChannel5 = obj;
                        receiveChannel4 = sendChannel;
                        if (next != null) {
                            r0.f4161xfbe0c504 = obj;
                            r0.f4162x3271d0aa = sendChannel;
                            r0.f4163x1378447b = channelIterator;
                            r0.f4165x9738a56c = 2;
                            Object send = obj.send(next, r0);
                            sendChannel5 = obj;
                            receiveChannel4 = sendChannel;
                            if (send == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        r8 = channelIterator;
                        receiveChannel = receiveChannel4;
                        sendChannel2 = sendChannel5;
                        r0.f4161xfbe0c504 = sendChannel2;
                        r0.f4162x3271d0aa = receiveChannel;
                        r0.f4163x1378447b = r8;
                        r0.f4165x9738a56c = 1;
                        hasNext = r8.hasNext(r0);
                        if (hasNext == coroutine_suspended) {
                        }
                    }
                }
            }
            if (i != 0) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        r0 = new ContinuationImpl(continuation);
        Object obj22 = r0.f4164x75d576dc;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = r0.f4165x9738a56c;
    }
}
