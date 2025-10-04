package androidx.work.impl.utils;

import androidx.annotation.RequiresApi;
import j$.time.Duration;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(26)
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"j$/time/Duration", "", "toMillisCompat", "(Lj$/time/Duration;)J", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "DurationApi26Impl")
/* loaded from: classes.dex */
public final class DurationApi26Impl {
    public static final long toMillisCompat(@NotNull Duration duration) {
        Intrinsics.checkNotNullParameter(duration, "<this>");
        return duration.toMillis();
    }
}
