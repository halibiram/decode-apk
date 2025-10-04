package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1394g2 implements InterfaceC1414k2 {
    protected final InterfaceC1424m2 a;

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        m((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        AbstractC1471w0.g(this, num);
    }

    public AbstractC1394g2(InterfaceC1424m2 interfaceC1424m2) {
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
