package j$.util.concurrent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class a extends p {
    final ConcurrentHashMap i;
    l j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(l[] lVarArr, int i, int i2, ConcurrentHashMap concurrentHashMap) {
        super(lVarArr, i, 0, i2);
        this.i = concurrentHashMap;
        a();
    }

    public final boolean hasNext() {
        return this.b != null;
    }

    public final boolean hasMoreElements() {
        return this.b != null;
    }

    public final void remove() {
        l lVar = this.j;
        if (lVar == null) {
            throw new IllegalStateException();
        }
        this.j = null;
        this.i.g(lVar.b, null, null);
    }
}
