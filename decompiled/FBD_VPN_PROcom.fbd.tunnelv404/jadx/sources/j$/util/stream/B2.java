package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes4.dex */
final class B2 extends AbstractC1478x2 {
    private P2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.P2] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        ?? r0;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            r0 = new V2();
        } else {
            r0 = new V2((int) j);
        }
        this.c = r0;
    }

    @Override // j$.util.stream.AbstractC1389f2, j$.util.stream.InterfaceC1424m2
    public final void k() {
        double[] dArr = (double[]) this.c.d();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC1424m2 interfaceC1424m2 = this.a;
        interfaceC1424m2.l(length);
        int i = 0;
        if (!this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                interfaceC1424m2.accept(dArr[i]);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                double d = dArr[i];
                if (interfaceC1424m2.n()) {
                    break;
                }
                interfaceC1424m2.accept(d);
                i++;
            }
        }
        interfaceC1424m2.k();
    }

    @Override // j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.c.accept(d);
    }
}
