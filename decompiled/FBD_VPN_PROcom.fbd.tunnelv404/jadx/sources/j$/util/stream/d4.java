package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class d4 extends A implements e4 {
    @Override // j$.util.stream.AbstractC1366b
    final Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        if (EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            return O(abstractC1366b, spliterator, new C1372c0(15)).spliterator();
        }
        return new i4((j$.util.T) abstractC1366b.X(spliterator), 0);
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new g4(this, abstractC1366b, spliterator, intFunction).invoke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        return new c4(this, interfaceC1424m2, false);
    }

    @Override // j$.util.stream.e4
    public final f4 j(A0 a0, boolean z) {
        return new c4(this, a0, z);
    }
}
