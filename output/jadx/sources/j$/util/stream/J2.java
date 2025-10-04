package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes4.dex */
final class J2 extends AbstractC1478x2 {
    private double[] c;
    private int d;

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void k() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        long j = this.d;
        InterfaceC1424m2 interfaceC1424m2 = this.a;
        interfaceC1424m2.l(j);
        if (!this.b) {
            while (i < this.d) {
                interfaceC1424m2.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d && !interfaceC1424m2.n()) {
                interfaceC1424m2.accept(this.c[i]);
                i++;
            }
        }
        interfaceC1424m2.k();
        this.c = null;
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }
}
