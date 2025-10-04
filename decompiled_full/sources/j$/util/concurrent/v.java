package j$.util.concurrent;

/* loaded from: classes4.dex */
final class v extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    protected final Object initialValue() {
        return new ThreadLocalRandom(0);
    }
}
