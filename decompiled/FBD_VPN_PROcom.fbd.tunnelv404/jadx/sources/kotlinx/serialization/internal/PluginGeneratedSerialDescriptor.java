package kotlinx.serialization.internal;

import defpackage.AbstractC0919x86d1e2e2;
import defpackage.AbstractC0962xa4a1ff52;
import defpackage.C0346x75d576dc;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import kotlinx.serialization.internal.PluginHelperInterfacesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u0004\b\u0011\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00110\u001c2\u0006\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0003H\u0016¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020\f2\b\u0010$\u001a\u0004\u0018\u00010#H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0003H\u0016¢\u0006\u0004\b)\u0010*R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010*R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u0010(R!\u00106\u001a\b\u0012\u0004\u0012\u00020\u0001018@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u0014\u0010:\u001a\u0002078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00110\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u001a\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00030>8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Lkotlinx/serialization/internal/CachedNames;", "", "serialName", "Lkotlinx/serialization/internal/GeneratedSerializer;", "generatedSerializer", "", "elementsCount", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V", "name", "", "isOptional", "", "addElement", "(Ljava/lang/String;Z)V", "", "annotation", "pushAnnotation", "(Ljava/lang/annotation/Annotation;)V", "a", "pushClassAnnotation", "index", "getElementDescriptor", "(I)Lkotlinx/serialization/descriptors/SerialDescriptor;", "isElementOptional", "(I)Z", "", "getElementAnnotations", "(I)Ljava/util/List;", "getElementName", "(I)Ljava/lang/String;", "getElementIndex", "(Ljava/lang/String;)I", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/lang/String;", "getSerialName", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "I", "getElementsCount", "", "뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠", "Lkotlin/Lazy;", "getTypeParameterDescriptors$kotlinx_serialization_core", "()[Lkotlinx/serialization/descriptors/SerialDescriptor;", "typeParameterDescriptors", "Lkotlinx/serialization/descriptors/SerialKind;", "getKind", "()Lkotlinx/serialization/descriptors/SerialKind;", "kind", "getAnnotations", "()Ljava/util/List;", "annotations", "", "getSerialNames", "()Ljava/util/Set;", "serialNames", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nPluginGeneratedSerialDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor\n+ 2 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 3 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,134:1\n16#2:135\n21#2:136\n16#2:137\n16#2:138\n111#3,10:139\n11165#4:149\n11500#4,3:150\n*S KotlinDebug\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor\n*L\n76#1:135\n79#1:136\n81#1:137\n82#1:138\n93#1:139,10\n40#1:149\n40#1:150,3\n*E\n"})
/* loaded from: classes3.dex */
public class PluginGeneratedSerialDescriptor implements SerialDescriptor, CachedNames {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final String serialName;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final GeneratedSerializer f2622x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public final int elementsCount;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f2624x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final String[] f2625x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final List[] f2626x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public ArrayList f2627x34271fae;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final boolean[] f2628x95f25580;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public Map f2629x3db60231;

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public final Lazy f2630x9d12c1f4;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters and from kotlin metadata */
    public final Lazy typeParameterDescriptors;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final Lazy f2632xd2bcb0cf;

    public PluginGeneratedSerialDescriptor(@NotNull String serialName, @Nullable GeneratedSerializer<?> generatedSerializer, int i) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        this.serialName = serialName;
        this.f2622x3271d0aa = generatedSerializer;
        this.elementsCount = i;
        this.f2624x75d576dc = -1;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = "[UNINITIALIZED]";
        }
        this.f2625x9738a56c = strArr;
        int i3 = this.elementsCount;
        this.f2626x9e171bf9 = new List[i3];
        this.f2628x95f25580 = new boolean[i3];
        this.f2629x3db60231 = AbstractC0962xa4a1ff52.emptyMap();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i4 = 0;
        this.f2630x9d12c1f4 = AbstractC0919x86d1e2e2.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: 딹뒈뎸돤둥뎠땬둥땪따돛땪드딻뎨듰뒷돼딎될듨둠땃됫뎨딝딄돼뒤딝딽땁뒙뒈돵뒹딐듬뎸딄뎠딁둔됐딽도뎨뒨듌둔둘딽딟땍든땜들땵땱땥딟딄뒼둣듼땮딌땨뒉된뒀디뎽뒨땍땠돼돰땍둑딨뎸땜땯듬된땐됨둑뒵돼돰뒤딅딠둠딎딟뎨땩딌듽땡뒻딠땥땲뎻돶땦뒐둣뎨돶뒋땳땜둣땭뒉땀됫땩돴땥둬땻된땦딻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f5283x3271d0aa;

            {
                this.f5283x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer<?>[] childSerializers;
                ArrayList arrayList;
                KSerializer<?>[] typeParametersSerializers;
                switch (i4) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer2 == null || (childSerializers = generatedSerializer2.childSerializers()) == null) {
                            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
                        }
                        return childSerializers;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer3 != null && (typeParametersSerializers = generatedSerializer3.typeParametersSerializers()) != null) {
                            arrayList = new ArrayList(typeParametersSerializers.length);
                            for (KSerializer<?> kSerializer : typeParametersSerializers) {
                                arrayList.add(kSerializer.getDescriptor());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.compactArray(arrayList);
                    default:
                        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f5283x3271d0aa;
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.hashCodeImpl(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core()));
                }
            }
        });
        final int i5 = 1;
        this.typeParameterDescriptors = AbstractC0919x86d1e2e2.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: 딹뒈뎸돤둥뎠땬둥땪따돛땪드딻뎨듰뒷돼딎될듨둠땃됫뎨딝딄돼뒤딝딽땁뒙뒈돵뒹딐듬뎸딄뎠딁둔됐딽도뎨뒨듌둔둘딽딟땍든땜들땵땱땥딟딄뒼둣듼땮딌땨뒉된뒀디뎽뒨땍땠돼돰땍둑딨뎸땜땯듬된땐됨둑뒵돼돰뒤딅딠둠딎딟뎨땩딌듽땡뒻딠땥땲뎻돶땦뒐둣뎨돶뒋땳땜둣땭뒉땀됫땩돴땥둬땻된땦딻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f5283x3271d0aa;

            {
                this.f5283x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer<?>[] childSerializers;
                ArrayList arrayList;
                KSerializer<?>[] typeParametersSerializers;
                switch (i5) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer2 == null || (childSerializers = generatedSerializer2.childSerializers()) == null) {
                            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
                        }
                        return childSerializers;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer3 != null && (typeParametersSerializers = generatedSerializer3.typeParametersSerializers()) != null) {
                            arrayList = new ArrayList(typeParametersSerializers.length);
                            for (KSerializer<?> kSerializer : typeParametersSerializers) {
                                arrayList.add(kSerializer.getDescriptor());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.compactArray(arrayList);
                    default:
                        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f5283x3271d0aa;
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.hashCodeImpl(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core()));
                }
            }
        });
        final int i6 = 2;
        this.f2632xd2bcb0cf = AbstractC0919x86d1e2e2.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: 딹뒈뎸돤둥뎠땬둥땪따돛땪드딻뎨듰뒷돼딎될듨둠땃됫뎨딝딄돼뒤딝딽땁뒙뒈돵뒹딐듬뎸딄뎠딁둔됐딽도뎨뒨듌둔둘딽딟땍든땜들땵땱땥딟딄뒼둣듼땮딌땨뒉된뒀디뎽뒨땍땠돼돰땍둑딨뎸땜땯듬된땐됨둑뒵돼돰뒤딅딠둠딎딟뎨땩딌듽땡뒻딠땥땲뎻돶땦뒐둣뎨돶뒋땳땜둣땭뒉땀됫땩돴땥둬땻된땦딻

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ PluginGeneratedSerialDescriptor f5283x3271d0aa;

            {
                this.f5283x3271d0aa = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer<?>[] childSerializers;
                ArrayList arrayList;
                KSerializer<?>[] typeParametersSerializers;
                switch (i6) {
                    case 0:
                        GeneratedSerializer generatedSerializer2 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer2 == null || (childSerializers = generatedSerializer2.childSerializers()) == null) {
                            return PluginHelperInterfacesKt.EMPTY_SERIALIZER_ARRAY;
                        }
                        return childSerializers;
                    case 1:
                        GeneratedSerializer generatedSerializer3 = this.f5283x3271d0aa.f2622x3271d0aa;
                        if (generatedSerializer3 != null && (typeParametersSerializers = generatedSerializer3.typeParametersSerializers()) != null) {
                            arrayList = new ArrayList(typeParametersSerializers.length);
                            for (KSerializer<?> kSerializer : typeParametersSerializers) {
                                arrayList.add(kSerializer.getDescriptor());
                            }
                        } else {
                            arrayList = null;
                        }
                        return Platform_commonKt.compactArray(arrayList);
                    default:
                        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = this.f5283x3271d0aa;
                        return Integer.valueOf(PluginGeneratedSerialDescriptorKt.hashCodeImpl(pluginGeneratedSerialDescriptor, pluginGeneratedSerialDescriptor.getTypeParameterDescriptors$kotlinx_serialization_core()));
                }
            }
        });
    }

    public static /* synthetic */ void addElement$default(PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor, String str, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            pluginGeneratedSerialDescriptor.addElement(str, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
    }

    public final void addElement(@NotNull String name, boolean isOptional) {
        Intrinsics.checkNotNullParameter(name, "name");
        int i = this.f2624x75d576dc + 1;
        this.f2624x75d576dc = i;
        String[] strArr = this.f2625x9738a56c;
        strArr[i] = name;
        this.f2628x95f25580[i] = isOptional;
        this.f2626x9e171bf9[i] = null;
        if (i == this.elementsCount - 1) {
            HashMap hashMap = new HashMap();
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                hashMap.put(strArr[i2], Integer.valueOf(i2));
            }
            this.f2629x3db60231 = hashMap;
        }
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof PluginGeneratedSerialDescriptor) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) other;
            if (Intrinsics.areEqual(getSerialName(), serialDescriptor.getSerialName()) && Arrays.equals(getTypeParameterDescriptors$kotlinx_serialization_core(), ((PluginGeneratedSerialDescriptor) other).getTypeParameterDescriptors$kotlinx_serialization_core()) && getElementsCount() == serialDescriptor.getElementsCount()) {
                int elementsCount = getElementsCount();
                for (int i = 0; i < elementsCount; i++) {
                    if (Intrinsics.areEqual(getElementDescriptor(i).getSerialName(), serialDescriptor.getElementDescriptor(i).getSerialName()) && Intrinsics.areEqual(getElementDescriptor(i).getKind(), serialDescriptor.getElementDescriptor(i).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        ArrayList arrayList = this.f2627x34271fae;
        if (arrayList == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return arrayList;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getElementAnnotations(int index) {
        List<Annotation> list = this.f2626x9e171bf9[index];
        if (list == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor getElementDescriptor(int index) {
        return ((KSerializer[]) this.f2630x9d12c1f4.getValue())[index].getDescriptor();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int getElementIndex(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = (Integer) this.f2629x3db60231.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String getElementName(int index) {
        return this.f2625x9738a56c[index];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return this.elementsCount;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialKind getKind() {
        return StructureKind.CLASS.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String getSerialName() {
        return this.serialName;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    @NotNull
    public Set<String> getSerialNames() {
        return this.f2629x3db60231.keySet();
    }

    @NotNull
    public final SerialDescriptor[] getTypeParameterDescriptors$kotlinx_serialization_core() {
        return (SerialDescriptor[]) this.typeParameterDescriptors.getValue();
    }

    public int hashCode() {
        return ((Number) this.f2632xd2bcb0cf.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isElementOptional(int index) {
        return this.f2628x95f25580[index];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    /* renamed from: isInline */
    public boolean getIsInline() {
        return SerialDescriptor.DefaultImpls.isInline(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isNullable() {
        return SerialDescriptor.DefaultImpls.isNullable(this);
    }

    public final void pushAnnotation(@NotNull Annotation annotation) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        int i = this.f2624x75d576dc;
        List[] listArr = this.f2626x9e171bf9;
        List list = listArr[i];
        if (list == null) {
            list = new ArrayList(1);
            listArr[this.f2624x75d576dc] = list;
        }
        list.add(annotation);
    }

    public final void pushClassAnnotation(@NotNull Annotation a) {
        Intrinsics.checkNotNullParameter(a, "a");
        if (this.f2627x34271fae == null) {
            this.f2627x34271fae = new ArrayList(1);
        }
        ArrayList arrayList = this.f2627x34271fae;
        Intrinsics.checkNotNull(arrayList);
        arrayList.add(a);
    }

    @NotNull
    public String toString() {
        return CollectionsKt___CollectionsKt.joinToString$default(AbstractC0296x1378447b.until(0, this.elementsCount), ", ", getSerialName() + '(', ")", 0, null, new C0346x75d576dc(this, 11), 24, null);
    }

    public /* synthetic */ PluginGeneratedSerialDescriptor(String str, GeneratedSerializer generatedSerializer, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : generatedSerializer, i);
    }
}
