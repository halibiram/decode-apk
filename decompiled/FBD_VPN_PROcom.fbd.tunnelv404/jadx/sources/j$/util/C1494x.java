package j$.util;

import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.x, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1494x extends C1492v implements SortedSet {
    private static final long serialVersionUID = -4929149591599911165L;
    private final SortedSet b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1494x(SortedSet sortedSet) {
        super(sortedSet);
        this.b = sortedSet;
    }

    @Override // java.util.SortedSet
    public final java.util.Comparator comparator() {
        return this.b.comparator();
    }

    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new C1494x(this.b.subSet(obj, obj2));
    }

    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new C1494x(this.b.headSet(obj));
    }

    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new C1494x(this.b.tailSet(obj));
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return this.b.first();
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return this.b.last();
    }
}
