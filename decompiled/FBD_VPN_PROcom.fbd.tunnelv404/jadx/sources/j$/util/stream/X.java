package j$.util.stream;

import j$.util.Objects;
import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
final class X extends AbstractC1394g2 {
    boolean b;
    T c;
    final /* synthetic */ V d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X(V v, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = v;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.c = new T(interfaceC1424m22);
    }

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((O0) this.d.o).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.b;
                T t = this.c;
                if (!z) {
                    intStream.sequential().forEach(t);
                } else {
                    j$.util.W spliterator = intStream.sequential().spliterator();
                    while (!this.a.n() && spliterator.tryAdvance((IntConsumer) t)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        this.b = true;
        return this.a.n();
    }
}
