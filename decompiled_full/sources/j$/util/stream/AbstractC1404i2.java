package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.i2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1404i2 implements InterfaceC1424m2 {
    protected final InterfaceC1424m2 a;

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public AbstractC1404i2(InterfaceC1424m2 interfaceC1424m2) {
        this.a = (InterfaceC1424m2) Objects.requireNonNull(interfaceC1424m2);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public void l(long j) {
        this.a.l(j);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public void k() {
        this.a.k();
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public boolean n() {
        return this.a.n();
    }
}
