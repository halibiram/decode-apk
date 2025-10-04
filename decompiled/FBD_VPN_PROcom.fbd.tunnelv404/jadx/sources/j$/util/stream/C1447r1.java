package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1447r1 extends AbstractC1462u1 implements InterfaceC1414k2 {
    private final int[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        m((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC1414k2
    public final /* synthetic */ void m(Integer num) {
        AbstractC1471w0.g(this, num);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1447r1(Spliterator spliterator, AbstractC1366b abstractC1366b, int[] iArr) {
        super(spliterator, abstractC1366b, iArr.length);
        this.h = iArr;
    }

    C1447r1(C1447r1 c1447r1, Spliterator spliterator, long j, long j2) {
        super(c1447r1, spliterator, j, j2, c1447r1.h.length);
        this.h = c1447r1.h;
    }

    @Override // j$.util.stream.AbstractC1462u1
    final AbstractC1462u1 b(Spliterator spliterator, long j, long j2) {
        return new C1447r1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC1462u1, j$.util.stream.InterfaceC1424m2
    public final void accept(int i) {
        int i2 = this.f;
        if (i2 >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        int[] iArr = this.h;
        this.f = i2 + 1;
        iArr[i2] = i;
    }
}
