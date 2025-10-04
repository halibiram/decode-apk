package j$.util;

import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.j, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1352j extends C1350h implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    @Override // j$.util.C1350h, java.util.List
    public final java.util.List subList(int i, int i2) {
        C1350h c1350h;
        synchronized (this.b) {
            c1350h = new C1350h(this.c.subList(i, i2), this.b);
        }
        return c1350h;
    }

    private Object writeReplace() {
        return new C1350h(this.c);
    }
}
