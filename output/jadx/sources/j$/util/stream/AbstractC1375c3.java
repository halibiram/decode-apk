package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.c3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
abstract class AbstractC1375c3 implements Spliterator {
    final boolean a;
    final AbstractC1366b b;
    private Supplier c;
    Spliterator d;
    InterfaceC1424m2 e;
    BooleanSupplier f;
    long g;
    AbstractC1376d h;
    boolean i;

    abstract void d();

    abstract AbstractC1375c3 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1344b.e(this, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1375c3(AbstractC1366b abstractC1366b, Supplier supplier, boolean z) {
        this.b = abstractC1366b;
        this.c = supplier;
        this.d = null;
        this.a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1375c3(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z) {
        this.b = abstractC1366b;
        this.c = null;
        this.d = spliterator;
        this.a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.d == null) {
            this.d = (Spliterator) this.c.get();
            this.c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        AbstractC1376d abstractC1376d = this.h;
        if (abstractC1376d == null) {
            if (this.i) {
                return false;
            }
            c();
            d();
            this.g = 0L;
            this.e.l(this.d.getExactSizeIfKnown());
            return b();
        }
        long j = this.g + 1;
        this.g = j;
        boolean z = j < abstractC1376d.count();
        if (z) {
            return z;
        }
        this.g = 0L;
        this.h.clear();
        return b();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.a || this.h != null || this.i) {
            return null;
        }
        c();
        Spliterator trySplit = this.d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return e(trySplit);
    }

    private boolean b() {
        while (this.h.count() == 0) {
            if (this.e.n() || !this.f.getAsBoolean()) {
                if (this.i) {
                    return false;
                }
                this.e.k();
                this.i = true;
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (EnumC1365a3.SIZED.n(this.b.J())) {
            return this.d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int w = EnumC1365a3.w(this.b.J()) & EnumC1365a3.f;
        return (w & 64) != 0 ? (w & (-16449)) | (this.d.characteristics() & 16448) : w;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC1344b.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.d);
    }
}
