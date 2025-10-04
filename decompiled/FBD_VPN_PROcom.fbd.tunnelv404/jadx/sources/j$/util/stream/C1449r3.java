package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.r3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1449r3 implements InterfaceC1414k2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ IntConsumer b;

    public /* synthetic */ C1449r3(IntConsumer intConsumer, int i) {
        this.a = i;
        this.b = intConsumer;
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

    @Override // j$.util.stream.InterfaceC1414k2, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        switch (this.a) {
            case 0:
                ((R2) this.b).accept(i);
                return;
            default:
                this.b.accept(i);
                return;
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
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        switch (this.a) {
            case 0:
                m((Integer) obj);
                return;
            default:
                m((Integer) obj);
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

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.a) {
            case 0:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
            default:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
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

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        switch (this.a) {
            case 0:
                AbstractC1471w0.g(this, num);
                return;
            default:
                AbstractC1471w0.g(this, num);
                return;
        }
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
