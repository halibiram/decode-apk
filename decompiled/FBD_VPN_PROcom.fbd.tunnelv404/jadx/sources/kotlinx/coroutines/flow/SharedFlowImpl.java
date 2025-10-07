package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1148xc9760a40;
import defpackage.C1149xcd67ee4f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u00019B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001e\u0010\u0011\u001a\u00020\u00102\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0096@¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001d\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010#\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010 0\u001f2\u0006\u0010\u001e\u001a\u00020\u001aH\u0000¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020\u0003H\u0014¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001f2\u0006\u0010&\u001a\u00020\u0007H\u0014¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0017H\u0016¢\u0006\u0004\b)\u0010*J-\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000.2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b/\u00100R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00028\u0000018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u00103R\u001a\u00108\u001a\u00028\u00008DX\u0084\u0004¢\u0006\f\u0012\u0004\b7\u0010*\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "", "replay", "bufferCapacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "value", "", "tryEmit", "(Ljava/lang/Object;)Z", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "updateNewCollectorIndexLocked$kotlinx_coroutines_core", "()J", "updateNewCollectorIndexLocked", "oldIndex", "", "Lkotlin/coroutines/Continuation;", "updateCollectorIndexLocked$kotlinx_coroutines_core", "(J)[Lkotlin/coroutines/Continuation;", "updateCollectorIndexLocked", "createSlot", "()Lkotlinx/coroutines/flow/SharedFlowSlot;", "size", "createSlotArray", "(I)[Lkotlinx/coroutines/flow/SharedFlowSlot;", "resetReplayCache", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/flow/Flow;", "fuse", "(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/Flow;", "", "getReplayCache", "()Ljava/util/List;", "replayCache", "getLastReplayedLocked", "()Ljava/lang/Object;", "getLastReplayedLocked$annotations", "lastReplayedLocked", "땝땝땲돰둑땳듽됴따됩돵땸뎰땨둠둥땃땫땻디듼듌땭둡땃뒛땨뒻듔듽딟돴뒬땭땥딨땫땧딅딌듐땸뎡돝뎸뒈땻뒝듽땹딎뒼땩두뎸딽뒷돴뒙돨뒝뒤듼땨땐디땻딁딠딀땭딄돳되땬뒐딝땥딁땳돤땬돰딃돛듌딄드됫돴뒙득돷돼땁뒨땯뎸듻뒵뒙딹땸딁땥됨땬따돸땅돤뎡둬땫땤되뎨땳뒻듔둬돴딁뎻뒨두따땱땡둑", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,746:1\n29#2:747\n29#2:750\n29#2:769\n29#2:773\n29#2:782\n29#2:793\n29#2:804\n16#3:748\n16#3:751\n16#3:770\n16#3:774\n16#3:783\n16#3:794\n16#3:805\n375#4:749\n1#5:752\n91#6,2:753\n93#6,2:756\n95#6:759\n91#6,2:775\n93#6,2:778\n95#6:781\n91#6,2:797\n93#6,2:800\n95#6:803\n13402#7:755\n13403#7:758\n13402#7:777\n13403#7:780\n13402#7:799\n13403#7:802\n426#8,9:760\n435#8,2:771\n426#8,9:784\n435#8,2:795\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n366#1:747\n406#1:750\n500#1:769\n521#1:773\n641#1:782\n676#1:793\n704#1:804\n366#1:748\n406#1:751\n500#1:770\n521#1:774\n641#1:783\n676#1:794\n704#1:805\n388#1:749\n468#1:753,2\n468#1:756,2\n468#1:759\n544#1:775,2\n544#1:778,2\n544#1:781\n691#1:797,2\n691#1:800,2\n691#1:803\n468#1:755\n468#1:758\n544#1:777\n544#1:780\n691#1:799\n691#1:802\n498#1:760,9\n498#1:771,2\n675#1:784,9\n675#1:795,2\n*E\n"})
/* loaded from: classes3.dex */
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final int f2334x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final int f2335x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final BufferOverflow f2336x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public Object[] f2337x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public long f2338x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public long f2339x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public int f2340x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public int f2341xd2bcb0cf;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedFlowImpl(int i, int i2, @NotNull BufferOverflow bufferOverflow) {
        this.f2334x9738a56c = i;
        this.f2335x9e171bf9 = i2;
        this.f2336x34271fae = bufferOverflow;
    }

    public static final void access$cancelEmitter(SharedFlowImpl sharedFlowImpl, C1148xc9760a40 c1148xc9760a40) {
        synchronized (sharedFlowImpl) {
            if (c1148xc9760a40.f5496x3271d0aa >= sharedFlowImpl.m2323x95f25580()) {
                Object[] objArr = sharedFlowImpl.f2337x95f25580;
                Intrinsics.checkNotNull(objArr);
                if (SharedFlowKt.access$getBufferAt(objArr, c1148xc9760a40.f5496x3271d0aa) == c1148xc9760a40) {
                    SharedFlowKt.access$setBufferAt(objArr, c1148xc9760a40.f5496x3271d0aa, SharedFlowKt.NO_VALUE);
                    sharedFlowImpl.m2318x3271d0aa();
                }
            }
        }
    }

    public static final int access$getTotalSize(SharedFlowImpl sharedFlowImpl) {
        return sharedFlowImpl.f2340x1db10c9d + sharedFlowImpl.f2341xd2bcb0cf;
    }

    public static /* synthetic */ void getLastReplayedLocked$annotations() {
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:41|42))(1:43)|12|13|14|15|(3:16|(3:28|29|(2:31|32)(1:33))(4:18|(1:20)|21|(2:23|24)(1:26))|27))(4:44|45|46|47)|37|38)(5:53|54|55|(2:57|(1:59))|61)|48|49|15|(3:16|(0)(0)|27)))|64|6|(0)(0)|48|49|15|(3:16|(0)(0)|27)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ab, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ac, code lost:
    
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ Object m2316x1378447b(SharedFlowImpl sharedFlowImpl, FlowCollector flowCollector, Continuation continuation) {
        C1149xcd67ee4f c1149xcd67ee4f;
        int i;
        SharedFlowImpl sharedFlowImpl2;
        Throwable th;
        SharedFlowSlot sharedFlowSlot;
        FlowCollector flowCollector2;
        Job job;
        FlowCollector flowCollector3;
        Object m2327xd2bcb0cf;
        Job job2;
        FlowCollector flowCollector4;
        if (continuation instanceof C1149xcd67ee4f) {
            c1149xcd67ee4f = (C1149xcd67ee4f) continuation;
            int i2 = c1149xcd67ee4f.f5505x34271fae;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1149xcd67ee4f.f5505x34271fae = i2 - Integer.MIN_VALUE;
                Object obj = c1149xcd67ee4f.f5503x9738a56c;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1149xcd67ee4f.f5505x34271fae;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                job2 = c1149xcd67ee4f.f5502x75d576dc;
                                sharedFlowSlot = c1149xcd67ee4f.f5501x1378447b;
                                flowCollector4 = c1149xcd67ee4f.f5500x3271d0aa;
                                sharedFlowImpl2 = c1149xcd67ee4f.f5499xfbe0c504;
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            job2 = c1149xcd67ee4f.f5502x75d576dc;
                            sharedFlowSlot = c1149xcd67ee4f.f5501x1378447b;
                            flowCollector4 = c1149xcd67ee4f.f5500x3271d0aa;
                            sharedFlowImpl2 = c1149xcd67ee4f.f5499xfbe0c504;
                        }
                        try {
                            ResultKt.throwOnFailure(obj);
                            flowCollector3 = flowCollector4;
                            job = job2;
                            sharedFlowImpl = sharedFlowImpl2;
                            while (true) {
                                m2327xd2bcb0cf = sharedFlowImpl.m2327xd2bcb0cf(sharedFlowSlot);
                                if (m2327xd2bcb0cf == SharedFlowKt.NO_VALUE) {
                                    c1149xcd67ee4f.f5499xfbe0c504 = sharedFlowImpl;
                                    c1149xcd67ee4f.f5500x3271d0aa = flowCollector3;
                                    c1149xcd67ee4f.f5501x1378447b = sharedFlowSlot;
                                    c1149xcd67ee4f.f5502x75d576dc = job;
                                    c1149xcd67ee4f.f5505x34271fae = 2;
                                    if (sharedFlowImpl.m2317xfbe0c504(sharedFlowSlot, c1149xcd67ee4f) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                } else {
                                    if (job != null) {
                                        JobKt.ensureActive(job);
                                    }
                                    c1149xcd67ee4f.f5499xfbe0c504 = sharedFlowImpl;
                                    c1149xcd67ee4f.f5500x3271d0aa = flowCollector3;
                                    c1149xcd67ee4f.f5501x1378447b = sharedFlowSlot;
                                    c1149xcd67ee4f.f5502x75d576dc = job;
                                    c1149xcd67ee4f.f5505x34271fae = 3;
                                    if (flowCollector3.emit(m2327xd2bcb0cf, c1149xcd67ee4f) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        sharedFlowSlot = c1149xcd67ee4f.f5501x1378447b;
                        FlowCollector flowCollector5 = c1149xcd67ee4f.f5500x3271d0aa;
                        SharedFlowImpl sharedFlowImpl3 = c1149xcd67ee4f.f5499xfbe0c504;
                        try {
                            ResultKt.throwOnFailure(obj);
                            flowCollector2 = flowCollector5;
                            sharedFlowImpl = sharedFlowImpl3;
                        } catch (Throwable th3) {
                            th = th3;
                            sharedFlowImpl2 = sharedFlowImpl3;
                        }
                    }
                    sharedFlowImpl2.freeSlot(sharedFlowSlot);
                    throw th;
                }
                ResultKt.throwOnFailure(obj);
                SharedFlowSlot allocateSlot = sharedFlowImpl.allocateSlot();
                try {
                    if (flowCollector instanceof SubscribedFlowCollector) {
                        c1149xcd67ee4f.f5499xfbe0c504 = sharedFlowImpl;
                        c1149xcd67ee4f.f5500x3271d0aa = flowCollector;
                        c1149xcd67ee4f.f5501x1378447b = allocateSlot;
                        c1149xcd67ee4f.f5505x34271fae = 1;
                        if (((SubscribedFlowCollector) flowCollector).onSubscription(c1149xcd67ee4f) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    flowCollector2 = flowCollector;
                    sharedFlowSlot = allocateSlot;
                } catch (Throwable th4) {
                    sharedFlowImpl2 = sharedFlowImpl;
                    th = th4;
                    sharedFlowSlot = allocateSlot;
                }
                job = (Job) c1149xcd67ee4f.getF1168xfbe0c504().get(Job.INSTANCE);
                flowCollector3 = flowCollector2;
                while (true) {
                    m2327xd2bcb0cf = sharedFlowImpl.m2327xd2bcb0cf(sharedFlowSlot);
                    if (m2327xd2bcb0cf == SharedFlowKt.NO_VALUE) {
                    }
                }
            }
        }
        c1149xcd67ee4f = new C1149xcd67ee4f(sharedFlowImpl, continuation);
        Object obj2 = c1149xcd67ee4f.f5503x9738a56c;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1149xcd67ee4f.f5505x34271fae;
        if (i == 0) {
        }
        job = (Job) c1149xcd67ee4f.getF1168xfbe0c504().get(Job.INSTANCE);
        flowCollector3 = flowCollector2;
        while (true) {
            m2327xd2bcb0cf = sharedFlowImpl.m2327xd2bcb0cf(sharedFlowSlot);
            if (m2327xd2bcb0cf == SharedFlowKt.NO_VALUE) {
            }
        }
    }

    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    @Nullable
    public Object collect(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<?> continuation) {
        return m2316x1378447b(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    @Nullable
    public Object emit(T t, @NotNull Continuation<? super Unit> continuation) {
        if (tryEmit(t)) {
            return Unit.INSTANCE;
        }
        Object m2320x9738a56c = m2320x9738a56c(t, continuation);
        if (m2320x9738a56c != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return m2320x9738a56c;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    @NotNull
    public Flow<T> fuse(@NotNull CoroutineContext context, int capacity, @NotNull BufferOverflow onBufferOverflow) {
        return SharedFlowKt.fuseSharedFlow(this, context, capacity, onBufferOverflow);
    }

    public final T getLastReplayedLocked() {
        Object[] objArr = this.f2337x95f25580;
        Intrinsics.checkNotNull(objArr);
        return (T) SharedFlowKt.access$getBufferAt(objArr, (this.f2338x3db60231 + ((int) ((m2323x95f25580() + this.f2340x1db10c9d) - this.f2338x3db60231))) - 1);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    @NotNull
    public List<T> getReplayCache() {
        synchronized (this) {
            int m2323x95f25580 = (int) ((m2323x95f25580() + this.f2340x1db10c9d) - this.f2338x3db60231);
            if (m2323x95f25580 == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(m2323x95f25580);
            Object[] objArr = this.f2337x95f25580;
            Intrinsics.checkNotNull(objArr);
            for (int i = 0; i < m2323x95f25580; i++) {
                arrayList.add(SharedFlowKt.access$getBufferAt(objArr, this.f2338x3db60231 + i));
            }
            return arrayList;
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public void resetReplayCache() {
        synchronized (this) {
            m2328x8c6fc18a(m2323x95f25580() + this.f2340x1db10c9d, this.f2339x9d12c1f4, m2323x95f25580() + this.f2340x1db10c9d, m2323x95f25580() + this.f2340x1db10c9d + this.f2341xd2bcb0cf);
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public boolean tryEmit(T value) {
        int i;
        boolean z;
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (m2325x9d12c1f4(value)) {
                continuationArr = m2322x34271fae(continuationArr);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation<Unit> continuation : continuationArr) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
            }
        }
        return z;
    }

    @NotNull
    public final Continuation<Unit>[] updateCollectorIndexLocked$kotlinx_coroutines_core(long oldIndex) {
        int i;
        long j;
        long j2;
        long j3;
        AbstractSharedFlowSlot[] access$getSlots;
        if (oldIndex > this.f2339x9d12c1f4) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long m2323x95f25580 = m2323x95f25580();
        long j4 = this.f2340x1db10c9d + m2323x95f25580;
        int i2 = this.f2335x9e171bf9;
        if (i2 == 0 && this.f2341xd2bcb0cf > 0) {
            j4++;
        }
        int i3 = 0;
        if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
            for (AbstractSharedFlowSlot abstractSharedFlowSlot : access$getSlots) {
                if (abstractSharedFlowSlot != null) {
                    long j5 = ((SharedFlowSlot) abstractSharedFlowSlot).index;
                    if (j5 >= 0 && j5 < j4) {
                        j4 = j5;
                    }
                }
            }
        }
        if (j4 <= this.f2339x9d12c1f4) {
            return AbstractSharedFlowKt.EMPTY_RESUMES;
        }
        long m2323x95f255802 = m2323x95f25580() + this.f2340x1db10c9d;
        if (getNCollectors() > 0) {
            i = Math.min(this.f2341xd2bcb0cf, i2 - ((int) (m2323x95f255802 - j4)));
        } else {
            i = this.f2341xd2bcb0cf;
        }
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        long j6 = this.f2341xd2bcb0cf + m2323x95f255802;
        if (i > 0) {
            continuationArr = new Continuation[i];
            Object[] objArr = this.f2337x95f25580;
            Intrinsics.checkNotNull(objArr);
            long j7 = m2323x95f255802;
            while (true) {
                if (m2323x95f255802 < j6) {
                    j = j4;
                    Object access$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, m2323x95f255802);
                    Symbol symbol = SharedFlowKt.NO_VALUE;
                    j2 = j6;
                    if (access$getBufferAt != symbol) {
                        Intrinsics.checkNotNull(access$getBufferAt, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                        C1148xc9760a40 c1148xc9760a40 = (C1148xc9760a40) access$getBufferAt;
                        int i4 = i3 + 1;
                        continuationArr[i3] = c1148xc9760a40.f5498x75d576dc;
                        SharedFlowKt.access$setBufferAt(objArr, m2323x95f255802, symbol);
                        SharedFlowKt.access$setBufferAt(objArr, j7, c1148xc9760a40.f5497x1378447b);
                        j3 = 1;
                        j7++;
                        if (i4 >= i) {
                            break;
                        }
                        i3 = i4;
                    } else {
                        j3 = 1;
                    }
                    m2323x95f255802 += j3;
                    j4 = j;
                    j6 = j2;
                } else {
                    j = j4;
                    j2 = j6;
                    break;
                }
            }
            m2323x95f255802 = j7;
        } else {
            j = j4;
            j2 = j6;
        }
        int i5 = (int) (m2323x95f255802 - m2323x95f25580);
        if (getNCollectors() == 0) {
            j = m2323x95f255802;
        }
        long max = Math.max(this.f2338x3db60231, m2323x95f255802 - Math.min(this.f2334x9738a56c, i5));
        if (i2 == 0 && max < j2) {
            Object[] objArr2 = this.f2337x95f25580;
            Intrinsics.checkNotNull(objArr2);
            if (Intrinsics.areEqual(SharedFlowKt.access$getBufferAt(objArr2, max), SharedFlowKt.NO_VALUE)) {
                m2323x95f255802++;
                max++;
            }
        }
        m2328x8c6fc18a(max, j, m2323x95f255802, j2);
        m2318x3271d0aa();
        if (continuationArr.length != 0) {
            return m2322x34271fae(continuationArr);
        }
        return continuationArr;
    }

    public final long updateNewCollectorIndexLocked$kotlinx_coroutines_core() {
        long j = this.f2338x3db60231;
        if (j < this.f2339x9d12c1f4) {
            this.f2339x9d12c1f4 = j;
        }
        return j;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m2317xfbe0c504(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (m2326x1db10c9d(sharedFlowSlot) < 0) {
                    sharedFlowSlot.cont = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2318x3271d0aa() {
        if (this.f2335x9e171bf9 == 0 && this.f2341xd2bcb0cf <= 1) {
            return;
        }
        Object[] objArr = this.f2337x95f25580;
        Intrinsics.checkNotNull(objArr);
        while (this.f2341xd2bcb0cf > 0 && SharedFlowKt.access$getBufferAt(objArr, (m2323x95f25580() + (this.f2340x1db10c9d + this.f2341xd2bcb0cf)) - 1) == SharedFlowKt.NO_VALUE) {
            this.f2341xd2bcb0cf--;
            SharedFlowKt.access$setBufferAt(objArr, m2323x95f25580() + this.f2340x1db10c9d + this.f2341xd2bcb0cf, null);
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final void m2319x75d576dc() {
        AbstractSharedFlowSlot[] access$getSlots;
        Object[] objArr = this.f2337x95f25580;
        Intrinsics.checkNotNull(objArr);
        SharedFlowKt.access$setBufferAt(objArr, m2323x95f25580(), null);
        this.f2340x1db10c9d--;
        long m2323x95f25580 = m2323x95f25580() + 1;
        if (this.f2338x3db60231 < m2323x95f25580) {
            this.f2338x3db60231 = m2323x95f25580;
        }
        if (this.f2339x9d12c1f4 < m2323x95f25580) {
            if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : access$getSlots) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.index;
                        if (j >= 0 && j < m2323x95f25580) {
                            sharedFlowSlot.index = m2323x95f25580;
                        }
                    }
                }
            }
            this.f2339x9d12c1f4 = m2323x95f25580;
        }
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Object m2320x9738a56c(Object obj, Continuation continuation) {
        Continuation<Unit>[] continuationArr;
        C1148xc9760a40 c1148xc9760a40;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Continuation<Unit>[] continuationArr2 = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                if (m2325x9d12c1f4(obj)) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                    continuationArr = m2322x34271fae(continuationArr2);
                    c1148xc9760a40 = null;
                } else {
                    C1148xc9760a40 c1148xc9760a402 = new C1148xc9760a40(this, access$getTotalSize(this) + m2323x95f25580(), obj, cancellableContinuationImpl);
                    m2321x9e171bf9(c1148xc9760a402);
                    this.f2341xd2bcb0cf++;
                    if (this.f2335x9e171bf9 == 0) {
                        continuationArr2 = m2322x34271fae(continuationArr2);
                    }
                    continuationArr = continuationArr2;
                    c1148xc9760a40 = c1148xc9760a402;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c1148xc9760a40 != null) {
            CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, c1148xc9760a40);
        }
        for (Continuation<Unit> continuation2 : continuationArr) {
            if (continuation2 != null) {
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final void m2321x9e171bf9(Object obj) {
        int i = this.f2340x1db10c9d + this.f2341xd2bcb0cf;
        Object[] objArr = this.f2337x95f25580;
        if (objArr == null) {
            objArr = m2324x3db60231(null, 0, 2);
        } else if (i >= objArr.length) {
            objArr = m2324x3db60231(objArr, i, objArr.length * 2);
        }
        SharedFlowKt.access$setBufferAt(objArr, m2323x95f25580() + i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object[], java.lang.Object] */
    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final Continuation[] m2322x34271fae(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] access$getSlots;
        SharedFlowSlot sharedFlowSlot;
        Continuation<? super Unit> continuation;
        int length = continuationArr.length;
        if (AbstractSharedFlow.access$getNCollectors(this) != 0 && (access$getSlots = AbstractSharedFlow.access$getSlots(this)) != null) {
            int length2 = access$getSlots.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = access$getSlots[i];
                if (abstractSharedFlowSlot != null && (continuation = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).cont) != null && m2326x1db10c9d(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        continuationArr = copyOf;
                    }
                    continuationArr[length] = continuation;
                    sharedFlowSlot.cont = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final long m2323x95f25580() {
        return Math.min(this.f2339x9d12c1f4, this.f2338x3db60231);
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final Object[] m2324x3db60231(Object[] objArr, int i, int i2) {
        if (i2 > 0) {
            Object[] objArr2 = new Object[i2];
            this.f2337x95f25580 = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long m2323x95f25580 = m2323x95f25580();
            for (int i3 = 0; i3 < i; i3++) {
                long j = i3 + m2323x95f25580;
                SharedFlowKt.access$setBufferAt(objArr2, j, SharedFlowKt.access$getBufferAt(objArr, j));
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow");
    }

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final boolean m2325x9d12c1f4(Object obj) {
        int nCollectors = getNCollectors();
        int i = this.f2334x9738a56c;
        if (nCollectors == 0) {
            if (i != 0) {
                m2321x9e171bf9(obj);
                int i2 = this.f2340x1db10c9d + 1;
                this.f2340x1db10c9d = i2;
                if (i2 > i) {
                    m2319x75d576dc();
                }
                this.f2339x9d12c1f4 = m2323x95f25580() + this.f2340x1db10c9d;
            }
            return true;
        }
        int i3 = this.f2340x1db10c9d;
        int i4 = this.f2335x9e171bf9;
        if (i3 >= i4 && this.f2339x9d12c1f4 <= this.f2338x3db60231) {
            int i5 = WhenMappings.$EnumSwitchMapping$0[this.f2336x34271fae.ordinal()];
            if (i5 != 1) {
                if (i5 == 2) {
                    return true;
                }
                if (i5 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                return false;
            }
        }
        m2321x9e171bf9(obj);
        int i6 = this.f2340x1db10c9d + 1;
        this.f2340x1db10c9d = i6;
        if (i6 > i4) {
            m2319x75d576dc();
        }
        long m2323x95f25580 = m2323x95f25580() + this.f2340x1db10c9d;
        long j = this.f2338x3db60231;
        if (((int) (m2323x95f25580 - j)) > i) {
            m2328x8c6fc18a(j + 1, this.f2339x9d12c1f4, m2323x95f25580() + this.f2340x1db10c9d, m2323x95f25580() + this.f2340x1db10c9d + this.f2341xd2bcb0cf);
        }
        return true;
    }

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public final long m2326x1db10c9d(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.index;
        if (j < m2323x95f25580() + this.f2340x1db10c9d) {
            return j;
        }
        if (this.f2335x9e171bf9 > 0 || j > m2323x95f25580() || this.f2341xd2bcb0cf == 0) {
            return -1L;
        }
        return j;
    }

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final Object m2327xd2bcb0cf(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation<Unit>[] continuationArr = AbstractSharedFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                long m2326x1db10c9d = m2326x1db10c9d(sharedFlowSlot);
                if (m2326x1db10c9d < 0) {
                    obj = SharedFlowKt.NO_VALUE;
                } else {
                    long j = sharedFlowSlot.index;
                    Object[] objArr = this.f2337x95f25580;
                    Intrinsics.checkNotNull(objArr);
                    Object access$getBufferAt = SharedFlowKt.access$getBufferAt(objArr, m2326x1db10c9d);
                    if (access$getBufferAt instanceof C1148xc9760a40) {
                        access$getBufferAt = ((C1148xc9760a40) access$getBufferAt).f5497x1378447b;
                    }
                    sharedFlowSlot.index = m2326x1db10c9d + 1;
                    Object obj2 = access$getBufferAt;
                    continuationArr = updateCollectorIndexLocked$kotlinx_coroutines_core(j);
                    obj = obj2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation<Unit> continuation : continuationArr) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public final void m2328x8c6fc18a(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long m2323x95f25580 = m2323x95f25580(); m2323x95f25580 < min; m2323x95f25580++) {
            Object[] objArr = this.f2337x95f25580;
            Intrinsics.checkNotNull(objArr);
            SharedFlowKt.access$setBufferAt(objArr, m2323x95f25580, null);
        }
        this.f2338x3db60231 = j;
        this.f2339x9d12c1f4 = j2;
        this.f2340x1db10c9d = (int) (j3 - min);
        this.f2341xd2bcb0cf = (int) (j4 - j3);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot createSlot() {
        return new SharedFlowSlot();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    @NotNull
    public SharedFlowSlot[] createSlotArray(int size) {
        return new SharedFlowSlot[size];
    }
}
