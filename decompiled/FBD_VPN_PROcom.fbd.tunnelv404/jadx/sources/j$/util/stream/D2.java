package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes4.dex */
final class D2 extends AbstractC1488z2 {
    private T2 c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.T2] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
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

    @Override // j$.util.stream.AbstractC1399h2, j$.util.stream.InterfaceC1424m2
    public final void k() {
        long[] jArr = (long[]) this.c.d();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC1424m2 interfaceC1424m2 = this.a;
        interfaceC1424m2.l(length);
        int i = 0;
        if (!this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                interfaceC1424m2.accept(jArr[i]);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                long j = jArr[i];
                if (interfaceC1424m2.n()) {
                    break;
                }
                interfaceC1424m2.accept(j);
                i++;
            }
        }
        interfaceC1424m2.k();
    }

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        this.c.accept(j);
    }
}
