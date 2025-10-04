package j$.util.stream;

import j$.util.Spliterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1457t1 extends AbstractC1462u1 {
    private final Object[] h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1457t1(Spliterator spliterator, AbstractC1366b abstractC1366b, Object[] objArr) {
        super(spliterator, abstractC1366b, objArr.length);
        this.h = objArr;
    }

    C1457t1(C1457t1 c1457t1, Spliterator spliterator, long j, long j2) {
        super(c1457t1, spliterator, j, j2, c1457t1.h.length);
        this.h = c1457t1.h;
    }

    @Override // j$.util.stream.AbstractC1462u1
    final AbstractC1462u1 b(Spliterator spliterator, long j, long j2) {
        return new C1457t1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        Object[] objArr = this.h;
        this.f = i + 1;
        objArr[i] = obj;
    }
}
