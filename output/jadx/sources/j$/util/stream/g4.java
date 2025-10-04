package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes4.dex */
final class g4 extends AbstractC1381e {
    private final AbstractC1366b h;
    private final IntFunction i;
    private final boolean j;
    private long k;
    private long l;

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        I0 I;
        AbstractC1381e abstractC1381e = this.d;
        if (abstractC1381e != null) {
            if (this.j) {
                g4 g4Var = (g4) abstractC1381e;
                long j = g4Var.l;
                this.l = j;
                if (j == g4Var.k) {
                    this.l = j + ((g4) this.e).l;
                }
            }
            g4 g4Var2 = (g4) abstractC1381e;
            long j2 = g4Var2.k;
            g4 g4Var3 = (g4) this.e;
            this.k = j2 + g4Var3.k;
            if (g4Var2.k == 0) {
                I = (I0) g4Var3.c();
            } else if (g4Var3.k == 0) {
                I = (I0) g4Var2.c();
            } else {
                I = AbstractC1471w0.I(this.h.H(), (I0) ((g4) this.d).c(), (I0) ((g4) this.e).c());
            }
            I0 i0 = I;
            if (d() && this.j) {
                i0 = i0.h(this.l, i0.count(), this.i);
            }
            f(i0);
        }
        super.onCompletion(countedCompleter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g4(AbstractC1366b abstractC1366b, AbstractC1366b abstractC1366b2, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC1366b2, spliterator);
        this.h = abstractC1366b;
        this.i = intFunction;
        this.j = EnumC1365a3.ORDERED.n(abstractC1366b2.J());
    }

    g4(g4 g4Var, Spliterator spliterator) {
        super(g4Var, spliterator);
        this.h = g4Var.h;
        this.i = g4Var.i;
        this.j = g4Var.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new g4(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        boolean d = d();
        A0 N = this.a.N((!d && this.j && EnumC1365a3.SIZED.s(this.h.c)) ? this.h.F(this.b) : -1L, this.i);
        f4 j = ((e4) this.h).j(N, this.j && !d);
        this.a.V(this.b, j);
        I0 a = N.a();
        this.k = a.count();
        this.l = j.f();
        return a;
    }
}
