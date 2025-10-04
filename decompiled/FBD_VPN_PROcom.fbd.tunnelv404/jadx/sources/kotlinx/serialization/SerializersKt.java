package kotlinx.serialization;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0587xb7546d05;
import defpackage.AbstractC1312xe0b2b7ff;
import defpackage.AbstractC1313xd408e99d;
import defpackage.C0396x4a23d5ac;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Triple;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.PlatformKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PrimitivesKt;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"땵땅딐땀땀땀딀됫딅뒤땱땍뒻드딸땩돤뎸뒈되딞돳뎻땤드뒘땄드뒐뎬뒐땬돛듼됩땹땭땧듽땍든뎡돤땬돸드두둥둠땍땠돸돰뒤뒉돳된딜됩뒝둠돸둔드딌뒨땁뒈됨땡뒻땣땫돝뒵땯뒀땵땡두될뒝땜뒼듻땀땨땫땧될돸된딹됐땲땝됫둘땳땁땐둘뒼딁딎뒷뒀뎨뒘땅땡딹드땝딨땭드딝둡듼뎹땅둑된딁뒷땱땄땧땲", "땵따뒛둬득땳뎠땔땀땍드뒹딄뒛땳딜딀둑듐둘돤딀딐딄돵돳뒷땭듟돝뒷뒨돛땩둔둘됐딅뒝딎뒛땜딨딄딟땫뒬땤땮땍땐뒝뎹둑듰땳딀뎡돷듰뒨딐뎬땤듻땮뒷땭돛땔딅딸듸딐듟딐땱뎬뎠둑둡땜디땁된둘딎드뒬딜듐뒈땍딄둡땨딤땥땱뎡땬돼돵땔땨둬뎸땻땅딅든뎻둑되뒝돰뒵뒐땠딌딜드돰딄됴돸드뒝땵땰"}, d2 = {}, k = 4, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SerializersKt {
    @PublishedApi
    @NotNull
    public static final KSerializer<?> moduleThenPolymorphic(@NotNull SerializersModule module, @NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        KSerializer<?> contextual$default = SerializersModule.getContextual$default(module, kClass, null, 2, null);
        return contextual$default == null ? new PolymorphicSerializer(kClass) : contextual$default;
    }

    @PublishedApi
    @NotNull
    public static final KSerializer<?> noCompiledSerializer(@NotNull String forClass) {
        Intrinsics.checkNotNullParameter(forClass, "forClass");
        throw new SerializationException(Platform_commonKt.notRegisteredMessage(forClass));
    }

    @Nullable
    public static final KSerializer<? extends Object> parametrizedSerializerOrNull(@NotNull KClass<Object> kClass, @NotNull List<? extends KSerializer<Object>> serializers, @NotNull Function0<? extends KClassifier> elementClassifierIfArray) {
        KSerializer<? extends Object> arrayListSerializer;
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Intrinsics.checkNotNullParameter(serializers, "serializers");
        Intrinsics.checkNotNullParameter(elementClassifierIfArray, "elementClassifierIfArray");
        if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Collection.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(ArrayList.class))) {
            if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashSet.class))) {
                arrayListSerializer = new HashSetSerializer<>(serializers.get(0));
            } else if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashSet.class))) {
                if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashMap.class))) {
                    arrayListSerializer = new HashMapSerializer<>(serializers.get(0), serializers.get(1));
                } else if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashMap.class))) {
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.Entry.class))) {
                        arrayListSerializer = BuiltinSerializersKt.MapEntrySerializer(serializers.get(0), serializers.get(1));
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Pair.class))) {
                        arrayListSerializer = BuiltinSerializersKt.PairSerializer(serializers.get(0), serializers.get(1));
                    } else if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Triple.class))) {
                        arrayListSerializer = BuiltinSerializersKt.TripleSerializer(serializers.get(0), serializers.get(1), serializers.get(2));
                    } else if (PlatformKt.isReferenceArray(kClass)) {
                        KClassifier invoke = elementClassifierIfArray.invoke();
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                        arrayListSerializer = BuiltinSerializersKt.ArraySerializer((KClass) invoke, serializers.get(0));
                    } else {
                        arrayListSerializer = null;
                    }
                } else {
                    arrayListSerializer = new LinkedHashMapSerializer<>(serializers.get(0), serializers.get(1));
                }
            } else {
                arrayListSerializer = new LinkedHashSetSerializer<>(serializers.get(0));
            }
        } else {
            arrayListSerializer = new ArrayListSerializer<>(serializers.get(0));
        }
        if (arrayListSerializer == null) {
            KSerializer[] kSerializerArr = (KSerializer[]) serializers.toArray(new KSerializer[0]);
            return PlatformKt.constructSerializerForGivenTypeArgs(kClass, (KSerializer<Object>[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        }
        return arrayListSerializer;
    }

    @NotNull
    public static final KSerializer<Object> serializer(@NotNull Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return serializer(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    @Nullable
    public static final KSerializer<Object> serializerOrNull(@NotNull Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return serializerOrNull(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    @Nullable
    public static final List<KSerializer<Object>> serializersForParameters(@NotNull SerializersModule serializersModule, @NotNull List<? extends KType> typeArguments, boolean z) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(typeArguments, "typeArguments");
        if (z) {
            List<? extends KType> list = typeArguments;
            arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(serializer(serializersModule, (KType) it.next()));
            }
        } else {
            List<? extends KType> list2 = typeArguments;
            arrayList = new ArrayList(AbstractC0587xb7546d05.collectionSizeOrDefault(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                KSerializer<Object> serializerOrNull = serializerOrNull(serializersModule, (KType) it2.next());
                if (serializerOrNull == null) {
                    return null;
                }
                arrayList.add(serializerOrNull);
            }
        }
        return arrayList;
    }

    @PublishedApi
    @NotNull
    public static final KSerializer<?> moduleThenPolymorphic(@NotNull SerializersModule module, @NotNull KClass<?> kClass, @NotNull KSerializer<?>[] argSerializers) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(argSerializers, "argSerializers");
        KSerializer<?> contextual = module.getContextual(kClass, ArraysKt___ArraysJvmKt.asList(argSerializers));
        return contextual == null ? new PolymorphicSerializer(kClass) : contextual;
    }

    @PublishedApi
    @NotNull
    public static final KSerializer<?> noCompiledSerializer(@NotNull SerializersModule module, @NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        KSerializer<?> contextual$default = SerializersModule.getContextual$default(module, kClass, null, 2, null);
        if (contextual$default != null) {
            return contextual$default;
        }
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    @InternalSerializationApi
    @NotNull
    public static final <T> KSerializer<T> serializer(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        KSerializer<T> serializerOrNull = serializerOrNull(kClass);
        if (serializerOrNull != null) {
            return serializerOrNull;
        }
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    @InternalSerializationApi
    @Nullable
    public static final <T> KSerializer<T> serializerOrNull(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        KSerializer<T> compiledSerializerImpl = PlatformKt.compiledSerializerImpl(kClass);
        return compiledSerializerImpl == null ? PrimitivesKt.builtinSerializerOrNull(kClass) : compiledSerializerImpl;
    }

    @PublishedApi
    @NotNull
    public static final KSerializer<?> noCompiledSerializer(@NotNull SerializersModule module, @NotNull KClass<?> kClass, @NotNull KSerializer<?>[] argSerializers) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(argSerializers, "argSerializers");
        KSerializer<?> contextual = module.getContextual(kClass, ArraysKt___ArraysJvmKt.asList(argSerializers));
        if (contextual != null) {
            return contextual;
        }
        Platform_commonKt.serializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    @ExperimentalSerializationApi
    @NotNull
    public static final KSerializer<Object> serializer(@NotNull KClass<?> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers, boolean z) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        return serializer(SerializersModuleBuildersKt.EmptySerializersModule(), kClass, typeArgumentsSerializers, z);
    }

    @Nullable
    public static final KSerializer<Object> serializerOrNull(@NotNull KType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return serializerOrNull(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    @NotNull
    public static final KSerializer<Object> serializer(@NotNull KType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return serializer(SerializersModuleBuildersKt.EmptySerializersModule(), type);
    }

    @Nullable
    public static final KSerializer<Object> serializerOrNull(@NotNull SerializersModule serializersModule, @NotNull Type type) {
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return AbstractC1313xd408e99d.m4342x75d576dc(serializersModule, type, false);
    }

    @NotNull
    public static final KSerializer<Object> serializer(@NotNull SerializersModule serializersModule, @NotNull Type type) {
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        KSerializer<Object> m4342x75d576dc = AbstractC1313xd408e99d.m4342x75d576dc(serializersModule, type, true);
        if (m4342x75d576dc != null) {
            return m4342x75d576dc;
        }
        PlatformKt.serializerNotRegistered(AbstractC1313xd408e99d.m4340x3271d0aa(type));
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final KSerializer<Object> serializerOrNull(@NotNull SerializersModule serializersModule, @NotNull KType type) {
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return AbstractC1312xe0b2b7ff.m4338x1378447b(serializersModule, type, false);
    }

    @ExperimentalSerializationApi
    @NotNull
    public static final KSerializer<Object> serializer(@NotNull SerializersModule serializersModule, @NotNull KClass<?> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers, boolean z) {
        KSerializer<? extends Object> contextual;
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        Intrinsics.checkNotNullParameter(typeArgumentsSerializers, "typeArgumentsSerializers");
        KSerializer<? extends Object> kSerializer = null;
        if (typeArgumentsSerializers.isEmpty()) {
            contextual = serializerOrNull(kClass);
            if (contextual == null) {
                contextual = SerializersModule.getContextual$default(serializersModule, kClass, null, 2, null);
            }
        } else {
            try {
                KSerializer<? extends Object> parametrizedSerializerOrNull = parametrizedSerializerOrNull(kClass, typeArgumentsSerializers, new C0396x4a23d5ac(29));
                contextual = parametrizedSerializerOrNull == null ? serializersModule.getContextual(kClass, typeArgumentsSerializers) : parametrizedSerializerOrNull;
            } catch (IndexOutOfBoundsException e) {
                throw new SerializationException("Unable to retrieve a serializer, the number of passed type serializers differs from the actual number of generic parameters", e);
            }
        }
        if (contextual != null) {
            if (z) {
                kSerializer = BuiltinSerializersKt.getNullable(contextual);
            } else {
                Intrinsics.checkNotNull(contextual, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
                kSerializer = contextual;
            }
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        PlatformKt.platformSpecificSerializerNotRegistered(kClass);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final KSerializer<Object> serializer(@NotNull SerializersModule serializersModule, @NotNull KType type) {
        Intrinsics.checkNotNullParameter(serializersModule, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        KSerializer<Object> m4338x1378447b = AbstractC1312xe0b2b7ff.m4338x1378447b(serializersModule, type, true);
        if (m4338x1378447b != null) {
            return m4338x1378447b;
        }
        PlatformKt.platformSpecificSerializerNotRegistered(Platform_commonKt.kclass(type));
        throw new KotlinNothingValueException();
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        return (KSerializer<T>) serializer((KType) null);
    }

    public static final /* synthetic */ <T> KSerializer<T> serializer(SerializersModule serializersModule) {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.withModule");
        return (KSerializer<T>) serializer(serializersModule, (KType) null);
    }
}
