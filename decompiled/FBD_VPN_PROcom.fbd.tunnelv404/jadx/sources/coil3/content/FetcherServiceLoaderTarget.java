package coil3.content;

import androidx.exifinterface.media.ExifInterface;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import coil3.annotation.InternalCoilApi;
import coil3.fetch.Fetcher;
import kotlin.Metadata;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bg\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002J\u0010\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H&J\u0010\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006H&J\b\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcoil3/util/FetcherServiceLoaderTarget;", ExifInterface.GPS_DIRECTION_TRUE, "", "factory", "Lcoil3/fetch/Fetcher$Factory;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Lkotlin/reflect/KClass;", "priority", "", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@InternalCoilApi
/* loaded from: classes.dex */
public interface FetcherServiceLoaderTarget<T> {
    @Nullable
    Fetcher.Factory<T> factory();

    int priority();

    @Nullable
    KClass<T> type();
}
