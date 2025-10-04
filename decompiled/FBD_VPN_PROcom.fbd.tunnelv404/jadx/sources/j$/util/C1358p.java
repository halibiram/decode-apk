package j$.util;

import j$.util.function.Consumer$CC;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.p, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1358p implements Consumer {
    public final /* synthetic */ Consumer a;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.a.accept(new C1359q((Map.Entry) obj));
    }
}
