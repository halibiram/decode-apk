package j$.util.stream;

/* renamed from: j$.util.stream.v, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1465v extends Z {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1465v(AbstractC1366b abstractC1366b, int i, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1450s(this, interfaceC1424m2, 2);
            case 1:
                return new U(this, interfaceC1424m2, 2);
            case 2:
                return interfaceC1424m2;
            case 3:
                return new U(this, interfaceC1424m2, 5);
            default:
                return new C1377d0(this, interfaceC1424m2, 2);
        }
    }
}
