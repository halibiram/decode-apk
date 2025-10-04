package j$.util;

/* loaded from: classes4.dex */
public interface c0 extends Spliterator {
    void forEachRemaining(Object obj);

    boolean tryAdvance(Object obj);

    @Override // j$.util.Spliterator
    c0 trySplit();
}
