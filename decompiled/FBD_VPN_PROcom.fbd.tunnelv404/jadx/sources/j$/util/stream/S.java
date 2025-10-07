package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes4.dex */
final class S extends CountedCompleter {
    private Spliterator a;
    private final InterfaceC1424m2 b;
    private final AbstractC1366b c;
    private long d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public S(AbstractC1366b abstractC1366b, Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        super(null);
        this.b = interfaceC1424m2;
        this.c = abstractC1366b;
        this.a = spliterator;
        this.d = 0L;
    }

    S(S s, Spliterator spliterator) {
        super(s);
        this.a = spliterator;
        this.b = s.b;
        this.d = s.d;
        this.c = s.c;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        long estimateSize = spliterator.estimateSize();
        long j = this.d;
        if (j == 0) {
            j = AbstractC1381e.g(estimateSize);
            this.d = j;
        }
        boolean n = EnumC1365a3.SHORT_CIRCUIT.n(this.c.J());
        InterfaceC1424m2 interfaceC1424m2 = this.b;
        boolean z = false;
        S s = this;
        while (true) {
            if (n && interfaceC1424m2.n()) {
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            S s2 = new S(s, trySplit);
            s.addToPendingCount(1);
            if (z) {
                spliterator = trySplit;
            } else {
                S s3 = s;
                s = s2;
                s2 = s3;
            }
            z = !z;
            s.fork();
            s = s2;
            estimateSize = spliterator.estimateSize();
        }
        s.c.z(spliterator, interfaceC1424m2);
        s.a = null;
        s.propagateCompletion();
    }
}
