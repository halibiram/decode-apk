package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1416l implements Collector {
    private final C1411k a;
    private final C1411k b;
    private final C1411k c;
    private final C1411k d;
    private final Set e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1416l(C1411k c1411k, C1411k c1411k2, C1411k c1411k3, Set set) {
        Set set2 = Collectors.a;
        C1411k c1411k4 = new C1411k(1);
        this.a = c1411k;
        this.b = c1411k2;
        this.c = c1411k3;
        this.d = c1411k4;
        this.e = set;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.b;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.a;
    }

    @Override // j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.d;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.e;
    }
}
