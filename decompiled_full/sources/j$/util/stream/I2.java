package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes4.dex */
final class I2 extends A2 {
    private ArrayList d;

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final void k() {
        AbstractC1344b.w(this.d, this.b);
        long size = this.d.size();
        InterfaceC1424m2 interfaceC1424m2 = this.a;
        interfaceC1424m2.l(size);
        if (!this.c) {
            ArrayList arrayList = this.d;
            Objects.requireNonNull(interfaceC1424m2);
            AbstractC1344b.q(arrayList, new C1361a(1, interfaceC1424m2));
        } else {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (interfaceC1424m2.n()) {
                    break;
                } else {
                    interfaceC1424m2.accept((InterfaceC1424m2) next);
                }
            }
        }
        interfaceC1424m2.k();
        this.d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.d.add(obj);
    }
}
