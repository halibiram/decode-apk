package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes4.dex */
final class G2 extends AbstractC1402i0 {
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        Objects.requireNonNull(interfaceC1424m2);
        return EnumC1365a3.SORTED.n(i) ? interfaceC1424m2 : EnumC1365a3.SIZED.n(i) ? new AbstractC1399h2(interfaceC1424m2) : new AbstractC1399h2(interfaceC1424m2);
    }

    @Override // j$.util.stream.AbstractC1366b
    public final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC1365a3.SORTED.n(abstractC1366b.J())) {
            return abstractC1366b.B(spliterator, false, intFunction);
        }
        long[] jArr = (long[]) ((G0) abstractC1366b.B(spliterator, true, intFunction)).d();
        Arrays.sort(jArr);
        return new C1428n1(jArr);
    }
}
