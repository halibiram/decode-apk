package kotlinx.coroutines.debug.internal;

import _COROUTINE.ArtificialStackFrames;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC0961xbc4021d9;
import defpackage.AbstractC1192x185baab5;
import defpackage.C0396x4a23d5ac;
import defpackage.C0648x4ba9bb0c;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001DJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\u00152\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u0015¢\u0006\u0004\b \u0010!J\u001b\u0010&\u001a\u00020\u00022\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\"H\u0000¢\u0006\u0004\b$\u0010%J\u001b\u0010(\u001a\u00020\u00022\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\"H\u0000¢\u0006\u0004\b'\u0010%J)\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00000\"\"\u0004\b\u0000\u0010)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\"H\u0000¢\u0006\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00109\u001a\u00020.8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b6\u00100\u001a\u0004\b7\u00102\"\u0004\b8\u00104R\"\u0010=\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u00100\u001a\u0004\b;\u00102\"\u0004\b<\u00104R\u0011\u0010?\u001a\u00020.8G¢\u0006\u0006\u001a\u0004\b>\u00102R\u000b\u0010A\u001a\u00020@8\u0002X\u0082\u0004R\u000b\u0010C\u001a\u00020B8\u0002X\u0082\u0004¨\u0006E"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "", "install$kotlinx_coroutines_core", "()V", "install", "uninstall$kotlinx_coroutines_core", "uninstall", "Lkotlinx/coroutines/Job;", "job", "", "hierarchyToString$kotlinx_coroutines_core", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "hierarchyToString", "", "dumpCoroutinesInfoAsJsonAndReferences", "()[Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "info", "enhanceStackTraceWithThreadDumpAsJson", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;)Ljava/lang/String;", "", "dumpCoroutinesInfo", "()Ljava/util/List;", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "Ljava/io/PrintStream;", "out", "dumpCoroutines", "(Ljava/io/PrintStream;)V", "Ljava/lang/StackTraceElement;", "coroutineTrace", "enhanceStackTraceWithThreadDump", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;", "Lkotlin/coroutines/Continuation;", TypedValues.AttributesType.S_FRAME, "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", ExifInterface.GPS_DIRECTION_TRUE, "completion", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "Z", "getSanitizeStackTraces$kotlinx_coroutines_core", "()Z", "setSanitizeStackTraces$kotlinx_coroutines_core", "(Z)V", "sanitizeStackTraces", "뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두", "getEnableCreationStackTraces$kotlinx_coroutines_core", "setEnableCreationStackTraces$kotlinx_coroutines_core", "enableCreationStackTraces", "뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷", "getIgnoreCoroutinesWithEmptyContext", "setIgnoreCoroutinesWithEmptyContext", "ignoreCoroutinesWithEmptyContext", "isInstalled$kotlinx_coroutines_debug", "isInstalled", "Lkotlinx/atomicfu/AtomicInt;", "installations", "Lkotlinx/atomicfu/AtomicLong;", "sequenceNumber", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,616:1\n146#1:640\n147#1,4:642\n152#1,5:647\n146#1:652\n147#1,4:654\n152#1,5:659\n1#2:617\n1#2:641\n1#2:653\n774#3:618\n865#3,2:619\n1216#3,2:621\n1246#3,4:623\n1863#3,2:667\n360#3,7:675\n1827#3,8:682\n607#4:627\n607#4:646\n607#4:658\n607#4:664\n1317#4,2:665\n37#5:628\n36#5,3:629\n37#5:632\n36#5,3:633\n37#5:636\n36#5,3:637\n1682#6,6:669\n1790#6,6:690\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n241#1:640\n241#1:642,4\n241#1:647,5\n248#1:652\n248#1:654,4\n248#1:659,5\n241#1:641\n248#1:653\n106#1:618\n106#1:619,2\n107#1:621,2\n107#1:623,4\n303#1:667,2\n412#1:675,7\n502#1:682,8\n150#1:627\n241#1:646\n248#1:658\n283#1:664\n284#1:665,2\n207#1:628\n207#1:629,3\n208#1:632\n208#1:633,3\n209#1:636\n209#1:637,3\n351#1:669,6\n554#1:690,6\n*E\n"})
/* loaded from: classes3.dex */
public final class DebugProbesImpl {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static Thread f1885x1378447b;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters and from kotlin metadata */
    public static boolean enableCreationStackTraces;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public static final Function1 f1892x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static final ConcurrentWeakMap f1893x1db10c9d;

    @NotNull
    public static final DebugProbesImpl INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final StackTraceElement f1883xfbe0c504 = new ArtificialStackFrames().coroutineCreation();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final SimpleDateFormat f1884x3271d0aa = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final ConcurrentWeakMap f1886x75d576dc = new ConcurrentWeakMap(false, 1, 0 == true ? 1 : 0);

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicInteger f1887x9738a56c = new AtomicInteger(0);

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLong f1888x9e171bf9 = new AtomicLong(0);

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
    public static boolean sanitizeStackTraces = true;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters and from kotlin metadata */
    public static boolean ignoreCoroutinesWithEmptyContext = true;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u001f\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0015R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "info", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;)V", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {

        @JvmField
        @NotNull
        public final Continuation<T> delegate;

        @JvmField
        @NotNull
        public final DebugCoroutineInfoImpl info;

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl) {
            this.delegate = continuation;
            this.info = debugCoroutineInfoImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            StackTraceFrame creationStackBottom = this.info.getCreationStackBottom();
            if (creationStackBottom != null) {
                return creationStackBottom.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        /* renamed from: getStackTraceElement */
        public StackTraceElement getF1904x3271d0aa() {
            StackTraceFrame creationStackBottom = this.info.getCreationStackBottom();
            if (creationStackBottom != null) {
                return creationStackBottom.getF1904x3271d0aa();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object result) {
            DebugProbesImpl.access$probeCoroutineCompleted(DebugProbesImpl.INSTANCE, this);
            this.delegate.resumeWith(result);
        }

        @NotNull
        public String toString() {
            return this.delegate.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.debug.internal.DebugProbesImpl, java.lang.Object] */
    static {
        Object m1764constructorimpl;
        Object obj = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object newInstance = Class.forName("kotlinx.coroutines.debug.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(null);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            m1764constructorimpl = Result.m1764constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        if (!Result.m1769isFailureimpl(m1764constructorimpl)) {
            obj = m1764constructorimpl;
        }
        f1892x9d12c1f4 = (Function1) obj;
        f1893x1db10c9d = new ConcurrentWeakMap(true);
    }

    public static final /* synthetic */ boolean access$isFinished(DebugProbesImpl debugProbesImpl, CoroutineOwner coroutineOwner) {
        debugProbesImpl.getClass();
        return m2308x75d576dc(coroutineOwner);
    }

    public static final void access$probeCoroutineCompleted(DebugProbesImpl debugProbesImpl, CoroutineOwner coroutineOwner) {
        debugProbesImpl.getClass();
        f1886x75d576dc.remove(coroutineOwner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = coroutineOwner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core == null) {
            return;
        }
        while (true) {
            lastObservedFrame$kotlinx_coroutines_core = lastObservedFrame$kotlinx_coroutines_core.getCallerFrame();
            if (lastObservedFrame$kotlinx_coroutines_core == null) {
                lastObservedFrame$kotlinx_coroutines_core = null;
                break;
            } else if (lastObservedFrame$kotlinx_coroutines_core.getF1904x3271d0aa() != null) {
                break;
            }
        }
        if (lastObservedFrame$kotlinx_coroutines_core != null) {
            f1893x1db10c9d.remove(lastObservedFrame$kotlinx_coroutines_core);
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m2306xfbe0c504(Job job, LinkedHashMap linkedHashMap, StringBuilder sb, String str) {
        String obj;
        String obj2;
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = (DebugCoroutineInfoImpl) linkedHashMap.get(job);
        if (debugCoroutineInfoImpl == null) {
            if (!(job instanceof ScopeCoroutine)) {
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
                if (job instanceof JobSupport) {
                    obj2 = ((JobSupport) job).toDebugString();
                } else {
                    obj2 = job.toString();
                }
                m3341xc20437a5.append(obj2);
                m3341xc20437a5.append('\n');
                sb.append(m3341xc20437a5.toString());
                str = str + '\t';
            }
        } else {
            StackTraceElement stackTraceElement = (StackTraceElement) CollectionsKt___CollectionsKt.firstOrNull((List) debugCoroutineInfoImpl.lastObservedStackTrace$kotlinx_coroutines_core());
            String str2 = debugCoroutineInfoImpl.get_state();
            StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(str);
            if (job instanceof JobSupport) {
                obj = ((JobSupport) job).toDebugString();
            } else {
                obj = job.toString();
            }
            AbstractC0749x8313616e.m3350x5ac5058d(m3341xc20437a52, obj, ", continuation is ", str2, " at line ");
            m3341xc20437a52.append(stackTraceElement);
            m3341xc20437a52.append('\n');
            sb.append(m3341xc20437a52.toString());
            str = str + '\t';
        }
        Iterator<Job> it = job.getChildren().iterator();
        while (it.hasNext()) {
            m2306xfbe0c504(it.next(), linkedHashMap, sb, str);
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static List m2307x1378447b(String str, Thread thread, List list) {
        Object m1764constructorimpl;
        Pair pair;
        int i;
        if (Intrinsics.areEqual(str, DebugCoroutineInfoImplKt.RUNNING) && thread != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(thread.getStackTrace());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m1769isFailureimpl(m1764constructorimpl)) {
                m1764constructorimpl = null;
            }
            StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m1764constructorimpl;
            if (stackTraceElementArr == null) {
                return list;
            }
            int length = stackTraceElementArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    StackTraceElement stackTraceElement = stackTraceElementArr[i2];
                    if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                        break;
                    }
                    i2++;
                } else {
                    i2 = -1;
                    break;
                }
            }
            int i3 = 0;
            while (true) {
                if (i3 < 3) {
                    INSTANCE.getClass();
                    StackTraceElement stackTraceElement2 = (StackTraceElement) ArraysKt___ArraysKt.getOrNull(stackTraceElementArr, (i2 - 1) - i3);
                    if (stackTraceElement2 != null) {
                        Iterator it = list.iterator();
                        i = 0;
                        while (it.hasNext()) {
                            StackTraceElement stackTraceElement3 = (StackTraceElement) it.next();
                            if (Intrinsics.areEqual(stackTraceElement3.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement3.getClassName(), stackTraceElement2.getClassName()) && Intrinsics.areEqual(stackTraceElement3.getMethodName(), stackTraceElement2.getMethodName())) {
                                break;
                            }
                            i++;
                        }
                    }
                    i = -1;
                    if (i != -1) {
                        pair = TuplesKt.to(Integer.valueOf(i), Integer.valueOf(i3));
                        break;
                    }
                    i3++;
                } else {
                    pair = TuplesKt.to(-1, 0);
                    break;
                }
            }
            int intValue = ((Number) pair.component1()).intValue();
            int intValue2 = ((Number) pair.component2()).intValue();
            if (intValue == -1) {
                return list;
            }
            ArrayList arrayList = new ArrayList((((list.size() + i2) - intValue) - 1) - intValue2);
            int i4 = i2 - intValue2;
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList.add(stackTraceElementArr[i5]);
            }
            int size = list.size();
            for (int i6 = intValue + 1; i6 < size; i6++) {
                arrayList.add(list.get(i6));
            }
            return arrayList;
        }
        return list;
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static boolean m2308x75d576dc(CoroutineOwner coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.INSTANCE)) == null || !job.isCompleted()) {
            return false;
        }
        f1886x75d576dc.remove(coroutineOwner);
        return true;
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static void m2309x9738a56c(PrintStream printStream, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            printStream.print("\n\tat " + ((StackTraceElement) it.next()));
        }
    }

    @JvmName(name = "dumpCoroutines")
    public final void dumpCoroutines(@NotNull PrintStream out) {
        synchronized (out) {
            INSTANCE.m2310x3271d0aa(out);
        }
    }

    @NotNull
    public final List<DebugCoroutineInfo> dumpCoroutinesInfo() {
        if (isInstalled$kotlinx_coroutines_debug()) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(f1886x75d576dc.keySet()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebugCoroutineInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
                @Override // kotlin.jvm.functions.Function1
                public final DebugCoroutineInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                    CoroutineContext context;
                    if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
                        return null;
                    }
                    return new DebugCoroutineInfo(coroutineOwner.info, context);
                }
            }));
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    @NotNull
    public final Object[] dumpCoroutinesInfoAsJsonAndReferences() {
        String str;
        String str2;
        String name;
        List<DebugCoroutineInfo> dumpCoroutinesInfo = dumpCoroutinesInfo();
        int size = dumpCoroutinesInfo.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (DebugCoroutineInfo debugCoroutineInfo : dumpCoroutinesInfo) {
            CoroutineContext context = debugCoroutineInfo.getContext();
            CoroutineName coroutineName = (CoroutineName) context.get(CoroutineName.INSTANCE);
            Long l = null;
            if (coroutineName != null && (name = coroutineName.getName()) != null) {
                str = DebugProbesImplKt.access$repr(name.toString());
            } else {
                str = null;
            }
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.INSTANCE);
            if (coroutineDispatcher != null) {
                str2 = DebugProbesImplKt.access$repr(coroutineDispatcher.getF2411x1378447b());
            } else {
                str2 = null;
            }
            StringBuilder m3342x4440ab85 = AbstractC0749x8313616e.m3342x4440ab85("\n                {\n                    \"name\": ", str, ",\n                    \"id\": ");
            CoroutineId coroutineId = (CoroutineId) context.get(CoroutineId.INSTANCE);
            if (coroutineId != null) {
                l = Long.valueOf(coroutineId.getId());
            }
            m3342x4440ab85.append(l);
            m3342x4440ab85.append(",\n                    \"dispatcher\": ");
            m3342x4440ab85.append(str2);
            m3342x4440ab85.append(",\n                    \"sequenceNumber\": ");
            m3342x4440ab85.append(debugCoroutineInfo.getSequenceNumber());
            m3342x4440ab85.append(",\n                    \"state\": \"");
            m3342x4440ab85.append(debugCoroutineInfo.getState());
            m3342x4440ab85.append("\"\n                } \n                ");
            arrayList3.add(AbstractC1192x185baab5.trimIndent(m3342x4440ab85.toString()));
            arrayList2.add(debugCoroutineInfo.getLastObservedFrame());
            arrayList.add(debugCoroutineInfo.getLastObservedThread());
        }
        return new Object[]{"[" + CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null) + ']', arrayList.toArray(new Thread[0]), arrayList2.toArray(new CoroutineStackFrame[0]), dumpCoroutinesInfo.toArray(new DebugCoroutineInfo[0])};
    }

    @NotNull
    public final List<DebuggerInfo> dumpDebuggerInfo() {
        if (isInstalled$kotlinx_coroutines_debug()) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(f1886x75d576dc.keySet()), new DebugProbesImpl$dumpCoroutinesInfoImpl$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
                @Override // kotlin.jvm.functions.Function1
                public final DebuggerInfo invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                    CoroutineContext context;
                    if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
                        return null;
                    }
                    return new DebuggerInfo(coroutineOwner.info, context);
                }
            }));
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    @NotNull
    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(@NotNull DebugCoroutineInfo info, @NotNull List<StackTraceElement> coroutineTrace) {
        return m2307x1378447b(info.getState(), info.getLastObservedThread(), coroutineTrace);
    }

    @NotNull
    public final String enhanceStackTraceWithThreadDumpAsJson(@NotNull DebugCoroutineInfo info) {
        String str;
        List<StackTraceElement> enhanceStackTraceWithThreadDump = enhanceStackTraceWithThreadDump(info, info.lastObservedStackTrace());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : enhanceStackTraceWithThreadDump) {
            StringBuilder sb = new StringBuilder("\n                {\n                    \"declaringClass\": \"");
            sb.append(stackTraceElement.getClassName());
            sb.append("\",\n                    \"methodName\": \"");
            sb.append(stackTraceElement.getMethodName());
            sb.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            if (fileName != null) {
                str = DebugProbesImplKt.access$repr(fileName.toString());
            } else {
                str = null;
            }
            sb.append(str);
            sb.append(",\n                    \"lineNumber\": ");
            sb.append(stackTraceElement.getLineNumber());
            sb.append("\n                }\n                ");
            arrayList.add(AbstractC1192x185baab5.trimIndent(sb.toString()));
        }
        return "[" + CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null) + ']';
    }

    public final boolean getEnableCreationStackTraces$kotlinx_coroutines_core() {
        return enableCreationStackTraces;
    }

    public final boolean getIgnoreCoroutinesWithEmptyContext() {
        return ignoreCoroutinesWithEmptyContext;
    }

    public final boolean getSanitizeStackTraces$kotlinx_coroutines_core() {
        return sanitizeStackTraces;
    }

    @NotNull
    public final String hierarchyToString$kotlinx_coroutines_core(@NotNull Job job) {
        if (isInstalled$kotlinx_coroutines_debug()) {
            Iterable keySet = f1886x75d576dc.keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : keySet) {
                if (((CoroutineOwner) obj).delegate.getContext().get(Job.INSTANCE) != null) {
                    arrayList.add(obj);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC0296x1378447b.coerceAtLeast(AbstractC0961xbc4021d9.mapCapacity(AbstractC0587xb7546d05.collectionSizeOrDefault(arrayList, 10)), 16));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                CoroutineOwner coroutineOwner = (CoroutineOwner) it.next();
                linkedHashMap.put(JobKt.getJob(coroutineOwner.delegate.getContext()), coroutineOwner.info);
            }
            StringBuilder sb = new StringBuilder();
            INSTANCE.getClass();
            m2306xfbe0c504(job, linkedHashMap, sb, "");
            return sb.toString();
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    public final void install$kotlinx_coroutines_core() {
        Function1 function1;
        if (f1887x9738a56c.incrementAndGet() > 1) {
            return;
        }
        f1885x1378447b = ThreadsKt.thread$default(false, true, null, "Coroutines Debugger Cleaner", 0, new C0396x4a23d5ac(3), 21, null);
        if (!AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() && (function1 = f1892x9d12c1f4) != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    @JvmName(name = "isInstalled$kotlinx_coroutines_debug")
    public final boolean isInstalled$kotlinx_coroutines_debug() {
        if (f1887x9738a56c.get() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
    
        if (r0 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        r0 = r0.getCallerFrame();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
    
        if (r0 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0024, code lost:
    
        r0 = (kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
    
        if (r0 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0031, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0034, code lost:
    
        if (kotlinx.coroutines.debug.internal.DebugProbesImpl.enableCreationStackTraces == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0036, code lost:
    
        r0 = new java.lang.Exception().getStackTrace();
        r2 = r0.length;
        r4 = -1;
        r3 = r0.length - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        if (r3 < 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0045, code lost:
    
        r5 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0053, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r0[r3].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0057, code lost:
    
        if (r5 >= 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0055, code lost:
    
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005c, code lost:
    
        r4 = r4 + 1;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0061, code lost:
    
        if (kotlinx.coroutines.debug.internal.DebugProbesImpl.sanitizeStackTraces != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0063, code lost:
    
        r2 = r2 - r4;
        r3 = new java.util.ArrayList(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0069, code lost:
    
        if (r6 >= r2) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006b, code lost:
    
        r3.add(r0[r6 + r4]);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d3, code lost:
    
        if (r3.isEmpty() != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d5, code lost:
    
        r0 = r3.listIterator(r3.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e1, code lost:
    
        if (r0.hasPrevious() == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e3, code lost:
    
        r1 = new kotlinx.coroutines.debug.internal.StackTraceFrame(r1, (java.lang.StackTraceElement) r0.previous());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f0, code lost:
    
        r1 = new kotlinx.coroutines.debug.internal.StackTraceFrame(r1, kotlinx.coroutines.debug.internal.DebugProbesImpl.f1883xfbe0c504);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0075, code lost:
    
        r5 = new java.util.ArrayList((r2 - r4) + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007d, code lost:
    
        if (r4 >= r2) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008c, code lost:
    
        if (defpackage.AbstractC1197x89633db9.startsWith$default(r0[r4].getClassName(), "kotlinx.coroutines", false, 2, null) == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c6, code lost:
    
        r5.add(r0[r4]);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x008e, code lost:
    
        r5.add(r0[r4]);
        r3 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0095, code lost:
    
        if (r3 >= r2) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a1, code lost:
    
        if (defpackage.AbstractC1197x89633db9.startsWith$default(r0[r3].getClassName(), "kotlinx.coroutines", false, 2, null) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a3, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a6, code lost:
    
        r7 = r3 - 1;
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00a9, code lost:
    
        if (r8 <= r4) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b1, code lost:
    
        if (r0[r8].getFileName() != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b3, code lost:
    
        r8 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b6, code lost:
    
        if (r8 <= r4) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b8, code lost:
    
        if (r8 >= r7) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00ba, code lost:
    
        r5.add(r0[r8]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00bf, code lost:
    
        r5.add(r0[r7]);
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ce, code lost:
    
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00fc, code lost:
    
        if (isInstalled$kotlinx_coroutines_debug() != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00ff, code lost:
    
        r1 = new kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner(r11, new kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl(r11.getContext(), r1, kotlinx.coroutines.debug.internal.DebugProbesImpl.f1888x9e171bf9.incrementAndGet()));
        r11 = java.lang.Boolean.TRUE;
        r0 = kotlinx.coroutines.debug.internal.DebugProbesImpl.f1886x75d576dc;
        r0.put(r1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x011e, code lost:
    
        if (isInstalled$kotlinx_coroutines_debug() != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0120, code lost:
    
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0124, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x002e, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final <T> Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(@NotNull Continuation<? super T> completion) {
        CoroutineStackFrame coroutineStackFrame;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            return completion;
        }
        if (ignoreCoroutinesWithEmptyContext && completion.getContext() == EmptyCoroutineContext.INSTANCE) {
            return completion;
        }
        StackTraceFrame stackTraceFrame = null;
        if (completion instanceof CoroutineStackFrame) {
            coroutineStackFrame = (CoroutineStackFrame) completion;
        } else {
            coroutineStackFrame = null;
        }
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        m2311x9e171bf9(frame, DebugCoroutineInfoImplKt.RUNNING);
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(@NotNull Continuation<?> frame) {
        m2311x9e171bf9(frame, DebugCoroutineInfoImplKt.SUSPENDED);
    }

    public final void setEnableCreationStackTraces$kotlinx_coroutines_core(boolean z) {
        enableCreationStackTraces = z;
    }

    public final void setIgnoreCoroutinesWithEmptyContext(boolean z) {
        ignoreCoroutinesWithEmptyContext = z;
    }

    public final void setSanitizeStackTraces$kotlinx_coroutines_core(boolean z) {
        sanitizeStackTraces = z;
    }

    public final void uninstall$kotlinx_coroutines_core() {
        Function1 function1;
        if (isInstalled$kotlinx_coroutines_debug()) {
            if (f1887x9738a56c.decrementAndGet() != 0) {
                return;
            }
            Thread thread = f1885x1378447b;
            if (thread != null) {
                f1885x1378447b = null;
                thread.interrupt();
                thread.join();
            }
            f1886x75d576dc.clear();
            f1893x1db10c9d.clear();
            if (!AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core() && (function1 = f1892x9d12c1f4) != null) {
                function1.invoke(Boolean.FALSE);
                return;
            }
            return;
        }
        throw new IllegalStateException("Agent was not installed");
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m2310x3271d0aa(PrintStream printStream) {
        String str;
        if (isInstalled$kotlinx_coroutines_debug()) {
            printStream.print("Coroutines dump " + f1884x3271d0aa.format(Long.valueOf(System.currentTimeMillis())));
            for (CoroutineOwner coroutineOwner : SequencesKt___SequencesKt.sortedWith(SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(f1886x75d576dc.keySet()), new C0648x4ba9bb0c(1)), new Comparator() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return AbstractC0613x9f5dff2a.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t2).info.sequenceNumber));
                }
            })) {
                DebugCoroutineInfoImpl debugCoroutineInfoImpl = coroutineOwner.info;
                List<StackTraceElement> lastObservedStackTrace$kotlinx_coroutines_core = debugCoroutineInfoImpl.lastObservedStackTrace$kotlinx_coroutines_core();
                DebugProbesImpl debugProbesImpl = INSTANCE;
                String str2 = debugCoroutineInfoImpl.get_state();
                Thread thread = debugCoroutineInfoImpl.lastObservedThread;
                debugProbesImpl.getClass();
                List<StackTraceElement> m2307x1378447b = m2307x1378447b(str2, thread, lastObservedStackTrace$kotlinx_coroutines_core);
                if (Intrinsics.areEqual(debugCoroutineInfoImpl.get_state(), DebugCoroutineInfoImplKt.RUNNING) && m2307x1378447b == lastObservedStackTrace$kotlinx_coroutines_core) {
                    str = debugCoroutineInfoImpl.get_state() + " (Last suspension stacktrace, not an actual stacktrace)";
                } else {
                    str = debugCoroutineInfoImpl.get_state();
                }
                printStream.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + str);
                if (lastObservedStackTrace$kotlinx_coroutines_core.isEmpty()) {
                    printStream.print("\n\tat " + f1883xfbe0c504);
                    m2309x9738a56c(printStream, debugCoroutineInfoImpl.getCreationStackTrace());
                } else {
                    m2309x9738a56c(printStream, m2307x1378447b);
                }
            }
            return;
        }
        throw new IllegalStateException("Debug probes are not installed");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0058, code lost:
    
        if (r4 != null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x005a, code lost:
    
        r4 = r4.getCallerFrame();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x005e, code lost:
    
        if (r4 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0065, code lost:
    
        if (r4.getF1904x3271d0aa() == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0069, code lost:
    
        if (r4 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x006b, code lost:
    
        r0.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0068, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0097, code lost:
    
        if (r0 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x009b, code lost:
    
        if ((r0 instanceof kotlinx.coroutines.debug.internal.DebugProbesImpl.CoroutineOwner) == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00a1, code lost:
    
        r0 = r0.getCallerFrame();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00a5, code lost:
    
        if (r0 == 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x009d, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00a8, code lost:
    
        if (r1 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00aa, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00af, code lost:
    
        if (isInstalled$kotlinx_coroutines_debug() != false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00b2, code lost:
    
        r1.info.updateState$kotlinx_coroutines_core(r8, r7, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00b7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r0v15, types: [kotlinx.coroutines.debug.internal.ConcurrentWeakMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v3, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlin.coroutines.jvm.internal.CoroutineStackFrame] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m2311x9e171bf9(Continuation continuation, String str) {
        CoroutineOwner coroutineOwner;
        Continuation<?> continuation2;
        CoroutineOwner coroutineOwner2;
        if (!isInstalled$kotlinx_coroutines_debug()) {
            return;
        }
        if (ignoreCoroutinesWithEmptyContext && continuation.getContext() == EmptyCoroutineContext.INSTANCE) {
            return;
        }
        CoroutineOwner coroutineOwner3 = null;
        boolean z = true;
        if (Intrinsics.areEqual(str, DebugCoroutineInfoImplKt.RUNNING)) {
            if (continuation instanceof CoroutineStackFrame) {
                continuation2 = (CoroutineStackFrame) continuation;
            } else {
                continuation2 = 0;
            }
            if (continuation2 != 0 && isInstalled$kotlinx_coroutines_debug()) {
                ?? r0 = f1893x1db10c9d;
                DebugCoroutineInfoImpl debugCoroutineInfoImpl = (DebugCoroutineInfoImpl) r0.remove(continuation2);
                if (debugCoroutineInfoImpl != null) {
                    z = false;
                } else {
                    CoroutineStackFrame coroutineStackFrame = continuation2;
                    while (true) {
                        if (coroutineStackFrame instanceof CoroutineOwner) {
                            coroutineOwner2 = (CoroutineOwner) coroutineStackFrame;
                            break;
                        }
                        coroutineStackFrame = coroutineStackFrame.getCallerFrame();
                        if (coroutineStackFrame == null) {
                            coroutineOwner2 = null;
                            break;
                        }
                    }
                    if (coroutineOwner2 != null && (debugCoroutineInfoImpl = coroutineOwner2.info) != null) {
                        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = debugCoroutineInfoImpl.getLastObservedFrame$kotlinx_coroutines_core();
                    } else {
                        return;
                    }
                }
                Intrinsics.checkNotNull(continuation2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
                debugCoroutineInfoImpl.updateState$kotlinx_coroutines_core(str, continuation2, z);
                while (true) {
                    continuation2 = continuation2.getCallerFrame();
                    if (continuation2 == 0) {
                        break;
                    } else if (continuation2.getF1904x3271d0aa() != null) {
                        coroutineOwner3 = continuation2;
                        break;
                    }
                }
                if (coroutineOwner3 != null) {
                    r0.put(coroutineOwner3, debugCoroutineInfoImpl);
                    return;
                }
                return;
            }
            return;
        }
        if (continuation instanceof CoroutineStackFrame) {
            coroutineOwner = (CoroutineStackFrame) continuation;
        } else {
            coroutineOwner = 0;
        }
    }
}
