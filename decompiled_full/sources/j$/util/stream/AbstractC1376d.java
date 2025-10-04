package j$.util.stream;

/* renamed from: j$.util.stream.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
abstract class AbstractC1376d {
    protected final int a;
    protected int b;
    protected int c;
    protected long[] d;

    public abstract void clear();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1376d() {
        this.a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1376d(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + i);
        }
        this.a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public final long count() {
        int i = this.c;
        if (i == 0) {
            return this.b;
        }
        return this.d[i] + this.b;
    }
}
