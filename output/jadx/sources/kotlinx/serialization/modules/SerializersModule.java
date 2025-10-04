package kotlinx.serialization.modules;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001J/\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005\"\b\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007JC\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005\"\b\b\u0000\u0010\u0002*\u00020\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0012\b\u0002\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\tH'¢\u0006\u0004\b\u0006\u0010\u000bJ9\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e\"\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00032\u0006\u0010\r\u001a\u00028\u0000H'¢\u0006\u0004\b\u000f\u0010\u0010J;\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0013\"\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0010\f\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H'¢\u0006\u0004\b\u000f\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H'¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001f\u001a\u00020\u001a8 X¡\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c\u0082\u0001\u0001 ¨\u0006!"}, d2 = {"Lkotlinx/serialization/modules/SerializersModule;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/reflect/KClass;", "kclass", "Lkotlinx/serialization/KSerializer;", "getContextual", "(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;", "kClass", "", "typeArgumentsSerializers", "(Lkotlin/reflect/KClass;Ljava/util/List;)Lkotlinx/serialization/KSerializer;", "baseClass", "value", "Lkotlinx/serialization/SerializationStrategy;", "getPolymorphic", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;", "", "serializedClassName", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlin/reflect/KClass;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;", "Lkotlinx/serialization/modules/SerializersModuleCollector;", "collector", "", "dumpTo", "(Lkotlinx/serialization/modules/SerializersModuleCollector;)V", "", "getHasInterfaceContextualSerializers$kotlinx_serialization_core", "()Z", "getHasInterfaceContextualSerializers$kotlinx_serialization_core$annotations", "()V", "hasInterfaceContextualSerializers", "Lkotlinx/serialization/modules/SerialModuleImpl;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class SerializersModule {
    public SerializersModule(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KSerializer getContextual$default(SerializersModule serializersModule, KClass kClass, List list, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                list = CollectionsKt__CollectionsKt.emptyList();
            }
            return serializersModule.getContextual(kClass, list);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContextual");
    }

    @InternalSerializationApi
    public static /* synthetic */ void getHasInterfaceContextualSerializers$kotlinx_serialization_core$annotations() {
    }

    @ExperimentalSerializationApi
    public abstract void dumpTo(@NotNull SerializersModuleCollector collector);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of overload with default parameter", replaceWith = @ReplaceWith(expression = "getContextual(kclass)", imports = {}))
    @ExperimentalSerializationApi
    public final /* synthetic */ KSerializer getContextual(KClass kclass) {
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        return getContextual(kclass, CollectionsKt__CollectionsKt.emptyList());
    }

    @ExperimentalSerializationApi
    @Nullable
    public abstract <T> KSerializer<T> getContextual(@NotNull KClass<T> kClass, @NotNull List<? extends KSerializer<?>> typeArgumentsSerializers);

    public abstract boolean getHasInterfaceContextualSerializers$kotlinx_serialization_core();

    @ExperimentalSerializationApi
    @Nullable
    public abstract <T> DeserializationStrategy<T> getPolymorphic(@NotNull KClass<? super T> baseClass, @Nullable String serializedClassName);

    @ExperimentalSerializationApi
    @Nullable
    public abstract <T> SerializationStrategy<T> getPolymorphic(@NotNull KClass<? super T> baseClass, @NotNull T value);
}
