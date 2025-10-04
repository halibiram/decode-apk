package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
abstract class AbstractC1451s0 implements InterfaceC1424m2 {
    boolean a;
    boolean b;

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public /* synthetic */ void accept(long j) {
        AbstractC1471w0.l();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void l(long j) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1451s0(EnumC1456t0 enumC1456t0) {
        boolean z;
        z = enumC1456t0.b;
        this.b = !z;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return this.a;
    }
}
