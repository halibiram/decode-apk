package j$.util.stream;

import java.util.Comparator;

/* loaded from: classes4.dex */
abstract class A2 extends AbstractC1404i2 {
    protected final Comparator b;
    protected boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public A2(InterfaceC1424m2 interfaceC1424m2, Comparator comparator) {
        super(interfaceC1424m2);
        this.b = comparator;
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        this.c = true;
        return false;
    }
}
