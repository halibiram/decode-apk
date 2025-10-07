package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class P implements L3, M3 {
    private final boolean a;

    public /* synthetic */ void accept(double d) {
        AbstractC1471w0.a();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC1471w0.k();
        throw null;
    }

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

    @Override // j$.util.stream.InterfaceC1424m2
    public final /* synthetic */ boolean n() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public P(boolean z) {
        this.a = z;
    }

    @Override // j$.util.stream.L3
    public final int d() {
        if (this.a) {
            return 0;
        }
        return EnumC1365a3.r;
    }

    public final void e(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        if (this.a) {
            new Q(abstractC1366b, spliterator, this).invoke();
        } else {
            new S(abstractC1366b, spliterator, abstractC1366b.W(this)).invoke();
        }
    }
}
