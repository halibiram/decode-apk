package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes4.dex */
final class L2 extends AbstractC1488z2 {
    private long[] c;
    private int d;

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new long[(int) j];
    }

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
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

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        long[] jArr = this.c;
        int i = this.d;
        this.d = i + 1;
        jArr[i] = j;
    }
}
