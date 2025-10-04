package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.w2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1473w2 extends AbstractC1371c {
    private final AbstractC1366b j;
    private final IntFunction k;
    private final long l;
    private final long m;
    private long n;
    private volatile boolean o;

    @Override // j$.util.stream.AbstractC1371c
    protected final void h() {
        this.i = true;
        if (this.o) {
            f(AbstractC1471w0.K(this.j.H()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e9, code lost:
    
        if (r2 >= r0) goto L51;
     */
    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        C1473w2 c1473w2;
        I0 K;
        AbstractC1381e abstractC1381e = this.d;
        if (!(abstractC1381e == null)) {
            this.n = ((C1473w2) abstractC1381e).n + ((C1473w2) this.e).n;
            if (this.i) {
                this.n = 0L;
                K = AbstractC1471w0.K(this.j.H());
            } else {
                K = this.n == 0 ? AbstractC1471w0.K(this.j.H()) : ((C1473w2) this.d).n == 0 ? (I0) ((C1473w2) this.e).c() : AbstractC1471w0.I(this.j.H(), (I0) ((C1473w2) this.d).c(), (I0) ((C1473w2) this.e).c());
            }
            I0 i0 = K;
            if (d()) {
                i0 = i0.h(this.l, this.m >= 0 ? Math.min(i0.count(), this.l + this.m) : this.n, this.k);
            }
            f(i0);
            this.o = true;
        }
        if (this.m >= 0 && !d()) {
            long j = this.l + this.m;
            long k = this.o ? this.n : k(j);
            if (k < j) {
                C1473w2 c1473w22 = (C1473w2) ((AbstractC1381e) getCompleter());
                C1473w2 c1473w23 = this;
                while (true) {
                    if (c1473w22 != null) {
                        if (c1473w23 == c1473w22.e && (c1473w2 = (C1473w2) c1473w22.d) != null) {
                            k += c1473w2.k(j);
                            if (k >= j) {
                                break;
                            }
                        }
                        c1473w23 = c1473w22;
                        c1473w22 = (C1473w2) ((AbstractC1381e) c1473w22.getCompleter());
                    }
                }
            }
            i();
        }
        super.onCompletion(countedCompleter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1473w2(AbstractC1366b abstractC1366b, AbstractC1366b abstractC1366b2, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC1366b2, spliterator);
        this.j = abstractC1366b;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    C1473w2(C1473w2 c1473w2, Spliterator spliterator) {
        super(c1473w2, spliterator);
        this.j = c1473w2.j;
        this.k = c1473w2.k;
        this.l = c1473w2.l;
        this.m = c1473w2.m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new C1473w2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC1371c
    protected final Object j() {
        return AbstractC1471w0.K(this.j.H());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        if (d()) {
            A0 N = this.j.N(EnumC1365a3.SIZED.s(this.j.c) ? this.j.F(this.b) : -1L, this.k);
            InterfaceC1424m2 R = this.j.R(this.a.J(), N);
            AbstractC1366b abstractC1366b = this.a;
            abstractC1366b.A(this.b, abstractC1366b.W(R));
            return N.a();
        }
        A0 N2 = this.j.N(-1L, this.k);
        if (this.l == 0) {
            InterfaceC1424m2 R2 = this.j.R(this.a.J(), N2);
            AbstractC1366b abstractC1366b2 = this.a;
            abstractC1366b2.A(this.b, abstractC1366b2.W(R2));
        } else {
            this.a.V(this.b, N2);
        }
        I0 a = N2.a();
        this.n = a.count();
        this.o = true;
        this.b = null;
        return a;
    }

    private long k(long j) {
        if (this.o) {
            return this.n;
        }
        C1473w2 c1473w2 = (C1473w2) this.d;
        C1473w2 c1473w22 = (C1473w2) this.e;
        if (c1473w2 == null || c1473w22 == null) {
            return this.n;
        }
        long k = c1473w2.k(j);
        return k >= j ? k : k + c1473w22.k(j);
    }
}
