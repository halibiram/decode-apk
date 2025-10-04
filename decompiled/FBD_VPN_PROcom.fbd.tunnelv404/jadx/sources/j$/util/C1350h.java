package j$.util;

import j$.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1350h extends C1349g implements java.util.List, List {
    private static final long serialVersionUID = -7754090372962971524L;
    final java.util.List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1350h(java.util.List list) {
        super(list);
        this.c = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1350h(java.util.List list, Object obj) {
        super(list, obj);
        this.c = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.b) {
            equals = this.c.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int hashCode;
        synchronized (this.b) {
            hashCode = this.c.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object obj;
        synchronized (this.b) {
            obj = this.c.get(i);
        }
        return obj;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = this.c.set(i, obj);
        }
        return obj2;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        synchronized (this.b) {
            this.c.add(i, obj);
        }
    }

    @Override // java.util.List
    public final Object remove(int i) {
        Object remove;
        synchronized (this.b) {
            remove = this.c.remove(i);
        }
        return remove;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int indexOf;
        synchronized (this.b) {
            indexOf = this.c.indexOf(obj);
        }
        return indexOf;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int lastIndexOf;
        synchronized (this.b) {
            lastIndexOf = this.c.lastIndexOf(obj);
        }
        return lastIndexOf;
    }

    @Override // java.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        boolean addAll;
        synchronized (this.b) {
            addAll = this.c.addAll(i, collection);
        }
        return addAll;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.c.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.c.listIterator(i);
    }

    @Override // java.util.List
    public java.util.List subList(int i, int i2) {
        C1350h c1350h;
        synchronized (this.b) {
            c1350h = new C1350h(this.c.subList(i, i2), this.b);
        }
        return c1350h;
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        synchronized (this.b) {
            java.util.List list = this.c;
            if (list instanceof List) {
                ((List) list).replaceAll(unaryOperator);
            } else {
                List.CC.$default$replaceAll(list, unaryOperator);
            }
        }
    }

    @Override // java.util.List, j$.util.List
    public final void sort(java.util.Comparator comparator) {
        synchronized (this.b) {
            AbstractC1344b.w(this.c, comparator);
        }
    }

    private Object readResolve() {
        java.util.List list = this.c;
        return list instanceof RandomAccess ? new C1350h(list) : this;
    }
}
