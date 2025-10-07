package j$.util.stream;

/* renamed from: j$.util.stream.w, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1470w extends AbstractC1402i0 {
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1470w(AbstractC1366b abstractC1366b, int i, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1450s(this, interfaceC1424m2, 3);
            case 1:
                return new W(0, interfaceC1424m2);
            case 2:
                return new U(this, interfaceC1424m2, 3);
            case 3:
                return new C1377d0(this, interfaceC1424m2, 1);
            case 4:
                return interfaceC1424m2;
            default:
                return new C1377d0(this, interfaceC1424m2, 4);
        }
    }
}
