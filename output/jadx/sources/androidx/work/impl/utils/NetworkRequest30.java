package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.net.NetworkSpecifier;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@RequiresApi(30)
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/utils/NetworkRequest30;", "", "()V", "getNetworkSpecifier", "Landroid/net/NetworkSpecifier;", "request", "Landroid/net/NetworkRequest;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NetworkRequest30 {

    @NotNull
    public static final NetworkRequest30 INSTANCE = new NetworkRequest30();

    private NetworkRequest30() {
    }

    @Nullable
    public final NetworkSpecifier getNetworkSpecifier(@NotNull NetworkRequest request) {
        NetworkSpecifier networkSpecifier;
        Intrinsics.checkNotNullParameter(request, "request");
        networkSpecifier = request.getNetworkSpecifier();
        return networkSpecifier;
    }
}
