package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import j$.time.Duration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(26)
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/lifecycle/Api26Impl;", "", "<init>", "()V", "j$/time/Duration", "timeout", "", "toMillis", "(Lj$/time/Duration;)J", "lifecycle-livedata_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api26Impl {

    @NotNull
    public static final Api26Impl INSTANCE = new Api26Impl();

    private Api26Impl() {
    }

    public final long toMillis(@NotNull Duration timeout) {
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        return timeout.toMillis();
    }
}
