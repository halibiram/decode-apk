package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.z, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1485z extends B {
    @Override // j$.util.stream.AbstractC1366b
    final Spliterator M(Supplier supplier) {
        return new C1430n3(supplier);
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !K() ? this : new C1460u(this, EnumC1365a3.r, 1);
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ DoubleStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ DoubleStream sequential() {
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

    @Override // j$.util.stream.B, j$.util.stream.DoubleStream
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (!isParallel()) {
            B.Y(T()).forEachRemaining(doubleConsumer);
        } else {
            super.forEach(doubleConsumer);
        }
    }

    @Override // j$.util.stream.B, j$.util.stream.DoubleStream
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (!isParallel()) {
            B.Y(T()).forEachRemaining(doubleConsumer);
        } else {
            super.forEachOrdered(doubleConsumer);
        }
    }
}
