package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1389f2 implements InterfaceC1409j2 {
    protected final InterfaceC1424m2 a;

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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        p((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC1409j2
    public final /* synthetic */ void p(Double d) {
        AbstractC1471w0.e(this, d);
    }

    public AbstractC1389f2(InterfaceC1424m2 interfaceC1424m2) {
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
