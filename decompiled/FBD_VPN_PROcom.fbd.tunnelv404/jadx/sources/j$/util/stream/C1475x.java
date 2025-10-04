package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.x, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1475x extends AbstractC1389f2 {
    boolean b;
    C1436p c;
    final /* synthetic */ C1480y d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1475x(C1480y c1480y, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = c1480y;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.c = new C1436p(interfaceC1424m22);
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        DoubleStream doubleStream = (DoubleStream) ((C1361a) this.d.o).apply(d);
        if (doubleStream != null) {
            try {
                boolean z = this.b;
                C1436p c1436p = this.c;
                if (!z) {
                    doubleStream.sequential().forEach(c1436p);
                } else {
                    j$.util.T spliterator = doubleStream.sequential().spliterator();
                    while (!this.a.n() && spliterator.tryAdvance((DoubleConsumer) c1436p)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    doubleStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (doubleStream != null) {
            doubleStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        this.b = true;
        return this.a.n();
    }
}
