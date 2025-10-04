package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.t, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1455t extends AbstractC1379d2 {
    public final /* synthetic */ int n;
    final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1455t(AbstractC1366b abstractC1366b, int i, Object obj, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
        this.o = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1450s(this, interfaceC1424m2, 0);
            case 1:
                return new U(this, interfaceC1424m2, 0);
            case 2:
                return new C1377d0(this, interfaceC1424m2, 0);
            case 3:
                return new C1426n(this, interfaceC1424m2, 1);
            case 4:
                return new C1426n(this, interfaceC1424m2, 2);
            case 5:
                return new C1426n(this, interfaceC1424m2, 3);
            default:
                return new C1421m(this, interfaceC1424m2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1455t(AbstractC1384e2 abstractC1384e2, Consumer consumer) {
        super(abstractC1384e2, 0, 1);
        this.n = 3;
        this.o = consumer;
    }
}
