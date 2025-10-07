package okio;

import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0010\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001f\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\"\u0010,\u001a\u00020\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010\u001f\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#R$\u00101\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u0010\f\"\u0004\b0\u0010\nR\u0017\u00107\u001a\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0017\u0010=\u001a\u0002088\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0007\u001a\u00020\u00068G¢\u0006\f\n\u0004\b>\u0010.\u001a\u0004\b\u0007\u0010\fR\u0017\u0010\u0010\u001a\u00020\r8G¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\b\u0010\u0010\u000f¨\u0006A"}, d2 = {"Lokio/Pipe;", "", "", "maxBufferSize", "<init>", "(J)V", "Lokio/Sink;", "sink", "", "fold", "(Lokio/Sink;)V", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "()V", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "J", "getMaxBufferSize$okio", "()J", "Lokio/Buffer;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "buffer", "", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Z", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "canceled", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "getSinkClosed$okio", "setSinkClosed$okio", "sinkClosed", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "getSourceClosed$okio", "setSourceClosed$okio", "sourceClosed", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "foldedSink", "Ljava/util/concurrent/locks/ReentrantLock;", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "condition", "뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷", "뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎", "Lokio/Source;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,262:1\n1#2:263\n302#3,26:264\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n222#1:264,26\n*E\n"})
/* loaded from: classes3.dex */
public final class Pipe {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final long maxBufferSize;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final Buffer buffer = new Buffer();

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public boolean canceled;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public boolean sinkClosed;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public boolean sourceClosed;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public Sink foldedSink;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
    public final ReentrantLock lock;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters and from kotlin metadata */
    public final Condition condition;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final Pipe$sink$1 f3645x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final Pipe$source$1 f3646x9d12c1f4;

    /* JADX WARN: Type inference failed for: r4v3, types: [okio.Pipe$sink$1] */
    /* JADX WARN: Type inference failed for: r4v4, types: [okio.Pipe$source$1] */
    public Pipe(long j) {
        this.maxBufferSize = j;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(newCondition, "newCondition(...)");
        this.condition = newCondition;
        if (j >= 1) {
            this.f3645x3db60231 = new Sink() { // from class: okio.Pipe$sink$1

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final Timeout f3647xfbe0c504 = new Timeout();

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Pipe pipe = Pipe.this;
                    ReentrantLock lock = pipe.getLock();
                    lock.lock();
                    try {
                        if (pipe.getSinkClosed()) {
                            lock.unlock();
                            return;
                        }
                        Sink foldedSink = pipe.getFoldedSink();
                        if (foldedSink == null) {
                            if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            pipe.setSinkClosed$okio(true);
                            pipe.getCondition().signalAll();
                            foldedSink = null;
                        }
                        if (foldedSink != null) {
                            Timeout f3647xfbe0c504 = foldedSink.getF3647xfbe0c504();
                            Timeout f3647xfbe0c5042 = pipe.sink().getF3647xfbe0c504();
                            long f3668x1378447b = f3647xfbe0c504.getF3668x1378447b();
                            long minTimeout = Timeout.INSTANCE.minTimeout(f3647xfbe0c5042.getF3668x1378447b(), f3647xfbe0c504.getF3668x1378447b());
                            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                            f3647xfbe0c504.timeout(minTimeout, timeUnit);
                            if (f3647xfbe0c504.getF3666xfbe0c504()) {
                                long deadlineNanoTime = f3647xfbe0c504.deadlineNanoTime();
                                if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                    f3647xfbe0c504.deadlineNanoTime(Math.min(f3647xfbe0c504.deadlineNanoTime(), f3647xfbe0c5042.deadlineNanoTime()));
                                }
                                try {
                                    foldedSink.close();
                                    f3647xfbe0c504.timeout(f3668x1378447b, timeUnit);
                                    if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                        f3647xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                                        return;
                                    }
                                    return;
                                } catch (Throwable th) {
                                    f3647xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                                    if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                        f3647xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                                    }
                                    throw th;
                                }
                            }
                            if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                f3647xfbe0c504.deadlineNanoTime(f3647xfbe0c5042.deadlineNanoTime());
                            }
                            try {
                                foldedSink.close();
                                f3647xfbe0c504.timeout(f3668x1378447b, timeUnit);
                                if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                    f3647xfbe0c504.clearDeadline();
                                }
                            } catch (Throwable th2) {
                                f3647xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                                if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                    f3647xfbe0c504.clearDeadline();
                                }
                                throw th2;
                            }
                        }
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    Pipe pipe = Pipe.this;
                    ReentrantLock lock = pipe.getLock();
                    lock.lock();
                    try {
                        if (!pipe.getSinkClosed()) {
                            if (!pipe.getCanceled()) {
                                Sink foldedSink = pipe.getFoldedSink();
                                if (foldedSink == null) {
                                    if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                        throw new IOException("source is closed");
                                    }
                                    foldedSink = null;
                                }
                                if (foldedSink != null) {
                                    Timeout f3647xfbe0c504 = foldedSink.getF3647xfbe0c504();
                                    Timeout f3647xfbe0c5042 = pipe.sink().getF3647xfbe0c504();
                                    long f3668x1378447b = f3647xfbe0c504.getF3668x1378447b();
                                    long minTimeout = Timeout.INSTANCE.minTimeout(f3647xfbe0c5042.getF3668x1378447b(), f3647xfbe0c504.getF3668x1378447b());
                                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                                    f3647xfbe0c504.timeout(minTimeout, timeUnit);
                                    if (f3647xfbe0c504.getF3666xfbe0c504()) {
                                        long deadlineNanoTime = f3647xfbe0c504.deadlineNanoTime();
                                        if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                            f3647xfbe0c504.deadlineNanoTime(Math.min(f3647xfbe0c504.deadlineNanoTime(), f3647xfbe0c5042.deadlineNanoTime()));
                                        }
                                        try {
                                            foldedSink.flush();
                                            f3647xfbe0c504.timeout(f3668x1378447b, timeUnit);
                                            if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                                f3647xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                                                return;
                                            }
                                            return;
                                        } catch (Throwable th) {
                                            f3647xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                                            if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                                f3647xfbe0c504.deadlineNanoTime(deadlineNanoTime);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                        f3647xfbe0c504.deadlineNanoTime(f3647xfbe0c5042.deadlineNanoTime());
                                    }
                                    try {
                                        foldedSink.flush();
                                        f3647xfbe0c504.timeout(f3668x1378447b, timeUnit);
                                        if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                            f3647xfbe0c504.clearDeadline();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th2) {
                                        f3647xfbe0c504.timeout(f3668x1378447b, TimeUnit.NANOSECONDS);
                                        if (f3647xfbe0c5042.getF3666xfbe0c504()) {
                                            f3647xfbe0c504.clearDeadline();
                                        }
                                        throw th2;
                                    }
                                }
                                return;
                            }
                            throw new IOException("canceled");
                        }
                        throw new IllegalStateException("closed");
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Sink
                /* renamed from: timeout, reason: from getter */
                public Timeout getF3647xfbe0c504() {
                    return this.f3647xfbe0c504;
                }

                /* JADX WARN: Code restructure failed: missing block: B:35:0x0079, code lost:
                
                    if (r2 == null) goto L56;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:0x007b, code lost:
                
                    r1 = r2.getF3647xfbe0c504();
                    r0 = r0.sink().getF3647xfbe0c504();
                    r3 = r1.getF3668x1378447b();
                    r5 = okio.Timeout.INSTANCE.minTimeout(r0.getF3668x1378447b(), r1.getF3668x1378447b());
                    r7 = java.util.concurrent.TimeUnit.NANOSECONDS;
                    r1.timeout(r5, r7);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:37:0x00a2, code lost:
                
                    if (r1.getF3666xfbe0c504() == false) goto L44;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x00a4, code lost:
                
                    r5 = r1.deadlineNanoTime();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00ac, code lost:
                
                    if (r0.getF3666xfbe0c504() == false) goto L66;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00ae, code lost:
                
                    r1.deadlineNanoTime(java.lang.Math.min(r1.deadlineNanoTime(), r0.deadlineNanoTime()));
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x00bd, code lost:
                
                    r2.write(r13, r14);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:43:0x00c0, code lost:
                
                    r1.timeout(r3, r7);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x00c7, code lost:
                
                    if (r0.getF3666xfbe0c504() == false) goto L77;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x00c9, code lost:
                
                    r1.deadlineNanoTime(r5);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x00cd, code lost:
                
                    r13 = move-exception;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x00ce, code lost:
                
                    r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:51:0x00d7, code lost:
                
                    if (r0.getF3666xfbe0c504() != false) goto L42;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:52:0x00d9, code lost:
                
                    r1.deadlineNanoTime(r5);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:53:0x00dc, code lost:
                
                    throw r13;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:55:0x00e1, code lost:
                
                    if (r0.getF3666xfbe0c504() == false) goto L64;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:56:0x00e3, code lost:
                
                    r1.deadlineNanoTime(r0.deadlineNanoTime());
                 */
                /* JADX WARN: Code restructure failed: missing block: B:58:0x00ea, code lost:
                
                    r2.write(r13, r14);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:59:0x00ed, code lost:
                
                    r1.timeout(r3, r7);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:60:0x00f4, code lost:
                
                    if (r0.getF3666xfbe0c504() == false) goto L79;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
                
                    r1.clearDeadline();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:65:0x00fa, code lost:
                
                    r13 = move-exception;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
                
                    r1.timeout(r3, java.util.concurrent.TimeUnit.NANOSECONDS);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:67:0x0104, code lost:
                
                    if (r0.getF3666xfbe0c504() != false) goto L54;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:68:0x0106, code lost:
                
                    r1.clearDeadline();
                 */
                /* JADX WARN: Code restructure failed: missing block: B:69:0x0109, code lost:
                
                    throw r13;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:70:0x010a, code lost:
                
                    return;
                 */
                @Override // okio.Sink
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void write(Buffer source, long byteCount) {
                    Sink sink;
                    Intrinsics.checkNotNullParameter(source, "source");
                    Pipe pipe = Pipe.this;
                    ReentrantLock lock = pipe.getLock();
                    lock.lock();
                    try {
                        if (!pipe.getSinkClosed()) {
                            if (!pipe.getCanceled()) {
                                while (true) {
                                    if (byteCount > 0) {
                                        sink = pipe.getFoldedSink();
                                        if (sink == null) {
                                            if (!pipe.getSourceClosed()) {
                                                long maxBufferSize = pipe.getMaxBufferSize() - pipe.getBuffer().size();
                                                if (maxBufferSize == 0) {
                                                    this.f3647xfbe0c504.awaitSignal(pipe.getCondition());
                                                    if (pipe.getCanceled()) {
                                                        throw new IOException("canceled");
                                                    }
                                                } else {
                                                    long min = Math.min(maxBufferSize, byteCount);
                                                    pipe.getBuffer().write(source, min);
                                                    byteCount -= min;
                                                    pipe.getCondition().signalAll();
                                                }
                                            } else {
                                                throw new IOException("source is closed");
                                            }
                                        }
                                    } else {
                                        sink = null;
                                        break;
                                    }
                                }
                            } else {
                                throw new IOException("canceled");
                            }
                        } else {
                            throw new IllegalStateException("closed");
                        }
                    } finally {
                        lock.unlock();
                    }
                }
            };
            this.f3646x9d12c1f4 = new Source() { // from class: okio.Pipe$source$1

                /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
                public final Timeout f3649xfbe0c504 = new Timeout();

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Pipe pipe = Pipe.this;
                    ReentrantLock lock = pipe.getLock();
                    lock.lock();
                    try {
                        pipe.setSourceClosed$okio(true);
                        pipe.getCondition().signalAll();
                    } finally {
                        lock.unlock();
                    }
                }

                @Override // okio.Source
                public long read(Buffer sink, long byteCount) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    Pipe pipe = Pipe.this;
                    ReentrantLock lock = pipe.getLock();
                    lock.lock();
                    try {
                        if (!pipe.getSourceClosed()) {
                            if (!pipe.getCanceled()) {
                                while (pipe.getBuffer().size() == 0) {
                                    if (pipe.getSinkClosed()) {
                                        lock.unlock();
                                        return -1L;
                                    }
                                    this.f3649xfbe0c504.awaitSignal(pipe.getCondition());
                                    if (pipe.getCanceled()) {
                                        throw new IOException("canceled");
                                    }
                                }
                                long read = pipe.getBuffer().read(sink, byteCount);
                                pipe.getCondition().signalAll();
                                lock.unlock();
                                return read;
                            }
                            throw new IOException("canceled");
                        }
                        throw new IllegalStateException("closed");
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                }

                @Override // okio.Source
                /* renamed from: timeout, reason: from getter */
                public Timeout getF3649xfbe0c504() {
                    return this.f3649xfbe0c504;
                }
            };
            return;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("maxBufferSize < 1: ", j).toString());
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "sink", imports = {}))
    @JvmName(name = "-deprecated_sink")
    @NotNull
    /* renamed from: -deprecated_sink, reason: not valid java name */
    public final Sink m2669deprecated_sink() {
        return this.f3645x3db60231;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "source", imports = {}))
    @JvmName(name = "-deprecated_source")
    @NotNull
    /* renamed from: -deprecated_source, reason: not valid java name */
    public final Source m2670deprecated_source() {
        return this.f3646x9d12c1f4;
    }

    public final void cancel() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.canceled = true;
            this.buffer.clear();
            this.condition.signalAll();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void fold(@NotNull Sink sink) {
        Buffer buffer;
        boolean z;
        Buffer buffer2 = this.buffer;
        Intrinsics.checkNotNullParameter(sink, "sink");
        while (true) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.foldedSink == null) {
                    if (!this.canceled) {
                        boolean z2 = this.sinkClosed;
                        boolean exhausted = buffer2.exhausted();
                        Condition condition = this.condition;
                        Buffer buffer3 = null;
                        if (exhausted) {
                            this.sourceClosed = true;
                            this.foldedSink = sink;
                            buffer = null;
                            z = true;
                        } else {
                            buffer = new Buffer();
                            buffer.write(buffer2, buffer2.size());
                            condition.signalAll();
                            z = false;
                        }
                        if (z) {
                            if (z2) {
                                sink.close();
                                return;
                            }
                            return;
                        }
                        if (buffer != null) {
                            buffer3 = buffer;
                        }
                        try {
                            sink.write(buffer3, buffer.size());
                            sink.flush();
                        } catch (Throwable th) {
                            reentrantLock.lock();
                            try {
                                this.sourceClosed = true;
                                condition.signalAll();
                                throw th;
                            } finally {
                                reentrantLock.unlock();
                            }
                        }
                    } else {
                        this.foldedSink = sink;
                        throw new IOException("canceled");
                    }
                } else {
                    throw new IllegalStateException("sink already folded");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    /* renamed from: getBuffer$okio, reason: from getter */
    public final Buffer getBuffer() {
        return this.buffer;
    }

    /* renamed from: getCanceled$okio, reason: from getter */
    public final boolean getCanceled() {
        return this.canceled;
    }

    @NotNull
    public final Condition getCondition() {
        return this.condition;
    }

    @Nullable
    /* renamed from: getFoldedSink$okio, reason: from getter */
    public final Sink getFoldedSink() {
        return this.foldedSink;
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    /* renamed from: getMaxBufferSize$okio, reason: from getter */
    public final long getMaxBufferSize() {
        return this.maxBufferSize;
    }

    /* renamed from: getSinkClosed$okio, reason: from getter */
    public final boolean getSinkClosed() {
        return this.sinkClosed;
    }

    /* renamed from: getSourceClosed$okio, reason: from getter */
    public final boolean getSourceClosed() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z) {
        this.canceled = z;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z) {
        this.sinkClosed = z;
    }

    public final void setSourceClosed$okio(boolean z) {
        this.sourceClosed = z;
    }

    @JvmName(name = "sink")
    @NotNull
    public final Sink sink() {
        return this.f3645x3db60231;
    }

    @JvmName(name = "source")
    @NotNull
    public final Source source() {
        return this.f3646x9d12c1f4;
    }
}
