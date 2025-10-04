package j$.util.stream;

import java.util.function.IntConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class V extends Z {
    public final /* synthetic */ int n;
    final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V(AbstractC1366b abstractC1366b, int i, Object obj, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
        this.o = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new U(this, interfaceC1424m2, 1);
            case 1:
                return new X(this, interfaceC1424m2);
            case 2:
                return new C1426n(this, interfaceC1424m2, 4);
            default:
                return new C1364a2(this, interfaceC1424m2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V(AbstractC1362a0 abstractC1362a0, IntConsumer intConsumer) {
        super(abstractC1362a0, 0, 1);
        this.n = 0;
        this.o = intConsumer;
    }
}
