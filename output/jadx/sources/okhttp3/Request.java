package okhttp3;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.AbstractC0962xa4a1ff52;
import java.net.URL;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClasses;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal._RequestCommonKt;
import okhttp3.internal._UtilCommonKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001CB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B1\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0004\u0010\u000eJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\t\u0010\u0013J\u001e\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\n\b\u0000\u0010\u0014\u0018\u0001*\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0015\u0010\u0016J'\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0014*\u00020\u00012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018¢\u0006\u0004\b\u0017\u0010\u001aJ\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0017\u0010\u0016J%\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00142\u000e\u0010\u0019\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u001b¢\u0006\u0004\b\u0017\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b!\u0010\"J\u000f\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b#\u0010$J\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b%\u0010&J\u000f\u0010*\u001a\u00020'H\u0007¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00020\nH\u0016¢\u0006\u0004\b+\u0010\"R\u0017\u0010\u0007\u001a\u00020\u00068G¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b\u0007\u0010 R\u0017\u0010\u000b\u001a\u00020\n8G¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b\u000b\u0010\"R\u0017\u0010\t\u001a\u00020\b8G¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b\t\u0010$R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8G¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b\r\u0010&R*\u00109\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0018\u0012\u0004\u0012\u00020\u0001048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R$\u0010?\u001a\u0004\u0018\u00010'8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010)\"\u0004\b=\u0010>R\u0011\u0010A\u001a\u00020@8F¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0011\u0010*\u001a\u00020'8G¢\u0006\u0006\u001a\u0004\b*\u0010)¨\u0006D"}, d2 = {"Lokhttp3/Request;", "", "Lokhttp3/Request$Builder;", "builder", "<init>", "(Lokhttp3/Request$Builder;)V", "Lokhttp3/HttpUrl;", "url", "Lokhttp3/Headers;", "headers", "", "method", "Lokhttp3/RequestBody;", "body", "(Lokhttp3/HttpUrl;Lokhttp3/Headers;Ljava/lang/String;Lokhttp3/RequestBody;)V", "name", "header", "(Ljava/lang/String;)Ljava/lang/String;", "", "(Ljava/lang/String;)Ljava/util/List;", ExifInterface.GPS_DIRECTION_TRUE, "reifiedTag", "()Ljava/lang/Object;", "tag", "Lkotlin/reflect/KClass;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "newBuilder", "()Lokhttp3/Request$Builder;", "-deprecated_url", "()Lokhttp3/HttpUrl;", "-deprecated_method", "()Ljava/lang/String;", "-deprecated_headers", "()Lokhttp3/Headers;", "-deprecated_body", "()Lokhttp3/RequestBody;", "Lokhttp3/CacheControl;", "-deprecated_cacheControl", "()Lokhttp3/CacheControl;", "cacheControl", "toString", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/HttpUrl;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/lang/String;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/Headers;", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lokhttp3/RequestBody;", "", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "tags", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lokhttp3/CacheControl;", "getLazyCacheControl$okhttp", "setLazyCacheControl$okhttp", "(Lokhttp3/CacheControl;)V", "lazyCacheControl", "", "isHttps", "()Z", "Builder", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,243:1\n89#1:245\n1#2:244\n*S KotlinDebug\n*F\n+ 1 Request.kt\nokhttp3/Request\n*L\n103#1:245\n*E\n"})
/* loaded from: classes3.dex */
public final class Request {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final HttpUrl url;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final String method;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final Headers headers;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final RequestBody body;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final Map tags;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public CacheControl lazyCacheControl;

    @Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\nH\u0016¢\u0006\u0004\b\b\u0010\u000bJ\u0017\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\fH\u0016¢\u0006\u0004\b\b\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001b\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0017¢\u0006\u0004\b!\u0010 J\u0017\u0010\"\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\"\u0010 J\u0017\u0010#\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b#\u0010 J!\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b$\u0010%J&\u0010'\u001a\u00020\u0000\"\n\b\u0000\u0010&\u0018\u0001*\u00020\u00012\b\u0010'\u001a\u0004\u0018\u00018\u0000H\u0087\b¢\u0006\u0004\b(\u0010)J/\u0010'\u001a\u00020\u0000\"\b\b\u0000\u0010&*\u00020\u00012\f\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000*2\b\u0010'\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b'\u0010,J\u0019\u0010'\u001a\u00020\u00002\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b'\u0010)J/\u0010'\u001a\u00020\u0000\"\u0004\b\u0000\u0010&2\u000e\u0010+\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000-2\b\u0010'\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b'\u0010.J\u000f\u0010/\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u00100R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010$\u001a\u00020\n8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010\u0015\u001a\u00020=8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR2\u0010Q\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030*\u0012\u0004\u0012\u00020\u00010J8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010P¨\u0006R"}, d2 = {"Lokhttp3/Request$Builder;", "", "<init>", "()V", "Lokhttp3/Request;", "request", "(Lokhttp3/Request;)V", "Lokhttp3/HttpUrl;", "url", "(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;", "", "(Ljava/lang/String;)Lokhttp3/Request$Builder;", "Ljava/net/URL;", "(Ljava/net/URL;)Lokhttp3/Request$Builder;", "name", "value", "header", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;", "addHeader", "removeHeader", "Lokhttp3/Headers;", "headers", "(Lokhttp3/Headers;)Lokhttp3/Request$Builder;", "Lokhttp3/CacheControl;", "cacheControl", "(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;", "get", "()Lokhttp3/Request$Builder;", "head", "Lokhttp3/RequestBody;", "body", "post", "(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", "delete", "put", "patch", "method", "(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;", ExifInterface.GPS_DIRECTION_TRUE, "tag", "reifiedTag", "(Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Lkotlin/reflect/KClass;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "Ljava/lang/Class;", "(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;", "build", "()Lokhttp3/Request;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/HttpUrl;", "getUrl$okhttp", "()Lokhttp3/HttpUrl;", "setUrl$okhttp", "(Lokhttp3/HttpUrl;)V", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Ljava/lang/String;", "getMethod$okhttp", "()Ljava/lang/String;", "setMethod$okhttp", "(Ljava/lang/String;)V", "Lokhttp3/Headers$Builder;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "Lokhttp3/Headers$Builder;", "getHeaders$okhttp", "()Lokhttp3/Headers$Builder;", "setHeaders$okhttp", "(Lokhttp3/Headers$Builder;)V", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "Lokhttp3/RequestBody;", "getBody$okhttp", "()Lokhttp3/RequestBody;", "setBody$okhttp", "(Lokhttp3/RequestBody;)V", "", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Ljava/util/Map;", "getTags$okhttp", "()Ljava/util/Map;", "setTags$okhttp", "(Ljava/util/Map;)V", "tags", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public HttpUrl url;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public String method;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public Headers.Builder headers;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
        public RequestBody body;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
        public Map tags;

        public Builder() {
            this.tags = AbstractC0962xa4a1ff52.emptyMap();
            this.method = ShareTarget.METHOD_GET;
            this.headers = new Headers.Builder();
        }

        public static /* synthetic */ Builder delete$default(Builder builder, RequestBody requestBody, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    requestBody = _UtilCommonKt.getCommonEmptyRequestBody();
                }
                return builder.delete(requestBody);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }

        @NotNull
        public Builder addHeader(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            return _RequestCommonKt.commonAddHeader(this, name, value);
        }

        @NotNull
        public Request build() {
            return new Request(this);
        }

        @NotNull
        public Builder cacheControl(@NotNull CacheControl cacheControl) {
            Intrinsics.checkNotNullParameter(cacheControl, "cacheControl");
            return _RequestCommonKt.commonCacheControl(this, cacheControl);
        }

        @JvmOverloads
        @NotNull
        public final Builder delete() {
            return delete$default(this, null, 1, null);
        }

        @NotNull
        public Builder get() {
            return _RequestCommonKt.commonGet(this);
        }

        @Nullable
        /* renamed from: getBody$okhttp, reason: from getter */
        public final RequestBody getBody() {
            return this.body;
        }

        @NotNull
        /* renamed from: getHeaders$okhttp, reason: from getter */
        public final Headers.Builder getHeaders() {
            return this.headers;
        }

        @NotNull
        /* renamed from: getMethod$okhttp, reason: from getter */
        public final String getMethod() {
            return this.method;
        }

        @NotNull
        public final Map<KClass<?>, Object> getTags$okhttp() {
            return this.tags;
        }

        @Nullable
        /* renamed from: getUrl$okhttp, reason: from getter */
        public final HttpUrl getUrl() {
            return this.url;
        }

        @NotNull
        public Builder head() {
            return _RequestCommonKt.commonHead(this);
        }

        @NotNull
        public Builder header(@NotNull String name, @NotNull String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            return _RequestCommonKt.commonHeader(this, name, value);
        }

        @NotNull
        public Builder headers(@NotNull Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            return _RequestCommonKt.commonHeaders(this, headers);
        }

        @NotNull
        public Builder method(@NotNull String method, @Nullable RequestBody body) {
            Intrinsics.checkNotNullParameter(method, "method");
            return _RequestCommonKt.commonMethod(this, method, body);
        }

        @NotNull
        public Builder patch(@NotNull RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return _RequestCommonKt.commonPatch(this, body);
        }

        @NotNull
        public Builder post(@NotNull RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return _RequestCommonKt.commonPost(this, body);
        }

        @NotNull
        public Builder put(@NotNull RequestBody body) {
            Intrinsics.checkNotNullParameter(body, "body");
            return _RequestCommonKt.commonPut(this, body);
        }

        @JvmName(name = "reifiedTag")
        public final /* synthetic */ <T> Builder reifiedTag(T tag) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return tag((KClass<KClass<T>>) Reflection.getOrCreateKotlinClass(Object.class), (KClass<T>) tag);
        }

        @NotNull
        public Builder removeHeader(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return _RequestCommonKt.commonRemoveHeader(this, name);
        }

        public final void setBody$okhttp(@Nullable RequestBody requestBody) {
            this.body = requestBody;
        }

        public final void setHeaders$okhttp(@NotNull Headers.Builder builder) {
            Intrinsics.checkNotNullParameter(builder, "<set-?>");
            this.headers = builder;
        }

        public final void setMethod$okhttp(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.method = str;
        }

        public final void setTags$okhttp(@NotNull Map<KClass<?>, ? extends Object> map) {
            Intrinsics.checkNotNullParameter(map, "<set-?>");
            this.tags = map;
        }

        public final void setUrl$okhttp(@Nullable HttpUrl httpUrl) {
            this.url = httpUrl;
        }

        @NotNull
        public final <T> Builder tag(@NotNull KClass<T> type, @Nullable T tag) {
            Intrinsics.checkNotNullParameter(type, "type");
            return _RequestCommonKt.commonTag(this, type, KClasses.cast(type, tag));
        }

        @NotNull
        public Builder url(@NotNull HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }

        @JvmOverloads
        @NotNull
        public Builder delete(@Nullable RequestBody body) {
            return _RequestCommonKt.commonDelete(this, body);
        }

        @NotNull
        public Builder tag(@Nullable Object tag) {
            return _RequestCommonKt.commonTag(this, Reflection.getOrCreateKotlinClass(Object.class), tag);
        }

        @NotNull
        public Builder url(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return url(HttpUrl.INSTANCE.get(_RequestCommonKt.canonicalUrl(url)));
        }

        @NotNull
        public <T> Builder tag(@NotNull Class<? super T> type, @Nullable T tag) {
            Intrinsics.checkNotNullParameter(type, "type");
            return _RequestCommonKt.commonTag(this, JvmClassMappingKt.getKotlinClass(type), tag);
        }

        @NotNull
        public Builder url(@NotNull URL url) {
            Intrinsics.checkNotNullParameter(url, "url");
            HttpUrl.Companion companion = HttpUrl.INSTANCE;
            String url2 = url.toString();
            Intrinsics.checkNotNullExpressionValue(url2, "toString(...)");
            return url(companion.get(url2));
        }

        public Builder(@NotNull Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.tags = AbstractC0962xa4a1ff52.emptyMap();
            this.url = request.url();
            this.method = request.method();
            this.body = request.body();
            this.tags = request.getTags$okhttp().isEmpty() ? AbstractC0962xa4a1ff52.emptyMap() : AbstractC0962xa4a1ff52.toMutableMap(request.getTags$okhttp());
            this.headers = request.headers().newBuilder();
        }
    }

    public /* synthetic */ Request(HttpUrl httpUrl, Headers headers, String str, RequestBody requestBody, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(httpUrl, (i & 2) != 0 ? Headers.INSTANCE.of(new String[0]) : headers, (i & 4) != 0 ? "\u0000" : str, (i & 8) != 0 ? null : requestBody);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "body", imports = {}))
    @JvmName(name = "-deprecated_body")
    @Nullable
    /* renamed from: -deprecated_body, reason: not valid java name and from getter */
    public final RequestBody getBody() {
        return this.body;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "cacheControl", imports = {}))
    @JvmName(name = "-deprecated_cacheControl")
    @NotNull
    /* renamed from: -deprecated_cacheControl, reason: not valid java name */
    public final CacheControl m2553deprecated_cacheControl() {
        return cacheControl();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "headers", imports = {}))
    @JvmName(name = "-deprecated_headers")
    @NotNull
    /* renamed from: -deprecated_headers, reason: not valid java name and from getter */
    public final Headers getHeaders() {
        return this.headers;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "method", imports = {}))
    @JvmName(name = "-deprecated_method")
    @NotNull
    /* renamed from: -deprecated_method, reason: not valid java name and from getter */
    public final String getMethod() {
        return this.method;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "url", imports = {}))
    @JvmName(name = "-deprecated_url")
    @NotNull
    /* renamed from: -deprecated_url, reason: not valid java name and from getter */
    public final HttpUrl getUrl() {
        return this.url;
    }

    @JvmName(name = "body")
    @Nullable
    public final RequestBody body() {
        return this.body;
    }

    @JvmName(name = "cacheControl")
    @NotNull
    public final CacheControl cacheControl() {
        CacheControl cacheControl = this.lazyCacheControl;
        if (cacheControl == null) {
            CacheControl parse = CacheControl.INSTANCE.parse(this.headers);
            this.lazyCacheControl = parse;
            return parse;
        }
        return cacheControl;
    }

    @Nullable
    /* renamed from: getLazyCacheControl$okhttp, reason: from getter */
    public final CacheControl getLazyCacheControl() {
        return this.lazyCacheControl;
    }

    @NotNull
    public final Map<KClass<?>, Object> getTags$okhttp() {
        return this.tags;
    }

    @Nullable
    public final String header(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return _RequestCommonKt.commonHeader(this, name);
    }

    @JvmName(name = "headers")
    @NotNull
    public final Headers headers() {
        return this.headers;
    }

    public final boolean isHttps() {
        return this.url.isHttps();
    }

    @JvmName(name = "method")
    @NotNull
    public final String method() {
        return this.method;
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @JvmName(name = "reifiedTag")
    public final /* synthetic */ <T> T reifiedTag() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final void setLazyCacheControl$okhttp(@Nullable CacheControl cacheControl) {
        this.lazyCacheControl = cacheControl;
    }

    @Nullable
    public final <T> T tag(@NotNull KClass<T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) JvmClassMappingKt.getJavaClass((KClass) type).cast(this.tags.get(type));
    }

    @NotNull
    public String toString() {
        return _RequestCommonKt.commonToString(this);
    }

    @JvmName(name = "url")
    @NotNull
    public final HttpUrl url() {
        return this.url;
    }

    @NotNull
    public final List<String> headers(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return _RequestCommonKt.commonHeaders(this, name);
    }

    @Nullable
    public final <T> T tag(@NotNull Class<? extends T> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) tag(JvmClassMappingKt.getKotlinClass(type));
    }

    @Nullable
    public final Object tag() {
        return tag(Reflection.getOrCreateKotlinClass(Object.class));
    }

    public Request(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        HttpUrl url = builder.getUrl();
        if (url != null) {
            this.url = url;
            this.method = builder.getMethod();
            this.headers = builder.getHeaders().build();
            this.body = builder.getBody();
            this.tags = AbstractC0962xa4a1ff52.toMap(builder.getTags$okhttp());
            return;
        }
        throw new IllegalStateException("url == null");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Request(@NotNull HttpUrl url, @NotNull Headers headers, @NotNull String method, @Nullable RequestBody requestBody) {
        this(r2.method(method, requestBody));
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(method, "method");
        Builder headers2 = new Builder().url(url).headers(headers);
        if (Intrinsics.areEqual(method, "\u0000")) {
            if (requestBody != null) {
                method = ShareTarget.METHOD_POST;
            } else {
                method = ShareTarget.METHOD_GET;
            }
        }
    }
}
