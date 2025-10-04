package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.h3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1400h3 extends AbstractC1405i3 implements Consumer {
    final Object[] b;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1400h3(int i) {
        this.b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.a;
        this.a = i + 1;
        this.b[i] = obj;
    }
}
