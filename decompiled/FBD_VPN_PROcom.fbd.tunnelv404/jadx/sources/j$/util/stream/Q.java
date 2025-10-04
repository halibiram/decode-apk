package j$.util.stream;

import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes4.dex */
final class Q extends CountedCompleter {
    private final AbstractC1366b a;
    private Spliterator b;
    private final long c;
    private final ConcurrentHashMap d;
    private final P e;
    private final Q f;
    private I0 g;

    /* JADX INFO: Access modifiers changed from: protected */
    public Q(AbstractC1366b abstractC1366b, Spliterator spliterator, P p) {
        super(null);
        this.a = abstractC1366b;
        this.b = spliterator;
        this.c = AbstractC1381e.g(spliterator.estimateSize());
        this.d = new ConcurrentHashMap(Math.max(16, AbstractC1381e.b() << 1));
        this.e = p;
        this.f = null;
    }

    Q(Q q, Spliterator spliterator, Q q2) {
        super(q);
        this.a = q.a;
        this.b = spliterator;
        this.c = q.c;
        this.d = q.d;
        this.e = q.e;
        this.f = q2;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long j = this.c;
        boolean z = false;
        Q q = this;
        while (spliterator.estimateSize() > j && (trySplit = spliterator.trySplit()) != null) {
            Q q2 = new Q(q, trySplit, q.f);
            Q q3 = new Q(q, spliterator, q2);
            q.addToPendingCount(1);
            q3.addToPendingCount(1);
            q.d.put(q2, q3);
            if (q.f != null) {
                q2.addToPendingCount(1);
                if (q.d.replace(q.f, q, q2)) {
                    q.addToPendingCount(-1);
                } else {
                    q2.addToPendingCount(-1);
                }
            }
            if (z) {
                spliterator = trySplit;
                q = q2;
                q2 = q3;
            } else {
                q = q3;
            }
            z = !z;
            q2.fork();
        }
        if (q.getPendingCount() > 0) {
            C1441q c1441q = new C1441q(9);
            AbstractC1366b abstractC1366b = q.a;
            A0 N = abstractC1366b.N(abstractC1366b.F(spliterator), c1441q);
            q.a.V(spliterator, N);
            q.g = N.a();
            q.b = null;
        }
        q.tryComplete();
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 i0 = this.g;
        if (i0 != null) {
            i0.forEach(this.e);
            this.g = null;
        } else {
            Spliterator spliterator = this.b;
            if (spliterator != null) {
                this.a.V(spliterator, this.e);
                this.b = null;
            }
        }
        Q q = (Q) this.d.remove(this);
        if (q != null) {
            q.tryComplete();
        }
    }
}
