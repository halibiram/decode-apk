package kotlinx.serialization.modules;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.modules.ContextualProvider;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001Bî\u0001\u0012\u0016\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012*\u0010\u0007\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00020\u0002\u0012.\u0010\u000b\u001a*\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u001c\u0012\u001a\u0012\u0002\b\u0003\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\t0\bj\u0006\u0012\u0002\b\u0003`\n0\u0002\u0012&\u0010\r\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00020\u0002\u0012A\u0010\u0013\u001a=\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012/\u0012-\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00110\bj\u0006\u0012\u0002\b\u0003`\u00120\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J9\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t\"\b\b\u0000\u0010\u0019*\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00032\u0006\u0010\u001b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ;\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0011\"\b\b\u0000\u0010\u0019*\u00020\u00182\u000e\u0010\u001a\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u001c\u0010\u001fJA\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\"\b\b\u0000\u0010\u0019*\u00020\u00182\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0010\u0010\"\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b(\u0010)R8\u0010\u0007\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010*R\u001a\u0010\u0015\u001a\u00020\u00148\u0010X\u0090\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lkotlinx/serialization/modules/SerialModuleImpl;", "Lkotlinx/serialization/modules/SerializersModule;", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/modules/ContextualProvider;", "class2ContextualFactory", "Lkotlinx/serialization/KSerializer;", "polyBase2Serializers", "Lkotlin/Function1;", "Lkotlinx/serialization/SerializationStrategy;", "Lkotlinx/serialization/modules/PolymorphicSerializerProvider;", "polyBase2DefaultSerializerProvider", "", "polyBase2NamedSerializers", "Lkotlin/ParameterName;", "name", "className", "Lkotlinx/serialization/DeserializationStrategy;", "Lkotlinx/serialization/modules/PolymorphicDeserializerProvider;", "polyBase2DefaultDeserializerProvider", "", "hasInterfaceContextualSerializers", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Z)V", "", ExifInterface.GPS_DIRECTION_TRUE, "baseClass", "value", "getPolymorphic", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;", "serializedClassName", "(Lkotlin/reflect/KClass;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;", "kClass", "", "typeArgumentsSerializers", "getContextual", "(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "collector", "", "dumpTo", "(Lkotlinx/serialization/modules/SerializersModuleCollector;)V", "Ljava/util/Map;", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Z", "getHasInterfaceContextualSerializers$kotlinx_serialization_core", "()Z", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSerializersModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerialModuleImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,245:1\n216#2,2:246\n216#2:248\n216#2:249\n217#2:251\n217#2:252\n216#2,2:253\n216#2,2:255\n78#3:250\n*S KotlinDebug\n*F\n+ 1 SerializersModule.kt\nkotlinx/serialization/modules/SerialModuleImpl\n*L\n186#1:246,2\n196#1:248\n197#1:249\n197#1:251\n196#1:252\n206#1:253,2\n210#1:255,2\n201#1:250\n*E\n"})
/* loaded from: classes3.dex */
public final class SerialModuleImpl extends SerializersModule {

    @JvmField
    @NotNull
    public final Map<KClass<?>, Map<KClass<?>, KSerializer<?>>> polyBase2Serializers;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Map f2675xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Map f2676x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Map f2677x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Map f2678x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final boolean hasInterfaceContextualSerializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SerialModuleImpl(@NotNull Map<KClass<?>, ? extends ContextualProvider> class2ContextualFactory, @NotNull Map<KClass<?>, ? extends Map<KClass<?>, ? extends KSerializer<?>>> polyBase2Serializers, @NotNull Map<KClass<?>, ? extends Function1<?, ? extends SerializationStrategy<?>>> polyBase2DefaultSerializerProvider, @NotNull Map<KClass<?>, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers, @NotNull Map<KClass<?>, ? extends Function1<? super String, ? extends DeserializationStrategy<?>>> polyBase2DefaultDeserializerProvider, boolean z) {
        super(null);
        Intrinsics.checkNotNullParameter(class2ContextualFactory, "class2ContextualFactory");
        Intrinsics.checkNotNullParameter(polyBase2Serializers, "polyBase2Serializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        Intrinsics.checkNotNullParameter(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        Intrinsics.checkNotNullParameter(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.f2675xfbe0c504 = class2ContextualFactory;
        this.polyBase2Serializers = polyBase2Serializers;
        this.f2676x3271d0aa = polyBase2DefaultSerializerProvider;
        this.f2677x1378447b = polyBase2NamedSerializers;
        this.f2678x75d576dc = polyBase2DefaultDeserializerProvider;
        this.hasInterfaceContextualSerializers = z;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public void dumpTo(@NotNull SerializersModuleCollector collector) {
        Intrinsics.checkNotNullParameter(collector, "collector");
        for (Map.Entry entry : this.f2675xfbe0c504.entrySet()) {
            KClass kClass = (KClass) entry.getKey();
            ContextualProvider contextualProvider = (ContextualProvider) entry.getValue();
            if (contextualProvider instanceof ContextualProvider.Argless) {
                Intrinsics.checkNotNull(kClass, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                KSerializer<?> serializer = ((ContextualProvider.Argless) contextualProvider).getSerializer();
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any>");
                collector.contextual(kClass, serializer);
            } else if (contextualProvider instanceof ContextualProvider.WithTypeArguments) {
                collector.contextual(kClass, ((ContextualProvider.WithTypeArguments) contextualProvider).getProvider());
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        for (Map.Entry<KClass<?>, Map<KClass<?>, KSerializer<?>>> entry2 : this.polyBase2Serializers.entrySet()) {
            KClass<?> key = entry2.getKey();
            for (Map.Entry<KClass<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                KClass<?> key2 = entry3.getKey();
                KSerializer<?> value = entry3.getValue();
                Intrinsics.checkNotNull(key, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(key2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                Intrinsics.checkNotNull(value, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                collector.polymorphic(key, key2, value);
            }
        }
        for (Map.Entry entry4 : this.f2676x3271d0aa.entrySet()) {
            KClass kClass2 = (KClass) entry4.getKey();
            Function1 function1 = (Function1) entry4.getValue();
            Intrinsics.checkNotNull(kClass2, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(function1, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"value\")] kotlin.Any, kotlinx.serialization.SerializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultSerializer(kClass2, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function1, 1));
        }
        for (Map.Entry entry5 : this.f2678x75d576dc.entrySet()) {
            KClass kClass3 = (KClass) entry5.getKey();
            Function1 function12 = (Function1) entry5.getValue();
            Intrinsics.checkNotNull(kClass3, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            Intrinsics.checkNotNull(function12, "null cannot be cast to non-null type kotlin.Function1<@[ParameterName(name = \"className\")] kotlin.String?, kotlinx.serialization.DeserializationStrategy<kotlin.Any>?>");
            collector.polymorphicDefaultDeserializer(kClass3, (Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function12, 1));
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    @Nullable
    public <T> KSerializer<T> getContextual(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers) {
        KSerializer<?> kSerializer;
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        ContextualProvider contextualProvider = (ContextualProvider) this.f2675xfbe0c504.get(kClass);
        if (contextualProvider != null) {
            kSerializer = contextualProvider.invoke(typeArgumentsSerializers);
        } else {
            kSerializer = null;
        }
        if (!(kSerializer instanceof KSerializer)) {
            return null;
        }
        return (KSerializer<T>) kSerializer;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    /* renamed from: getHasInterfaceContextualSerializers$kotlinx_serialization_core, reason: from getter */
    public boolean getHasInterfaceContextualSerializers() {
        return this.hasInterfaceContextualSerializers;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    @Nullable
    public <T> SerializationStrategy<T> getPolymorphic(@NotNull KClass<? super T> baseClass, @NotNull T value) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(value, "value");
        if (!baseClass.isInstance(value)) {
            return null;
        }
        Map<KClass<?>, KSerializer<?>> map = this.polyBase2Serializers.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(Reflection.getOrCreateKotlinClass(value.getClass())) : null;
        KSerializer<?> kSerializer2 = kSerializer instanceof SerializationStrategy ? kSerializer : null;
        if (kSerializer2 != null) {
            return kSerializer2;
        }
        Object obj = this.f2676x3271d0aa.get(baseClass);
        Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj, 1) ? (Function1) obj : null;
        if (function1 != null) {
            return (SerializationStrategy) function1.invoke(value);
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    @Nullable
    public <T> DeserializationStrategy<T> getPolymorphic(@NotNull KClass<? super T> baseClass, @Nullable String serializedClassName) {
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Map map = (Map) this.f2677x1378447b.get(baseClass);
        KSerializer kSerializer = map != null ? (KSerializer) map.get(serializedClassName) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        Object obj = this.f2678x75d576dc.get(baseClass);
        Function1 function1 = TypeIntrinsics.isFunctionOfArity(obj, 1) ? (Function1) obj : null;
        if (function1 != null) {
            return (DeserializationStrategy) function1.invoke(serializedClassName);
        }
        return null;
    }
}
