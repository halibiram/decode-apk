package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class T implements IntConsumer {
    public final /* synthetic */ InterfaceC1424m2 a;

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.a.accept(i);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }
}
