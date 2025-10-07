package coil3.map;

import androidx.exifinterface.media.ExifInterface;
import coil3.request.Options;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002J\u001f\u0010\u0004\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0002\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcoil3/map/Mapper;", ExifInterface.GPS_DIRECTION_TRUE, "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "map", "data", "options", "Lcoil3/request/Options;", "(Ljava/lang/Object;Lcoil3/request/Options;)Ljava/lang/Object;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Mapper<T, V> {
    @Nullable
    V map(@NotNull T data, @NotNull Options options);
}
