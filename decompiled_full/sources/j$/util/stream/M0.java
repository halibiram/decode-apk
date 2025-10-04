package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class M0 implements I0 {
    private final Collection a;

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 h(long j, long j2, IntFunction intFunction) {
        return AbstractC1471w0.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int q() {
        return 0;
    }

    @Override // j$.util.stream.I0
    public final I0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public M0(Collection collection) {
        this.a = collection;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return AbstractC1344b.y(this.a).spliterator();
    }

    @Override // j$.util.stream.I0
    public final void i(Object[] objArr, int i) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // j$.util.stream.I0
    public final Object[] o(IntFunction intFunction) {
        Collection collection = this.a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.a.size();
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        AbstractC1344b.q(this.a, consumer);
    }

    public final String toString() {
        Collection collection = this.a;
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(collection.size()), collection);
    }
}
