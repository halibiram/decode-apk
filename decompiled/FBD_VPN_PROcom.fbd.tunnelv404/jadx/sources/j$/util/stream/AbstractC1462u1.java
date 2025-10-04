package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.concurrent.CountedCompleter;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
abstract class AbstractC1462u1 extends CountedCompleter implements InterfaceC1424m2 {
    protected final Spliterator a;
    protected final AbstractC1366b b;
    protected final long c;
    protected long d;
    protected long e;
    protected int f;
    protected int g;

    public /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    abstract AbstractC1462u1 b(Spliterator spliterator, long j, long j2);

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1462u1(Spliterator spliterator, AbstractC1366b abstractC1366b, int i) {
        this.a = spliterator;
        this.b = abstractC1366b;
        this.c = AbstractC1381e.g(spliterator.estimateSize());
        this.d = 0L;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1462u1(AbstractC1462u1 abstractC1462u1, Spliterator spliterator, long j, long j2, int i) {
        super(abstractC1462u1);
        this.a = spliterator;
        this.b = abstractC1462u1.b;
        this.c = abstractC1462u1.c;
        this.d = j;
        this.e = j2;
        if (j < 0 || j2 < 0 || (j + j2) - 1 >= i) {
            throw new IllegalArgumentException(String.format("offset and length interval [%d, %d + %d) is not within array size interval [0, %d)", Long.valueOf(j), Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i)));
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        Spliterator trySplit;
        Spliterator spliterator = this.a;
        AbstractC1462u1 abstractC1462u1 = this;
        while (spliterator.estimateSize() > abstractC1462u1.c && (trySplit = spliterator.trySplit()) != null) {
            abstractC1462u1.setPendingCount(1);
            long estimateSize = trySplit.estimateSize();
            abstractC1462u1.b(trySplit, abstractC1462u1.d, estimateSize).fork();
            abstractC1462u1 = abstractC1462u1.b(spliterator, abstractC1462u1.d + estimateSize, abstractC1462u1.e - estimateSize);
        }
        abstractC1462u1.b.V(spliterator, abstractC1462u1);
        abstractC1462u1.propagateCompletion();
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        long j2 = this.e;
        if (j > j2) {
            throw new IllegalStateException("size passed to Sink.begin exceeds array length");
        }
        int i = (int) this.d;
        this.f = i;
        this.g = i + ((int) j2);
    }
}
