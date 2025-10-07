package j$.util.stream;

/* loaded from: classes4.dex */
final class W extends AbstractC1394g2 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ W(int i, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.b = i;
    }

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.a.accept(i);
                return;
            default:
                this.a.accept(i);
                return;
        }
    }
}
