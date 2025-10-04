package coil3;

import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import coil3.ComponentRegistry;
import coil3.content.Collections_jvmCommonKt;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.fetch.SourceFetchResult;
import coil3.intercept.Interceptor;
import coil3.key.Keyer;
import coil3.map.Mapper;
import coil3.request.Options;
import defpackage.AbstractC0919x86d1e2e2;
import defpackage.C0625xb5f90305;
import defpackage.C0626xc050f747;
import defpackage.C0627xb508e85c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u00015B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ?\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00102\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J?\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bR\u001d\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!RA\u0010'\u001a,\u0012(\u0012&\u0012\u0014\u0012\u0012\u0012\u0006\b\u0001\u0012\u00020\u0001\u0012\u0006\b\u0001\u0012\u00020\u00010#\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010$0\u00100\u001c8\u0006¢\u0006\f\n\u0004\b%\u0010\u001f\u001a\u0004\b&\u0010!R9\u0010+\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010$0\u00100\u001c8\u0006¢\u0006\f\n\u0004\b)\u0010\u001f\u001a\u0004\b*\u0010!R=\u00100\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010,\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010$0\u00100\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u0010!R!\u00104\u001a\b\u0012\u0004\u0012\u0002010\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u0010!¨\u00066"}, d2 = {"Lcoil3/ComponentRegistry;", "", "<init>", "()V", "data", "Lcoil3/request/Options;", "options", "map", "(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/Object;", "", "key", "(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/String;", "Lcoil3/ImageLoader;", "imageLoader", "", "startIndex", "Lkotlin/Pair;", "Lcoil3/fetch/Fetcher;", "newFetcher", "(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/ImageLoader;I)Lkotlin/Pair;", "Lcoil3/fetch/SourceFetchResult;", "result", "Lcoil3/decode/Decoder;", "newDecoder", "(Lcoil3/fetch/SourceFetchResult;Lcoil3/request/Options;Lcoil3/ImageLoader;I)Lkotlin/Pair;", "Lcoil3/ComponentRegistry$Builder;", "newBuilder", "()Lcoil3/ComponentRegistry$Builder;", "", "Lcoil3/intercept/Interceptor;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/util/List;", "getInterceptors", "()Ljava/util/List;", "interceptors", "Lcoil3/map/Mapper;", "Lkotlin/reflect/KClass;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "getMappers", "mappers", "Lcoil3/key/Keyer;", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "getKeyers", "keyers", "Lcoil3/fetch/Fetcher$Factory;", "뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤", "Lkotlin/Lazy;", "getFetcherFactories", "fetcherFactories", "Lcoil3/decode/Decoder$Factory;", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "getDecoderFactories", "decoderFactories", "Builder", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nComponentRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry\n+ 2 collections.kt\ncoil3/util/CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n43#2,2:199\n46#2:202\n43#2,4:203\n69#2,5:207\n69#2,5:212\n1#3:201\n*S KotlinDebug\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry\n*L\n48#1:199,2\n48#1:202\n63#1:203,4\n33#1:207,5\n37#1:212,5\n*E\n"})
/* loaded from: classes.dex */
public final class ComponentRegistry {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final List interceptors;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final List mappers;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final List keyers;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public List f446x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public List f447x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters and from kotlin metadata */
    public final Lazy fetcherFactories;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters and from kotlin metadata */
    public final Lazy decoderFactories;

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ.\u0010\t\u001a\u00020\u0000\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\fH\u0086\b¢\u0006\u0004\b\t\u0010\u000eJ7\u0010\t\u001a\u00020\u0000\"\b\b\u0000\u0010\u000b*\u00020\u00012\u0010\u0010\r\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\t\u0010\u0011J*\u0010\t\u001a\u00020\u0000\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0086\b¢\u0006\u0004\b\t\u0010\u0014J3\u0010\t\u001a\u00020\u0000\"\b\b\u0000\u0010\u000b*\u00020\u00012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\t\u0010\u0015J*\u0010\t\u001a\u00020\u0000\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0086\b¢\u0006\u0004\b\t\u0010\u0018J3\u0010\t\u001a\u00020\u0000\"\b\b\u0000\u0010\u000b*\u00020\u00012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\t\u0010\u0019J=\u0010\u001d\u001a\u00020\u00002.\u0010\u0017\u001a*\u0012&\u0012$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000f0\u001c0\u001b0\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u001f¢\u0006\u0004\b\t\u0010 J!\u0010!\u001a\u00020\u00002\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001b0\u001a¢\u0006\u0004\b!\u0010\u001eJ\r\u0010\"\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#R \u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R@\u0010,\u001a(\u0012$\u0012\"\u0012\u0010\u0012\u000e\u0012\u0006\b\u0001\u0012\u00020\u0001\u0012\u0002\b\u00030\f\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000f0\u001c0$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b+\u0010(R<\u0010/\u001a$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000f0\u001c0$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b-\u0010&\u001a\u0004\b.\u0010(RH\u00102\u001a0\u0012,\u0012*\u0012&\u0012$\u0012 \u0012\u001e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u000f0\u001c0\u001b0\u001a0$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b0\u0010&\u001a\u0004\b1\u0010(R,\u00105\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001f0\u001b0\u001a0$8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u0010&\u001a\u0004\b4\u0010(¨\u00066"}, d2 = {"Lcoil3/ComponentRegistry$Builder;", "", "<init>", "()V", "Lcoil3/ComponentRegistry;", "registry", "(Lcoil3/ComponentRegistry;)V", "Lcoil3/intercept/Interceptor;", "interceptor", "add", "(Lcoil3/intercept/Interceptor;)Lcoil3/ComponentRegistry$Builder;", ExifInterface.GPS_DIRECTION_TRUE, "Lcoil3/map/Mapper;", "mapper", "(Lcoil3/map/Mapper;)Lcoil3/ComponentRegistry$Builder;", "Lkotlin/reflect/KClass;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "(Lcoil3/map/Mapper;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;", "Lcoil3/key/Keyer;", "keyer", "(Lcoil3/key/Keyer;)Lcoil3/ComponentRegistry$Builder;", "(Lcoil3/key/Keyer;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;", "Lcoil3/fetch/Fetcher$Factory;", "factory", "(Lcoil3/fetch/Fetcher$Factory;)Lcoil3/ComponentRegistry$Builder;", "(Lcoil3/fetch/Fetcher$Factory;Lkotlin/reflect/KClass;)Lcoil3/ComponentRegistry$Builder;", "Lkotlin/Function0;", "", "Lkotlin/Pair;", "addFetcherFactories", "(Lkotlin/jvm/functions/Function0;)Lcoil3/ComponentRegistry$Builder;", "Lcoil3/decode/Decoder$Factory;", "(Lcoil3/decode/Decoder$Factory;)Lcoil3/ComponentRegistry$Builder;", "addDecoderFactories", "build", "()Lcoil3/ComponentRegistry;", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/util/List;", "getInterceptors$coil_core_release", "()Ljava/util/List;", "interceptors", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "getMappers$coil_core_release", "mappers", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "getKeyers$coil_core_release", "keyers", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "getLazyFetcherFactories$coil_core_release", "lazyFetcherFactories", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "getLazyDecoderFactories$coil_core_release", "lazyDecoderFactories", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nComponentRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,198:1\n1628#2,3:199\n1628#2,3:202\n*S KotlinDebug\n*F\n+ 1 ComponentRegistry.kt\ncoil3/ComponentRegistry$Builder\n*L\n139#1:199,3\n140#1:202,3\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
        public final List interceptors;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
        public final List mappers;

        /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
        public final List keyers;

        /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
        public final ArrayList f453x75d576dc;

        /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
        public final ArrayList f454x9738a56c;

        public Builder() {
            this.interceptors = new ArrayList();
            this.mappers = new ArrayList();
            this.keyers = new ArrayList();
            this.f453x75d576dc = new ArrayList();
            this.f454x9738a56c = new ArrayList();
        }

        @NotNull
        public final Builder add(@NotNull Interceptor interceptor) {
            this.interceptors.add(interceptor);
            return this;
        }

        @NotNull
        public final Builder addDecoderFactories(@NotNull Function0<? extends List<? extends Decoder.Factory>> factory) {
            this.f454x9738a56c.add(factory);
            return this;
        }

        @NotNull
        public final Builder addFetcherFactories(@NotNull Function0<? extends List<? extends Pair<? extends Fetcher.Factory<? extends Object>, ? extends KClass<? extends Object>>>> factory) {
            this.f453x75d576dc.add(factory);
            return this;
        }

        @NotNull
        public final ComponentRegistry build() {
            return new ComponentRegistry(Collections_jvmCommonKt.toImmutableList(this.interceptors), Collections_jvmCommonKt.toImmutableList(this.mappers), Collections_jvmCommonKt.toImmutableList(this.keyers), Collections_jvmCommonKt.toImmutableList(this.f453x75d576dc), Collections_jvmCommonKt.toImmutableList(this.f454x9738a56c), null);
        }

        @NotNull
        public final List<Interceptor> getInterceptors$coil_core_release() {
            return this.interceptors;
        }

        @NotNull
        public final List<Pair<Keyer<? extends Object>, KClass<? extends Object>>> getKeyers$coil_core_release() {
            return this.keyers;
        }

        @NotNull
        public final List<Function0<List<Decoder.Factory>>> getLazyDecoderFactories$coil_core_release() {
            return this.f454x9738a56c;
        }

        @NotNull
        public final List<Function0<List<Pair<Fetcher.Factory<? extends Object>, KClass<? extends Object>>>>> getLazyFetcherFactories$coil_core_release() {
            return this.f453x75d576dc;
        }

        @NotNull
        public final List<Pair<Mapper<? extends Object, ?>, KClass<? extends Object>>> getMappers$coil_core_release() {
            return this.mappers;
        }

        public final /* synthetic */ <T> Builder add(Mapper<T, ?> mapper) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return add(mapper, Reflection.getOrCreateKotlinClass(Object.class));
        }

        @NotNull
        public final <T> Builder add(@NotNull Mapper<T, ?> mapper, @NotNull KClass<T> type) {
            this.mappers.add(TuplesKt.to(mapper, type));
            return this;
        }

        public final /* synthetic */ <T> Builder add(Keyer<T> keyer) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return add(keyer, Reflection.getOrCreateKotlinClass(Object.class));
        }

        @NotNull
        public final <T> Builder add(@NotNull Keyer<T> keyer, @NotNull KClass<T> type) {
            this.keyers.add(TuplesKt.to(keyer, type));
            return this;
        }

        public final /* synthetic */ <T> Builder add(Fetcher.Factory<T> factory) {
            Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
            return add(factory, Reflection.getOrCreateKotlinClass(Object.class));
        }

        public Builder(@NotNull ComponentRegistry componentRegistry) {
            this.interceptors = CollectionsKt___CollectionsKt.toMutableList((Collection) componentRegistry.getInterceptors());
            this.mappers = CollectionsKt___CollectionsKt.toMutableList((Collection) componentRegistry.getMappers());
            this.keyers = CollectionsKt___CollectionsKt.toMutableList((Collection) componentRegistry.getKeyers());
            List<Pair<Fetcher.Factory<? extends Object>, KClass<? extends Object>>> fetcherFactories = componentRegistry.getFetcherFactories();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = fetcherFactories.iterator();
            while (it.hasNext()) {
                arrayList.add(new C0625xb5f90305((Pair) it.next(), 0));
            }
            this.f453x75d576dc = arrayList;
            List<Decoder.Factory> decoderFactories = componentRegistry.getDecoderFactories();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = decoderFactories.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new C0626xc050f747((Decoder.Factory) it2.next(), 0));
            }
            this.f454x9738a56c = arrayList2;
        }

        @NotNull
        public final <T> Builder add(@NotNull Fetcher.Factory<T> factory, @NotNull KClass<T> type) {
            this.f453x75d576dc.add(new C0627xb508e85c(factory, type, 0));
            return this;
        }

        @NotNull
        public final Builder add(@NotNull Decoder.Factory factory) {
            this.f454x9738a56c.add(new C0626xc050f747(factory, 1));
            return this;
        }
    }

    public /* synthetic */ ComponentRegistry(List list, List list2, List list3, List list4, List list5, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, list4, list5);
    }

    public static /* synthetic */ Pair newDecoder$default(ComponentRegistry componentRegistry, SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 0;
        }
        return componentRegistry.newDecoder(sourceFetchResult, options, imageLoader, i);
    }

    public static /* synthetic */ Pair newFetcher$default(ComponentRegistry componentRegistry, Object obj, Options options, ImageLoader imageLoader, int i, int i2, Object obj2) {
        if ((i2 & 8) != 0) {
            i = 0;
        }
        return componentRegistry.newFetcher(obj, options, imageLoader, i);
    }

    @NotNull
    public final List<Decoder.Factory> getDecoderFactories() {
        return (List) this.decoderFactories.getValue();
    }

    @NotNull
    public final List<Pair<Fetcher.Factory<? extends Object>, KClass<? extends Object>>> getFetcherFactories() {
        return (List) this.fetcherFactories.getValue();
    }

    @NotNull
    public final List<Interceptor> getInterceptors() {
        return this.interceptors;
    }

    @NotNull
    public final List<Pair<Keyer<? extends Object>, KClass<? extends Object>>> getKeyers() {
        return this.keyers;
    }

    @NotNull
    public final List<Pair<Mapper<? extends Object, ? extends Object>, KClass<? extends Object>>> getMappers() {
        return this.mappers;
    }

    @Nullable
    public final String key(@NotNull Object data, @NotNull Options options) {
        List list = this.keyers;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) list.get(i);
            Keyer keyer = (Keyer) pair.component1();
            if (((KClass) pair.component2()).isInstance(data)) {
                Intrinsics.checkNotNull(keyer, "null cannot be cast to non-null type coil3.key.Keyer<kotlin.Any>");
                String key = keyer.key(data, options);
                if (key != null) {
                    return key;
                }
            }
        }
        return null;
    }

    @NotNull
    public final Object map(@NotNull Object data, @NotNull Options options) {
        List list = this.mappers;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair pair = (Pair) list.get(i);
            Mapper mapper = (Mapper) pair.component1();
            if (((KClass) pair.component2()).isInstance(data)) {
                Intrinsics.checkNotNull(mapper, "null cannot be cast to non-null type coil3.map.Mapper<kotlin.Any, *>");
                Object map = mapper.map(data, options);
                if (map != null) {
                    data = map;
                }
            }
        }
        return data;
    }

    @NotNull
    public final Builder newBuilder() {
        return new Builder(this);
    }

    @JvmOverloads
    @Nullable
    public final Pair<Decoder, Integer> newDecoder(@NotNull SourceFetchResult sourceFetchResult, @NotNull Options options, @NotNull ImageLoader imageLoader) {
        return newDecoder$default(this, sourceFetchResult, options, imageLoader, 0, 8, null);
    }

    @JvmOverloads
    @Nullable
    public final Pair<Fetcher, Integer> newFetcher(@NotNull Object obj, @NotNull Options options, @NotNull ImageLoader imageLoader) {
        return newFetcher$default(this, obj, options, imageLoader, 0, 8, null);
    }

    public ComponentRegistry(List list, List list2, List list3, List list4, List list5) {
        this.interceptors = list;
        this.mappers = list2;
        this.keyers = list3;
        this.f446x75d576dc = list4;
        this.f447x9738a56c = list5;
        final int i = 0;
        this.fetcherFactories = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 둡둘딜딨딸뒬뒛땡딄뒵딝딜딟땃됨돛듻득뎽딃돰땫뎡듰드땠뎹디듸들되듽뎹뎰땡뒛땍돨뒋땸듸돳땭땤돠뎠뒵딝됴땜땫땵뎬둣듻딁뒾돶둡됩딐돵딀뒉돰뒙둘딀땧돛뎠듌땦땣땄땬들딄둘딄듼돰딀돶될뒀돨뎸땯땳딄땄땄땮됐돛땫뒤땲듨땅둔딄땠딝따딄땧딄듽됐뒻돝따땔돠뎻돰땡딃돸듰돸듟딽돠됩땦땲둔

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ComponentRegistry f4388x3271d0aa;

            {
                this.f4388x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i) {
                    case 0:
                        ComponentRegistry componentRegistry = this.f4388x3271d0aa;
                        List list6 = componentRegistry.f446x75d576dc;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            AbstractC0590xf7db57e6.addAll(arrayList, (List) ((Function0) list6.get(i2)).invoke());
                        }
                        componentRegistry.f446x75d576dc = CollectionsKt__CollectionsKt.emptyList();
                        return arrayList;
                    default:
                        ComponentRegistry componentRegistry2 = this.f4388x3271d0aa;
                        List list7 = componentRegistry2.f447x9738a56c;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            AbstractC0590xf7db57e6.addAll(arrayList2, (List) ((Function0) list7.get(i3)).invoke());
                        }
                        componentRegistry2.f447x9738a56c = CollectionsKt__CollectionsKt.emptyList();
                        return arrayList2;
                }
            }
        });
        final int i2 = 1;
        this.decoderFactories = AbstractC0919x86d1e2e2.lazy(new Function0(this) { // from class: 둡둘딜딨딸뒬뒛땡딄뒵딝딜딟땃됨돛듻득뎽딃돰땫뎡듰드땠뎹디듸들되듽뎹뎰땡뒛땍돨뒋땸듸돳땭땤돠뎠뒵딝됴땜땫땵뎬둣듻딁뒾돶둡됩딐돵딀뒉돰뒙둘딀땧돛뎠듌땦땣땄땬들딄둘딄듼돰딀돶될뒀돨뎸땯땳딄땄땄땮됐돛땫뒤땲듨땅둔딄땠딝따딄땧딄듽됐뒻돝따땔돠뎻돰땡딃돸듰돸듟딽돠됩땦땲둔

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ComponentRegistry f4388x3271d0aa;

            {
                this.f4388x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i2) {
                    case 0:
                        ComponentRegistry componentRegistry = this.f4388x3271d0aa;
                        List list6 = componentRegistry.f446x75d576dc;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        for (int i22 = 0; i22 < size; i22++) {
                            AbstractC0590xf7db57e6.addAll(arrayList, (List) ((Function0) list6.get(i22)).invoke());
                        }
                        componentRegistry.f446x75d576dc = CollectionsKt__CollectionsKt.emptyList();
                        return arrayList;
                    default:
                        ComponentRegistry componentRegistry2 = this.f4388x3271d0aa;
                        List list7 = componentRegistry2.f447x9738a56c;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            AbstractC0590xf7db57e6.addAll(arrayList2, (List) ((Function0) list7.get(i3)).invoke());
                        }
                        componentRegistry2.f447x9738a56c = CollectionsKt__CollectionsKt.emptyList();
                        return arrayList2;
                }
            }
        });
    }

    @JvmOverloads
    @Nullable
    public final Pair<Decoder, Integer> newDecoder(@NotNull SourceFetchResult result, @NotNull Options options, @NotNull ImageLoader imageLoader, int startIndex) {
        int size = getDecoderFactories().size();
        while (startIndex < size) {
            Decoder create = getDecoderFactories().get(startIndex).create(result, options, imageLoader);
            if (create != null) {
                return TuplesKt.to(create, Integer.valueOf(startIndex));
            }
            startIndex++;
        }
        return null;
    }

    @JvmOverloads
    @Nullable
    public final Pair<Fetcher, Integer> newFetcher(@NotNull Object data, @NotNull Options options, @NotNull ImageLoader imageLoader, int startIndex) {
        int size = getFetcherFactories().size();
        while (startIndex < size) {
            Pair<Fetcher.Factory<? extends Object>, KClass<? extends Object>> pair = getFetcherFactories().get(startIndex);
            Fetcher.Factory<? extends Object> component1 = pair.component1();
            if (pair.component2().isInstance(data)) {
                Intrinsics.checkNotNull(component1, "null cannot be cast to non-null type coil3.fetch.Fetcher.Factory<kotlin.Any>");
                Fetcher create = component1.create(data, options, imageLoader);
                if (create != null) {
                    return TuplesKt.to(create, Integer.valueOf(startIndex));
                }
            }
            startIndex++;
        }
        return null;
    }

    public ComponentRegistry() {
        this(CollectionsKt__CollectionsKt.emptyList(), CollectionsKt__CollectionsKt.emptyList(), CollectionsKt__CollectionsKt.emptyList(), CollectionsKt__CollectionsKt.emptyList(), CollectionsKt__CollectionsKt.emptyList());
    }
}
