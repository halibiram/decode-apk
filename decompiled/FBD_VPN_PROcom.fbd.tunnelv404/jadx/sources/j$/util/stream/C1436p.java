package j$.util.stream;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1436p implements DoubleConsumer {
    public final /* synthetic */ InterfaceC1424m2 a;

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.a.accept(d);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }
}
