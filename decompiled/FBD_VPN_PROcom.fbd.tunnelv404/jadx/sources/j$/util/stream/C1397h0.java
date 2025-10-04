package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.h0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1397h0 extends AbstractC1407j0 {
    @Override // j$.util.stream.AbstractC1366b
    final Spliterator M(Supplier supplier) {
        return new C1430n3(supplier);
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !K() ? this : new C1470w(this, EnumC1365a3.r, 4);
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ LongStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ LongStream sequential() {
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

    @Override // j$.util.stream.AbstractC1407j0, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (!isParallel()) {
            AbstractC1407j0.Y(T()).forEachRemaining(longConsumer);
        } else {
            super.forEach(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC1407j0, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (!isParallel()) {
            AbstractC1407j0.Y(T()).forEachRemaining(longConsumer);
        } else {
            super.forEachOrdered(longConsumer);
        }
    }
}
