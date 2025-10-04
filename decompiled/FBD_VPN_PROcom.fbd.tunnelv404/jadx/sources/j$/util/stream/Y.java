package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class Y extends AbstractC1362a0 {
    @Override // j$.util.stream.AbstractC1366b
    final Spliterator M(Supplier supplier) {
        return new C1430n3(supplier);
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !K() ? this : new C1465v(this, EnumC1365a3.r, 2);
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean Q() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC1362a0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (!isParallel()) {
            AbstractC1362a0.Y(T()).forEachRemaining(intConsumer);
        } else {
            super.forEach(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC1362a0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (!isParallel()) {
            AbstractC1362a0.Y(T()).forEachRemaining(intConsumer);
        } else {
            super.forEachOrdered(intConsumer);
        }
    }
}
