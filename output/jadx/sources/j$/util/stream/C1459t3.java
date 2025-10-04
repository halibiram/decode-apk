package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.t3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1459t3 implements InterfaceC1419l2 {
    public final /* synthetic */ int a;
    public final /* synthetic */ LongConsumer b;

    public /* synthetic */ C1459t3(LongConsumer longConsumer, int i) {
        this.a = i;
        this.b = longConsumer;
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

    @Override // j$.util.stream.InterfaceC1419l2, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        switch (this.a) {
            case 0:
                ((T2) this.b).accept(j);
                return;
            default:
                this.b.accept(j);
                return;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        switch (this.a) {
            case 0:
                j((Long) obj);
                return;
            default:
                j((Long) obj);
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

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.a) {
            case 0:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
            default:
                return j$.com.android.tools.r8.a.d(this, longConsumer);
        }
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        switch (this.a) {
            case 0:
                AbstractC1471w0.i(this, l);
                return;
            default:
                AbstractC1471w0.i(this, l);
                return;
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
