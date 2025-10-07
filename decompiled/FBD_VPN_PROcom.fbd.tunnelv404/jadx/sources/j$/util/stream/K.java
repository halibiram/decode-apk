package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
final class K extends AbstractC1371c {
    private final E j;
    private final boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public K(E e, boolean z, AbstractC1366b abstractC1366b, Spliterator spliterator) {
        super(abstractC1366b, spliterator);
        this.k = z;
        this.j = e;
    }

    K(K k, Spliterator spliterator) {
        super(k, spliterator);
        this.k = k.k;
        this.j = k.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new K(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC1371c
    protected final Object j() {
        return this.j.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        AbstractC1366b abstractC1366b = this.a;
        M3 m3 = (M3) this.j.d.get();
        abstractC1366b.V(this.b, m3);
        Object obj = m3.get();
        if (!this.k) {
            if (obj != null) {
                AtomicReference atomicReference = this.h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        AbstractC1381e abstractC1381e = this;
        while (true) {
            if (abstractC1381e == null) {
                AtomicReference atomicReference2 = this.h;
                while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
                }
            } else {
                AbstractC1381e abstractC1381e2 = (AbstractC1381e) abstractC1381e.getCompleter();
                if (abstractC1381e2 != null && abstractC1381e2.d != abstractC1381e) {
                    i();
                    break;
                }
                abstractC1381e = abstractC1381e2;
            }
        }
        return obj;
    }

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.k) {
            K k = (K) this.d;
            K k2 = null;
            while (true) {
                if (k != k2) {
                    Object c = k.c();
                    if (c == null || !this.j.c.test(c)) {
                        k2 = k;
                        k = (K) this.e;
                    } else {
                        f(c);
                        AbstractC1381e abstractC1381e = this;
                        while (true) {
                            if (abstractC1381e == null) {
                                AtomicReference atomicReference = this.h;
                                while (!atomicReference.compareAndSet(null, c) && atomicReference.get() == null) {
                                }
                            } else {
                                AbstractC1381e abstractC1381e2 = (AbstractC1381e) abstractC1381e.getCompleter();
                                if (abstractC1381e2 != null && abstractC1381e2.d != abstractC1381e) {
                                    i();
                                    break;
                                }
                                abstractC1381e = abstractC1381e2;
                            }
                        }
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}
