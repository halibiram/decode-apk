package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0791xac9fa430;
import defpackage.AbstractC0797x9305f1c2;
import defpackage.AbstractC0816x552ab527;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC1312xe0b2b7ff;
import defpackage.AbstractC1313xd408e99d;
import defpackage.C0484x14d0979d;
import defpackage.C0515x8dcf029e;
import defpackage.C0516xfaf3b1ee;
import defpackage.C0523xbc861cf4;
import defpackage.C0526xd072ab8a;
import defpackage.C0648x4ba9bb0c;
import defpackage.C0699x9d76e469;
import defpackage.C0718xb260a14b;
import defpackage.C0751x2066acff;
import defpackage.C0752xe966412c;
import defpackage.C0753xabb395ea;
import defpackage.C0754x4dabacd;
import defpackage.C0755x21fb499a;
import defpackage.C0757xc77ac43a;
import defpackage.C0763x547aff04;
import defpackage.C0764x6428e3e8;
import defpackage.C0769x5c1558f0;
import defpackage.C0772xeb4552c3;
import defpackage.C0777xb840269;
import defpackage.C0779xde4f84b7;
import defpackage.C0781xdf8a9067;
import defpackage.C0784x65b05495;
import defpackage.C0786x45b01df3;
import defpackage.C0790xfeb0b799;
import defpackage.C0792x6ab15b88;
import defpackage.C0793x7359165b;
import defpackage.C0794xbb7efd7d;
import defpackage.C0796x2c5f01ec;
import defpackage.C0798xa1ff5d25;
import defpackage.C0799xe121cbdb;
import defpackage.C0800xf4a0721f;
import defpackage.C0801x830f1609;
import defpackage.C0802xccb2dfcc;
import defpackage.C0803x9bc548f5;
import defpackage.C0804x1723ba79;
import defpackage.C0806x44c8a191;
import defpackage.C0807x9c499e33;
import defpackage.C0808x622fb155;
import defpackage.C0809x98a9ee24;
import defpackage.C0810x6dc2308f;
import defpackage.C0812x683fc210;
import defpackage.C0813xe781948b;
import defpackage.C0814xacf4e140;
import defpackage.C0815x9df3bace;
import defpackage.C0820x38707bd2;
import defpackage.C0821xa08f4aa3;
import defpackage.C0827x80804b47;
import defpackage.C0829x8c3bc11b;
import defpackage.C0830xf9bac857;
import defpackage.C1065xfc9f1e15;
import defpackage.C1066xeb0e2234;
import defpackage.C1104x20f43faa;
import defpackage.C1150x9aaf73e9;
import defpackage.C1205xd26b6b49;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowMerge;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FlowCoroutineKt;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NopCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"땵땅딐땀땀땀딀됫딅뒤땱땍뒻드딸땩돤뎸뒈되딞돳뎻땤드뒘땄드뒐뎬뒐땬돛듼됩땹땭땧듽땍든뎡돤땬돸드두둥둠땍땠돸돰뒤뒉돳된딜됩뒝둠돸둔드딌뒨땁뒈됨땡뒻땣땫돝뒵땯뒀땵땡두될뒝땜뒼듻땀땨땫땧될돸된딹됐땲땝됫둘땳땁땐둘뒼딁딎뒷뒀뎨뒘땅땡딹드땝딨땭드딝둡듼뎹땅둑된딁뒷땱땄땧땲", "땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰", "뒼돸된뎰딄딽돰뎨돳땻땵둣땫뒾뎠뎬땯딠둡뒷뎻딀땬딅둑땲땁땲도땁땤땱둘듌돶뎰뎠돳딜땋둡딞돳딨땸됐땠딜땫땹둠뒛듟뒾둥돳뒋딤뎸득된듬듟딽뒵돷땸듻돵돠땄돰딃돤뒝땐뒙된돶땩듟땍딻둡두둣됐둡땥돷뒋딐됴돷도뒋됫뒀따땰뒷땹땣돷뒾됩땹됐뎠되땫땻뒝딅둣땋되듐듔도돶듰될딅땨뒷땀됨땭듼", "듌도땜딸듽땣땩듻땮돰딸드뒾둬땍땩땀돨뎠땬뒻땥따딹딽둣딽땐될돴딎땥듨딄뒼딜돳듸땋딄됐딝뎬뒋땡둑둔듻딟디돝땐된딄뎠뒤듻도듐딐땹땲딁딨땫딠들땸딀뒙될딀둘땋돤둑디딜뒬둣뒉들땵뎠뎡뒘딜땫땱땣뎠딃돷딄돨둡듬뒛뎨땰딌뒈땬땡땅뎽뒈둘되땸딞땱둑땲되땵되뎹듬듨도딎딀뎸뎠듰둘뒷뒉땡", "듌땭땰땹디딎뒼된땪딄땁뒋듼땧땵땻뒛딽듬돵땩땳둬딄딀되딁딁땩땝땨딟듰둠땠뒻딁땨됨뒙들땫딝둘뒉땅뒾됫땝돶둥땅딸돨둡듻된땫뎡땣딨딐듟땭뒤딅둘딤들뒋듌딟딀땝둔돠땡뒨뎰듰땟땬듟뎹뒬두땅돰뎠따딅땪땹땵듐딹땨둣땜땍딎둥따듽뒵딜돰둡딜땋뒾따땣뒬듼뒵딐딃듽돵땰든듬뒝뒋두땧됩딄돠", "드됩딽도땪돤뒀돛들디땤된뒤땭되딝뎨딄뒼딐뒵땯땮둘됨땱땵땄돵딜든두딞뎰돼뒬듐땨뎬뎬둥땍땐두땩땜땹땫돰뎽딄땪뒀뒹땍딐땫됩땲둡딨뒵들듐됩돰뒾드됩땡땻땤뎽뒷뒘둔딞둠돰뒝듨땲땔뒷땻듟될땀뒋딌듌돛땦듻드뎡땥됨딐뒨뒛뒘뎹듐둔딽돝듸둡딄듨딨땣뒐돴돨돷돼땬듼듬돳됨듻듰뒵듽땟돵됫", "kotlinx/coroutines/flow/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FlowKt {

    @NotNull
    public static final String DEFAULT_CONCURRENCY_PROPERTY_NAME = "kotlinx.coroutines.flow.defaultConcurrency";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object all(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Boolean> continuation) {
        C0792x6ab15b88 c0792x6ab15b88;
        int i;
        Ref.BooleanRef booleanRef;
        AbortFlowException e;
        FlowKt__LogicKt$all$$inlined$collectWhile$1 flowKt__LogicKt$all$$inlined$collectWhile$1;
        if (continuation instanceof C0792x6ab15b88) {
            C0792x6ab15b88 c0792x6ab15b882 = (C0792x6ab15b88) continuation;
            int i2 = c0792x6ab15b882.f4798x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0792x6ab15b882.f4798x75d576dc = i2 - Integer.MIN_VALUE;
                c0792x6ab15b88 = c0792x6ab15b882;
                Object obj = c0792x6ab15b88.f4797x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0792x6ab15b88.f4798x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__LogicKt$all$$inlined$collectWhile$1 = c0792x6ab15b88.f4796x3271d0aa;
                        booleanRef = c0792x6ab15b88.f4795xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            FlowExceptions_commonKt.checkOwnership(e, flowKt__LogicKt$all$$inlined$collectWhile$1);
                            JobKt.ensureActive(c0792x6ab15b88.getContext());
                            return Boxing.boxBoolean(!booleanRef.element);
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                    FlowKt__LogicKt$all$$inlined$collectWhile$1 flowKt__LogicKt$all$$inlined$collectWhile$12 = new FlowKt__LogicKt$all$$inlined$collectWhile$1(function2, booleanRef2);
                    try {
                        c0792x6ab15b88.f4795xfbe0c504 = booleanRef2;
                        c0792x6ab15b88.f4796x3271d0aa = flowKt__LogicKt$all$$inlined$collectWhile$12;
                        c0792x6ab15b88.f4798x75d576dc = 1;
                        if (flow.collect(flowKt__LogicKt$all$$inlined$collectWhile$12, c0792x6ab15b88) != coroutine_suspended) {
                            booleanRef = booleanRef2;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (AbortFlowException e3) {
                        booleanRef = booleanRef2;
                        e = e3;
                        flowKt__LogicKt$all$$inlined$collectWhile$1 = flowKt__LogicKt$all$$inlined$collectWhile$12;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__LogicKt$all$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0792x6ab15b88.getContext());
                        return Boxing.boxBoolean(!booleanRef.element);
                    }
                }
                return Boxing.boxBoolean(!booleanRef.element);
            }
        }
        c0792x6ab15b88 = new ContinuationImpl(continuation);
        Object obj2 = c0792x6ab15b88.f4797x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0792x6ab15b88.f4798x75d576dc;
        if (i == 0) {
        }
        return Boxing.boxBoolean(!booleanRef.element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object any(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Boolean> continuation) {
        C0793x7359165b c0793x7359165b;
        int i;
        Ref.BooleanRef booleanRef;
        AbortFlowException e;
        FlowKt__LogicKt$any$$inlined$collectWhile$1 flowKt__LogicKt$any$$inlined$collectWhile$1;
        if (continuation instanceof C0793x7359165b) {
            C0793x7359165b c0793x7359165b2 = (C0793x7359165b) continuation;
            int i2 = c0793x7359165b2.f4802x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0793x7359165b2.f4802x75d576dc = i2 - Integer.MIN_VALUE;
                c0793x7359165b = c0793x7359165b2;
                Object obj = c0793x7359165b.f4801x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0793x7359165b.f4802x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__LogicKt$any$$inlined$collectWhile$1 = c0793x7359165b.f4800x3271d0aa;
                        booleanRef = c0793x7359165b.f4799xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            FlowExceptions_commonKt.checkOwnership(e, flowKt__LogicKt$any$$inlined$collectWhile$1);
                            JobKt.ensureActive(c0793x7359165b.getContext());
                            return Boxing.boxBoolean(booleanRef.element);
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                    FlowKt__LogicKt$any$$inlined$collectWhile$1 flowKt__LogicKt$any$$inlined$collectWhile$12 = new FlowKt__LogicKt$any$$inlined$collectWhile$1(function2, booleanRef2);
                    try {
                        c0793x7359165b.f4799xfbe0c504 = booleanRef2;
                        c0793x7359165b.f4800x3271d0aa = flowKt__LogicKt$any$$inlined$collectWhile$12;
                        c0793x7359165b.f4802x75d576dc = 1;
                        if (flow.collect(flowKt__LogicKt$any$$inlined$collectWhile$12, c0793x7359165b) != coroutine_suspended) {
                            booleanRef = booleanRef2;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (AbortFlowException e3) {
                        booleanRef = booleanRef2;
                        e = e3;
                        flowKt__LogicKt$any$$inlined$collectWhile$1 = flowKt__LogicKt$any$$inlined$collectWhile$12;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__LogicKt$any$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0793x7359165b.getContext());
                        return Boxing.boxBoolean(booleanRef.element);
                    }
                }
                return Boxing.boxBoolean(booleanRef.element);
            }
        }
        c0793x7359165b = new ContinuationImpl(continuation);
        Object obj2 = c0793x7359165b.f4801x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0793x7359165b.f4802x75d576dc;
        if (i == 0) {
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull final Function0<? extends T> function0) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Object emit = flowCollector.emit(Function0.this.invoke(), continuation);
                if (emit == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return emit;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T> SharedFlow<T> asSharedFlow(@NotNull MutableSharedFlow<T> mutableSharedFlow) {
        return new C1065xfc9f1e15(mutableSharedFlow, null);
    }

    @NotNull
    public static final <T> StateFlow<T> asStateFlow(@NotNull MutableStateFlow<T> mutableStateFlow) {
        return new C1066xeb0e2234(mutableStateFlow, null);
    }

    @NotNull
    public static final <T> Flow<T> buffer(@NotNull Flow<? extends T> flow, int i, @NotNull BufferOverflow bufferOverflow) {
        int i2;
        BufferOverflow bufferOverflow2;
        if (i < 0 && i != -2 && i != -1) {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was ").toString());
        }
        if (i == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (i == -1) {
            bufferOverflow2 = BufferOverflow.DROP_OLDEST;
            i2 = 0;
        } else {
            i2 = i;
            bufferOverflow2 = bufferOverflow;
        }
        if (flow instanceof FusibleFlow) {
            return FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, null, i2, bufferOverflow2, 1, null);
        }
        return new ChannelFlowOperatorImpl(flow, null, i2, bufferOverflow2, 2, null);
    }

    public static /* synthetic */ Flow buffer$default(Flow flow, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return buffer(flow, i, bufferOverflow);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'cache()' is 'shareIn' with unlimited replay and 'started = SharingStarted.Lazily' argument'", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, started = SharingStarted.Lazily, replay = Int.MAX_VALUE)", imports = {}))
    @NotNull
    public static final <T> Flow<T> cache(@NotNull Flow<? extends T> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> callbackFlow(@BuilderInference @NotNull Function2<? super ProducerScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new C0484x14d0979d(function2, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Flow<T> cancellable(@NotNull Flow<? extends T> flow) {
        if (!(flow instanceof CancellableFlow)) {
            return new C0516xfaf3b1ee(flow);
        }
        return flow;
    }

    @NotNull
    /* renamed from: catch, reason: not valid java name */
    public static final <T> Flow<T> m2312catch(@NotNull Flow<? extends T> flow, @NotNull Function3<? super FlowCollector<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(flow, function3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object catchImpl(@NotNull Flow<? extends T> flow, @NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Throwable> continuation) {
        C0777xb840269 c0777xb840269;
        int i;
        Throwable th;
        Ref.ObjectRef objectRef;
        Throwable th2;
        Job job;
        CancellationException cancellationException;
        if (continuation instanceof C0777xb840269) {
            C0777xb840269 c0777xb8402692 = (C0777xb840269) continuation;
            int i2 = c0777xb8402692.f4752x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0777xb8402692.f4752x1378447b = i2 - Integer.MIN_VALUE;
                c0777xb840269 = c0777xb8402692;
                Object obj = c0777xb840269.f4751x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0777xb840269.f4752x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0777xb840269.f4750xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th3) {
                            th = th3;
                            th2 = (Throwable) objectRef.element;
                            if (th2 != null) {
                            }
                            job = (Job) c0777xb840269.getContext().get(Job.INSTANCE);
                            if (job == null) {
                            }
                            if (th2 != null) {
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    try {
                        FlowCollector<? super Object> c0779xde4f84b7 = new C0779xde4f84b7(flowCollector, objectRef2);
                        c0777xb840269.f4750xfbe0c504 = objectRef2;
                        c0777xb840269.f4752x1378447b = 1;
                        if (flow.collect(c0779xde4f84b7, c0777xb840269) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        objectRef = objectRef2;
                        th2 = (Throwable) objectRef.element;
                        if (th2 != null || !Intrinsics.areEqual(th2, th)) {
                            job = (Job) c0777xb840269.getContext().get(Job.INSTANCE);
                            if (job == null && job.isCancelled() && (cancellationException = job.getCancellationException()) != null && Intrinsics.areEqual(cancellationException, th)) {
                                throw th;
                            }
                            if (th2 != null) {
                                return th;
                            }
                            if (th instanceof CancellationException) {
                                AbstractC0720xaa9ccb5a.addSuppressed(th2, th);
                                throw th2;
                            }
                            AbstractC0720xaa9ccb5a.addSuppressed(th, th2);
                            throw th;
                        }
                        throw th;
                    }
                }
                return null;
            }
        }
        c0777xb840269 = new ContinuationImpl(continuation);
        Object obj2 = c0777xb840269.f4751x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0777xb840269.f4752x1378447b;
        if (i == 0) {
        }
        return null;
    }

    @NotNull
    public static final <T> Flow<T> channelFlow(@BuilderInference @NotNull Function2<? super ProducerScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new C0526xd072ab8a(function2, EmptyCoroutineContext.INSTANCE, -2, BufferOverflow.SUSPEND);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> Flow<List<T>> chunked(@NotNull Flow<? extends T> flow, int i) {
        if (i >= 1) {
            return new FlowKt__TransformKt$chunked$$inlined$unsafeFlow$1(flow, i);
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Expected positive chunk size, but got ").toString());
    }

    @Nullable
    public static final Object collect(@NotNull Flow<?> flow, @NotNull Continuation<? super Unit> continuation) {
        Object collect = flow.collect(NopCollector.INSTANCE, continuation);
        return collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @Nullable
    public static final <T> Object collectIndexed(@NotNull Flow<? extends T> flow, @NotNull Function3<? super Integer, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @NotNull Continuation<? super Unit> continuation) {
        Object collect = flow.collect(new FlowKt__CollectKt$collectIndexed$2(function3), continuation);
        if (collect != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return collect;
    }

    @Nullable
    public static final <T> Object collectLatest(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        Object collect = collect(buffer$default(mapLatest(flow, function2), 0, null, 2, null), continuation);
        if (collect != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return collect;
    }

    @Nullable
    public static final <T> Object collectWhile(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Unit> continuation) {
        return AbstractC0791xac9fa430.m3353x3271d0aa(flow, function2, continuation);
    }

    @NotNull
    public static final <T1, T2, R> Flow<R> combine(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return flowCombine(flow, flow2, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "this.combine(other, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, R> Flow<R> combineLatest(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return combine(flow, flow2, function3);
    }

    @NotNull
    public static final <T1, T2, R> Flow<R> combineTransform(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @BuilderInference @NotNull Function4<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return flow(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$2(new Flow[]{flow, flow2}, null, function4));
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'compose' is 'let'", replaceWith = @ReplaceWith(expression = "let(transformer)", imports = {}))
    @NotNull
    public static final <T, R> Flow<R> compose(@NotNull Flow<? extends T> flow, @NotNull Function1<? super Flow<? extends T>, ? extends Flow<? extends R>> function1) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatMap' is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> Flow<R> concatMap(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, ? extends Flow<? extends R>> function1) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { emit(value) }'", replaceWith = @ReplaceWith(expression = "onCompletion { emit(value) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> concatWith(@NotNull Flow<? extends T> flow, T t) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> conflate(@NotNull Flow<? extends T> flow) {
        return buffer$default(flow, -1, null, 2, null);
    }

    @NotNull
    public static final <T> Flow<T> consumeAsFlow(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new C0523xbc861cf4(receiveChannel, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object count(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super Integer> continuation) {
        C0753xabb395ea c0753xabb395ea;
        int i;
        Ref.IntRef intRef;
        if (continuation instanceof C0753xabb395ea) {
            C0753xabb395ea c0753xabb395ea2 = (C0753xabb395ea) continuation;
            int i2 = c0753xabb395ea2.f4677x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0753xabb395ea2.f4677x1378447b = i2 - Integer.MIN_VALUE;
                c0753xabb395ea = c0753xabb395ea2;
                Object obj = c0753xabb395ea.f4676x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0753xabb395ea.f4677x1378447b;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.IntRef intRef2 = new Ref.IntRef();
                    FlowCollector<? super Object> c0754x4dabacd = new C0754x4dabacd(intRef2);
                    c0753xabb395ea.f4675xfbe0c504 = intRef2;
                    c0753xabb395ea.f4677x1378447b = 1;
                    if (flow.collect(c0754x4dabacd, c0753xabb395ea) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    intRef = intRef2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    intRef = c0753xabb395ea.f4675xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxInt(intRef.element);
            }
        }
        c0753xabb395ea = new ContinuationImpl(continuation);
        Object obj2 = c0753xabb395ea.f4676x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0753xabb395ea.f4677x1378447b;
        if (i != 0) {
        }
        return Boxing.boxInt(intRef.element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @FlowPreview
    @NotNull
    public static final <T> Flow<T> debounce(@NotNull Flow<? extends T> flow, final long j) {
        if (j >= 0) {
            return j == 0 ? flow : FlowCoroutineKt.scopedFlow(new C0763x547aff04(new Function1() { // from class: 뒷듨돳듔따땝뎬뒹땃땯된땄둑땸듌딐딽듽땵뒷땧딄뎬드딞듬된땰둑땳땰딎땭뒵땮됐땔땁딃땜땨딽땮딻땠땡듰뒋돶됫땡땣뒷둠돛뎬뎡뎸뎻뒀뒙듰딅땹뒤둔뒨딄둠됐땯땠땵딜땣뎰돼둡돤땅땸뒤둬땅뎬땨땟뎻딄딝뒤딌땱땣땯땻둣뒈딝땜뎠땪딌됨딁뒾땬뒉땲둑뎰딠뒾딎땸듨땧됫땨딐딐돛딁뎬딹든뎨돼듔뎻
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Long.valueOf(j);
                }
            }, flow, null));
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative");
    }

    @FlowPreview
    @NotNull
    /* renamed from: debounce-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m2313debounceHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return debounce(flow, DelayKt.m2225toDelayMillisLRDsOJo(j));
    }

    @FlowPreview
    @JvmName(name = "debounceDuration")
    @NotNull
    @OverloadResolutionByLambdaReturnType
    public static final <T> Flow<T> debounceDuration(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, Duration> function1) {
        return FlowCoroutineKt.scopedFlow(new C0763x547aff04(new C0718xb260a14b(1, function1), flow, null));
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onEach { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onEach { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> delayEach(@NotNull Flow<? extends T> flow, long j) {
        return onEach(flow, new C0798xa1ff5d25(j, null));
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'onStart { delay(timeMillis) }'", replaceWith = @ReplaceWith(expression = "onStart { delay(timeMillis) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> delayFlow(@NotNull Flow<? extends T> flow, long j) {
        return onStart(flow, new C0799xe121cbdb(j, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Flow<T> distinctUntilChanged(@NotNull Flow<? extends T> flow) {
        return flow instanceof StateFlow ? flow : AbstractC1312xe0b2b7ff.m4337x3271d0aa(flow, AbstractC1312xe0b2b7ff.f5754xfbe0c504, AbstractC1312xe0b2b7ff.f5755x3271d0aa);
    }

    @NotNull
    public static final <T, K> Flow<T> distinctUntilChangedBy(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, ? extends K> function1) {
        return AbstractC1312xe0b2b7ff.m4337x3271d0aa(flow, function1, AbstractC1312xe0b2b7ff.f5755x3271d0aa);
    }

    @NotNull
    public static final <T> Flow<T> drop(@NotNull final Flow<? extends T> flow, final int i) {
        if (i >= 0) {
            return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1
                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                    Object collect = Flow.this.collect(new C0784x65b05495(new Ref.IntRef(), i, flowCollector), continuation);
                    if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        return collect;
                    }
                    return Unit.INSTANCE;
                }
            };
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Drop count should be non-negative, but had ").toString());
    }

    @NotNull
    public static final <T> Flow<T> dropWhile(@NotNull final Flow<? extends T> flow, @NotNull final Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Object collect = Flow.this.collect(new C0786x45b01df3(new Ref.BooleanRef(), flowCollector, function2), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @Nullable
    public static final <T> Object emitAll(@NotNull FlowCollector<? super T> flowCollector, @NotNull ReceiveChannel<? extends T> receiveChannel, @NotNull Continuation<? super Unit> continuation) {
        Object m4339xfbe0c504 = AbstractC1313xd408e99d.m4339xfbe0c504(flowCollector, receiveChannel, true, continuation);
        return m4339xfbe0c504 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED() ? m4339xfbe0c504 : Unit.INSTANCE;
    }

    @NotNull
    public static final <T> Flow<T> emptyFlow() {
        return C0699x9d76e469.f4545xfbe0c504;
    }

    public static final void ensureActive(@NotNull FlowCollector<?> flowCollector) {
        if (!(flowCollector instanceof ThrowingCollector)) {
        } else {
            throw ((ThrowingCollector) flowCollector).e;
        }
    }

    @NotNull
    public static final <T> Flow<T> filter(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filter$$inlined$unsafeTransform$1(flow, function2);
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:103)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static final /* synthetic */ <R> kotlinx.coroutines.flow.Flow<R> filterIsInstance(kotlinx.coroutines.flow.Flow<?> r1) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$1
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.filterIsInstance(kotlinx.coroutines.flow.Flow):kotlinx.coroutines.flow.Flow");
    }

    @NotNull
    public static final <T> Flow<T> filterNot(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1(flow, function2);
    }

    @NotNull
    public static final <T> Flow<T> filterNotNull(@NotNull final Flow<? extends T> flow) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n43#2,2:50\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final /* synthetic */ FlowCollector f2176xfbe0c504;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                    public /* synthetic */ Object f2177xfbe0c504;

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public int f2178x3271d0aa;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f2177xfbe0c504 = obj;
                        this.f2178x3271d0aa |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f2176xfbe0c504 = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t, Continuation<? super Unit> continuation) {
                    AnonymousClass1 anonymousClass1;
                    int i;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f2178x3271d0aa;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f2178x3271d0aa = i2 - Integer.MIN_VALUE;
                            Object obj = anonymousClass1.f2177xfbe0c504;
                            Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                            i = anonymousClass1.f2178x3271d0aa;
                            if (i == 0) {
                                if (i == 1) {
                                    ResultKt.throwOnFailure(obj);
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                ResultKt.throwOnFailure(obj);
                                if (t != null) {
                                    anonymousClass1.f2178x3271d0aa = 1;
                                    if (this.f2176xfbe0c504.emit(t, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    anonymousClass1 = new AnonymousClass1(continuation);
                    Object obj2 = anonymousClass1.f2177xfbe0c504;
                    Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = anonymousClass1.f2178x3271d0aa;
                    if (i == 0) {
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0801x830f1609 c0801x830f1609;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$first$$inlined$collectWhile$1 flowKt__ReduceKt$first$$inlined$collectWhile$1;
        if (continuation instanceof C0801x830f1609) {
            C0801x830f1609 c0801x830f16092 = (C0801x830f1609) continuation;
            int i2 = c0801x830f16092.f4826x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0801x830f16092.f4826x75d576dc = i2 - Integer.MIN_VALUE;
                c0801x830f1609 = c0801x830f16092;
                Object obj = c0801x830f1609.f4825x1378447b;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0801x830f1609.f4826x75d576dc;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = (T) NullSurrogateKt.NULL;
                    ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public Object emit(Object obj2, Continuation<? super Unit> continuation2) {
                            Ref.ObjectRef.this.element = obj2;
                            throw new AbortFlowException(this);
                        }
                    };
                    try {
                        c0801x830f1609.f4823xfbe0c504 = objectRef2;
                        c0801x830f1609.f4824x3271d0aa = r2;
                        c0801x830f1609.f4826x75d576dc = 1;
                        if (flow.collect(r2, c0801x830f1609) != coroutine_suspended) {
                            objectRef = objectRef2;
                        }
                    } catch (AbortFlowException e2) {
                        objectRef = objectRef2;
                        e = e2;
                        flowKt__ReduceKt$first$$inlined$collectWhile$1 = r2;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$first$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0801x830f1609.getContext());
                        coroutine_suspended = objectRef.element;
                        if (coroutine_suspended == NullSurrogateKt.NULL) {
                        }
                        return coroutine_suspended;
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                flowKt__ReduceKt$first$$inlined$collectWhile$1 = c0801x830f1609.f4824x3271d0aa;
                objectRef = c0801x830f1609.f4823xfbe0c504;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$first$$inlined$collectWhile$1);
                    JobKt.ensureActive(c0801x830f1609.getContext());
                    coroutine_suspended = objectRef.element;
                    if (coroutine_suspended == NullSurrogateKt.NULL) {
                    }
                    return coroutine_suspended;
                }
                coroutine_suspended = objectRef.element;
                if (coroutine_suspended == NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Expected at least one element");
                }
                return coroutine_suspended;
            }
        }
        c0801x830f1609 = new ContinuationImpl(continuation);
        Object obj2 = c0801x830f1609.f4825x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0801x830f1609.f4826x75d576dc;
        if (i != 0) {
        }
        coroutine_suspended = objectRef.element;
        if (coroutine_suspended == NullSurrogateKt.NULL) {
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object firstOrNull(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0803x9bc548f5 c0803x9bc548f5;
        int i;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1;
        if (continuation instanceof C0803x9bc548f5) {
            C0803x9bc548f5 c0803x9bc548f52 = (C0803x9bc548f5) continuation;
            int i2 = c0803x9bc548f52.f4834x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0803x9bc548f52.f4834x75d576dc = i2 - Integer.MIN_VALUE;
                c0803x9bc548f5 = c0803x9bc548f52;
                Object obj = c0803x9bc548f5.f4833x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0803x9bc548f5.f4834x75d576dc;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public Object emit(Object obj2, Continuation<? super Unit> continuation2) {
                            Ref.ObjectRef.this.element = obj2;
                            throw new AbortFlowException(this);
                        }
                    };
                    try {
                        c0803x9bc548f5.f4831xfbe0c504 = objectRef2;
                        c0803x9bc548f5.f4832x3271d0aa = r2;
                        c0803x9bc548f5.f4834x75d576dc = 1;
                        if (flow.collect(r2, c0803x9bc548f5) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef = objectRef2;
                    } catch (AbortFlowException e2) {
                        objectRef = objectRef2;
                        e = e2;
                        flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 = r2;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0803x9bc548f5.getContext());
                        return objectRef.element;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 = c0803x9bc548f5.f4832x3271d0aa;
                    objectRef = c0803x9bc548f5.f4831xfbe0c504;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (AbortFlowException e3) {
                        e = e3;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0803x9bc548f5.getContext());
                        return objectRef.element;
                    }
                }
                return objectRef.element;
            }
        }
        c0803x9bc548f5 = new ContinuationImpl(continuation);
        Object obj2 = c0803x9bc548f5.f4833x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0803x9bc548f5.f4834x75d576dc;
        if (i != 0) {
        }
        return objectRef.element;
    }

    @NotNull
    public static final ReceiveChannel<Unit> fixedPeriodTicker(@NotNull CoroutineScope coroutineScope, long j) {
        return ProduceKt.produce$default(coroutineScope, null, 0, new C0764x6428e3e8(j, null), 1, null);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue is 'flatMapConcat'", replaceWith = @ReplaceWith(expression = "flatMapConcat(mapper)", imports = {}))
    @NotNull
    public static final <T, R> Flow<R> flatMap(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> Flow<R> flatMapConcat(@NotNull final Flow<? extends T> flow, @NotNull final Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return flattenConcat(new Flow<Flow<Object>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n50#2:50\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final /* synthetic */ FlowCollector f2086xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Function2 f2087x3271d0aa;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {50, 50}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                    public /* synthetic */ Object f2088xfbe0c504;

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public int f2089x3271d0aa;

                    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
                    public FlowCollector f2090x1378447b;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f2088xfbe0c504 = obj;
                        this.f2089x3271d0aa |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
                    this.f2086xfbe0c504 = flowCollector;
                    this.f2087x3271d0aa = function2;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x005a A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object obj2;
                    Object coroutine_suspended;
                    int i;
                    FlowCollector flowCollector;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f2089x3271d0aa;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f2089x3271d0aa = i2 - Integer.MIN_VALUE;
                            obj2 = anonymousClass1.f2088xfbe0c504;
                            coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                            i = anonymousClass1.f2089x3271d0aa;
                            if (i == 0) {
                                if (i != 1) {
                                    if (i == 2) {
                                        ResultKt.throwOnFailure(obj2);
                                        return Unit.INSTANCE;
                                    }
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                FlowCollector flowCollector2 = anonymousClass1.f2090x1378447b;
                                ResultKt.throwOnFailure(obj2);
                                flowCollector = flowCollector2;
                            } else {
                                ResultKt.throwOnFailure(obj2);
                                FlowCollector flowCollector3 = this.f2086xfbe0c504;
                                anonymousClass1.f2090x1378447b = flowCollector3;
                                anonymousClass1.f2089x3271d0aa = 1;
                                Object invoke = this.f2087x3271d0aa.invoke(obj, anonymousClass1);
                                if (invoke == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                obj2 = invoke;
                                flowCollector = flowCollector3;
                            }
                            anonymousClass1.f2090x1378447b = null;
                            anonymousClass1.f2089x3271d0aa = 2;
                            if (flowCollector.emit(obj2, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    anonymousClass1 = new AnonymousClass1(continuation);
                    obj2 = anonymousClass1.f2088xfbe0c504;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = anonymousClass1.f2089x3271d0aa;
                    if (i == 0) {
                    }
                    anonymousClass1.f2090x1378447b = null;
                    anonymousClass1.f2089x3271d0aa = 2;
                    if (flowCollector.emit(obj2, anonymousClass1) == coroutine_suspended) {
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Flow<Object>> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, function2), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        });
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> Flow<R> flatMapLatest(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return transformLatest(flow, new FlowKt__MergeKt$flatMapLatest$1(function2, null));
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> Flow<R> flatMapMerge(@NotNull final Flow<? extends T> flow, int i, @NotNull final Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        int i2 = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return flattenMerge(new Flow<Flow<Object>>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n50#2:50\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final /* synthetic */ FlowCollector f2094xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Function2 f2095x3271d0aa;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2", f = "Merge.kt", i = {}, l = {50, 50}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                    public /* synthetic */ Object f2096xfbe0c504;

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public int f2097x3271d0aa;

                    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
                    public FlowCollector f2098x1378447b;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f2096xfbe0c504 = obj;
                        this.f2097x3271d0aa |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
                    this.f2094xfbe0c504 = flowCollector;
                    this.f2095x3271d0aa = function2;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x005a A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object obj2;
                    Object coroutine_suspended;
                    int i;
                    FlowCollector flowCollector;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f2097x3271d0aa;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f2097x3271d0aa = i2 - Integer.MIN_VALUE;
                            obj2 = anonymousClass1.f2096xfbe0c504;
                            coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                            i = anonymousClass1.f2097x3271d0aa;
                            if (i == 0) {
                                if (i != 1) {
                                    if (i == 2) {
                                        ResultKt.throwOnFailure(obj2);
                                        return Unit.INSTANCE;
                                    }
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                FlowCollector flowCollector2 = anonymousClass1.f2098x1378447b;
                                ResultKt.throwOnFailure(obj2);
                                flowCollector = flowCollector2;
                            } else {
                                ResultKt.throwOnFailure(obj2);
                                FlowCollector flowCollector3 = this.f2094xfbe0c504;
                                anonymousClass1.f2098x1378447b = flowCollector3;
                                anonymousClass1.f2097x3271d0aa = 1;
                                Object invoke = this.f2095x3271d0aa.invoke(obj, anonymousClass1);
                                if (invoke == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                obj2 = invoke;
                                flowCollector = flowCollector3;
                            }
                            anonymousClass1.f2098x1378447b = null;
                            anonymousClass1.f2097x3271d0aa = 2;
                            if (flowCollector.emit(obj2, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    anonymousClass1 = new AnonymousClass1(continuation);
                    obj2 = anonymousClass1.f2096xfbe0c504;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = anonymousClass1.f2097x3271d0aa;
                    if (i == 0) {
                    }
                    anonymousClass1.f2098x1378447b = null;
                    anonymousClass1.f2097x3271d0aa = 2;
                    if (flowCollector.emit(obj2, anonymousClass1) == coroutine_suspended) {
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Flow<Object>> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, function2), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, i);
    }

    public static /* synthetic */ Flow flatMapMerge$default(Flow flow, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        } else {
            int i3 = AbstractC0797x9305f1c2.f4813xfbe0c504;
        }
        return flatMapMerge(flow, i, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'flatten' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> Flow<T> flatten(@NotNull Flow<? extends Flow<? extends T>> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> Flow<T> flattenConcat(@NotNull final Flow<? extends Flow<? extends T>> flow) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__MergeKt$flattenConcat$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Object collect = Flow.this.collect(new C0515x8dcf029e(flowCollector, 1), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T> Flow<T> flattenMerge(@NotNull Flow<? extends Flow<? extends T>> flow, int i) {
        int i2 = AbstractC0797x9305f1c2.f4813xfbe0c504;
        if (i > 0) {
            if (i == 1) {
                return flattenConcat(flow);
            }
            return new ChannelFlowMerge(flow, i, null, 0, null, 28, null);
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Expected positive concurrency level, but had ").toString());
    }

    public static /* synthetic */ Flow flattenMerge$default(Flow flow, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        } else {
            int i3 = AbstractC0797x9305f1c2.f4813xfbe0c504;
        }
        return flattenMerge(flow, i);
    }

    @NotNull
    public static final <T> Flow<T> flow(@BuilderInference @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new C1104x20f43faa(function2);
    }

    @JvmName(name = "flowCombine")
    @NotNull
    public static final <T1, T2, R> Flow<R> flowCombine(@NotNull final Flow<? extends T1> flow, @NotNull final Flow<? extends T2> flow2, @NotNull final Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return (Flow<R>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Object combineInternal = CombineKt.combineInternal(flowCollector, new Flow[]{Flow.this, flow2}, C0830xf9bac857.f4910xfbe0c504, new C0796x2c5f01ec(function3, null, 1), continuation);
                if (combineInternal == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @JvmName(name = "flowCombineTransform")
    @NotNull
    public static final <T1, T2, R> Flow<R> flowCombineTransform(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @BuilderInference @NotNull Function4<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super Continuation<? super Unit>, ? extends Object> function4) {
        return flow(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$1(new Flow[]{flow, flow2}, null, function4));
    }

    @NotNull
    public static final <T> Flow<T> flowOf(@NotNull T... tArr) {
        return new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1(tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Flow<T> flowOn(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        if (coroutineContext.get(Job.INSTANCE) == null) {
            if (!Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE)) {
                if (flow instanceof FusibleFlow) {
                    return FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, coroutineContext, 0, null, 6, null);
                }
                return new ChannelFlowOperatorImpl(flow, coroutineContext, 0, null, 12, null);
            }
            return flow;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    @Nullable
    public static final <T, R> Object fold(@NotNull Flow<? extends T> flow, R r, @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, @NotNull Continuation<? super R> continuation) {
        return AbstractC0816x552ab527.m3354xfbe0c504(flow, r, function3, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'forEach' is 'collect'", replaceWith = @ReplaceWith(expression = "collect(action)", imports = {}))
    public static final <T> void forEach(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    public static final int getDEFAULT_CONCURRENCY() {
        return AbstractC0797x9305f1c2.f4813xfbe0c504;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object last(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0806x44c8a191 c0806x44c8a191;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C0806x44c8a191) {
            C0806x44c8a191 c0806x44c8a1912 = (C0806x44c8a191) continuation;
            int i2 = c0806x44c8a1912.f4844x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0806x44c8a1912.f4844x1378447b = i2 - Integer.MIN_VALUE;
                c0806x44c8a191 = c0806x44c8a1912;
                Object obj = c0806x44c8a191.f4843x3271d0aa;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0806x44c8a191.f4844x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0806x44c8a191.f4842xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = (T) NullSurrogateKt.NULL;
                    FlowCollector<? super Object> c0807x9c499e33 = new C0807x9c499e33(objectRef2);
                    c0806x44c8a191.f4842xfbe0c504 = objectRef2;
                    c0806x44c8a191.f4844x1378447b = 1;
                    if (flow.collect(c0807x9c499e33, c0806x44c8a191) != coroutine_suspended) {
                        objectRef = objectRef2;
                    }
                    return coroutine_suspended;
                }
                coroutine_suspended = objectRef.element;
                if (coroutine_suspended == NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Expected at least one element");
                }
                return coroutine_suspended;
            }
        }
        c0806x44c8a191 = new ContinuationImpl(continuation);
        Object obj2 = c0806x44c8a191.f4843x3271d0aa;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0806x44c8a191.f4844x1378447b;
        if (i == 0) {
        }
        coroutine_suspended = objectRef.element;
        if (coroutine_suspended == NullSurrogateKt.NULL) {
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object lastOrNull(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0808x622fb155 c0808x622fb155;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C0808x622fb155) {
            C0808x622fb155 c0808x622fb1552 = (C0808x622fb155) continuation;
            int i2 = c0808x622fb1552.f4848x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0808x622fb1552.f4848x1378447b = i2 - Integer.MIN_VALUE;
                c0808x622fb155 = c0808x622fb1552;
                Object obj = c0808x622fb155.f4847x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0808x622fb155.f4848x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0808x622fb155.f4846xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    FlowCollector<? super Object> c0809x98a9ee24 = new C0809x98a9ee24(objectRef2);
                    c0808x622fb155.f4846xfbe0c504 = objectRef2;
                    c0808x622fb155.f4848x1378447b = 1;
                    if (flow.collect(c0809x98a9ee24, c0808x622fb155) != coroutine_suspended) {
                        objectRef = objectRef2;
                    } else {
                        return coroutine_suspended;
                    }
                }
                return objectRef.element;
            }
        }
        c0808x622fb155 = new ContinuationImpl(continuation);
        Object obj2 = c0808x622fb155.f4847x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0808x622fb155.f4848x1378447b;
        if (i == 0) {
        }
        return objectRef.element;
    }

    @NotNull
    public static final <T> Job launchIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope) {
        return BuildersKt.launch$default(coroutineScope, null, null, new C0751x2066acff(flow, null), 3, null);
    }

    @NotNull
    public static final <T, R> Flow<R> map(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$map$$inlined$unsafeTransform$1(flow, function2);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> Flow<R> mapLatest(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return transformLatest(flow, new C0796x2c5f01ec(function2, null, 0));
    }

    @NotNull
    public static final <T, R> Flow<R> mapNotNull(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return new FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(flow, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'merge' is 'flattenConcat'", replaceWith = @ReplaceWith(expression = "flattenConcat()", imports = {}))
    @NotNull
    public static final <T> Flow<T> merge(@NotNull Flow<? extends Flow<? extends T>> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final Void noImpl() {
        throw new UnsupportedOperationException("Not implemented, should not be called");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object none(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Boolean> continuation) {
        C0794xbb7efd7d c0794xbb7efd7d;
        int i;
        if (continuation instanceof C0794xbb7efd7d) {
            C0794xbb7efd7d c0794xbb7efd7d2 = (C0794xbb7efd7d) continuation;
            int i2 = c0794xbb7efd7d2.f4804x3271d0aa;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0794xbb7efd7d2.f4804x3271d0aa = i2 - Integer.MIN_VALUE;
                c0794xbb7efd7d = c0794xbb7efd7d2;
                Object obj = c0794xbb7efd7d.f4803xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0794xbb7efd7d.f4804x3271d0aa;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    c0794xbb7efd7d.f4804x3271d0aa = 1;
                    obj = any(flow, function2, c0794xbb7efd7d);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Boxing.boxBoolean(!((Boolean) obj).booleanValue());
            }
        }
        c0794xbb7efd7d = new ContinuationImpl(continuation);
        Object obj2 = c0794xbb7efd7d.f4803xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0794xbb7efd7d.f4804x3271d0aa;
        if (i == 0) {
        }
        return Boxing.boxBoolean(!((Boolean) obj2).booleanValue());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> Flow<T> observeOn(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> onCompletion(@NotNull Flow<? extends T> flow, @NotNull Function3<? super FlowCollector<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(flow, function3);
    }

    @NotNull
    public static final <T> Flow<T> onEach(@NotNull final Flow<? extends T> flow, @NotNull final Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n75#2,2:50\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final /* synthetic */ FlowCollector f2202xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Function2 f2203x3271d0aa;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", i = {0, 0}, l = {50, 51}, m = "emit", n = {"value", "$this$onEach_u24lambda_u248"}, s = {"L$0", "L$1"})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                    public /* synthetic */ Object f2204xfbe0c504;

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public int f2205x3271d0aa;

                    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
                    public Object f2207x75d576dc;

                    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
                    public FlowCollector f2208x9738a56c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f2204xfbe0c504 = obj;
                        this.f2205x3271d0aa |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, Function2 function2) {
                    this.f2202xfbe0c504 = flowCollector;
                    this.f2203x3271d0aa = function2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:19:0x0067 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(T t, Continuation<? super Unit> continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object coroutine_suspended;
                    int i;
                    Object obj;
                    FlowCollector flowCollector;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f2205x3271d0aa;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f2205x3271d0aa = i2 - Integer.MIN_VALUE;
                            Object obj2 = anonymousClass1.f2204xfbe0c504;
                            coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                            i = anonymousClass1.f2205x3271d0aa;
                            if (i == 0) {
                                if (i != 1) {
                                    if (i == 2) {
                                        ResultKt.throwOnFailure(obj2);
                                        return Unit.INSTANCE;
                                    }
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                FlowCollector flowCollector2 = anonymousClass1.f2208x9738a56c;
                                obj = anonymousClass1.f2207x75d576dc;
                                ResultKt.throwOnFailure(obj2);
                                flowCollector = flowCollector2;
                            } else {
                                ResultKt.throwOnFailure(obj2);
                                anonymousClass1.f2207x75d576dc = t;
                                FlowCollector flowCollector3 = this.f2202xfbe0c504;
                                anonymousClass1.f2208x9738a56c = flowCollector3;
                                anonymousClass1.f2205x3271d0aa = 1;
                                InlineMarker.mark(6);
                                Object invoke = this.f2203x3271d0aa.invoke(t, anonymousClass1);
                                InlineMarker.mark(7);
                                if (invoke == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                obj = t;
                                flowCollector = flowCollector3;
                            }
                            anonymousClass1.f2207x75d576dc = null;
                            anonymousClass1.f2208x9738a56c = null;
                            anonymousClass1.f2205x3271d0aa = 2;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    anonymousClass1 = new AnonymousClass1(continuation);
                    Object obj22 = anonymousClass1.f2204xfbe0c504;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = anonymousClass1.f2205x3271d0aa;
                    if (i == 0) {
                    }
                    anonymousClass1.f2207x75d576dc = null;
                    anonymousClass1.f2208x9738a56c = null;
                    anonymousClass1.f2205x3271d0aa = 2;
                    if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, function2), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T> Flow<T> onEmpty(@NotNull Flow<? extends T> flow, @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onEmpty$$inlined$unsafeFlow$1(flow, function2);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> onErrorResume(@NotNull Flow<? extends T> flow, @NotNull Flow<? extends T> flow2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emitAll(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emitAll(fallback) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> onErrorResumeNext(@NotNull Flow<? extends T> flow, @NotNull Flow<? extends T> flow2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { emit(fallback) }'", replaceWith = @ReplaceWith(expression = "catch { emit(fallback) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> onErrorReturn(@NotNull Flow<? extends T> flow, T t) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    public static /* synthetic */ Flow onErrorReturn$default(Flow flow, Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function1 = new C0648x4ba9bb0c(3);
        }
        return onErrorReturn(flow, obj, function1);
    }

    @NotNull
    public static final <T> Flow<T> onStart(@NotNull Flow<? extends T> flow, @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(function2, flow);
    }

    @NotNull
    public static final <T> SharedFlow<T> onSubscription(@NotNull SharedFlow<? extends T> sharedFlow, @NotNull Function2<? super FlowCollector<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return new C1205xd26b6b49(sharedFlow, function2);
    }

    @NotNull
    public static final <T> ReceiveChannel<T> produceIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope) {
        return ChannelFlowKt.asChannelFlow(flow).produceImpl(coroutineScope);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish()' is 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStarted.Lazily' argument, \npublish().refCount() translates to 'started = SharingStarted.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> Flow<T> publish(@NotNull Flow<? extends T> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Collect flow in the desired context instead")
    @NotNull
    public static final <T> Flow<T> publishOn(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> receiveAsFlow(@NotNull ReceiveChannel<? extends T> receiveChannel) {
        return new C0523xbc861cf4(receiveChannel, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <S, T extends S> Object reduce(@NotNull Flow<? extends T> flow, @NotNull Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, @NotNull Continuation<? super S> continuation) {
        C0810x6dc2308f c0810x6dc2308f;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C0810x6dc2308f) {
            C0810x6dc2308f c0810x6dc2308f2 = (C0810x6dc2308f) continuation;
            int i2 = c0810x6dc2308f2.f4852x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0810x6dc2308f2.f4852x1378447b = i2 - Integer.MIN_VALUE;
                c0810x6dc2308f = c0810x6dc2308f2;
                Object obj = c0810x6dc2308f.f4851x3271d0aa;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0810x6dc2308f.f4852x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0810x6dc2308f.f4850xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = NullSurrogateKt.NULL;
                    FlowCollector<? super Object> c0812x683fc210 = new C0812x683fc210(objectRef2, function3);
                    c0810x6dc2308f.f4850xfbe0c504 = objectRef2;
                    c0810x6dc2308f.f4852x1378447b = 1;
                    if (flow.collect(c0812x683fc210, c0810x6dc2308f) != coroutine_suspended) {
                        objectRef = objectRef2;
                    }
                    return coroutine_suspended;
                }
                coroutine_suspended = objectRef.element;
                if (coroutine_suspended == NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Empty flow can't be reduced");
                }
                return coroutine_suspended;
            }
        }
        c0810x6dc2308f = new ContinuationImpl(continuation);
        Object obj2 = c0810x6dc2308f.f4851x3271d0aa;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0810x6dc2308f.f4852x1378447b;
        if (i == 0) {
        }
        coroutine_suspended = objectRef.element;
        if (coroutine_suspended == NullSurrogateKt.NULL) {
        }
        return coroutine_suspended;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay()' is 'shareIn' with unlimited replay. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStarted.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStarted.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, Int.MAX_VALUE)", imports = {}))
    @NotNull
    public static final <T> Flow<T> replay(@NotNull Flow<? extends T> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> retry(@NotNull Flow<? extends T> flow, long j, @NotNull Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        if (j > 0) {
            return retryWhen(flow, new C0781xdf8a9067(j, function2, null));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("Expected positive amount of retries, but had ", j).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlin.coroutines.jvm.internal.SuspendLambda] */
    public static Flow retry$default(Flow flow, long j, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = Long.MAX_VALUE;
        }
        Function2 function22 = function2;
        if ((i & 2) != 0) {
            function22 = new SuspendLambda(2, null);
        }
        return retry(flow, j, function22);
    }

    @NotNull
    public static final <T> Flow<T> retryWhen(@NotNull Flow<? extends T> flow, @NotNull Function4<? super FlowCollector<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(flow, function4);
    }

    @NotNull
    public static final <T, R> Flow<R> runningFold(@NotNull Flow<? extends T> flow, R r, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return new FlowKt__TransformKt$runningFold$$inlined$unsafeFlow$1(r, flow, function3);
    }

    @NotNull
    public static final <T> Flow<T> runningReduce(@NotNull final Flow<? extends T> flow, @NotNull final Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$runningReduce$$inlined$unsafeFlow$1
            /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.coroutines.internal.Symbol, T] */
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = NullSurrogateKt.NULL;
                Object collect = Flow.this.collect(new C0827x80804b47(objectRef, function3, flowCollector), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @FlowPreview
    @NotNull
    public static final <T> Flow<T> sample(@NotNull Flow<? extends T> flow, long j) {
        if (j > 0) {
            return FlowCoroutineKt.scopedFlow(new C0769x5c1558f0(j, flow, null));
        }
        throw new IllegalArgumentException("Sample period should be positive");
    }

    @FlowPreview
    @NotNull
    /* renamed from: sample-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m2314sampleHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return sample(flow, DelayKt.m2225toDelayMillisLRDsOJo(j));
    }

    @NotNull
    public static final <T, R> Flow<R> scan(@NotNull Flow<? extends T> flow, R r, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        return runningFold(flow, r, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow has less verbose 'scan' shortcut", replaceWith = @ReplaceWith(expression = "scan(initial, operation)", imports = {}))
    @NotNull
    public static final <T, R> Flow<R> scanFold(@NotNull Flow<? extends T> flow, R r, @BuilderInference @NotNull Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "'scanReduce' was renamed to 'runningReduce' to be consistent with Kotlin standard library", replaceWith = @ReplaceWith(expression = "runningReduce(operation)", imports = {}))
    @NotNull
    public static final <T> Flow<T> scanReduce(@NotNull Flow<? extends T> flow, @NotNull Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3) {
        return runningReduce(flow, function3);
    }

    @NotNull
    public static final <T> SharedFlow<T> shareIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull SharingStarted sharingStarted, int i) {
        CoroutineStart coroutineStart;
        C1150x9aaf73e9 m2332xfbe0c504 = AbstractC0317x3271d0aa.m2332xfbe0c504(flow, i);
        MutableSharedFlow MutableSharedFlow = SharedFlowKt.MutableSharedFlow(i, m2332xfbe0c504.f5507x3271d0aa, m2332xfbe0c504.f5508x1378447b);
        Symbol symbol = SharedFlowKt.NO_VALUE;
        if (Intrinsics.areEqual(sharingStarted, SharingStarted.INSTANCE.getEagerly())) {
            coroutineStart = CoroutineStart.DEFAULT;
        } else {
            coroutineStart = CoroutineStart.UNDISPATCHED;
        }
        return new C1065xfc9f1e15(MutableSharedFlow, BuildersKt.launch(coroutineScope, m2332xfbe0c504.f5509x75d576dc, coroutineStart, new C0316xfbe0c504(sharingStarted, m2332xfbe0c504.f5506xfbe0c504, MutableSharedFlow, symbol, null)));
    }

    public static /* synthetic */ SharedFlow shareIn$default(Flow flow, CoroutineScope coroutineScope, SharingStarted sharingStarted, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return shareIn(flow, coroutineScope, sharingStarted, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object single(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0813xe781948b c0813xe781948b;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C0813xe781948b) {
            C0813xe781948b c0813xe781948b2 = (C0813xe781948b) continuation;
            int i2 = c0813xe781948b2.f4861x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0813xe781948b2.f4861x1378447b = i2 - Integer.MIN_VALUE;
                c0813xe781948b = c0813xe781948b2;
                Object obj = c0813xe781948b.f4860x3271d0aa;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0813xe781948b.f4861x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0813xe781948b.f4859xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = (T) NullSurrogateKt.NULL;
                    FlowCollector<? super Object> c0814xacf4e140 = new C0814xacf4e140(objectRef2);
                    c0813xe781948b.f4859xfbe0c504 = objectRef2;
                    c0813xe781948b.f4861x1378447b = 1;
                    if (flow.collect(c0814xacf4e140, c0813xe781948b) != coroutine_suspended) {
                        objectRef = objectRef2;
                    }
                    return coroutine_suspended;
                }
                coroutine_suspended = objectRef.element;
                if (coroutine_suspended == NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Flow is empty");
                }
                return coroutine_suspended;
            }
        }
        c0813xe781948b = new ContinuationImpl(continuation);
        Object obj2 = c0813xe781948b.f4860x3271d0aa;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0813xe781948b.f4861x1378447b;
        if (i == 0) {
        }
        coroutine_suspended = objectRef.element;
        if (coroutine_suspended == NullSurrogateKt.NULL) {
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1, kotlinx.coroutines.flow.FlowCollector] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object singleOrNull(@NotNull Flow<? extends T> flow, @NotNull Continuation<? super T> continuation) {
        C0815x9df3bace c0815x9df3bace;
        int i;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 flowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1;
        T t;
        if (continuation instanceof C0815x9df3bace) {
            C0815x9df3bace c0815x9df3bace2 = (C0815x9df3bace) continuation;
            int i2 = c0815x9df3bace2.f4866x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0815x9df3bace2.f4866x75d576dc = i2 - Integer.MIN_VALUE;
                c0815x9df3bace = c0815x9df3bace2;
                Object obj = c0815x9df3bace.f4865x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0815x9df3bace.f4866x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 = c0815x9df3bace.f4864x3271d0aa;
                        objectRef = c0815x9df3bace.f4863xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (AbortFlowException e2) {
                            e = e2;
                            FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1);
                            JobKt.ensureActive(c0815x9df3bace.getContext());
                            t = objectRef.element;
                            if (t == NullSurrogateKt.NULL) {
                            }
                            return t;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = (T) NullSurrogateKt.NULL;
                    ?? r2 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.coroutines.internal.Symbol, T] */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public Object emit(Object obj2, Continuation<? super Unit> continuation2) {
                            Ref.ObjectRef objectRef3 = Ref.ObjectRef.this;
                            T t2 = objectRef3.element;
                            ?? r1 = NullSurrogateKt.NULL;
                            if (t2 == r1) {
                                objectRef3.element = obj2;
                                return Unit.INSTANCE;
                            }
                            objectRef3.element = r1;
                            throw new AbortFlowException(this);
                        }
                    };
                    try {
                        c0815x9df3bace.f4863xfbe0c504 = objectRef2;
                        c0815x9df3bace.f4864x3271d0aa = r2;
                        c0815x9df3bace.f4866x75d576dc = 1;
                        if (flow.collect(r2, c0815x9df3bace) != coroutine_suspended) {
                            objectRef = objectRef2;
                        } else {
                            return coroutine_suspended;
                        }
                    } catch (AbortFlowException e3) {
                        objectRef = objectRef2;
                        e = e3;
                        flowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 = r2;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1);
                        JobKt.ensureActive(c0815x9df3bace.getContext());
                        t = objectRef.element;
                        if (t == NullSurrogateKt.NULL) {
                        }
                        return t;
                    }
                }
                t = objectRef.element;
                if (t == NullSurrogateKt.NULL) {
                    t = null;
                }
                return t;
            }
        }
        c0815x9df3bace = new ContinuationImpl(continuation);
        Object obj2 = c0815x9df3bace.f4865x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0815x9df3bace.f4866x75d576dc;
        if (i == 0) {
        }
        t = objectRef.element;
        if (t == NullSurrogateKt.NULL) {
        }
        return t;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'skip' is 'drop'", replaceWith = @ReplaceWith(expression = "drop(count)", imports = {}))
    @NotNull
    public static final <T> Flow<T> skip(@NotNull Flow<? extends T> flow, int i) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emit(value) }'", replaceWith = @ReplaceWith(expression = "onStart { emit(value) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> startWith(@NotNull Flow<? extends T> flow, T t) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object stateIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull Continuation<? super StateFlow<? extends T>> continuation) {
        C0821xa08f4aa3 c0821xa08f4aa3;
        int i;
        if (continuation instanceof C0821xa08f4aa3) {
            C0821xa08f4aa3 c0821xa08f4aa32 = (C0821xa08f4aa3) continuation;
            int i2 = c0821xa08f4aa32.f4881x3271d0aa;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0821xa08f4aa32.f4881x3271d0aa = i2 - Integer.MIN_VALUE;
                c0821xa08f4aa3 = c0821xa08f4aa32;
                Object obj = c0821xa08f4aa3.f4880xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0821xa08f4aa3.f4881x3271d0aa;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    C1150x9aaf73e9 m2332xfbe0c504 = AbstractC0317x3271d0aa.m2332xfbe0c504(flow, 1);
                    CompletableDeferred CompletableDeferred = CompletableDeferredKt.CompletableDeferred((Job) coroutineScope.getCoroutineContext().get(Job.INSTANCE));
                    BuildersKt.launch$default(coroutineScope, m2332xfbe0c504.f5509x75d576dc, null, new C0820x38707bd2(m2332xfbe0c504.f5506xfbe0c504, CompletableDeferred, null), 2, null);
                    c0821xa08f4aa3.f4881x3271d0aa = 1;
                    obj = CompletableDeferred.await(c0821xa08f4aa3);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Object value = ((Result) obj).getValue();
                ResultKt.throwOnFailure(value);
                return value;
            }
        }
        c0821xa08f4aa3 = new ContinuationImpl(continuation);
        Object obj2 = c0821xa08f4aa3.f4880xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0821xa08f4aa3.f4881x3271d0aa;
        if (i != 0) {
        }
        Object value2 = ((Result) obj2).getValue();
        ResultKt.throwOnFailure(value2);
        return value2;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void subscribe(@NotNull Flow<? extends T> flow) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'flowOn' instead")
    @NotNull
    public static final <T> Flow<T> subscribeOn(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogues of 'switchMap' are 'transformLatest', 'flatMapLatest' and 'mapLatest'", replaceWith = @ReplaceWith(expression = "this.flatMapLatest(transform)", imports = {}))
    @NotNull
    public static final <T, R> Flow<R> switchMap(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Flow<? extends R>>, ? extends Object> function2) {
        return transformLatest(flow, new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(function2, null));
    }

    @NotNull
    public static final <T> Flow<T> take(@NotNull Flow<? extends T> flow, int i) {
        if (i > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(flow, i);
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "Requested element count ", " should be positive").toString());
    }

    @NotNull
    public static final <T> Flow<T> takeWhile(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(flow, function2);
    }

    @FlowPreview
    @NotNull
    /* renamed from: timeout-HG0u8IE, reason: not valid java name */
    public static final <T> Flow<T> m2315timeoutHG0u8IE(@NotNull Flow<? extends T> flow, long j) {
        return FlowCoroutineKt.scopedFlow(new C0772xeb4552c3(j, flow, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T, C extends Collection<? super T>> Object toCollection(@NotNull Flow<? extends T> flow, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        C0752xe966412c c0752xe966412c;
        int i;
        if (continuation instanceof C0752xe966412c) {
            C0752xe966412c c0752xe966412c2 = (C0752xe966412c) continuation;
            int i2 = c0752xe966412c2.f4674x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0752xe966412c2.f4674x1378447b = i2 - Integer.MIN_VALUE;
                c0752xe966412c = c0752xe966412c2;
                Object obj = c0752xe966412c.f4673x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0752xe966412c.f4674x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        c = (C) c0752xe966412c.f4672xfbe0c504;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    FlowCollector<? super Object> c0515x8dcf029e = new C0515x8dcf029e(c, 2);
                    c0752xe966412c.f4672xfbe0c504 = c;
                    c0752xe966412c.f4674x1378447b = 1;
                    if (flow.collect(c0515x8dcf029e, c0752xe966412c) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return c;
            }
        }
        c0752xe966412c = new ContinuationImpl(continuation);
        Object obj2 = c0752xe966412c.f4673x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0752xe966412c.f4674x1378447b;
        if (i == 0) {
        }
        return c;
    }

    @Nullable
    public static final <T> Object toList(@NotNull Flow<? extends T> flow, @NotNull List<T> list, @NotNull Continuation<? super List<? extends T>> continuation) {
        return toCollection(flow, list, continuation);
    }

    public static /* synthetic */ Object toList$default(Flow flow, List list, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            list = new ArrayList();
        }
        return toList(flow, list, continuation);
    }

    @Nullable
    public static final <T> Object toSet(@NotNull Flow<? extends T> flow, @NotNull Set<T> set, @NotNull Continuation<? super Set<? extends T>> continuation) {
        return toCollection(flow, set, continuation);
    }

    public static /* synthetic */ Object toSet$default(Flow flow, Set set, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            set = new LinkedHashSet();
        }
        return toSet(flow, set, continuation);
    }

    @NotNull
    public static final <T, R> Flow<R> transform(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return flow(new FlowKt__EmittersKt$transform$1(flow, function3, null));
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final <T, R> Flow<R> transformLatest(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return new ChannelFlowTransformLatest(function3, flow, null, 0, null, 28, null);
    }

    @NotNull
    public static final <T, R> Flow<R> transformWhile(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return flow(new C0790xfeb0b799(flow, function3, null));
    }

    @PublishedApi
    @NotNull
    public static final <T, R> Flow<R> unsafeTransform(@NotNull Flow<? extends T> flow, @BuilderInference @NotNull Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__EmittersKt$unsafeTransform$$inlined$unsafeFlow$1(flow, function3);
    }

    @NotNull
    public static final <T> Flow<IndexedValue<T>> withIndex(@NotNull final Flow<? extends T> flow) {
        return (Flow<IndexedValue<T>>) new Flow<IndexedValue<Object>>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$withIndex$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super IndexedValue<Object>> flowCollector, Continuation<? super Unit> continuation) {
                Object collect = Flow.this.collect(new C0829x8c3bc11b(flowCollector, new Ref.IntRef()), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T1, T2, R> Flow<R> zip(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return CombineKt.zipImpl(flow, flow2, function3);
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$2(function1);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Backwards compatibility with JS and K/N")
    public static final /* synthetic */ <T> Object collect(Flow<? extends T> flow, Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object collect = flow.collect(new FlowKt__CollectKt$collect$3(function2), continuation);
        return collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @NotNull
    public static final <T1, T2, T3, R> Flow<R> combine(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @BuilderInference @NotNull final Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        final Flow[] flowArr = {flow, flow2, flow3};
        return (Flow<R>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1

            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", i = {}, l = {259, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,258:1\n116#2,5:259\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public int f2223xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public /* synthetic */ FlowCollector f2224x3271d0aa;

                /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
                public /* synthetic */ Object[] f2225x1378447b;

                /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
                public final /* synthetic */ Function4 f2226x75d576dc;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function4 function4) {
                    super(3, continuation);
                    this.f2226x75d576dc = function4;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    int i = this.f2223xfbe0c504;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.throwOnFailure(obj);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        flowCollector = this.f2224x3271d0aa;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        flowCollector = this.f2224x3271d0aa;
                        Object[] objArr = this.f2225x1378447b;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        this.f2224x3271d0aa = flowCollector;
                        this.f2223xfbe0c504 = 1;
                        InlineMarker.mark(6);
                        obj = this.f2226x75d576dc.invoke(obj2, obj3, obj4, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    this.f2224x3271d0aa = null;
                    this.f2223xfbe0c504 = 2;
                    if (flowCollector.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<Object> flowCollector, Object[] objArr, Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f2226x75d576dc);
                    anonymousClass2.f2224x3271d0aa = flowCollector;
                    anonymousClass2.f2225x1378447b = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr, C0830xf9bac857.f4910xfbe0c504, new AnonymousClass2(null, function4), continuation);
                if (combineInternal == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, R> Flow<R> combineLatest(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Function4<? super T1, ? super T2, ? super T3, ? super Continuation<? super R>, ? extends Object> function4) {
        return combine(flow, flow2, flow3, function4);
    }

    @Nullable
    public static final <T> Object emitAll(@NotNull FlowCollector<? super T> flowCollector, @NotNull Flow<? extends T> flow, @NotNull Continuation<? super Unit> continuation) {
        ensureActive(flowCollector);
        Object collect = flow.collect(flowCollector, continuation);
        return collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    @NotNull
    public static final <R> Flow<R> filterIsInstance(@NotNull final Flow<?> flow, @NotNull final KClass<R> kClass) {
        return (Flow<R>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2

            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,49:1\n18#2:50\n37#2:51\n19#2:52\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2<T> implements FlowCollector {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final /* synthetic */ FlowCollector f2159xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ KClass f2160x3271d0aa;

                @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2", f = "Transform.kt", i = {}, l = {50}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2$1, reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                    public /* synthetic */ Object f2161xfbe0c504;

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public int f2162x3271d0aa;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f2161xfbe0c504 = obj;
                        this.f2162x3271d0aa |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, KClass kClass) {
                    this.f2159xfbe0c504 = flowCollector;
                    this.f2160x3271d0aa = kClass;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    int i;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f2162x3271d0aa;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f2162x3271d0aa = i2 - Integer.MIN_VALUE;
                            Object obj2 = anonymousClass1.f2161xfbe0c504;
                            Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                            i = anonymousClass1.f2162x3271d0aa;
                            if (i == 0) {
                                if (i == 1) {
                                    ResultKt.throwOnFailure(obj2);
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                ResultKt.throwOnFailure(obj2);
                                if (this.f2160x3271d0aa.isInstance(obj)) {
                                    anonymousClass1.f2162x3271d0aa = 1;
                                    if (this.f2159xfbe0c504.emit(obj, anonymousClass1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    }
                    anonymousClass1 = new AnonymousClass1(continuation);
                    Object obj22 = anonymousClass1.f2161xfbe0c504;
                    Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = anonymousClass1.f2162x3271d0aa;
                    if (i == 0) {
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, kClass), continuation);
                if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T> Flow<T> flowOf(final T t) {
        return (Flow<T>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation<? super Unit> continuation) {
                Object emit = flowCollector.emit(t, continuation);
                if (emit == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return emit;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull Iterable<? extends T> iterable) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3(iterable);
    }

    public static /* synthetic */ Flow buffer$default(Flow flow, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        return buffer$default(flow, i, null, 2, null);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, R> Flow<R> combineLatest(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @NotNull Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        return combine(flow, flow2, flow3, flow4, function5);
    }

    @NotNull
    public static final <T1, T2, T3, R> Flow<R> combineTransform(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @BuilderInference @NotNull Function5<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super Continuation<? super Unit>, ? extends Object> function5) {
        return flow(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$3(new Flow[]{flow, flow2, flow3}, null, function5));
    }

    @NotNull
    public static final <T> Flow<T> distinctUntilChanged(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super T, Boolean> function2) {
        C0648x4ba9bb0c c0648x4ba9bb0c = AbstractC1312xe0b2b7ff.f5754xfbe0c504;
        Intrinsics.checkNotNull(function2, "null cannot be cast to non-null type kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Boolean>");
        return AbstractC1312xe0b2b7ff.m4337x3271d0aa(flow, c0648x4ba9bb0c, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2));
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull Iterator<? extends T> it) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$4(it);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> Flow<R> combine(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @NotNull final Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super R>, ? extends Object> function5) {
        final Flow[] flowArr = {flow, flow2, flow3, flow4};
        return (Flow<R>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2

            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2", f = "Zip.kt", i = {}, l = {259, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,258:1\n153#2,6:259\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public int f2229xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public /* synthetic */ FlowCollector f2230x3271d0aa;

                /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
                public /* synthetic */ Object[] f2231x1378447b;

                /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
                public final /* synthetic */ Function5 f2232x75d576dc;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function5 function5) {
                    super(3, continuation);
                    this.f2232x75d576dc = function5;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    int i = this.f2229xfbe0c504;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.throwOnFailure(obj);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        flowCollector = this.f2230x3271d0aa;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        flowCollector = this.f2230x3271d0aa;
                        Object[] objArr = this.f2231x1378447b;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        Object obj5 = objArr[3];
                        this.f2230x3271d0aa = flowCollector;
                        this.f2229xfbe0c504 = 1;
                        InlineMarker.mark(6);
                        obj = this.f2232x75d576dc.invoke(obj2, obj3, obj4, obj5, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    this.f2230x3271d0aa = null;
                    this.f2229xfbe0c504 = 2;
                    if (flowCollector.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<Object> flowCollector, Object[] objArr, Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f2232x75d576dc);
                    anonymousClass2.f2230x3271d0aa = flowCollector;
                    anonymousClass2.f2231x1378447b = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr, C0830xf9bac857.f4910xfbe0c504, new AnonymousClass2(null, function5), continuation);
                if (combineInternal == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'combineLatest' is 'combine'", replaceWith = @ReplaceWith(expression = "combine(this, other, other2, other3, transform)", imports = {}))
    @NotNull
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combineLatest(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @NotNull Flow<? extends T5> flow5, @NotNull Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        return combine(flow, flow2, flow3, flow4, flow5, function6);
    }

    @FlowPreview
    @OverloadResolutionByLambdaReturnType
    @NotNull
    public static final <T> Flow<T> debounce(@NotNull Flow<? extends T> flow, @NotNull Function1<? super T, Long> function1) {
        return FlowCoroutineKt.scopedFlow(new C0763x547aff04(function1, flow, null));
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull Sequence<? extends T> sequence) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$5(sequence);
    }

    @NotNull
    public static final <T1, T2, T3, T4, R> Flow<R> combineTransform(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @BuilderInference @NotNull Function6<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super Continuation<? super Unit>, ? extends Object> function6) {
        return flow(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$4(new Flow[]{flow, flow2, flow3, flow4}, null, function6));
    }

    @NotNull
    public static final <T> Flow<T> asFlow(@NotNull T[] tArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$6(tArr);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combine(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @NotNull Flow<? extends T5> flow5, @NotNull final Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super R>, ? extends Object> function6) {
        final Flow[] flowArr = {flow, flow2, flow3, flow4, flow5};
        return (Flow<R>) new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3

            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H\n¨\u0006\u0007"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", i = {}, l = {259, 258}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1\n+ 2 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n1#1,258:1\n194#2,7:259\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2, reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public int f2235xfbe0c504;

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public /* synthetic */ FlowCollector f2236x3271d0aa;

                /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
                public /* synthetic */ Object[] f2237x1378447b;

                /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
                public final /* synthetic */ Function6 f2238x75d576dc;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function6 function6) {
                    super(3, continuation);
                    this.f2238x75d576dc = function6;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector;
                    Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    int i = this.f2235xfbe0c504;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.throwOnFailure(obj);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        flowCollector = this.f2236x3271d0aa;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        ResultKt.throwOnFailure(obj);
                        flowCollector = this.f2236x3271d0aa;
                        Object[] objArr = this.f2237x1378447b;
                        Object obj2 = objArr[0];
                        Object obj3 = objArr[1];
                        Object obj4 = objArr[2];
                        Object obj5 = objArr[3];
                        Object obj6 = objArr[4];
                        this.f2236x3271d0aa = flowCollector;
                        this.f2235xfbe0c504 = 1;
                        InlineMarker.mark(6);
                        obj = this.f2238x75d576dc.invoke(obj2, obj3, obj4, obj5, obj6, this);
                        InlineMarker.mark(7);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    this.f2236x3271d0aa = null;
                    this.f2235xfbe0c504 = 2;
                    if (flowCollector.emit(obj, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<Object> flowCollector, Object[] objArr, Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation, this.f2238x75d576dc);
                    anonymousClass2.f2236x3271d0aa = flowCollector;
                    anonymousClass2.f2237x1378447b = objArr;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Object> flowCollector, Continuation continuation) {
                Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr, C0830xf9bac857.f4910xfbe0c504, new AnonymousClass2(null, function6), continuation);
                if (combineInternal == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'concatWith' is 'onCompletion'. Use 'onCompletion { if (it == null) emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onCompletion { if (it == null) emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> concatWith(@NotNull Flow<? extends T> flow, @NotNull Flow<? extends T> flow2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final <T> Flow<T> merge(@NotNull Iterable<? extends Flow<? extends T>> iterable) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return new ChannelLimitedFlowMerge(iterable, null, 0, null, 14, null);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'onErrorXxx' is 'catch'. Use 'catch { e -> if (predicate(e)) emit(fallback) else throw e }'", replaceWith = @ReplaceWith(expression = "catch { e -> if (predicate(e)) emit(fallback) else throw e }", imports = {}))
    @NotNull
    public static final <T> Flow<T> onErrorReturn(@NotNull Flow<? extends T> flow, T t, @NotNull Function1<? super Throwable, Boolean> function1) {
        return m2312catch(flow, new C0800xf4a0721f(function1, t, null));
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'publish(bufferSize)' is 'buffer' followed by 'shareIn'. \npublish().connect() is the default strategy (no extra call is needed), \npublish().autoConnect() translates to 'started = SharingStarted.Lazily' argument, \npublish().refCount() translates to 'started = SharingStarted.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.buffer(bufferSize).shareIn(scope, 0)", imports = {}))
    @NotNull
    public static final <T> Flow<T> publish(@NotNull Flow<? extends T> flow, int i) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'replay(bufferSize)' is 'shareIn' with the specified replay parameter. \nreplay().connect() is the default strategy (no extra call is needed), \nreplay().autoConnect() translates to 'started = SharingStarted.Lazily' argument, \nreplay().refCount() translates to 'started = SharingStarted.WhileSubscribed()' argument.", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, bufferSize)", imports = {}))
    @NotNull
    public static final <T> Flow<T> replay(@NotNull Flow<? extends T> flow, int i) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Flow analogue of 'startWith' is 'onStart'. Use 'onStart { emitAll(other) }'", replaceWith = @ReplaceWith(expression = "onStart { emitAll(other) }", imports = {}))
    @NotNull
    public static final <T> Flow<T> startWith(@NotNull Flow<? extends T> flow, @NotNull Flow<? extends T> flow2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void subscribe(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    @NotNull
    public static final Flow<Integer> asFlow(@NotNull int[] iArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$7(iArr);
    }

    @NotNull
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combineTransform(@NotNull Flow<? extends T1> flow, @NotNull Flow<? extends T2> flow2, @NotNull Flow<? extends T3> flow3, @NotNull Flow<? extends T4> flow4, @NotNull Flow<? extends T5> flow5, @BuilderInference @NotNull Function7<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super Continuation<? super Unit>, ? extends Object> function7) {
        return flow(new FlowKt__ZipKt$combineTransform$$inlined$combineTransformUnsafe$FlowKt__ZipKt$5(new Flow[]{flow, flow2, flow3, flow4, flow5}, null, function7));
    }

    @NotNull
    public static final Flow<Long> asFlow(@NotNull long[] jArr) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$8(jArr);
    }

    public static final /* synthetic */ <T, R> Flow<R> combine(Iterable<? extends Flow<? extends T>> iterable, Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2) {
        Flow[] flowArr = (Flow[]) CollectionsKt___CollectionsKt.toList(iterable).toArray(new Flow[0]);
        Intrinsics.needClassReification();
        return new FlowKt__ZipKt$combine$$inlined$unsafeFlow$3(flowArr, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object count(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super Integer> continuation) {
        C0755x21fb499a c0755x21fb499a;
        int i;
        Ref.IntRef intRef;
        if (continuation instanceof C0755x21fb499a) {
            C0755x21fb499a c0755x21fb499a2 = (C0755x21fb499a) continuation;
            int i2 = c0755x21fb499a2.f4681x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0755x21fb499a2.f4681x1378447b = i2 - Integer.MIN_VALUE;
                c0755x21fb499a = c0755x21fb499a2;
                Object obj = c0755x21fb499a.f4680x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0755x21fb499a.f4681x1378447b;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.IntRef intRef2 = new Ref.IntRef();
                    FlowCollector<? super Object> c0757xc77ac43a = new C0757xc77ac43a(function2, intRef2);
                    c0755x21fb499a.f4679xfbe0c504 = intRef2;
                    c0755x21fb499a.f4681x1378447b = 1;
                    if (flow.collect(c0757xc77ac43a, c0755x21fb499a) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    intRef = intRef2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    intRef = c0755x21fb499a.f4679xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxInt(intRef.element);
            }
        }
        c0755x21fb499a = new ContinuationImpl(continuation);
        Object obj2 = c0755x21fb499a.f4680x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0755x21fb499a.f4681x1378447b;
        if (i != 0) {
        }
        return Boxing.boxInt(intRef.element);
    }

    @NotNull
    public static final <T> Flow<T> merge(@NotNull Flow<? extends T>... flowArr) {
        int i = AbstractC0797x9305f1c2.f4813xfbe0c504;
        return merge(ArraysKt___ArraysKt.asIterable(flowArr));
    }

    @NotNull
    public static final Flow<Integer> asFlow(@NotNull IntRange intRange) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$9(intRange);
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:103)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static final /* synthetic */ <T, R> kotlinx.coroutines.flow.Flow<R> combineTransform(kotlinx.coroutines.flow.Flow<? extends T>[] r2, @kotlin.BuilderInference kotlin.jvm.functions.Function3<? super kotlinx.coroutines.flow.FlowCollector<? super R>, ? super T[], ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r3) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$6
            r1 = 0
            r0.<init>(r2, r3, r1)
            kotlinx.coroutines.flow.Flow r2 = flow(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.combineTransform(kotlinx.coroutines.flow.Flow[], kotlin.jvm.functions.Function3):kotlinx.coroutines.flow.Flow");
    }

    @NotNull
    public static final <T> StateFlow<T> stateIn(@NotNull Flow<? extends T> flow, @NotNull CoroutineScope coroutineScope, @NotNull SharingStarted sharingStarted, T t) {
        C1150x9aaf73e9 m2332xfbe0c504 = AbstractC0317x3271d0aa.m2332xfbe0c504(flow, 1);
        MutableStateFlow MutableStateFlow = StateFlowKt.MutableStateFlow(t);
        return new C1066xeb0e2234(MutableStateFlow, BuildersKt.launch(coroutineScope, m2332xfbe0c504.f5509x75d576dc, Intrinsics.areEqual(sharingStarted, SharingStarted.INSTANCE.getEagerly()) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new C0316xfbe0c504(sharingStarted, m2332xfbe0c504.f5506xfbe0c504, MutableStateFlow, t, null)));
    }

    @NotNull
    public static final Flow<Long> asFlow(@NotNull LongRange longRange) {
        return new FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10(longRange);
    }

    public static final /* synthetic */ <T, R> Flow<R> combineTransform(Iterable<? extends Flow<? extends T>> iterable, @BuilderInference Function3<? super FlowCollector<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3) {
        Flow[] flowArr = (Flow[]) CollectionsKt___CollectionsKt.toList(iterable).toArray(new Flow[0]);
        Intrinsics.needClassReification();
        return flow(new FlowKt__ZipKt$combineTransform$7(flowArr, function3, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object first(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        C0802xccb2dfcc c0802xccb2dfcc;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$2;
        if (continuation instanceof C0802xccb2dfcc) {
            C0802xccb2dfcc c0802xccb2dfcc2 = (C0802xccb2dfcc) continuation;
            int i2 = c0802xccb2dfcc2.f4830x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0802xccb2dfcc2.f4830x75d576dc = i2 - Integer.MIN_VALUE;
                c0802xccb2dfcc = c0802xccb2dfcc2;
                Object obj = c0802xccb2dfcc.f4829x1378447b;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0802xccb2dfcc.f4830x75d576dc;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = (T) NullSurrogateKt.NULL;
                    FlowKt__ReduceKt$first$$inlined$collectWhile$2 flowKt__ReduceKt$first$$inlined$collectWhile$22 = new FlowKt__ReduceKt$first$$inlined$collectWhile$2(function2, objectRef2);
                    try {
                        c0802xccb2dfcc.f4827xfbe0c504 = objectRef2;
                        c0802xccb2dfcc.f4828x3271d0aa = flowKt__ReduceKt$first$$inlined$collectWhile$22;
                        c0802xccb2dfcc.f4830x75d576dc = 1;
                        if (flow.collect(flowKt__ReduceKt$first$$inlined$collectWhile$22, c0802xccb2dfcc) != coroutine_suspended) {
                            objectRef = objectRef2;
                        }
                    } catch (AbortFlowException e2) {
                        objectRef = objectRef2;
                        e = e2;
                        flowKt__ReduceKt$first$$inlined$collectWhile$2 = flowKt__ReduceKt$first$$inlined$collectWhile$22;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$first$$inlined$collectWhile$2);
                        JobKt.ensureActive(c0802xccb2dfcc.getContext());
                        coroutine_suspended = objectRef.element;
                        if (coroutine_suspended == NullSurrogateKt.NULL) {
                        }
                        return coroutine_suspended;
                    }
                    return coroutine_suspended;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                flowKt__ReduceKt$first$$inlined$collectWhile$2 = c0802xccb2dfcc.f4828x3271d0aa;
                objectRef = c0802xccb2dfcc.f4827xfbe0c504;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e3) {
                    e = e3;
                    FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$first$$inlined$collectWhile$2);
                    JobKt.ensureActive(c0802xccb2dfcc.getContext());
                    coroutine_suspended = objectRef.element;
                    if (coroutine_suspended == NullSurrogateKt.NULL) {
                    }
                    return coroutine_suspended;
                }
                coroutine_suspended = objectRef.element;
                if (coroutine_suspended == NullSurrogateKt.NULL) {
                    throw new NoSuchElementException("Expected at least one element matching the predicate");
                }
                return coroutine_suspended;
            }
        }
        c0802xccb2dfcc = new ContinuationImpl(continuation);
        Object obj2 = c0802xccb2dfcc.f4829x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0802xccb2dfcc.f4830x75d576dc;
        if (i != 0) {
        }
        coroutine_suspended = objectRef.element;
        if (coroutine_suspended == NullSurrogateKt.NULL) {
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object firstOrNull(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        C0804x1723ba79 c0804x1723ba79;
        int i;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
        if (continuation instanceof C0804x1723ba79) {
            C0804x1723ba79 c0804x1723ba792 = (C0804x1723ba79) continuation;
            int i2 = c0804x1723ba792.f4838x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0804x1723ba792.f4838x75d576dc = i2 - Integer.MIN_VALUE;
                c0804x1723ba79 = c0804x1723ba792;
                Object obj = c0804x1723ba79.f4837x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0804x1723ba79.f4838x75d576dc;
                if (i != 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$22 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2(function2, objectRef2);
                    try {
                        c0804x1723ba79.f4835xfbe0c504 = objectRef2;
                        c0804x1723ba79.f4836x3271d0aa = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$22;
                        c0804x1723ba79.f4838x75d576dc = 1;
                        if (flow.collect(flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$22, c0804x1723ba79) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef = objectRef2;
                    } catch (AbortFlowException e2) {
                        objectRef = objectRef2;
                        e = e2;
                        flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$22;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2);
                        JobKt.ensureActive(c0804x1723ba79.getContext());
                        return objectRef.element;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = c0804x1723ba79.f4836x3271d0aa;
                    objectRef = c0804x1723ba79.f4835xfbe0c504;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (AbortFlowException e3) {
                        e = e3;
                        FlowExceptions_commonKt.checkOwnership(e, flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2);
                        JobKt.ensureActive(c0804x1723ba79.getContext());
                        return objectRef.element;
                    }
                }
                return objectRef.element;
            }
        }
        c0804x1723ba79 = new ContinuationImpl(continuation);
        Object obj2 = c0804x1723ba79.f4837x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0804x1723ba79.f4838x75d576dc;
        if (i != 0) {
        }
        return objectRef.element;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'launchIn' with 'onEach', 'onCompletion' and 'catch' instead")
    public static final <T> void subscribe(@NotNull Flow<? extends T> flow, @NotNull Function2<? super T, ? super Continuation<? super Unit>, ? extends Object> function2, @NotNull Function2<? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function22) {
        throw AbstractC0749x8313616e.m3344xfad01aba();
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: MarkMethodsForInline
        java.lang.IndexOutOfBoundsException: Index: 0
        	at java.base/java.util.Collections$EmptyList.get(Collections.java:4587)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:103)
        	at jadx.core.dex.visitors.MarkMethodsForInline.isSyntheticAccessPattern(MarkMethodsForInline.java:117)
        	at jadx.core.dex.visitors.MarkMethodsForInline.inlineMth(MarkMethodsForInline.java:86)
        	at jadx.core.dex.visitors.MarkMethodsForInline.process(MarkMethodsForInline.java:53)
        	at jadx.core.dex.visitors.MarkMethodsForInline.visit(MarkMethodsForInline.java:37)
        */
    public static final /* synthetic */ <T, R> kotlinx.coroutines.flow.Flow<R> combine(kotlinx.coroutines.flow.Flow<? extends T>[] r1, kotlin.jvm.functions.Function2<? super T[], ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r2) {
        /*
            kotlin.jvm.internal.Intrinsics.needClassReification()
            kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$2 r0 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$2
            r0.<init>(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.combine(kotlinx.coroutines.flow.Flow[], kotlin.jvm.functions.Function2):kotlinx.coroutines.flow.Flow");
    }
}
