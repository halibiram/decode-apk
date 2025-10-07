package j$.util.stream;

import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes4.dex */
public final class Collectors {
    static final Set a;

    static {
        EnumC1396h enumC1396h = EnumC1396h.CONCURRENT;
        EnumC1396h enumC1396h2 = EnumC1396h.UNORDERED;
        EnumC1396h enumC1396h3 = EnumC1396h.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(enumC1396h, enumC1396h2, enumC1396h3));
        Collections.unmodifiableSet(EnumSet.of(enumC1396h, enumC1396h2));
        a = Collections.unmodifiableSet(EnumSet.of(enumC1396h3));
        Collections.unmodifiableSet(EnumSet.of(enumC1396h2, enumC1396h3));
        Collections.emptySet();
        Collections.unmodifiableSet(EnumSet.of(enumC1396h2));
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new C1416l(new C1411k(19), new C1411k(20), new C1411k(0), a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }
}
