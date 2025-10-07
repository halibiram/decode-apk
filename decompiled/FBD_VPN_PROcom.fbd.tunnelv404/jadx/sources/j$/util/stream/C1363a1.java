package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.a1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1363a1 extends AbstractC1373c1 implements G0 {
    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC1471w0.s(this, consumer);
    }

    @Override // j$.util.stream.AbstractC1373c1, j$.util.stream.I0
    public final /* synthetic */ I0 h(long j, long j2, IntFunction intFunction) {
        return AbstractC1471w0.v(this, j, j2);
    }

    @Override // j$.util.stream.AbstractC1373c1, j$.util.stream.I0
    public final /* bridge */ /* synthetic */ I0 b(int i) {
        b(i);
        throw null;
    }

    @Override // j$.util.stream.AbstractC1373c1, j$.util.stream.I0
    public final H0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void i(Object[] objArr, int i) {
        AbstractC1471w0.p(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Spliterators.d();
    }

    @Override // j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return Spliterators.d();
    }

    @Override // j$.util.stream.H0
    public final Object d() {
        long[] jArr;
        jArr = AbstractC1471w0.f;
        return jArr;
    }
}
