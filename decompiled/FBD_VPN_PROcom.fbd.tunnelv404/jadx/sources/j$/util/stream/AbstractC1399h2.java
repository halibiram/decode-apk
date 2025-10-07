package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.h2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1399h2 implements InterfaceC1419l2 {
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

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        j((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        AbstractC1471w0.i(this, l);
    }

    public AbstractC1399h2(InterfaceC1424m2 interfaceC1424m2) {
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
