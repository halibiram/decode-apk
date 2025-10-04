package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1431o extends AbstractC1379d2 {
    static M0 Y(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        C1411k c1411k = new C1411k(23);
        C1411k c1411k2 = new C1411k(24);
        C1411k c1411k3 = new C1411k(25);
        Objects.requireNonNull(c1411k);
        Objects.requireNonNull(c1411k2);
        Objects.requireNonNull(c1411k3);
        return new M0((Collection) new C1(EnumC1370b3.REFERENCE, c1411k3, c1411k2, c1411k, 3).c(abstractC1366b, spliterator));
    }

    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC1365a3.DISTINCT.n(abstractC1366b.J())) {
            return abstractC1366b.B(spliterator, false, intFunction);
        }
        if (EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            return Y(abstractC1366b, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C1427n0 c1427n0 = new C1427n0(2, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(c1427n0);
        new O(c1427n0, false).e(abstractC1366b, spliterator);
        Set keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new M0(keySet);
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        if (EnumC1365a3.DISTINCT.n(abstractC1366b.J())) {
            return abstractC1366b.X(spliterator);
        }
        if (EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            return Y(abstractC1366b, spliterator).spliterator();
        }
        return new C1435o3(abstractC1366b.X(spliterator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        Objects.requireNonNull(interfaceC1424m2);
        if (EnumC1365a3.DISTINCT.n(i)) {
            return interfaceC1424m2;
        }
        if (EnumC1365a3.SORTED.n(i)) {
            return new C1421m(interfaceC1424m2);
        }
        return new C1426n(interfaceC1424m2);
    }
}
