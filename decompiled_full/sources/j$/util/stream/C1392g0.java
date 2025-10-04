package j$.util.stream;

import java.util.function.LongConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1392g0 extends AbstractC1402i0 {
    public final /* synthetic */ int n;
    final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1392g0(AbstractC1366b abstractC1366b, int i, Object obj, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
        this.o = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1387f0(this, interfaceC1424m2);
            case 1:
                return new C1377d0(this, interfaceC1424m2, 5);
            case 2:
                return new C1364a2(this, interfaceC1424m2);
            default:
                return new C1426n(this, interfaceC1424m2, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1392g0(AbstractC1407j0 abstractC1407j0, LongConsumer longConsumer) {
        super(abstractC1407j0, 0, 1);
        this.n = 1;
        this.o = longConsumer;
    }
}
