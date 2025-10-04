package j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1373c1 implements I0 {
    @Override // j$.util.stream.I0
    public final long count() {
        return 0L;
    }

    public final void e(Object obj) {
    }

    @Override // j$.util.stream.I0
    public /* synthetic */ I0 h(long j, long j2, IntFunction intFunction) {
        return AbstractC1471w0.w(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int q() {
        return 0;
    }

    @Override // j$.util.stream.I0
    public I0 b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final Object[] o(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    public final void r(int i, Object obj) {
    }
}
