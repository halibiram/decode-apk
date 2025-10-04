package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
abstract class J implements M3 {
    boolean a;
    Object b;

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

    @Override // java.util.function.Consumer
    /* renamed from: accept, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void p(Object obj) {
        if (this.a) {
            return;
        }
        this.a = true;
        this.b = obj;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        return this.a;
    }
}
