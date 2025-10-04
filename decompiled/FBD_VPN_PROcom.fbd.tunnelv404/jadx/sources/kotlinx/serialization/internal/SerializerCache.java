package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b`\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006H&J\u0014\u0010\u0007\u001a\u00020\b2\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0016¨\u0006\t"}, d2 = {"Lkotlinx/serialization/internal/SerializerCache;", ExifInterface.GPS_DIRECTION_TRUE, "", "get", "Lkotlinx/serialization/KSerializer;", "key", "Lkotlin/reflect/KClass;", "isStored", "", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface SerializerCache<T> {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static <T> boolean isStored(@NotNull SerializerCache<T> serializerCache, @NotNull KClass<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return false;
        }
    }

    @Nullable
    KSerializer<T> get(@NotNull KClass<Object> key);

    boolean isStored(@NotNull KClass<?> key);
}
