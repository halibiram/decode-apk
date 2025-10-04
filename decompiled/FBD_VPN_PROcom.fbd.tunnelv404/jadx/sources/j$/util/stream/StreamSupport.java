package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final class StreamSupport {
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.Stream, j$.util.stream.b] */
    public static Stream d(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new AbstractC1366b(spliterator, EnumC1365a3.m(spliterator), z);
    }

    public static <T> Stream<T> stream(Supplier<? extends Spliterator<T>> supplier, int i, boolean z) {
        Objects.requireNonNull(supplier);
        return (Stream<T>) new AbstractC1366b(supplier, i & EnumC1365a3.f, z);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.IntStream, j$.util.stream.b] */
    public static IntStream b(j$.util.W w) {
        return new AbstractC1366b((Spliterator) w, EnumC1365a3.m(w), false);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.b, j$.util.stream.LongStream] */
    public static LongStream c(j$.util.Z z) {
        return new AbstractC1366b((Spliterator) z, EnumC1365a3.m(z), false);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.DoubleStream, j$.util.stream.b] */
    public static DoubleStream a(j$.util.T t) {
        return new AbstractC1366b((Spliterator) t, EnumC1365a3.m(t), false);
    }
}
