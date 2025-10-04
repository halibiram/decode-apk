package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.d3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1380d3 extends AbstractC1395g3 implements DoubleConsumer {
    final double[] c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1380d3(int i) {
        this.c = new double[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1395g3
    public final void b(Object obj, long j) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i = 0; i < j; i++) {
            doubleConsumer.accept(this.c[i]);
        }
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.b;
        this.b = i + 1;
        this.c[i] = d;
    }
}
