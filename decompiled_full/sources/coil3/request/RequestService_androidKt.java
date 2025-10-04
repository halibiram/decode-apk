package coil3.request;

import coil3.ImageLoader;
import coil3.content.Logger;
import coil3.content.SystemCallbacks;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000¨\u0006\b"}, d2 = {"RequestService", "Lcoil3/request/RequestService;", "imageLoader", "Lcoil3/ImageLoader;", "systemCallbacks", "Lcoil3/util/SystemCallbacks;", "logger", "Lcoil3/util/Logger;", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RequestService_androidKt {
    @NotNull
    public static final RequestService RequestService(@NotNull ImageLoader imageLoader, @NotNull SystemCallbacks systemCallbacks, @Nullable Logger logger) {
        return new AndroidRequestService(imageLoader, systemCallbacks, logger);
    }
}
