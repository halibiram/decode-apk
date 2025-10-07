package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class Z1 extends AbstractC1381e {
    private final AbstractC1471w0 h;

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC1381e abstractC1381e = this.d;
        if (abstractC1381e != null) {
            S1 s1 = (S1) ((Z1) abstractC1381e).c();
            s1.g((S1) ((Z1) this.e).c());
            f(s1);
        }
        super.onCompletion(countedCompleter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Z1(AbstractC1471w0 abstractC1471w0, AbstractC1366b abstractC1366b, Spliterator spliterator) {
        super(abstractC1366b, spliterator);
        this.h = abstractC1471w0;
    }

    Z1(Z1 z1, Spliterator spliterator) {
        super(z1, spliterator);
        this.h = z1.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final AbstractC1381e e(Spliterator spliterator) {
        return new Z1(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public final Object a() {
        AbstractC1366b abstractC1366b = this.a;
        S1 c0 = this.h.c0();
        abstractC1366b.V(this.b, c0);
        return c0;
    }
}
