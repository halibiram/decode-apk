package j$.util.stream;

import j$.util.Objects;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1387f0 extends AbstractC1399h2 {
    boolean b;
    C1367b0 c;
    final /* synthetic */ C1392g0 d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1387f0(C1392g0 c1392g0, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = c1392g0;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.c = new C1367b0(interfaceC1424m22);
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        this.a.l(-1L);
    }

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((C1361a) this.d.o).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.b;
                C1367b0 c1367b0 = this.c;
                if (!z) {
                    longStream.sequential().forEach(c1367b0);
                } else {
                    j$.util.Z spliterator = longStream.sequential().spliterator();
                    while (!this.a.n() && spliterator.tryAdvance((LongConsumer) c1367b0)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    longStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (longStream != null) {
            longStream.close();
        }
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        this.b = true;
        return this.a.n();
    }
}
