package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class I3 implements InterfaceC1424m2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ I3(Consumer consumer, int i) {
        this.a = i;
        this.b = consumer;
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void c(long j) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC1424m2, j$.util.stream.InterfaceC1409j2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        switch (this.a) {
            case 0:
                AbstractC1471w0.a();
                throw null;
            default:
                AbstractC1471w0.a();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(int i) {
        switch (this.a) {
            case 0:
                AbstractC1471w0.k();
                throw null;
            default:
                AbstractC1471w0.k();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void accept(long j) {
        switch (this.a) {
            case 0:
                AbstractC1471w0.l();
                throw null;
            default:
                AbstractC1471w0.l();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void p(Object obj) {
        switch (this.a) {
            case 0:
                ((W2) this.b).p(obj);
                return;
            default:
                this.b.p(obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void k() {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ void l(long j) {
        int i = this.a;
    }

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        switch (this.a) {
            case 0:
                return false;
            default:
                return false;
        }
    }
}
