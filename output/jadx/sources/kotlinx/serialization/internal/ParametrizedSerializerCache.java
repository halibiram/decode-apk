package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J;\u0010\u0003\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/serialization/internal/ParametrizedSerializerCache;", ExifInterface.GPS_DIRECTION_TRUE, "", "get", "Lkotlin/Result;", "Lkotlinx/serialization/KSerializer;", "key", "Lkotlin/reflect/KClass;", "types", "", "Lkotlin/reflect/KType;", "get-gIAlu-s", "(Lkotlin/reflect/KClass;Ljava/util/List;)Ljava/lang/Object;", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ParametrizedSerializerCache<T> {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: get-gIAlu-s$default, reason: not valid java name */
        public static /* synthetic */ Object m2387getgIAlus$default(ParametrizedSerializerCache parametrizedSerializerCache, KClass kClass, List list, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    list = CollectionsKt__CollectionsKt.emptyList();
                }
                return parametrizedSerializerCache.mo2386getgIAlus(kClass, list);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get-gIAlu-s");
        }
    }

    @NotNull
    /* renamed from: get-gIAlu-s, reason: not valid java name */
    Object mo2386getgIAlus(@NotNull KClass<Object> key, @NotNull List<? extends KType> types);
}
