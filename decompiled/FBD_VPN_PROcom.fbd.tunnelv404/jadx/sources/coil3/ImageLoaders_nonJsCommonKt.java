package coil3;

import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import defpackage.C0877x93f02057;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"executeBlocking", "Lcoil3/request/ImageResult;", "Lcoil3/ImageLoader;", "request", "Lcoil3/request/ImageRequest;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ImageLoaders_nonJsCommonKt {
    @NotNull
    public static final ImageResult executeBlocking(@NotNull ImageLoader imageLoader, @NotNull ImageRequest imageRequest) {
        return (ImageResult) BuildersKt.runBlocking$default(null, new C0877x93f02057(imageLoader, imageRequest, null), 1, null);
    }
}
