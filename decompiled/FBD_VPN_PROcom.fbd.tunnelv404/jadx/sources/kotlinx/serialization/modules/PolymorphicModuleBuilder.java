package kotlinx.serialization.modules;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\n\b\u0000\u0010\u0002 \u0000*\u00020\u00012\u00020\u0001B)\b\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ3\u0010\n\u001a\u00020\f\"\b\b\u0001\u0010\t*\u00028\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\n\u0010\bJ:\u0010\u0014\u001a\u00020\f2+\u0010\u0013\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\r¢\u0006\u0004\b\u0014\u0010\u0015J<\u0010\u0017\u001a\u00020\f2+\u0010\u0016\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\rH\u0007¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0001¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/modules/PolymorphicModuleBuilder;", "", "Base", "Lkotlin/reflect/KClass;", "baseClass", "Lkotlinx/serialization/KSerializer;", "baseSerializer", "<init>", "(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V", ExifInterface.GPS_DIRECTION_TRUE, "subclass", "serializer", "", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "className", "Lkotlinx/serialization/DeserializationStrategy;", "defaultDeserializerProvider", "defaultDeserializer", "(Lkotlin/jvm/functions/Function1;)V", "defaultSerializerProvider", "default", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "builder", "buildTo", "(Lkotlinx/serialization/modules/SerializersModuleBuilder;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPolymorphicModuleBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolymorphicModuleBuilder.kt\nkotlinx/serialization/modules/PolymorphicModuleBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,119:1\n1863#2:120\n1864#2:122\n78#3:121\n*S KotlinDebug\n*F\n+ 1 PolymorphicModuleBuilder.kt\nkotlinx/serialization/modules/PolymorphicModuleBuilder\n*L\n88#1:120\n88#1:122\n92#1:121\n*E\n"})
/* loaded from: classes3.dex */
public final class PolymorphicModuleBuilder<Base> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final KClass f2671xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final KSerializer f2672x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final ArrayList f2673x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public Function1 f2674x75d576dc;

    @PublishedApi
    public PolymorphicModuleBuilder(@NotNull KClass<Base> baseClass, @Nullable KSerializer<Base> kSerializer) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        this.f2671xfbe0c504 = baseClass;
        this.f2672x3271d0aa = kSerializer;
        this.f2673x1378447b = new ArrayList();
    }

    @PublishedApi
    public final void buildTo(@NotNull SerializersModuleBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        KSerializer kSerializer = this.f2672x3271d0aa;
        if (kSerializer != null) {
            KClass kClass = this.f2671xfbe0c504;
            SerializersModuleBuilder.registerPolymorphicSerializer$default(builder, kClass, kClass, kSerializer, false, 8, null);
        }
        Iterator it = this.f2673x1378447b.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            KClass kClass2 = (KClass) pair.component1();
            KSerializer kSerializer2 = (KSerializer) pair.component2();
            Intrinsics.checkNotNull(kClass2, "null cannot be cast to non-null type kotlin.reflect.KClass<Base of kotlinx.serialization.modules.PolymorphicModuleBuilder>");
            Intrinsics.checkNotNull(kSerializer2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            SerializersModuleBuilder.registerPolymorphicSerializer$default(builder, this.f2671xfbe0c504, kClass2, kSerializer2, false, 8, null);
        }
        Function1<? super String, ? extends DeserializationStrategy<? extends Base>> function1 = this.f2674x75d576dc;
        if (function1 != null) {
            builder.registerDefaultPolymorphicDeserializer(this.f2671xfbe0c504, function1, false);
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Deprecated in favor of function with more precise name: defaultDeserializer", replaceWith = @ReplaceWith(expression = "defaultDeserializer(defaultSerializerProvider)", imports = {}))
    /* renamed from: default, reason: not valid java name */
    public final void m2422default(@NotNull Function1<? super String, ? extends DeserializationStrategy<? extends Base>> defaultSerializerProvider) {
        Intrinsics.checkNotNullParameter(defaultSerializerProvider, "defaultSerializerProvider");
        defaultDeserializer(defaultSerializerProvider);
    }

    public final void defaultDeserializer(@NotNull Function1<? super String, ? extends DeserializationStrategy<? extends Base>> defaultDeserializerProvider) {
        Intrinsics.checkNotNullParameter(defaultDeserializerProvider, "defaultDeserializerProvider");
        if (this.f2674x75d576dc == null) {
            this.f2674x75d576dc = defaultDeserializerProvider;
            return;
        }
        throw new IllegalArgumentException(("Default deserializer provider is already registered for class " + this.f2671xfbe0c504 + ": " + this.f2674x75d576dc).toString());
    }

    public final <T extends Base> void subclass(@NotNull KClass<T> subclass, @NotNull KSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(subclass, "subclass");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.f2673x1378447b.add(TuplesKt.to(subclass, serializer));
    }

    public /* synthetic */ PolymorphicModuleBuilder(KClass kClass, KSerializer kSerializer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, (i & 2) != 0 ? null : kSerializer);
    }
}
