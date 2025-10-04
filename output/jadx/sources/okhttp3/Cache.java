package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import defpackage.AbstractC1145xfc271605;
import defpackage.AbstractC1197x89633db9;
import defpackage.C0477x729c5494;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.cache.DiskLruCache;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.HttpMethod;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010)\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 S2\u00020\u00012\u00020\u0002:\u0004TSUVB)\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB!\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\rB\u0019\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\u000fJ\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0012H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010#\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012H\u0000¢\u0006\u0004\b!\u0010\"J\r\u0010$\u001a\u00020\u001b¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\u001b¢\u0006\u0004\b&\u0010%J\r\u0010'\u001a\u00020\u001b¢\u0006\u0004\b'\u0010%J\u0013\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(¢\u0006\u0004\b*\u0010+J\r\u0010-\u001a\u00020,¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020,¢\u0006\u0004\b/\u0010.J\r\u00100\u001a\u00020\u0005¢\u0006\u0004\b0\u00101J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u00101J\u000f\u00102\u001a\u00020\u001bH\u0016¢\u0006\u0004\b2\u0010%J\u000f\u00103\u001a\u00020\u001bH\u0016¢\u0006\u0004\b3\u0010%J\u000f\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b4\u00105J\u0017\u0010:\u001a\u00020\u001b2\u0006\u00107\u001a\u000206H\u0000¢\u0006\u0004\b8\u00109J\u000f\u0010<\u001a\u00020\u001bH\u0000¢\u0006\u0004\b;\u0010%J\r\u0010=\u001a\u00020,¢\u0006\u0004\b=\u0010.J\r\u0010>\u001a\u00020,¢\u0006\u0004\b>\u0010.J\r\u0010?\u001a\u00020,¢\u0006\u0004\b?\u0010.R\u001a\u0010E\u001a\u00020@8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\"\u0010/\u001a\u00020,8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010.\"\u0004\bI\u0010JR\"\u0010-\u001a\u00020,8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bK\u0010G\u001a\u0004\bL\u0010.\"\u0004\bM\u0010JR\u0011\u0010O\u001a\u00020N8F¢\u0006\u0006\u001a\u0004\bO\u0010PR\u0011\u0010\u0004\u001a\u00020\u000e8G¢\u0006\u0006\u001a\u0004\b\u0004\u00105R\u0011\u0010Q\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\bQ\u0010R¨\u0006W"}, d2 = {"Lokhttp3/Cache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokio/Path;", "directory", "", "maxSize", "Lokio/FileSystem;", "fileSystem", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokio/Path;JLokio/FileSystem;Lokhttp3/internal/concurrent/TaskRunner;)V", "(Lokio/Path;JLokio/FileSystem;)V", "Ljava/io/File;", "(Ljava/io/File;J)V", "Lokhttp3/Request;", "request", "Lokhttp3/Response;", "get$okhttp", "(Lokhttp3/Request;)Lokhttp3/Response;", "get", "response", "Lokhttp3/internal/cache/CacheRequest;", "put$okhttp", "(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;", "put", "", "remove$okhttp", "(Lokhttp3/Request;)V", "remove", "cached", "network", "update$okhttp", "(Lokhttp3/Response;Lokhttp3/Response;)V", "update", "initialize", "()V", "delete", "evictAll", "", "", "urls", "()Ljava/util/Iterator;", "", "writeAbortCount", "()I", "writeSuccessCount", "size", "()J", "flush", "close", "-deprecated_directory", "()Ljava/io/File;", "Lokhttp3/internal/cache/CacheStrategy;", "cacheStrategy", "trackResponse$okhttp", "(Lokhttp3/internal/cache/CacheStrategy;)V", "trackResponse", "trackConditionalCacheHit$okhttp", "trackConditionalCacheHit", "networkCount", "hitCount", "requestCount", "Lokhttp3/internal/cache/DiskLruCache;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/cache/DiskLruCache;", "getCache$okhttp", "()Lokhttp3/internal/cache/DiskLruCache;", "cache", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "I", "getWriteSuccessCount$okhttp", "setWriteSuccessCount$okhttp", "(I)V", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "getWriteAbortCount$okhttp", "setWriteAbortCount$okhttp", "", "isClosed", "()Z", "directoryPath", "()Lokio/Path;", "Companion", "okhttp3/뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "okhttp3/뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "돳땨뎰뎰뒵뒾딻땦듰땦뎨땡듽돤땭둡딟땤둬딤땅돼뎹땭따둡땡뎠딤듨딽뎡뒀땅땀땟돰땸듌땻땱듬딝뎻뒉땄땬돷땅뒋땐될땃들뒾따딄돝뎽땱땍뒼돴땬듨딎뒻뎻딜땲되듰땲뒼딎도득듽뎠돠땟됩땨된뎡듨뎻딃뒵딄딝돰돴땨도땨땬따땧뎽딝땃디뒹듻뒬될뒻됨땝땥둥뒬땐듟둘득따딃땄듔딁땩뒤딎뎽뒉땱돛땔", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Cache implements Closeable, Flushable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final DiskLruCache cache;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public int writeSuccessCount;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public int writeAbortCount;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f2710x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public int f2711x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public int f2712x9e171bf9;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0016\u001a\u00020\u0013*\u00020\r¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0018\u001a\u00020\u000f*\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001b¨\u0006\u001f"}, d2 = {"Lokhttp3/Cache$Companion;", "", "Lokhttp3/HttpUrl;", "url", "", "key", "(Lokhttp3/HttpUrl;)Ljava/lang/String;", "Lokio/BufferedSource;", "source", "", "readInt$okhttp", "(Lokio/BufferedSource;)I", "readInt", "Lokhttp3/Response;", "cachedResponse", "Lokhttp3/Headers;", "cachedRequest", "Lokhttp3/Request;", "newRequest", "", "varyMatches", "(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z", "hasVaryAll", "(Lokhttp3/Response;)Z", "varyHeaders", "(Lokhttp3/Response;)Lokhttp3/Headers;", "ENTRY_BODY", "I", "ENTRY_COUNT", "ENTRY_METADATA", "VERSION", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,804:1\n2624#2,3:805\n*S KotlinDebug\n*F\n+ 1 Cache.kt\nokhttp3/Cache$Companion\n*L\n745#1:805,3\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public static Set m2437xfbe0c504(Headers headers) {
            int size = headers.size();
            TreeSet treeSet = null;
            for (int i = 0; i < size; i++) {
                if (AbstractC1197x89633db9.equals("Vary", headers.name(i), true)) {
                    String value = headers.value(i);
                    if (treeSet == null) {
                        treeSet = new TreeSet(AbstractC1197x89633db9.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
                    }
                    Iterator it = StringsKt__StringsKt.split$default((CharSequence) value, new char[]{','}, false, 0, 6, (Object) null).iterator();
                    while (it.hasNext()) {
                        treeSet.add(StringsKt__StringsKt.trim((String) it.next()).toString());
                    }
                }
            }
            if (treeSet == null) {
                return AbstractC1145xfc271605.emptySet();
            }
            return treeSet;
        }

        public final boolean hasVaryAll(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            return m2437xfbe0c504(response.headers()).contains("*");
        }

        @JvmStatic
        @NotNull
        public final String key(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return ByteString.INSTANCE.encodeUtf8(url.toString()).md5().hex();
        }

        public final int readInt$okhttp(@NotNull BufferedSource source) {
            Intrinsics.checkNotNullParameter(source, "source");
            try {
                long readDecimalLong = source.readDecimalLong();
                String readUtf8LineStrict = source.readUtf8LineStrict();
                if (readDecimalLong >= 0 && readDecimalLong <= 2147483647L && readUtf8LineStrict.length() <= 0) {
                    return (int) readDecimalLong;
                }
                throw new IOException("expected an int but was \"" + readDecimalLong + readUtf8LineStrict + Typography.quote);
            } catch (NumberFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        @NotNull
        public final Headers varyHeaders(@NotNull Response response) {
            Intrinsics.checkNotNullParameter(response, "<this>");
            Response networkResponse = response.networkResponse();
            Intrinsics.checkNotNull(networkResponse);
            Headers headers = networkResponse.request().headers();
            Set m2437xfbe0c504 = m2437xfbe0c504(response.headers());
            if (m2437xfbe0c504.isEmpty()) {
                return _UtilJvmKt.EMPTY_HEADERS;
            }
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (m2437xfbe0c504.contains(name)) {
                    builder.add(name, headers.value(i));
                }
            }
            return builder.build();
        }

        public final boolean varyMatches(@NotNull Response cachedResponse, @NotNull Headers cachedRequest, @NotNull Request newRequest) {
            Intrinsics.checkNotNullParameter(cachedResponse, "cachedResponse");
            Intrinsics.checkNotNullParameter(cachedRequest, "cachedRequest");
            Intrinsics.checkNotNullParameter(newRequest, "newRequest");
            Set<String> m2437xfbe0c504 = m2437xfbe0c504(cachedResponse.headers());
            if ((m2437xfbe0c504 instanceof Collection) && m2437xfbe0c504.isEmpty()) {
                return true;
            }
            for (String str : m2437xfbe0c504) {
                if (!Intrinsics.areEqual(cachedRequest.values(str), newRequest.headers(str))) {
                    return false;
                }
            }
            return true;
        }
    }

    public Cache(@NotNull Path directory, long j, @NotNull FileSystem fileSystem, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.cache = new DiskLruCache(fileSystem, directory, 201105, 2, j, taskRunner);
    }

    @JvmStatic
    @NotNull
    public static final String key(@NotNull HttpUrl httpUrl) {
        return INSTANCE.key(httpUrl);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "directory", imports = {}))
    @JvmName(name = "-deprecated_directory")
    @NotNull
    /* renamed from: -deprecated_directory, reason: not valid java name */
    public final File m2436deprecated_directory() {
        return this.cache.getDirectory().toFile();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.cache.close();
    }

    public final void delete() {
        this.cache.delete();
    }

    @JvmName(name = "directory")
    @NotNull
    public final File directory() {
        return this.cache.getDirectory().toFile();
    }

    @JvmName(name = "directoryPath")
    @NotNull
    public final Path directoryPath() {
        return this.cache.getDirectory();
    }

    public final void evictAll() {
        this.cache.evictAll();
    }

    @Override // java.io.Flushable
    public void flush() {
        this.cache.flush();
    }

    @Nullable
    public final Response get$okhttp(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Companion companion = INSTANCE;
        try {
            DiskLruCache.Snapshot snapshot = this.cache.get(companion.key(request.url()));
            if (snapshot == null) {
                return null;
            }
            try {
                C0333x1378447b c0333x1378447b = new C0333x1378447b(snapshot.getSource(0));
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                Headers headers = c0333x1378447b.f3543x34271fae;
                String str = headers.get("Content-Type");
                String str2 = headers.get("Content-Length");
                Response response = new Response.Builder().request(new Request(c0333x1378447b.f3537xfbe0c504, c0333x1378447b.f3538x3271d0aa, c0333x1378447b.f3539x1378447b, null, 8, null)).protocol(c0333x1378447b.f3540x75d576dc).code(c0333x1378447b.f3541x9738a56c).message(c0333x1378447b.f3542x9e171bf9).headers(headers).body(new C0332x3271d0aa(snapshot, str, str2)).handshake(c0333x1378447b.f3544x95f25580).sentRequestAtMillis(c0333x1378447b.f3545x3db60231).receivedResponseAtMillis(c0333x1378447b.f3546x9d12c1f4).build();
                Intrinsics.checkNotNullParameter(request, "request");
                Intrinsics.checkNotNullParameter(response, "response");
                if (Intrinsics.areEqual(c0333x1378447b.f3537xfbe0c504, request.url()) && Intrinsics.areEqual(c0333x1378447b.f3539x1378447b, request.method()) && companion.varyMatches(response, c0333x1378447b.f3538x3271d0aa, request)) {
                    return response;
                }
                _UtilCommonKt.closeQuietly(response.body());
                return null;
            } catch (IOException unused) {
                _UtilCommonKt.closeQuietly(snapshot);
                return null;
            }
        } catch (IOException unused2) {
            return null;
        }
    }

    @NotNull
    /* renamed from: getCache$okhttp, reason: from getter */
    public final DiskLruCache getCache() {
        return this.cache;
    }

    /* renamed from: getWriteAbortCount$okhttp, reason: from getter */
    public final int getWriteAbortCount() {
        return this.writeAbortCount;
    }

    /* renamed from: getWriteSuccessCount$okhttp, reason: from getter */
    public final int getWriteSuccessCount() {
        return this.writeSuccessCount;
    }

    public final synchronized int hitCount() {
        return this.f2711x9738a56c;
    }

    public final void initialize() {
        this.cache.initialize();
    }

    public final boolean isClosed() {
        return this.cache.isClosed();
    }

    public final long maxSize() {
        return this.cache.getMaxSize();
    }

    public final synchronized int networkCount() {
        return this.f2710x75d576dc;
    }

    @Nullable
    public final CacheRequest put$okhttp(@NotNull Response response) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(response, "response");
        String method = response.request().method();
        if (HttpMethod.invalidatesCache(response.request().method())) {
            try {
                remove$okhttp(response.request());
            } catch (IOException unused) {
            }
            return null;
        }
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_GET)) {
            return null;
        }
        Companion companion = INSTANCE;
        if (companion.hasVaryAll(response)) {
            return null;
        }
        C0333x1378447b c0333x1378447b = new C0333x1378447b(response);
        try {
            editor = DiskLruCache.edit$default(this.cache, companion.key(response.request().url()), 0L, 2, null);
            if (editor == null) {
                return null;
            }
            try {
                c0333x1378447b.m2634x1378447b(editor);
                return new C0477x729c5494(this, editor);
            } catch (IOException unused2) {
                if (editor != null) {
                    try {
                        editor.abort();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            }
        } catch (IOException unused4) {
            editor = null;
        }
    }

    public final void remove$okhttp(@NotNull Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.cache.remove(INSTANCE.key(request.url()));
    }

    public final synchronized int requestCount() {
        return this.f2712x9e171bf9;
    }

    public final void setWriteAbortCount$okhttp(int i) {
        this.writeAbortCount = i;
    }

    public final void setWriteSuccessCount$okhttp(int i) {
        this.writeSuccessCount = i;
    }

    public final long size() {
        return this.cache.size();
    }

    public final synchronized void trackConditionalCacheHit$okhttp() {
        this.f2711x9738a56c++;
    }

    public final synchronized void trackResponse$okhttp(@NotNull CacheStrategy cacheStrategy) {
        try {
            Intrinsics.checkNotNullParameter(cacheStrategy, "cacheStrategy");
            this.f2712x9e171bf9++;
            if (cacheStrategy.getNetworkRequest() != null) {
                this.f2710x75d576dc++;
            } else if (cacheStrategy.getCacheResponse() != null) {
                this.f2711x9738a56c++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void update$okhttp(@NotNull Response cached, @NotNull Response network) {
        DiskLruCache.Editor editor;
        Intrinsics.checkNotNullParameter(cached, "cached");
        Intrinsics.checkNotNullParameter(network, "network");
        C0333x1378447b c0333x1378447b = new C0333x1378447b(network);
        ResponseBody body = cached.body();
        Intrinsics.checkNotNull(body, "null cannot be cast to non-null type okhttp3.Cache.CacheResponseBody");
        try {
            editor = ((C0332x3271d0aa) body).f3531x3271d0aa.edit();
            if (editor == null) {
                return;
            }
            try {
                c0333x1378447b.m2634x1378447b(editor);
                editor.commit();
            } catch (IOException unused) {
                if (editor != null) {
                    try {
                        editor.abort();
                    } catch (IOException unused2) {
                    }
                }
            }
        } catch (IOException unused3) {
            editor = null;
        }
    }

    @NotNull
    public final Iterator<String> urls() {
        return new Cache$urls$1(this);
    }

    public final synchronized int writeAbortCount() {
        return this.writeAbortCount;
    }

    public final synchronized int writeSuccessCount() {
        return this.writeSuccessCount;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull Path directory, long j, @NotNull FileSystem fileSystem) {
        this(directory, j, fileSystem, TaskRunner.INSTANCE);
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cache(@NotNull File directory, long j) {
        this(Path.Companion.get$default(Path.INSTANCE, directory, false, 1, (Object) null), j, FileSystem.SYSTEM);
        Intrinsics.checkNotNullParameter(directory, "directory");
    }
}
