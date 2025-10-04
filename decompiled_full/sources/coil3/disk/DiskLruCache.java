package coil3.disk;

import coil3.content.Collections_jvmCommonKt;
import coil3.content.Coroutines_nonJsCommonKt;
import coil3.content.FileSystemsKt;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0720xaa9ccb5a;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0346x75d576dc;
import defpackage.C0676x5cc001ec;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\b\u0000\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0004$%&#B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u001e\u0010\u0016\u001a\b\u0018\u00010\u0015R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013H\u0086\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0019\u001a\b\u0018\u00010\u0018R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\t¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0010H\u0016¢\u0006\u0004\b \u0010\u0012J\r\u0010!\u001a\u00020\u0010¢\u0006\u0004\b!\u0010\u0012J\r\u0010\"\u001a\u00020\u0010¢\u0006\u0004\b\"\u0010\u0012¨\u0006'"}, d2 = {"Lcoil3/disk/DiskLruCache;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "directory", "Lkotlin/coroutines/CoroutineContext;", "cleanupCoroutineContext", "", "maxSize", "", "appVersion", "valueCount", "<init>", "(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V", "", "initialize", "()V", "", "key", "Lcoil3/disk/DiskLruCache$Snapshot;", "get", "(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Snapshot;", "Lcoil3/disk/DiskLruCache$Editor;", "edit", "(Ljava/lang/String;)Lcoil3/disk/DiskLruCache$Editor;", "size", "()J", "", "remove", "(Ljava/lang/String;)Z", "close", "flush", "evictAll", "Companion", "Snapshot", "Editor", "Entry", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Okio.kt\nokio/Okio__OkioKt\n+ 4 FileSystem.kt\nokio/FileSystem\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,869:1\n1#2:870\n66#3:871\n52#3,4:873\n60#3,10:878\n56#3,3:888\n71#3,3:891\n52#3,4:904\n60#3,10:909\n56#3,18:919\n67#4:872\n68#4:877\n78#4:901\n177#4:902\n81#4:903\n82#4:908\n381#5,7:894\n37#6:937\n36#6,3:938\n37#6:941\n36#6,3:942\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache\n*L\n212#1:871\n212#1:873,4\n212#1:878,10\n212#1:888,3\n212#1:891,3\n324#1:904,4\n324#1:909,10\n324#1:919,18\n212#1:872\n212#1:877\n324#1:901\n324#1:902\n324#1:903\n324#1:908\n275#1:894,7\n587#1:937\n587#1:938,3\n641#1:941\n641#1:942,3\n*E\n"})
/* loaded from: classes.dex */
public final class DiskLruCache implements AutoCloseable {

    @NotNull
    public static final String JOURNAL_FILE = "journal";

    @NotNull
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";

    @NotNull
    public static final String JOURNAL_FILE_TMP = "journal.tmp";

    @NotNull
    public static final String MAGIC = "libcore.io.DiskLruCache";

    @NotNull
    public static final String VERSION = "1";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Path f551xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final long f552x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final int f553x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final int f554x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Path f555x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final Path f556x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final Path f557x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final Map f558x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final CoroutineScope f559x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final Object f560x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public long f561x1db10c9d;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public int f562xd2bcb0cf;

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public BufferedSink f563x8c6fc18a;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public boolean f564x1aebc6d9;

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨, reason: contains not printable characters */
    public boolean f565xab142723;

    /* renamed from: 뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
    public boolean f566x85f0360e;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public boolean f567xad53da1a;

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬, reason: contains not printable characters */
    public boolean f568x952a0a9e;

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅, reason: contains not printable characters */
    public final DiskLruCache$fileSystem$1 f569xc20437a5;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡, reason: contains not printable characters */
    public static final Regex f550x4440ab85 = new Regex("[a-z0-9_-]{1,120}");

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u0012\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028\u0000X\u0080T¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u0012\u0004\b\b\u0010\u0006R\u001a\u0010\t\u001a\u00020\u00028\u0000X\u0080T¢\u0006\f\n\u0004\b\t\u0010\u0004\u0012\u0004\b\n\u0010\u0006R\u001a\u0010\u000b\u001a\u00020\u00028\u0000X\u0080T¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u0012\u0004\b\f\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00028\u0000X\u0080T¢\u0006\f\n\u0004\b\r\u0010\u0004\u0012\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcoil3/disk/DiskLruCache$Companion;", "", "", "JOURNAL_FILE", "Ljava/lang/String;", "getJOURNAL_FILE$coil_core_release$annotations", "()V", "JOURNAL_FILE_TMP", "getJOURNAL_FILE_TMP$coil_core_release$annotations", "JOURNAL_FILE_BACKUP", "getJOURNAL_FILE_BACKUP$coil_core_release$annotations", "MAGIC", "getMAGIC$coil_core_release$annotations", "VERSION", "getVERSION$coil_core_release$annotations", "CLEAN", "DIRTY", "REMOVE", "READ", "Lkotlin/text/Regex;", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static /* synthetic */ void getJOURNAL_FILE$coil_core_release$annotations() {
        }

        public static /* synthetic */ void getJOURNAL_FILE_BACKUP$coil_core_release$annotations() {
        }

        public static /* synthetic */ void getJOURNAL_FILE_TMP$coil_core_release$annotations() {
        }

        public static /* synthetic */ void getMAGIC$coil_core_release$annotations() {
        }

        public static /* synthetic */ void getVERSION$coil_core_release$annotations() {
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0018\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u0010R\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u000eR\u001b\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcoil3/disk/DiskLruCache$Editor;", "", "Lcoil3/disk/DiskLruCache$Entry;", "Lcoil3/disk/DiskLruCache;", "entry", "<init>", "(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V", "", "index", "Lokio/Path;", coil3.content.UtilsKt.SCHEME_FILE, "(I)Lokio/Path;", "", "detach", "()V", "commit", "Lcoil3/disk/DiskLruCache$Snapshot;", "commitAndGet", "()Lcoil3/disk/DiskLruCache$Snapshot;", "abort", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/disk/DiskLruCache$Entry;", "getEntry", "()Lcoil3/disk/DiskLruCache$Entry;", "", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "[Z", "getWritten", "()[Z", "written", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$Editor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"})
    /* loaded from: classes.dex */
    public final class Editor {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Entry entry;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public boolean f571x3271d0aa;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public final boolean[] written;

        public Editor(@NotNull Entry entry) {
            this.entry = entry;
            this.written = new boolean[DiskLruCache.this.f554x75d576dc];
        }

        public final void abort() {
            m940xfbe0c504(false);
        }

        public final void commit() {
            m940xfbe0c504(true);
        }

        @Nullable
        public final Snapshot commitAndGet() {
            Snapshot snapshot;
            Object obj = DiskLruCache.this.f560x9d12c1f4;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                commit();
                snapshot = diskLruCache.get(this.entry.getKey());
            }
            return snapshot;
        }

        public final void detach() {
            Entry entry = this.entry;
            if (Intrinsics.areEqual(entry.getCurrentEditor(), this)) {
                entry.setZombie(true);
            }
        }

        @NotNull
        public final Path file(int index) {
            Path path;
            Object obj = DiskLruCache.this.f560x9d12c1f4;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                if (!this.f571x3271d0aa) {
                    this.written[index] = true;
                    Path path2 = this.entry.getDirtyFiles().get(index);
                    FileSystemsKt.createFile$default(diskLruCache.f569xc20437a5, path2, false, 2, null);
                    path = path2;
                } else {
                    throw new IllegalStateException("editor is closed");
                }
            }
            return path;
        }

        @NotNull
        public final Entry getEntry() {
            return this.entry;
        }

        @NotNull
        public final boolean[] getWritten() {
            return this.written;
        }

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final void m940xfbe0c504(boolean z) {
            Object obj = DiskLruCache.this.f560x9d12c1f4;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                try {
                    if (!this.f571x3271d0aa) {
                        if (Intrinsics.areEqual(this.entry.getCurrentEditor(), this)) {
                            DiskLruCache.access$completeEdit(diskLruCache, this, z);
                        }
                        this.f571x3271d0aa = true;
                    } else {
                        throw new IllegalStateException("editor is closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u000fR\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR'\u0010$\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R'\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\u001e0\u001dj\b\u0012\u0004\u0012\u00020\u001e`\u001f8\u0006¢\u0006\f\n\u0004\b%\u0010!\u001a\u0004\b&\u0010#R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00103\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010*\u001a\u0004\b1\u0010,\"\u0004\b2\u0010.R(\u0010;\u001a\b\u0018\u000104R\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lcoil3/disk/DiskLruCache$Entry;", "", "", "key", "<init>", "(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V", "", "strings", "", "setLengths", "(Ljava/util/List;)V", "Lokio/BufferedSink;", "writer", "writeLengths", "(Lokio/BufferedSink;)V", "Lcoil3/disk/DiskLruCache$Snapshot;", "Lcoil3/disk/DiskLruCache;", "snapshot", "()Lcoil3/disk/DiskLruCache$Snapshot;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "[J", "getLengths", "()[J", "lengths", "Ljava/util/ArrayList;", "Lokio/Path;", "Lkotlin/collections/ArrayList;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Ljava/util/ArrayList;", "getCleanFiles", "()Ljava/util/ArrayList;", "cleanFiles", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "getDirtyFiles", "dirtyFiles", "", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Z", "getReadable", "()Z", "setReadable", "(Z)V", "readable", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "getZombie", "setZombie", "zombie", "Lcoil3/disk/DiskLruCache$Editor;", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "Lcoil3/disk/DiskLruCache$Editor;", "getCurrentEditor", "()Lcoil3/disk/DiskLruCache$Editor;", "setCurrentEditor", "(Lcoil3/disk/DiskLruCache$Editor;)V", "currentEditor", "", "뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두", "I", "getLockingSnapshotCount", "()I", "setLockingSnapshotCount", "(I)V", "lockingSnapshotCount", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$Entry\n+ 2 collections.kt\ncoil3/util/CollectionsKt\n*L\n1#1,869:1\n43#2,4:870\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$Entry\n*L\n841#1:870,4\n*E\n"})
    /* loaded from: classes.dex */
    public final class Entry {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final String key;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final long[] lengths;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public final ArrayList cleanFiles;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
        public final ArrayList dirtyFiles;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
        public boolean readable;

        /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
        public boolean zombie;

        /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
        public Editor currentEditor;

        /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters and from kotlin metadata */
        public int lockingSnapshotCount;

        public Entry(@NotNull String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.f554x75d576dc];
            this.cleanFiles = new ArrayList(DiskLruCache.this.f554x75d576dc);
            this.dirtyFiles = new ArrayList(DiskLruCache.this.f554x75d576dc);
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int i = DiskLruCache.this.f554x75d576dc;
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(i2);
                this.cleanFiles.add(DiskLruCache.this.f551xfbe0c504.resolve(sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(DiskLruCache.this.f551xfbe0c504.resolve(sb.toString()));
                sb.setLength(length);
            }
        }

        @NotNull
        public final ArrayList<Path> getCleanFiles() {
            return this.cleanFiles;
        }

        @Nullable
        public final Editor getCurrentEditor() {
            return this.currentEditor;
        }

        @NotNull
        public final ArrayList<Path> getDirtyFiles() {
            return this.dirtyFiles;
        }

        @NotNull
        public final String getKey() {
            return this.key;
        }

        @NotNull
        public final long[] getLengths() {
            return this.lengths;
        }

        public final int getLockingSnapshotCount() {
            return this.lockingSnapshotCount;
        }

        public final boolean getReadable() {
            return this.readable;
        }

        public final boolean getZombie() {
            return this.zombie;
        }

        public final void setCurrentEditor(@Nullable Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths(@NotNull List<String> strings) {
            if (strings.size() == DiskLruCache.this.f554x75d576dc) {
                try {
                    int size = strings.size();
                    for (int i = 0; i < size; i++) {
                        this.lengths[i] = Long.parseLong(strings.get(i));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    throw new IOException("unexpected journal line: " + strings);
                }
            }
            throw new IOException("unexpected journal line: " + strings);
        }

        public final void setLockingSnapshotCount(int i) {
            this.lockingSnapshotCount = i;
        }

        public final void setReadable(boolean z) {
            this.readable = z;
        }

        public final void setZombie(boolean z) {
            this.zombie = z;
        }

        @Nullable
        public final Snapshot snapshot() {
            if (!this.readable || this.currentEditor != null || this.zombie) {
                return null;
            }
            ArrayList arrayList = this.cleanFiles;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (i < size) {
                    if (!diskLruCache.f569xc20437a5.exists((Path) arrayList.get(i))) {
                        try {
                            DiskLruCache.access$removeEntry(diskLruCache, this);
                        } catch (IOException unused) {
                        }
                        return null;
                    }
                    i++;
                } else {
                    this.lockingSnapshotCount++;
                    return new Snapshot(this);
                }
            }
        }

        public final void writeLengths(@NotNull BufferedSink writer) {
            for (long j : this.lengths) {
                writer.writeByte(32).writeDecimalLong(j);
            }
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0005\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0011\u001a\b\u0018\u00010\u0010R\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0005\u001a\u00060\u0003R\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcoil3/disk/DiskLruCache$Snapshot;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lcoil3/disk/DiskLruCache$Entry;", "Lcoil3/disk/DiskLruCache;", "entry", "<init>", "(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V", "", "index", "Lokio/Path;", coil3.content.UtilsKt.SCHEME_FILE, "(I)Lokio/Path;", "", "close", "()V", "Lcoil3/disk/DiskLruCache$Editor;", "closeAndEdit", "()Lcoil3/disk/DiskLruCache$Editor;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lcoil3/disk/DiskLruCache$Entry;", "getEntry", "()Lcoil3/disk/DiskLruCache$Entry;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\ncoil3/disk/DiskLruCache$Snapshot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,869:1\n1#2:870\n*E\n"})
    /* loaded from: classes.dex */
    public final class Snapshot implements AutoCloseable {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final Entry entry;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public boolean f584x3271d0aa;

        public Snapshot(@NotNull Entry entry) {
            this.entry = entry;
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            if (!this.f584x3271d0aa) {
                this.f584x3271d0aa = true;
                Object obj = DiskLruCache.this.f560x9d12c1f4;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (obj) {
                    this.entry.setLockingSnapshotCount(r2.getLockingSnapshotCount() - 1);
                    if (this.entry.getLockingSnapshotCount() == 0 && this.entry.getZombie()) {
                        DiskLruCache.access$removeEntry(diskLruCache, this.entry);
                    }
                }
            }
        }

        @Nullable
        public final Editor closeAndEdit() {
            Editor edit;
            Object obj = DiskLruCache.this.f560x9d12c1f4;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (obj) {
                close();
                edit = diskLruCache.edit(this.entry.getKey());
            }
            return edit;
        }

        @NotNull
        public final Path file(int index) {
            if (!this.f584x3271d0aa) {
                return this.entry.getCleanFiles().get(index);
            }
            throw new IllegalStateException("snapshot is closed");
        }

        @NotNull
        public final Entry getEntry() {
            return this.entry;
        }
    }

    /* JADX WARN: Type inference failed for: r4v11, types: [okio.ForwardingFileSystem, coil3.disk.DiskLruCache$fileSystem$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull Path path, @NotNull CoroutineContext coroutineContext, long j, int i, int i2) {
        this.f551xfbe0c504 = path;
        this.f552x3271d0aa = j;
        this.f553x1378447b = i;
        this.f554x75d576dc = i2;
        if (j > 0) {
            if (i2 > 0) {
                this.f555x9738a56c = path.resolve(JOURNAL_FILE);
                this.f556x9e171bf9 = path.resolve(JOURNAL_FILE_TMP);
                this.f557x34271fae = path.resolve(JOURNAL_FILE_BACKUP);
                this.f558x95f25580 = Collections_jvmCommonKt.LruMutableMap$default(0, 0.0f, 3, null);
                CoroutineContext plus = coroutineContext.plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null));
                CoroutineDispatcher dispatcher = coil3.content.UtilsKt.getDispatcher(coroutineContext);
                this.f559x3db60231 = CoroutineScopeKt.CoroutineScope(plus.plus(CoroutineDispatcher.limitedParallelism$default(dispatcher == null ? Coroutines_nonJsCommonKt.ioCoroutineDispatcher() : dispatcher, 1, null, 2, null)));
                this.f560x9d12c1f4 = new Object();
                this.f569xc20437a5 = new ForwardingFileSystem(fileSystem);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0128, code lost:
    
        if (r2 != false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0121 A[Catch: all -> 0x0040, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0015, B:10:0x001b, B:12:0x0020, B:14:0x0028, B:17:0x003a, B:25:0x0046, B:27:0x004b, B:29:0x0067, B:30:0x007d, B:32:0x008f, B:34:0x0096, B:37:0x006d, B:39:0x00bc, B:41:0x00c5, B:44:0x00ca, B:46:0x00db, B:49:0x00e2, B:50:0x0116, B:52:0x0121, B:58:0x012a, B:59:0x00fe, B:60:0x00a5, B:62:0x00aa, B:64:0x012f, B:65:0x0136), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void access$completeEdit(DiskLruCache diskLruCache, Editor editor, boolean z) {
        long j;
        synchronized (diskLruCache.f560x9d12c1f4) {
            Entry entry = editor.getEntry();
            if (Intrinsics.areEqual(entry.getCurrentEditor(), editor)) {
                boolean z2 = false;
                if (z && !entry.getZombie()) {
                    int i = diskLruCache.f554x75d576dc;
                    for (int i2 = 0; i2 < i; i2++) {
                        if (editor.getWritten()[i2] && !diskLruCache.f569xc20437a5.exists(entry.getDirtyFiles().get(i2))) {
                            editor.abort();
                            return;
                        }
                    }
                    int i3 = diskLruCache.f554x75d576dc;
                    for (int i4 = 0; i4 < i3; i4++) {
                        Path path = entry.getDirtyFiles().get(i4);
                        Path path2 = entry.getCleanFiles().get(i4);
                        if (diskLruCache.f569xc20437a5.exists(path)) {
                            diskLruCache.f569xc20437a5.atomicMove(path, path2);
                        } else {
                            FileSystemsKt.createFile$default(diskLruCache.f569xc20437a5, entry.getCleanFiles().get(i4), false, 2, null);
                        }
                        long j2 = entry.getLengths()[i4];
                        Long size = diskLruCache.f569xc20437a5.metadata(path2).getSize();
                        if (size != null) {
                            j = size.longValue();
                        } else {
                            j = 0;
                        }
                        entry.getLengths()[i4] = j;
                        diskLruCache.f561x1db10c9d = (diskLruCache.f561x1db10c9d - j2) + j;
                    }
                } else {
                    int i5 = diskLruCache.f554x75d576dc;
                    for (int i6 = 0; i6 < i5; i6++) {
                        diskLruCache.f569xc20437a5.delete(entry.getDirtyFiles().get(i6));
                    }
                }
                entry.setCurrentEditor(null);
                if (entry.getZombie()) {
                    diskLruCache.m937x9e171bf9(entry);
                    return;
                }
                diskLruCache.f562xd2bcb0cf++;
                BufferedSink bufferedSink = diskLruCache.f563x8c6fc18a;
                Intrinsics.checkNotNull(bufferedSink);
                if (!z && !entry.getReadable()) {
                    diskLruCache.f558x95f25580.remove(entry.getKey());
                    bufferedSink.writeUtf8("REMOVE");
                    bufferedSink.writeByte(32);
                    bufferedSink.writeUtf8(entry.getKey());
                    bufferedSink.writeByte(10);
                    bufferedSink.flush();
                    if (diskLruCache.f561x1db10c9d <= diskLruCache.f552x3271d0aa) {
                        if (diskLruCache.f562xd2bcb0cf >= 2000) {
                            z2 = true;
                        }
                    }
                    diskLruCache.m933x3271d0aa();
                    return;
                }
                entry.setReadable(true);
                bufferedSink.writeUtf8("CLEAN");
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.getKey());
                entry.writeLengths(bufferedSink);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (diskLruCache.f561x1db10c9d <= diskLruCache.f552x3271d0aa) {
                }
                diskLruCache.m933x3271d0aa();
                return;
            }
            throw new IllegalStateException("Check failed.");
        }
    }

    public static final boolean access$journalRewriteRequired(DiskLruCache diskLruCache) {
        if (diskLruCache.f562xd2bcb0cf >= 2000) {
            return true;
        }
        return false;
    }

    public static final /* synthetic */ boolean access$removeEntry(DiskLruCache diskLruCache, Entry entry) {
        diskLruCache.m937x9e171bf9(entry);
        return true;
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static void m931x95f25580(String str) {
        if (f550x4440ab85.matches(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + Typography.quote).toString());
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.f560x9d12c1f4) {
            try {
                if (this.f565xab142723 && !this.f566x85f0360e) {
                    for (Entry entry : (Entry[]) this.f558x95f25580.values().toArray(new Entry[0])) {
                        Editor currentEditor = entry.getCurrentEditor();
                        if (currentEditor != null) {
                            currentEditor.detach();
                        }
                    }
                    m938x34271fae();
                    CoroutineScopeKt.cancel$default(this.f559x3db60231, null, 1, null);
                    BufferedSink bufferedSink = this.f563x8c6fc18a;
                    Intrinsics.checkNotNull(bufferedSink);
                    bufferedSink.close();
                    this.f563x8c6fc18a = null;
                    this.f566x85f0360e = true;
                    return;
                }
                this.f566x85f0360e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final Editor edit(@NotNull String key) {
        Editor editor;
        synchronized (this.f560x9d12c1f4) {
            m932xfbe0c504();
            m931x95f25580(key);
            initialize();
            Entry entry = (Entry) this.f558x95f25580.get(key);
            if (entry != null) {
                editor = entry.getCurrentEditor();
            } else {
                editor = null;
            }
            if (editor != null) {
                return null;
            }
            if (entry != null && entry.getLockingSnapshotCount() != 0) {
                return null;
            }
            if (!this.f567xad53da1a && !this.f568x952a0a9e) {
                BufferedSink bufferedSink = this.f563x8c6fc18a;
                Intrinsics.checkNotNull(bufferedSink);
                bufferedSink.writeUtf8("DIRTY");
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(key);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f564x1aebc6d9) {
                    return null;
                }
                if (entry == null) {
                    entry = new Entry(key);
                    this.f558x95f25580.put(key, entry);
                }
                Editor editor2 = new Editor(entry);
                entry.setCurrentEditor(editor2);
                return editor2;
            }
            m933x3271d0aa();
            return null;
        }
    }

    public final void evictAll() {
        synchronized (this.f560x9d12c1f4) {
            try {
                initialize();
                for (Entry entry : (Entry[]) this.f558x95f25580.values().toArray(new Entry[0])) {
                    m937x9e171bf9(entry);
                }
                this.f567xad53da1a = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void flush() {
        synchronized (this.f560x9d12c1f4) {
            if (!this.f565xab142723) {
                return;
            }
            m932xfbe0c504();
            m938x34271fae();
            BufferedSink bufferedSink = this.f563x8c6fc18a;
            Intrinsics.checkNotNull(bufferedSink);
            bufferedSink.flush();
        }
    }

    @Nullable
    public final Snapshot get(@NotNull String key) {
        Snapshot snapshot;
        synchronized (this.f560x9d12c1f4) {
            m932xfbe0c504();
            m931x95f25580(key);
            initialize();
            Entry entry = (Entry) this.f558x95f25580.get(key);
            if (entry != null && (snapshot = entry.snapshot()) != null) {
                boolean z = true;
                this.f562xd2bcb0cf++;
                BufferedSink bufferedSink = this.f563x8c6fc18a;
                Intrinsics.checkNotNull(bufferedSink);
                bufferedSink.writeUtf8("READ");
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(key);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f562xd2bcb0cf < 2000) {
                    z = false;
                }
                if (z) {
                    m933x3271d0aa();
                }
                return snapshot;
            }
            return null;
        }
    }

    public final void initialize() {
        synchronized (this.f560x9d12c1f4) {
            try {
                if (this.f565xab142723) {
                    return;
                }
                this.f569xc20437a5.delete(this.f556x9e171bf9);
                if (this.f569xc20437a5.exists(this.f557x34271fae)) {
                    if (this.f569xc20437a5.exists(this.f555x9738a56c)) {
                        this.f569xc20437a5.delete(this.f557x34271fae);
                    } else {
                        this.f569xc20437a5.atomicMove(this.f557x34271fae, this.f555x9738a56c);
                    }
                }
                if (this.f569xc20437a5.exists(this.f555x9738a56c)) {
                    try {
                        m935x75d576dc();
                        m934x1378447b();
                        this.f565xab142723 = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            close();
                            FileSystemsKt.deleteContents(this.f569xc20437a5, this.f551xfbe0c504);
                            this.f566x85f0360e = false;
                        } catch (Throwable th) {
                            this.f566x85f0360e = false;
                            throw th;
                        }
                    }
                }
                m939x3db60231();
                this.f565xab142723 = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean remove(@NotNull String key) {
        synchronized (this.f560x9d12c1f4) {
            m932xfbe0c504();
            m931x95f25580(key);
            initialize();
            Entry entry = (Entry) this.f558x95f25580.get(key);
            if (entry == null) {
                return false;
            }
            m937x9e171bf9(entry);
            if (this.f561x1db10c9d <= this.f552x3271d0aa) {
                this.f567xad53da1a = false;
            }
            return true;
        }
    }

    public final long size() {
        long j;
        synchronized (this.f560x9d12c1f4) {
            initialize();
            j = this.f561x1db10c9d;
        }
        return j;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m932xfbe0c504() {
        if (!this.f566x85f0360e) {
        } else {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final void m933x3271d0aa() {
        BuildersKt.launch$default(this.f559x3db60231, null, null, new C0676x5cc001ec(this, null), 3, null);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m934x1378447b() {
        Iterator it = this.f558x95f25580.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Editor currentEditor = entry.getCurrentEditor();
            int i = this.f554x75d576dc;
            int i2 = 0;
            if (currentEditor == null) {
                while (i2 < i) {
                    j += entry.getLengths()[i2];
                    i2++;
                }
            } else {
                entry.setCurrentEditor(null);
                while (i2 < i) {
                    Path path = entry.getCleanFiles().get(i2);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f569xc20437a5;
                    diskLruCache$fileSystem$1.delete(path);
                    diskLruCache$fileSystem$1.delete(entry.getDirtyFiles().get(i2));
                    i2++;
                }
                it.remove();
            }
        }
        this.f561x1db10c9d = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ca  */
    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m935x75d576dc() {
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f569xc20437a5;
        Path path = this.f555x9738a56c;
        BufferedSource buffer = Okio.buffer(diskLruCache$fileSystem$1.source(path));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (Intrinsics.areEqual(MAGIC, readUtf8LineStrict) && Intrinsics.areEqual(VERSION, readUtf8LineStrict2) && Intrinsics.areEqual(String.valueOf(this.f553x1378447b), readUtf8LineStrict3) && Intrinsics.areEqual(String.valueOf(this.f554x75d576dc), readUtf8LineStrict4) && readUtf8LineStrict5.length() <= 0) {
                int i = 0;
                while (true) {
                    try {
                        m936x9738a56c(buffer.readUtf8LineStrict());
                        i++;
                    } catch (EOFException unused) {
                        this.f562xd2bcb0cf = i - this.f558x95f25580.size();
                        if (!buffer.exhausted()) {
                            m939x3db60231();
                        } else {
                            this.f563x8c6fc18a = Okio.buffer(new FaultHidingSink(diskLruCache$fileSystem$1.appendingSink(path), new C0346x75d576dc(this, 4)));
                        }
                        try {
                            buffer.close();
                            th = null;
                        } catch (Throwable th) {
                            th = th;
                        }
                        if (th != null) {
                            return;
                        } else {
                            throw th;
                        }
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict3 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + ']');
            }
        } catch (Throwable th2) {
            th = th2;
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    AbstractC0720xaa9ccb5a.addSuppressed(th, th3);
                }
            }
            if (th != null) {
            }
        }
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final void m936x9738a56c(String str) {
        String substring;
        int indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ' ', 0, false, 6, (Object) null);
        if (indexOf$default != -1) {
            int i = indexOf$default + 1;
            int indexOf$default2 = StringsKt__StringsKt.indexOf$default((CharSequence) str, ' ', i, false, 4, (Object) null);
            Map map = this.f558x95f25580;
            if (indexOf$default2 == -1) {
                substring = str.substring(i);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                if (indexOf$default == 6 && AbstractC1197x89633db9.startsWith$default(str, "REMOVE", false, 2, null)) {
                    map.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf$default2);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            }
            Object obj = map.get(substring);
            if (obj == null) {
                obj = new Entry(substring);
                map.put(substring, obj);
            }
            Entry entry = (Entry) obj;
            if (indexOf$default2 != -1 && indexOf$default == 5 && AbstractC1197x89633db9.startsWith$default(str, "CLEAN", false, 2, null)) {
                String substring2 = str.substring(indexOf$default2 + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                List<String> split$default = StringsKt__StringsKt.split$default((CharSequence) substring2, new char[]{' '}, false, 0, 6, (Object) null);
                entry.setReadable(true);
                entry.setCurrentEditor(null);
                entry.setLengths(split$default);
                return;
            }
            if (indexOf$default2 == -1 && indexOf$default == 5 && AbstractC1197x89633db9.startsWith$default(str, "DIRTY", false, 2, null)) {
                entry.setCurrentEditor(new Editor(entry));
                return;
            } else if (indexOf$default2 == -1 && indexOf$default == 4 && AbstractC1197x89633db9.startsWith$default(str, "READ", false, 2, null)) {
                return;
            } else {
                throw new IOException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected journal line: ", str));
            }
        }
        throw new IOException(AbstractC0362x4440ab85.m2952x5ac5058d("unexpected journal line: ", str));
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final void m937x9e171bf9(Entry entry) {
        BufferedSink bufferedSink;
        if (entry.getLockingSnapshotCount() > 0 && (bufferedSink = this.f563x8c6fc18a) != null) {
            bufferedSink.writeUtf8("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(entry.getKey());
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (entry.getLockingSnapshotCount() <= 0 && entry.getCurrentEditor() == null) {
            for (int i = 0; i < this.f554x75d576dc; i++) {
                this.f569xc20437a5.delete(entry.getCleanFiles().get(i));
                this.f561x1db10c9d -= entry.getLengths()[i];
                entry.getLengths()[i] = 0;
            }
            this.f562xd2bcb0cf++;
            BufferedSink bufferedSink2 = this.f563x8c6fc18a;
            if (bufferedSink2 != null) {
                bufferedSink2.writeUtf8("REMOVE");
                bufferedSink2.writeByte(32);
                bufferedSink2.writeUtf8(entry.getKey());
                bufferedSink2.writeByte(10);
                bufferedSink2.flush();
            }
            this.f558x95f25580.remove(entry.getKey());
            if (this.f562xd2bcb0cf >= 2000) {
                m933x3271d0aa();
                return;
            }
            return;
        }
        entry.setZombie(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
    
        m937x9e171bf9(r1);
     */
    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m938x34271fae() {
        while (this.f561x1db10c9d > this.f552x3271d0aa) {
            for (Entry entry : this.f558x95f25580.values()) {
                if (!entry.getZombie()) {
                    break;
                }
            }
            return;
        }
        this.f567xad53da1a = false;
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final void m939x3db60231() {
        Throwable th;
        synchronized (this.f560x9d12c1f4) {
            try {
                BufferedSink bufferedSink = this.f563x8c6fc18a;
                if (bufferedSink != null) {
                    bufferedSink.close();
                }
                BufferedSink buffer = Okio.buffer(this.f569xc20437a5.sink(this.f556x9e171bf9, false));
                try {
                    buffer.writeUtf8(MAGIC).writeByte(10);
                    buffer.writeUtf8(VERSION).writeByte(10);
                    buffer.writeDecimalLong(this.f553x1378447b).writeByte(10);
                    buffer.writeDecimalLong(this.f554x75d576dc).writeByte(10);
                    buffer.writeByte(10);
                    for (Entry entry : this.f558x95f25580.values()) {
                        if (entry.getCurrentEditor() != null) {
                            buffer.writeUtf8("DIRTY");
                            buffer.writeByte(32);
                            buffer.writeUtf8(entry.getKey());
                            buffer.writeByte(10);
                        } else {
                            buffer.writeUtf8("CLEAN");
                            buffer.writeByte(32);
                            buffer.writeUtf8(entry.getKey());
                            entry.writeLengths(buffer);
                            buffer.writeByte(10);
                        }
                    }
                    try {
                        buffer.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    if (buffer != null) {
                        try {
                            buffer.close();
                        } catch (Throwable th4) {
                            AbstractC0720xaa9ccb5a.addSuppressed(th3, th4);
                        }
                    }
                    th = th3;
                }
                if (th == null) {
                    if (this.f569xc20437a5.exists(this.f555x9738a56c)) {
                        this.f569xc20437a5.atomicMove(this.f555x9738a56c, this.f557x34271fae);
                        this.f569xc20437a5.atomicMove(this.f556x9e171bf9, this.f555x9738a56c);
                        this.f569xc20437a5.delete(this.f557x34271fae);
                    } else {
                        this.f569xc20437a5.atomicMove(this.f556x9e171bf9, this.f555x9738a56c);
                    }
                    this.f563x8c6fc18a = Okio.buffer(new FaultHidingSink(this.f569xc20437a5.appendingSink(this.f555x9738a56c), new C0346x75d576dc(this, 4)));
                    this.f562xd2bcb0cf = 0;
                    this.f564x1aebc6d9 = false;
                    this.f568x952a0a9e = false;
                } else {
                    throw th;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }
}
