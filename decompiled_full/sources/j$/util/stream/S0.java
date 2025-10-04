package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class S0 extends T0 implements G0 {
    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC1471w0.s(this, consumer);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 h(long j, long j2, IntFunction intFunction) {
        return AbstractC1471w0.v(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void i(Object[] objArr, int i) {
        AbstractC1471w0.p(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    public final Object c(int i) {
        return new long[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new AbstractC1423m1(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.m1, j$.util.c0] */
    @Override // j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return new AbstractC1423m1(this);
    }
}
