package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006*\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0005H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\t*\u0006\u0012\u0002\b\u00030\nH\u0081\b¢\u0006\u0004\b\u000b\u0010\f\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\r\"\u0004\b\u0000\u0010\t*\u0006\u0012\u0002\b\u00030\rH\u0081\b¢\u0006\u0004\b\u000b\u0010\u000e\u001a$\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\u0004\b\u0000\u0010\t*\u0006\u0012\u0002\b\u00030\u000fH\u0081\b¢\u0006\u0004\b\u000b\u0010\u0010\u001a\u0017\u0010\u0013\u001a\u00020\u0012*\u0006\u0012\u0002\b\u00030\u0011H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0017\u0010\u0015\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u0011H\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0015\u0010\u0018\u001a\u0019\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0011*\u00020\u0019H\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0013\u0010\u001e\u001a\u00020\u0019*\u00020\u001dH\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a=\u0010%\u001a\u00020$\"\u0004\b\u0000\u0010\t\"\u0004\b\u0001\u0010 *\b\u0012\u0004\u0012\u00028\u00000!2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\"H\u0080\bø\u0001\u0000¢\u0006\u0004\b%\u0010&\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006'"}, d2 = {"Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "", "cachedSerialNames", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;", "", "", "compactArray", "(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/serialization/KSerializer;", "cast", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/SerializationStrategy;", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/DeserializationStrategy;)Lkotlinx/serialization/DeserializationStrategy;", "Lkotlin/reflect/KClass;", "", "serializerNotRegistered", "(Lkotlin/reflect/KClass;)Ljava/lang/Void;", "notRegisteredMessage", "(Lkotlin/reflect/KClass;)Ljava/lang/String;", "className", "(Ljava/lang/String;)Ljava/lang/String;", "Lkotlin/reflect/KType;", "", "kclass", "(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;", "Lkotlin/reflect/KTypeProjection;", "typeOrThrow", "(Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;", "K", "", "Lkotlin/Function1;", "selector", "", "elementsHashCodeBy", "(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)I", "kotlinx-serialization-core"}, k = 2, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPlatform.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1#2:191\n37#3,2:192\n1797#4,3:194\n*S KotlinDebug\n*F\n+ 1 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n74#1:192,2\n160#1:194,3\n*E\n"})
/* loaded from: classes3.dex */
public final class Platform_commonKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final SerialDescriptor[] f2620xfbe0c504 = new SerialDescriptor[0];

    @NotNull
    public static final Set<String> cachedSerialNames(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        if (serialDescriptor instanceof CachedNames) {
            return ((CachedNames) serialDescriptor).getSerialNames();
        }
        HashSet hashSet = new HashSet(serialDescriptor.getElementsCount());
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            hashSet.add(serialDescriptor.getElementName(i));
        }
        return hashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @PublishedApi
    @NotNull
    public static final <T> DeserializationStrategy<T> cast(@NotNull DeserializationStrategy<?> deserializationStrategy) {
        Intrinsics.checkNotNullParameter(deserializationStrategy, "<this>");
        return deserializationStrategy;
    }

    @NotNull
    public static final SerialDescriptor[] compactArray(@Nullable List<? extends SerialDescriptor> list) {
        SerialDescriptor[] serialDescriptorArr;
        List<? extends SerialDescriptor> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            list = null;
        }
        if (list == null || (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) == null) {
            return f2620xfbe0c504;
        }
        return serialDescriptorArr;
    }

    public static final <T, K> int elementsHashCodeBy(@NotNull Iterable<? extends T> iterable, @NotNull Function1<? super T, ? extends K> selector) {
        int i;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        Iterator<? extends T> it = iterable.iterator();
        int i2 = 1;
        while (it.hasNext()) {
            int i3 = i2 * 31;
            K invoke = selector.invoke(it.next());
            if (invoke != null) {
                i = invoke.hashCode();
            } else {
                i = 0;
            }
            i2 = i3 + i;
        }
        return i2;
    }

    @NotNull
    public static final KClass<Object> kclass(@NotNull KType kType) {
        Intrinsics.checkNotNullParameter(kType, "<this>");
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KClass) {
            return (KClass) classifier;
        }
        if (classifier instanceof KTypeParameter) {
            throw new IllegalArgumentException("Captured type parameter " + classifier + " from generic non-reified function. Such functionality cannot be supported because " + classifier + " is erased, either specify serializer explicitly or make calling function inline with reified " + classifier + '.');
        }
        throw new IllegalArgumentException("Only KClass supported as classifier, got " + classifier);
    }

    @NotNull
    public static final String notRegisteredMessage(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String simpleName = kClass.getSimpleName();
        if (simpleName == null) {
            simpleName = "<local class name not available>";
        }
        return notRegisteredMessage(simpleName);
    }

    @NotNull
    public static final Void serializerNotRegistered(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        throw new SerializationException(notRegisteredMessage(kClass));
    }

    @NotNull
    public static final KType typeOrThrow(@NotNull KTypeProjection kTypeProjection) {
        Intrinsics.checkNotNullParameter(kTypeProjection, "<this>");
        KType type = kTypeProjection.getType();
        if (type != null) {
            return type;
        }
        throw new IllegalArgumentException(("Star projections in type arguments are not allowed, but had " + kTypeProjection.getType()).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @PublishedApi
    @NotNull
    public static final <T> KSerializer<T> cast(@NotNull KSerializer<?> kSerializer) {
        Intrinsics.checkNotNullParameter(kSerializer, "<this>");
        return kSerializer;
    }

    @NotNull
    public static final String notRegisteredMessage(@NotNull String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        return "Serializer for class '" + className + "' is not found.\nPlease ensure that class is marked as '@Serializable' and that the serialization compiler plugin is applied.\n";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @PublishedApi
    @NotNull
    public static final <T> SerializationStrategy<T> cast(@NotNull SerializationStrategy<?> serializationStrategy) {
        Intrinsics.checkNotNullParameter(serializationStrategy, "<this>");
        return serializationStrategy;
    }
}
