package androidx.test.platform.tracing;

import androidx.annotation.NonNull;
import androidx.test.platform.tracing.Tracer;
import androidx.tracing.Trace;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
class AndroidXTracer implements Tracer {
    private static final int MAX_SECTION_NAME_LEN = 127;
    private static final String TAG = "AndroidXTracer";

    /* loaded from: classes.dex */
    public static class AndroidXTracerSpan implements Tracer.Span {
        private final ArrayDeque<AndroidXTracerSpan> nestedSpans;

        private AndroidXTracerSpan() {
            this.nestedSpans = new ArrayDeque<>();
        }

        @Override // androidx.test.platform.tracing.Tracer.Span
        @NonNull
        public Tracer.Span beginChildSpan(@NonNull String str) {
            Trace.beginSection(AndroidXTracer.sanitizeSpanName(str));
            AndroidXTracerSpan androidXTracerSpan = new AndroidXTracerSpan();
            this.nestedSpans.add(androidXTracerSpan);
            return androidXTracerSpan;
        }

        @Override // androidx.test.platform.tracing.Tracer.Span, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            while (true) {
                AndroidXTracerSpan pollLast = this.nestedSpans.pollLast();
                if (pollLast != null) {
                    pollLast.close();
                } else {
                    Trace.endSection();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static String sanitizeSpanName(@NonNull String str) {
        if (str.length() > 127) {
            return str.substring(0, 127);
        }
        return str;
    }

    @Override // androidx.test.platform.tracing.Tracer
    @NonNull
    public Tracer.Span beginSpan(@NonNull String str) {
        Trace.beginSection(sanitizeSpanName(str));
        return new AndroidXTracerSpan();
    }

    @CanIgnoreReturnValue
    public AndroidXTracer enableTracing() {
        try {
            Trace.forceEnableAppTracing();
        } catch (NoSuchMethodError | RuntimeException unused) {
        }
        return this;
    }
}
