package j$.util.stream;

import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1364a2 extends AbstractC1404i2 {
    public final /* synthetic */ int b = 1;
    boolean c;
    Object d;
    final /* synthetic */ AbstractC1366b e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1364a2(V v, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.e = v;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.d = new T(interfaceC1424m22);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1364a2(C1480y c1480y, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.e = c1480y;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.d = new C1436p(interfaceC1424m22);
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        switch (this.b) {
            case 0:
                this.a.l(-1L);
                return;
            case 1:
                this.a.l(-1L);
                return;
            default:
                this.a.l(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void p(Object obj) {
        switch (this.b) {
            case 0:
                LongStream longStream = (LongStream) ((C1361a) ((C1392g0) this.e).o).apply((C1361a) obj);
                if (longStream != null) {
                    try {
                        boolean z = this.c;
                        C1367b0 c1367b0 = (C1367b0) this.d;
                        if (!z) {
                            longStream.sequential().forEach(c1367b0);
                        } else {
                            j$.util.Z spliterator = longStream.sequential().spliterator();
                            while (!this.a.n() && spliterator.tryAdvance((LongConsumer) c1367b0)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            longStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (longStream != null) {
                    longStream.close();
                    return;
                }
                return;
            case 1:
                IntStream intStream = (IntStream) ((C1361a) ((V) this.e).o).apply((C1361a) obj);
                if (intStream != null) {
                    try {
                        boolean z2 = this.c;
                        T t = (T) this.d;
                        if (!z2) {
                            intStream.sequential().forEach(t);
                        } else {
                            j$.util.W spliterator2 = intStream.sequential().spliterator();
                            while (!this.a.n() && spliterator2.tryAdvance((IntConsumer) t)) {
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                DoubleStream doubleStream = (DoubleStream) ((C1361a) ((C1480y) this.e).o).apply((C1361a) obj);
                if (doubleStream != null) {
                    try {
                        boolean z3 = this.c;
                        C1436p c1436p = (C1436p) this.d;
                        if (!z3) {
                            doubleStream.sequential().forEach(c1436p);
                        } else {
                            j$.util.T spliterator3 = doubleStream.sequential().spliterator();
                            while (!this.a.n() && spliterator3.tryAdvance((DoubleConsumer) c1436p)) {
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            doubleStream.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (doubleStream != null) {
                    doubleStream.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final boolean n() {
        switch (this.b) {
            case 0:
                this.c = true;
                return this.a.n();
            case 1:
                this.c = true;
                return this.a.n();
            default:
                this.c = true;
                return this.a.n();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1364a2(C1392g0 c1392g0, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.e = c1392g0;
        InterfaceC1424m2 interfaceC1424m22 = this.a;
        Objects.requireNonNull(interfaceC1424m22);
        this.d = new C1367b0(interfaceC1424m22);
    }
}
