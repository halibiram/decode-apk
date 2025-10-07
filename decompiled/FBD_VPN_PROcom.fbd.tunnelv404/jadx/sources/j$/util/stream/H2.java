package j$.util.stream;

import j$.util.Comparator;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes4.dex */
final class H2 extends AbstractC1379d2 {
    private final boolean n;
    private final Comparator o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public H2(AbstractC1384e2 abstractC1384e2) {
        super(abstractC1384e2, EnumC1365a3.q | EnumC1365a3.o, 0);
        this.n = true;
        this.o = Comparator.CC.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public H2(AbstractC1384e2 abstractC1384e2, java.util.Comparator comparator) {
        super(abstractC1384e2, EnumC1365a3.q | EnumC1365a3.p, 0);
        this.n = false;
        this.o = (java.util.Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        Objects.requireNonNull(interfaceC1424m2);
        if (EnumC1365a3.SORTED.n(i) && this.n) {
            return interfaceC1424m2;
        }
        boolean n = EnumC1365a3.SIZED.n(i);
        java.util.Comparator comparator = this.o;
        if (n) {
            return new A2(interfaceC1424m2, comparator);
        }
        return new A2(interfaceC1424m2, comparator);
    }

    @Override // j$.util.stream.AbstractC1366b
    public final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC1365a3.SORTED.n(abstractC1366b.J()) && this.n) {
            return abstractC1366b.B(spliterator, false, intFunction);
        }
        Object[] o = abstractC1366b.B(spliterator, true, intFunction).o(intFunction);
        Arrays.sort(o, this.o);
        return new L0(o);
    }
}
