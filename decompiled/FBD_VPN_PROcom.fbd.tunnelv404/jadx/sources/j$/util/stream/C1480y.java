package j$.util.stream;

import java.util.function.DoubleConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1480y extends A {
    public final /* synthetic */ int n;
    final /* synthetic */ Object o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1480y(AbstractC1366b abstractC1366b, int i, Object obj, int i2) {
        super(abstractC1366b, i, 1);
        this.n = i2;
        this.o = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1480y(B b, DoubleConsumer doubleConsumer) {
        super(b, 0, 1);
        this.n = 1;
        this.o = doubleConsumer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        switch (this.n) {
            case 0:
                return new C1475x(this, interfaceC1424m2);
            case 1:
                return new C1450s(this, interfaceC1424m2, 5);
            case 2:
                return new C1426n(this, interfaceC1424m2, 6);
            default:
                return new C1364a2(this, interfaceC1424m2);
        }
    }
}
