package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes4.dex */
final class C2 extends AbstractC1483y2 {
    private R2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.R2] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
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

    @Override // j$.util.stream.AbstractC1394g2, j$.util.stream.InterfaceC1424m2
    public final void k() {
        int[] iArr = (int[]) this.c.d();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC1424m2 interfaceC1424m2 = this.a;
        interfaceC1424m2.l(length);
        int i = 0;
        if (!this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                interfaceC1424m2.accept(iArr[i]);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                int i2 = iArr[i];
                if (interfaceC1424m2.n()) {
                    break;
                }
                interfaceC1424m2.accept(i2);
                i++;
            }
        }
        interfaceC1424m2.k();
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        this.c.accept(i);
    }
}
