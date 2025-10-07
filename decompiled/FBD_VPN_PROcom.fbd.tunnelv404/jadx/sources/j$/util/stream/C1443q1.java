package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1443q1 extends AbstractC1462u1 implements InterfaceC1409j2 {
    private final double[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1443q1(Spliterator spliterator, AbstractC1366b abstractC1366b, double[] dArr) {
        super(spliterator, abstractC1366b, dArr.length);
        this.h = dArr;
    }

    C1443q1(C1443q1 c1443q1, Spliterator spliterator, long j, long j2) {
        super(c1443q1, spliterator, j, j2, c1443q1.h.length);
        this.h = c1443q1.h;
    }

    @Override // j$.util.stream.AbstractC1462u1
    final AbstractC1462u1 b(Spliterator spliterator, long j, long j2) {
        return new C1443q1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC1462u1, j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        double[] dArr = this.h;
        this.f = i + 1;
        dArr[i] = d;
    }
}
