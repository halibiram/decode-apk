package j$.util;

import java.util.ListIterator;
import java.util.function.Consumer;

/* renamed from: j$.util.n, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1356n implements ListIterator, A {
    private final ListIterator a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1356n(C1357o c1357o, int i) {
        this.a = c1357o.b.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return this.a.next();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.a.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return this.a.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.A
    public final void forEachRemaining(Consumer consumer) {
        AbstractC1344b.s(this.a, consumer);
    }
}
