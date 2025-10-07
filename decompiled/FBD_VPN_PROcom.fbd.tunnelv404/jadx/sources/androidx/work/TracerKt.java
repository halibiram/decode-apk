package androidx.work;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0006H\u0080\bø\u0001\u0000¢\u0006\u0002\u0010\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"traced", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/work/Tracer;", "label", "", "block", "Lkotlin/Function0;", "(Landroidx/work/Tracer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TracerKt {
    public static final <T> T traced(@NotNull Tracer tracer, @NotNull String label, @NotNull Function0<? extends T> block) {
        Intrinsics.checkNotNullParameter(tracer, "<this>");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(block, "block");
        boolean isEnabled = tracer.isEnabled();
        if (isEnabled) {
            try {
                tracer.beginSection(label);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                if (isEnabled) {
                    tracer.endSection();
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        T invoke = block.invoke();
        InlineMarker.finallyStart(1);
        if (isEnabled) {
            tracer.endSection();
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }
}
