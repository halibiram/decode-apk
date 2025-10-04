package j$.util.stream;

import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1374c2 extends AbstractC1384e2 {
    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !K() ? this : new AbstractC1379d2(this, EnumC1365a3.r, 1);
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

    @Override // j$.util.stream.AbstractC1384e2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!isParallel()) {
            T().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC1384e2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!isParallel()) {
            T().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }
}
