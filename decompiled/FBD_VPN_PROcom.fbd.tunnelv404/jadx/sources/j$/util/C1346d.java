package j$.util;

import java.io.Serializable;
import java.util.function.Function;

/* renamed from: j$.util.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1346d implements java.util.Comparator, Serializable {
    public final /* synthetic */ int a;
    public final /* synthetic */ java.util.Comparator b;
    public final /* synthetic */ Object c;

    public /* synthetic */ C1346d(java.util.Comparator comparator, Object obj, int i) {
        this.a = i;
        this.b = comparator;
        this.c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                int compare = this.b.compare(obj, obj2);
                return compare != 0 ? compare : ((java.util.Comparator) this.c).compare(obj, obj2);
            default:
                Function function = (Function) this.c;
                return this.b.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
