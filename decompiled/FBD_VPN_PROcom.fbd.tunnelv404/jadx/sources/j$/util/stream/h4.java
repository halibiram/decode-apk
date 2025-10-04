package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes4.dex */
final class h4 extends AbstractC1371c {
    private final AbstractC1366b j;
    private final IntFunction k;
    private final boolean l;
    private long m;
    private boolean n;
    private volatile boolean o;

    @Override // j$.util.stream.AbstractC1371c
    protected final void h() {
        this.i = true;
        if (this.l && this.o) {
            f(AbstractC1471w0.K(this.j.H()));
        }
    }

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object I;
        AbstractC1381e abstractC1381e = this.d;
        if (abstractC1381e != null) {
            this.n = ((h4) abstractC1381e).n | ((h4) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                I = AbstractC1471w0.K(this.j.H());
            } else {
                if (this.l) {
                    h4 h4Var = (h4) this.d;
                    if (h4Var.n) {
                        this.m = h4Var.m;
                        I = (I0) h4Var.c();
                    }
                }
                h4 h4Var2 = (h4) this.d;
                long j = h4Var2.m;
                h4 h4Var3 = (h4) this.e;
                this.m = j + h4Var3.m;
                if (h4Var2.m == 0) {
                    I = (I0) h4Var3.c();
                } else if (h4Var3.m == 0) {
                    I = (I0) h4Var2.c();
                } else {
                    I = AbstractC1471w0.I(this.j.H(), (I0) ((h4) this.d).c(), (I0) ((h4) this.e).c());
                }
            }
            f(I);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h4(AbstractC1366b abstractC1366b, AbstractC1366b abstractC1366b2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC1366b2, spliterator);
        this.j = abstractC1366b;
        this.k = intFunction;
        this.l = EnumC1365a3.ORDERED.n(abstractC1366b2.J());
    }

    h4(h4 h4Var, Spliterator spliterator) {
        super(h4Var, spliterator);
        this.j = h4Var.j;
        this.k = h4Var.k;
        this.l = h4Var.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new h4(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC1371c
    protected final Object j() {
        return AbstractC1471w0.K(this.j.H());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        A0 N = this.a.N(-1L, this.k);
        InterfaceC1424m2 R = this.j.R(this.a.J(), N);
        AbstractC1366b abstractC1366b = this.a;
        boolean A = abstractC1366b.A(this.b, abstractC1366b.W(R));
        this.n = A;
        if (A) {
            i();
        }
        I0 a = N.a();
        this.m = a.count();
        return a;
    }
}
