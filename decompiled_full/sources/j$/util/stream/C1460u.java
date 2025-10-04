package j$.util.stream;

/* renamed from: j$.util.stream.u, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1460u extends A {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1460u(AbstractC1366b abstractC1366b, int i, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1450s(this, interfaceC1424m2, 1);
            case 1:
                return interfaceC1424m2;
            case 2:
                return new C1450s(this, interfaceC1424m2, 4);
            case 3:
                return new W(1, interfaceC1424m2);
            case 4:
                return new U(this, interfaceC1424m2, 4);
            case 5:
                return new AbstractC1399h2(interfaceC1424m2);
            default:
                return new C1377d0(this, interfaceC1424m2, 3);
        }
    }
}
