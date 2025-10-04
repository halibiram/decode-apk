package kotlinx.coroutines.selects;

import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1115x4981122;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u0001=B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00028\u0000H\u0091@¢\u0006\u0004\b\t\u0010\nJ2\u0010\u0011\u001a\u00020\u0010*\u00020\u000b2\u001c\u0010\u000f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012JD\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00010\u00142\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0015H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0016JX\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0017\"\u0004\b\u0002\u0010\u0013*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u00012\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0015H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u001aJ'\u0010\u001e\u001a\u00020\u0010*\f0\u001bR\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00102\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J#\u0010(\u001a\u00020\u00102\n\u0010%\u001a\u0006\u0012\u0002\b\u00030$2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u00020\u00102\b\u0010*\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b+\u0010,J!\u0010/\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020\u000e2\b\u0010.\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\u0002012\u0006\u0010-\u001a\u00020\u000e2\b\u0010.\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b2\u00103J\u0019\u0010\u0011\u001a\u00020\u00102\b\u00105\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b\u0011\u00106R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0011\u0010<\u001a\b\u0012\u0004\u0012\u00020\u000e0;8\u0002X\u0082\u0004¨\u0006>"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation;", "R", "Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "doSelect", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectClause0;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "", "invoke", "(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlin/Function2;", "(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/SelectClause2;", "param", "(Lkotlinx/coroutines/selects/SelectClause2;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "reregister", "register", "(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V", "Lkotlinx/coroutines/DisposableHandle;", "disposableHandle", "disposeOnCompletion", "(Lkotlinx/coroutines/DisposableHandle;)V", "Lkotlinx/coroutines/internal/Segment;", "segment", "", "index", "invokeOnCancellation", "(Lkotlinx/coroutines/internal/Segment;I)V", "internalResult", "selectInRegistrationPhase", "(Ljava/lang/Object;)V", "clauseObject", "result", "trySelect", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "trySelectDetailed", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;", "", "cause", "(Ljava/lang/Throwable;)V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/atomicfu/AtomicRef;", "state", "ClauseData", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,904:1\n1#2:905\n2632#3,3:906\n1863#3,2:918\n1863#3,2:926\n1863#3,2:928\n426#4,9:909\n435#4,2:920\n149#5,4:922\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n529#1:906,3\n593#1:918,2\n749#1:926,2\n774#1:928,2\n569#1:909,9\n569#1:920,2\n734#1:922,4\n*E\n"})
/* loaded from: classes3.dex */
public class SelectImplementation<R> implements CancelHandler, SelectBuilder<R>, SelectInstanceInternal<R> {

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2464x9e171bf9 = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final CoroutineContext context;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public Object f2467x1378447b;
    private volatile /* synthetic */ Object state$volatile = SelectKt.access$getSTATE_REG$p();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public ArrayList f2466x3271d0aa = new ArrayList(2);

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f2468x75d576dc = -1;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public Object f2469x9738a56c = SelectKt.access$getNO_RESULT$p();

    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0004\u0018\u00002\u00020\u0001BÆ\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012U\u0010\u000b\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u0003j\u0002`\n\u0012U\u0010\u000e\u001aQ\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0002\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003j\u0002`\r\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000f\u001a\u00020\u0001\u0012u\u0010\u0014\u001aq\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0010\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0003\u0018\u00010\u0003j\u0004\u0018\u0001`\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0019\u001a\u00020\u00182\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u001f\u001a\u00028\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u0086@¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\t¢\u0006\u0004\b!\u0010\"J?\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t\u0018\u00010\u00032\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b#\u0010$R\u0014\u0010\u0002\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010%R\u0083\u0001\u0010\u0014\u001aq\u0012\u0017\u0012\u0015\u0012\u0002\b\u00030\u0006¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\b\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0010\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0003\u0018\u00010\u0003j\u0004\u0018\u0001`\u00138\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010&R\u0018\u0010'\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010)\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", "", "clauseObject", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "param", "", "Lkotlinx/coroutines/selects/RegistrationFunction;", "regFunc", "clauseResult", "Lkotlinx/coroutines/selects/ProcessResultFunction;", "processResFunc", "block", "internalResult", "", "Lkotlin/coroutines/CoroutineContext;", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "onCancellationConstructor", "<init>", "(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V", "Lkotlinx/coroutines/selects/SelectImplementation;", "", "tryRegisterAsWaiter", "(Lkotlinx/coroutines/selects/SelectImplementation;)Z", "result", "processResult", "(Ljava/lang/Object;)Ljava/lang/Object;", "argument", "invokeBlock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dispose", "()V", "createOnCancellationAction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;", "Ljava/lang/Object;", "Lkotlin/jvm/functions/Function3;", "disposableHandleOrSegment", "", "indexInSegment", "I", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,904:1\n1#2:905\n*E\n"})
    /* loaded from: classes3.dex */
    public final class ClauseData {

        @JvmField
        @NotNull
        public final Object clauseObject;

        @JvmField
        @Nullable
        public Object disposableHandleOrSegment;

        @JvmField
        public int indexInSegment = -1;

        @JvmField
        @Nullable
        public final Function3<SelectInstance<?>, Object, Object, Function3<Throwable, Object, CoroutineContext, Unit>> onCancellationConstructor;

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final Function3 f2470xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final Function3 f2471x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
        public final Object f2472x1378447b;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public final Object f2473x75d576dc;

        /* JADX WARN: Multi-variable type inference failed */
        public ClauseData(@NotNull Object obj, @NotNull Function3<Object, ? super SelectInstance<?>, Object, Unit> function3, @NotNull Function3<Object, Object, Object, ? extends Object> function32, @Nullable Object obj2, @NotNull Object obj3, @Nullable Function3<? super SelectInstance<?>, Object, Object, ? extends Function3<? super Throwable, Object, ? super CoroutineContext, Unit>> function33) {
            this.clauseObject = obj;
            this.f2470xfbe0c504 = function3;
            this.f2471x3271d0aa = function32;
            this.f2472x1378447b = obj2;
            this.f2473x75d576dc = obj3;
            this.onCancellationConstructor = function33;
        }

        @Nullable
        public final Function3<Throwable, Object, CoroutineContext, Unit> createOnCancellationAction(@NotNull SelectInstance<?> select, @Nullable Object internalResult) {
            Function3<SelectInstance<?>, Object, Object, Function3<Throwable, Object, CoroutineContext, Unit>> function3 = this.onCancellationConstructor;
            if (function3 != null) {
                return function3.invoke(select, this.f2472x1378447b, internalResult);
            }
            return null;
        }

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            DisposableHandle disposableHandle = null;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, null, SelectImplementation.this.getContext());
                return;
            }
            if (obj instanceof DisposableHandle) {
                disposableHandle = (DisposableHandle) obj;
            }
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }

        @Nullable
        public final Object invokeBlock(@Nullable Object obj, @NotNull Continuation<? super R> continuation) {
            Object obj2 = this.f2472x1378447b;
            Symbol param_clause_0 = SelectKt.getPARAM_CLAUSE_0();
            Object obj3 = this.f2473x75d576dc;
            if (obj2 == param_clause_0) {
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((Function1) obj3).invoke(continuation);
            }
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function2) obj3).invoke(obj, continuation);
        }

        @Nullable
        public final Object processResult(@Nullable Object result) {
            return this.f2471x3271d0aa.invoke(this.clauseObject, this.f2472x1378447b, result);
        }

        public final boolean tryRegisterAsWaiter(@NotNull SelectImplementation<R> select) {
            this.f2470xfbe0c504.invoke(this.clauseObject, select, this.f2472x1378447b);
            if (select.f2469x9738a56c == SelectKt.access$getNO_RESULT$p()) {
                return true;
            }
            return false;
        }
    }

    public SelectImplementation(@NotNull CoroutineContext coroutineContext) {
        this.context = coroutineContext;
    }

    public static final boolean access$getInRegistrationPhase(SelectImplementation selectImplementation) {
        selectImplementation.getClass();
        Object obj = f2464x9e171bf9.get(selectImplementation);
        if (obj != SelectKt.access$getSTATE_REG$p() && !(obj instanceof List)) {
            return false;
        }
        return true;
    }

    public static final boolean access$isCancelled(SelectImplementation selectImplementation) {
        selectImplementation.getClass();
        if (f2464x9e171bf9.get(selectImplementation) == SelectKt.access$getSTATE_CANCELLED$p()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object access$processResultAndInvokeBlockRecoveringException(SelectImplementation selectImplementation, ClauseData clauseData, Object obj, Continuation continuation) {
        C0318xfbe0c504 c0318xfbe0c504;
        int i;
        selectImplementation.getClass();
        if (continuation instanceof C0318xfbe0c504) {
            c0318xfbe0c504 = (C0318xfbe0c504) continuation;
            int i2 = c0318xfbe0c504.f2486x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0318xfbe0c504.f2486x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0318xfbe0c504.f2484xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0318xfbe0c504.f2486x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Object processResult = clauseData.processResult(obj);
                    c0318xfbe0c504.f2486x1378447b = 1;
                    obj2 = clauseData.invokeBlock(processResult, c0318xfbe0c504);
                    if (obj2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return obj2;
            }
        }
        c0318xfbe0c504 = new C0318xfbe0c504(selectImplementation, continuation);
        Object obj22 = c0318xfbe0c504.f2484xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0318xfbe0c504.f2486x1378447b;
        if (i == 0) {
        }
        return obj22;
    }

    public static final void access$reregisterClause(SelectImplementation selectImplementation, Object obj) {
        ClauseData m2376x1378447b = selectImplementation.m2376x1378447b(obj);
        Intrinsics.checkNotNull(m2376x1378447b);
        m2376x1378447b.disposableHandleOrSegment = null;
        m2376x1378447b.indexInSegment = -1;
        selectImplementation.register(m2376x1378447b, true);
    }

    public static /* synthetic */ void register$default(SelectImplementation selectImplementation, ClauseData clauseData, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            selectImplementation.register(clauseData, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void disposeOnCompletion(@NotNull DisposableHandle disposableHandle) {
        this.f2467x1378447b = disposableHandle;
    }

    @PublishedApi
    @Nullable
    public Object doSelect(@NotNull Continuation<? super R> continuation) {
        if (f2464x9e171bf9.get(this) instanceof ClauseData) {
            return m2374xfbe0c504(continuation);
        }
        return m2375x3271d0aa(continuation);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        SelectBuilder.DefaultImpls.invoke(this, selectClause2, function2);
    }

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(@NotNull Segment<?> segment, int index) {
        this.f2467x1378447b = segment;
        this.f2468x75d576dc = index;
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @LowPriorityInOverloadResolution
    @ExperimentalCoroutinesApi
    public void onTimeout(long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        SelectBuilder.DefaultImpls.onTimeout(this, j, function1);
    }

    @JvmName(name = "register")
    public final void register(@NotNull SelectImplementation<R>.ClauseData clauseData, boolean z) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2464x9e171bf9;
        if (atomicReferenceFieldUpdater.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            Object obj = clauseData.clauseObject;
            ArrayList arrayList = this.f2466x3271d0aa;
            Intrinsics.checkNotNull(arrayList);
            if (!(arrayList instanceof Collection) || !arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((ClauseData) it.next()).clauseObject == obj) {
                        throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
                    }
                }
            }
        }
        if (clauseData.tryRegisterAsWaiter(this)) {
            if (!z) {
                ArrayList arrayList2 = this.f2466x3271d0aa;
                Intrinsics.checkNotNull(arrayList2);
                arrayList2.add(clauseData);
            }
            clauseData.disposableHandleOrSegment = this.f2467x1378447b;
            clauseData.indexInSegment = this.f2468x75d576dc;
            this.f2467x1378447b = null;
            this.f2468x75d576dc = -1;
            return;
        }
        atomicReferenceFieldUpdater.set(this, clauseData);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void selectInRegistrationPhase(@Nullable Object internalResult) {
        this.f2469x9738a56c = internalResult;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect(@NotNull Object clauseObject, @Nullable Object result) {
        if (m2377x75d576dc(clauseObject, result) == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public final TrySelectDetailedResult trySelectDetailed(@NotNull Object clauseObject, @Nullable Object result) {
        return SelectKt.access$TrySelectDetailedResult(m2377x75d576dc(clauseObject, result));
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m2374xfbe0c504(Continuation continuation) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2464x9e171bf9;
        Object obj = atomicReferenceFieldUpdater.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.f2469x9738a56c;
        ArrayList arrayList = this.f2466x3271d0aa;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ClauseData clauseData2 = (ClauseData) it.next();
                if (clauseData2 != clauseData) {
                    clauseData2.dispose();
                }
            }
            atomicReferenceFieldUpdater.set(this, SelectKt.access$getSTATE_COMPLETED$p());
            this.f2469x9738a56c = SelectKt.access$getNO_RESULT$p();
            this.f2466x3271d0aa = null;
        }
        return clauseData.invokeBlock(clauseData.processResult(obj2), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0055 A[PHI: r6
      0x0055: PHI (r6v5 java.lang.Object) = (r6v4 java.lang.Object), (r6v1 java.lang.Object) binds: [B:17:0x0052, B:10:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2375x3271d0aa(Continuation continuation) {
        C1115x4981122 c1115x4981122;
        Object obj;
        Object coroutine_suspended;
        int i;
        SelectImplementation<R> selectImplementation;
        if (continuation instanceof C1115x4981122) {
            c1115x4981122 = (C1115x4981122) continuation;
            int i2 = c1115x4981122.f5421x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1115x4981122.f5421x75d576dc = i2 - Integer.MIN_VALUE;
                obj = c1115x4981122.f5419x3271d0aa;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1115x4981122.f5421x75d576dc;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    selectImplementation = c1115x4981122.f5418xfbe0c504;
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    c1115x4981122.f5418xfbe0c504 = this;
                    c1115x4981122.f5421x75d576dc = 1;
                    if (m2378x9738a56c(c1115x4981122) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    selectImplementation = this;
                }
                c1115x4981122.f5418xfbe0c504 = null;
                c1115x4981122.f5421x75d576dc = 2;
                obj = selectImplementation.m2374xfbe0c504(c1115x4981122);
                if (obj != coroutine_suspended) {
                    return coroutine_suspended;
                }
                return obj;
            }
        }
        c1115x4981122 = new C1115x4981122(this, continuation);
        obj = c1115x4981122.f5419x3271d0aa;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1115x4981122.f5421x75d576dc;
        if (i == 0) {
        }
        c1115x4981122.f5418xfbe0c504 = null;
        c1115x4981122.f5421x75d576dc = 2;
        obj = selectImplementation.m2374xfbe0c504(c1115x4981122);
        if (obj != coroutine_suspended) {
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final ClauseData m2376x1378447b(Object obj) {
        ArrayList arrayList = this.f2466x3271d0aa;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).clauseObject == obj) {
                obj2 = next;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final int m2377x75d576dc(Object obj, Object obj2) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2464x9e171bf9;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj3 instanceof CancellableContinuation) {
                ClauseData m2376x1378447b = m2376x1378447b(obj);
                if (m2376x1378447b != null) {
                    Function3<Throwable, Object, CoroutineContext, Unit> createOnCancellationAction = m2376x1378447b.createOnCancellationAction(this, obj2);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, m2376x1378447b)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj3) {
                            break;
                        }
                    }
                    this.f2469x9738a56c = obj2;
                    if (SelectKt.access$tryResume((CancellableContinuation) obj3, createOnCancellationAction)) {
                        return 0;
                    }
                    this.f2469x9738a56c = SelectKt.access$getNO_RESULT$p();
                    return 2;
                }
                continue;
            } else {
                if (!Intrinsics.areEqual(obj3, SelectKt.access$getSTATE_COMPLETED$p()) && !(obj3 instanceof ClauseData)) {
                    if (Intrinsics.areEqual(obj3, SelectKt.access$getSTATE_CANCELLED$p())) {
                        return 2;
                    }
                    if (Intrinsics.areEqual(obj3, SelectKt.access$getSTATE_REG$p())) {
                        List listOf = AbstractC0586x968d4673.listOf(obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, listOf)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                break;
                            }
                        }
                        return 1;
                    }
                    if (obj3 instanceof List) {
                        List plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) obj3, obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj3, plus)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj3) {
                                break;
                            }
                        }
                        return 1;
                    }
                    throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                }
                return 3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
    
        r0 = r0.getResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        if (r0 != defpackage.AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007a, code lost:
    
        kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
    
        if (r0 != defpackage.AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0083, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2378x9738a56c(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2464x9e171bf9;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.access$getSTATE_REG$p()) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f2464x9e171bf9;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, cancellableContinuationImpl)) {
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        break;
                    }
                }
                CancellableContinuationKt.invokeOnCancellation(cancellableContinuationImpl, this);
                break loop0;
            }
            if (obj instanceof List) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f2464x9e171bf9;
                Symbol access$getSTATE_REG$p = SelectKt.access$getSTATE_REG$p();
                while (true) {
                    if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, access$getSTATE_REG$p)) {
                        Iterator it = ((Iterable) obj).iterator();
                        while (it.hasNext()) {
                            access$reregisterClause(this, it.next());
                        }
                    } else if (atomicReferenceFieldUpdater3.get(this) != obj) {
                        break;
                    }
                }
            } else if (obj instanceof ClauseData) {
                cancellableContinuationImpl.resume((CancellableContinuationImpl) Unit.INSTANCE, (Function3<? super Throwable, ? super CancellableContinuationImpl, ? super CoroutineContext, Unit>) ((ClauseData) obj).createOnCancellationAction(this, this.f2469x9738a56c));
            } else {
                throw new IllegalStateException(("unexpected state: " + obj).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public void invoke(@NotNull SelectClause0 selectClause0, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        register$default(this, new ClauseData(selectClause0.getClauseObject(), selectClause0.getRegFunc(), selectClause0.getProcessResFunc(), SelectKt.getPARAM_CLAUSE_0(), function1, selectClause0.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <Q> void invoke(@NotNull SelectClause1<? extends Q> selectClause1, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause1.getClauseObject(), selectClause1.getRegFunc(), selectClause1.getProcessResFunc(), null, function2, selectClause1.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.selects.SelectBuilder
    public <P, Q> void invoke(@NotNull SelectClause2<? super P, ? extends Q> selectClause2, P p, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        register$default(this, new ClauseData(selectClause2.getClauseObject(), selectClause2.getRegFunc(), selectClause2.getProcessResFunc(), p, function2, selectClause2.getOnCancellationConstructor()), false, 1, null);
    }

    @Override // kotlinx.coroutines.CancelHandler
    public void invoke(@Nullable Throwable cause) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2464x9e171bf9;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == SelectKt.access$getSTATE_COMPLETED$p()) {
                return;
            }
            Symbol access$getSTATE_CANCELLED$p = SelectKt.access$getSTATE_CANCELLED$p();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, access$getSTATE_CANCELLED$p)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            ArrayList arrayList = this.f2466x3271d0aa;
            if (arrayList == null) {
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ClauseData) it.next()).dispose();
            }
            this.f2469x9738a56c = SelectKt.access$getNO_RESULT$p();
            this.f2466x3271d0aa = null;
            return;
        }
    }
}
