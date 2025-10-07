package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class P0 extends AbstractC1381e {
    protected final AbstractC1366b h;
    protected final LongFunction i;
    protected final BinaryOperator j;

    @Override // j$.util.stream.AbstractC1381e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC1381e abstractC1381e = this.d;
        if (abstractC1381e != null) {
            f((I0) this.j.apply((I0) ((P0) abstractC1381e).c(), (I0) ((P0) this.e).c()));
        }
        super.onCompletion(countedCompleter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public P0(AbstractC1366b abstractC1366b, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC1366b, spliterator);
        this.h = abstractC1366b;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public P0(P0 p0, Spliterator spliterator) {
        super(p0, spliterator);
        this.h = p0.h;
        this.i = p0.i;
        this.j = p0.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    public AbstractC1381e e(Spliterator spliterator) {
        return new P0(this, spliterator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.AbstractC1381e
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final I0 a() {
        A0 a0 = (A0) this.i.apply(this.h.F(this.b));
        this.h.V(this.b, a0);
        return a0.a();
    }
}
