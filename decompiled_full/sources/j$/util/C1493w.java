package j$.util;

import java.util.SortedMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.w, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1493w extends C1490t implements SortedMap {
    private static final long serialVersionUID = -8806743815996713206L;
    private final SortedMap e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1493w(SortedMap sortedMap) {
        super(sortedMap);
        this.e = sortedMap;
    }

    @Override // java.util.SortedMap
    public final java.util.Comparator comparator() {
        return this.e.comparator();
    }

    @Override // java.util.SortedMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return new C1493w(this.e.subMap(obj, obj2));
    }

    @Override // java.util.SortedMap
    public final SortedMap headMap(Object obj) {
        return new C1493w(this.e.headMap(obj));
    }

    @Override // java.util.SortedMap
    public final SortedMap tailMap(Object obj) {
        return new C1493w(this.e.tailMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.e.firstKey();
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.e.lastKey();
    }
}
