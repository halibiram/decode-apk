package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
abstract class AbstractC1371c extends AbstractC1381e {
    protected final AtomicReference h;
    protected volatile boolean i;

    protected abstract Object j();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1371c(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        super(abstractC1366b, spliterator);
        this.h = new AtomicReference(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1371c(AbstractC1371c abstractC1371c, Spliterator spliterator) {
        super(abstractC1371c, spliterator);
        this.h = abstractC1371c.h;
    }

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object obj;
        Spliterator trySplit;
        Spliterator spliterator = this.b;
        long estimateSize = spliterator.estimateSize();
        long j = this.c;
        if (j == 0) {
            j = AbstractC1381e.g(estimateSize);
            this.c = j;
        }
        AtomicReference atomicReference = this.h;
        boolean z = false;
        AbstractC1371c abstractC1371c = this;
        while (true) {
            obj = atomicReference.get();
            if (obj != null) {
                break;
            }
            boolean z2 = abstractC1371c.i;
            if (!z2) {
                CountedCompleter<?> completer = abstractC1371c.getCompleter();
                while (true) {
                    AbstractC1371c abstractC1371c2 = (AbstractC1371c) ((AbstractC1381e) completer);
                    if (z2 || abstractC1371c2 == null) {
                        break;
                    }
                    z2 = abstractC1371c2.i;
                    completer = abstractC1371c2.getCompleter();
                }
            }
            if (z2) {
                obj = abstractC1371c.j();
                break;
            }
            if (estimateSize <= j || (trySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC1371c abstractC1371c3 = (AbstractC1371c) abstractC1371c.e(trySplit);
            abstractC1371c.d = abstractC1371c3;
            AbstractC1371c abstractC1371c4 = (AbstractC1371c) abstractC1371c.e(spliterator);
            abstractC1371c.e = abstractC1371c4;
            abstractC1371c.setPendingCount(1);
            if (z) {
                spliterator = trySplit;
                abstractC1371c = abstractC1371c3;
                abstractC1371c3 = abstractC1371c4;
            } else {
                abstractC1371c = abstractC1371c4;
            }
            z = !z;
            abstractC1371c3.fork();
            estimateSize = spliterator.estimateSize();
        }
        obj = abstractC1371c.a();
        abstractC1371c.f(obj);
        abstractC1371c.tryComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final void f(Object obj) {
        if (!d()) {
            super.f(obj);
        } else if (obj != null) {
            AtomicReference atomicReference = this.h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return c();
    }

    @Override // j$.util.stream.AbstractC1381e
    public final Object c() {
        if (d()) {
            Object obj = this.h.get();
            return obj == null ? j() : obj;
        }
        return super.c();
    }

    protected void h() {
        this.i = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i() {
        AbstractC1371c abstractC1371c = this;
        for (AbstractC1371c abstractC1371c2 = (AbstractC1371c) ((AbstractC1381e) getCompleter()); abstractC1371c2 != null; abstractC1371c2 = (AbstractC1371c) ((AbstractC1381e) abstractC1371c2.getCompleter())) {
            if (abstractC1371c2.d == abstractC1371c) {
                AbstractC1371c abstractC1371c3 = (AbstractC1371c) abstractC1371c2.e;
                if (!abstractC1371c3.i) {
                    abstractC1371c3.h();
                }
            }
            abstractC1371c = abstractC1371c2;
        }
    }
}
