package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1452s1 extends AbstractC1462u1 implements InterfaceC1419l2 {
    private final long[] h;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void p(Object obj) {
        j((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC1419l2
    public final /* synthetic */ void j(Long l) {
        AbstractC1471w0.i(this, l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1452s1(Spliterator spliterator, AbstractC1366b abstractC1366b, long[] jArr) {
        super(spliterator, abstractC1366b, jArr.length);
        this.h = jArr;
    }

    C1452s1(C1452s1 c1452s1, Spliterator spliterator, long j, long j2) {
        super(c1452s1, spliterator, j, j2, c1452s1.h.length);
        this.h = c1452s1.h;
    }

    @Override // j$.util.stream.AbstractC1462u1
    final AbstractC1462u1 b(Spliterator spliterator, long j, long j2) {
        return new C1452s1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC1462u1, j$.util.stream.InterfaceC1424m2
    public final void accept(long j) {
        int i = this.f;
        if (i >= this.g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f));
        }
        long[] jArr = this.h;
        this.f = i + 1;
        jArr[i] = j;
    }
}
