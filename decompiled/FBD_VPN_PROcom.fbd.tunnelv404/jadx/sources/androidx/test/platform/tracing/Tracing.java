package androidx.test.platform.tracing;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.test.internal.util.Checks;
import androidx.test.platform.tracing.Tracer;
import com.google.errorprone.annotations.MustBeClosed;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class Tracing {
    private static final String TAG = "Tracing";
    private static final Tracing singleton = new Tracing();
    private final List<Tracer> tracers = DesugarCollections.synchronizedList(new ArrayList());

    /* loaded from: classes.dex */
    public class TracerSpan implements Tracer.Span {
        private final Map<Tracer, Tracer.Span> spans;

        @Override // androidx.test.platform.tracing.Tracer.Span
        @NonNull
        public Tracer.Span beginChildSpan(@NonNull String str) {
            HashMap hashMap;
            Checks.checkNotNull(str);
            synchronized (Tracing.this.tracers) {
                try {
                    hashMap = new HashMap(Tracing.this.tracers.size());
                    for (Tracer tracer : Tracing.this.tracers) {
                        Tracer.Span span = this.spans.get(tracer);
                        if (span != null) {
                            hashMap.put(tracer, Tracing.createUnmanagedChildSpan(span, str));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new TracerSpan(hashMap);
        }

        @Override // androidx.test.platform.tracing.Tracer.Span, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<Tracer.Span> it = this.spans.values().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }

        private TracerSpan(@NonNull Map<Tracer, Tracer.Span> map) {
            this.spans = map;
        }
    }

    private Tracing() {
        registerTracer(new AndroidXTracer().enableTracing());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Tracer.Span createUnmanagedChildSpan(Tracer.Span span, String str) {
        return span.beginChildSpan(str);
    }

    private static Tracer.Span createUnmanagedSpan(Tracer tracer, String str) {
        return tracer.beginSpan(str);
    }

    @NonNull
    public static Tracing getInstance() {
        return singleton;
    }

    @NonNull
    @MustBeClosed
    public Tracer.Span beginSpan(@NonNull String str) {
        HashMap hashMap;
        Checks.checkNotNull(str);
        synchronized (this.tracers) {
            try {
                hashMap = new HashMap(this.tracers.size());
                for (Tracer tracer : this.tracers) {
                    hashMap.put(tracer, createUnmanagedSpan(tracer, str));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new TracerSpan(hashMap);
    }

    public void registerTracer(@NonNull Tracer tracer) {
        Checks.checkNotNull(tracer, "Tracer cannot be null.");
        if (this.tracers.contains(tracer)) {
            tracer.getClass().toString();
        } else {
            tracer.getClass().toString();
            this.tracers.add(tracer);
        }
    }

    public void unregisterTracer(Tracer tracer) {
        Class<?> cls;
        this.tracers.remove(tracer);
        if (tracer == null) {
            cls = null;
        } else {
            cls = tracer.getClass();
        }
        Objects.toString(cls);
    }
}
