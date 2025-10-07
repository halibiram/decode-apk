package j$.util;

import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.u, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1491u extends C1357o implements RandomAccess {
    private static final long serialVersionUID = -2542308836966382001L;

    @Override // j$.util.C1357o, java.util.List
    public final java.util.List subList(int i, int i2) {
        return new C1357o(this.b.subList(i, i2));
    }

    private Object writeReplace() {
        return new C1357o(this.b);
    }
}
