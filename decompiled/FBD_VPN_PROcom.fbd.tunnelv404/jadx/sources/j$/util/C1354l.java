package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.l, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1354l implements Iterator, A {
    public final /* synthetic */ int a = 0;
    private final Iterator b;

    public C1354l(C1355m c1355m) {
        this.b = c1355m.a.iterator();
    }

    @Override // java.util.Iterator, j$.util.A
    public final void forEachRemaining(Consumer consumer) {
        switch (this.a) {
            case 0:
                AbstractC1344b.s(this.b, consumer);
                return;
            default:
                AbstractC1344b.s(this.b, new C1358p(consumer));
                return;
        }
    }

    public C1354l(C1360s c1360s) {
        this.b = c1360s.a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.a) {
            case 0:
                return this.b.hasNext();
            default:
                return this.b.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.a) {
            case 0:
                return this.b.next();
            default:
                return new C1359q((Map.Entry) this.b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }
}
