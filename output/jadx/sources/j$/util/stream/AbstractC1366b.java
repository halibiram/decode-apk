package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1366b implements BaseStream {
    private final AbstractC1366b a;
    private final AbstractC1366b b;
    protected final int c;
    private AbstractC1366b d;
    private int e;
    private int f;
    private Spliterator g;
    private Supplier h;
    private boolean i;
    private boolean j;
    private Runnable k;
    private boolean l;

    abstract I0 E(AbstractC1366b abstractC1366b, Spliterator spliterator, boolean z, IntFunction intFunction);

    abstract boolean G(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract EnumC1370b3 H();

    abstract Spliterator M(Supplier supplier);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract A0 N(long j, IntFunction intFunction);

    abstract boolean Q();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2);

    abstract Spliterator U(AbstractC1366b abstractC1366b, Supplier supplier, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1366b(Spliterator spliterator, int i, boolean z) {
        this.b = null;
        this.g = spliterator;
        this.a = this;
        int i2 = EnumC1365a3.g & i;
        this.c = i2;
        this.f = (~(i2 << 1)) & EnumC1365a3.l;
        this.e = 0;
        this.l = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1366b(AbstractC1366b abstractC1366b, int i) {
        if (abstractC1366b.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC1366b.i = true;
        abstractC1366b.d = this;
        this.b = abstractC1366b;
        this.c = EnumC1365a3.h & i;
        this.f = EnumC1365a3.j(i, abstractC1366b.f);
        AbstractC1366b abstractC1366b2 = abstractC1366b.a;
        this.a = abstractC1366b2;
        if (Q()) {
            abstractC1366b2.j = true;
        }
        this.e = abstractC1366b.e + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1366b(Supplier supplier, int i, boolean z) {
        this.b = null;
        this.h = supplier;
        this.a = this;
        int i2 = EnumC1365a3.g & i;
        this.c = i2;
        this.f = (~(i2 << 1)) & EnumC1365a3.l;
        this.e = 0;
        this.l = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object C(L3 l3) {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        if (this.a.l) {
            return l3.c(this, S(l3.d()));
        }
        return l3.b(this, S(l3.d()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final I0 D(IntFunction intFunction) {
        AbstractC1366b abstractC1366b;
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        if (this.a.l && (abstractC1366b = this.b) != null && Q()) {
            this.e = 0;
            return O(abstractC1366b, abstractC1366b.S(0), intFunction);
        }
        return B(S(0), true, intFunction);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Spliterator T() {
        AbstractC1366b abstractC1366b = this.a;
        if (this != abstractC1366b) {
            throw new IllegalStateException();
        }
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        Spliterator spliterator = abstractC1366b.g;
        if (spliterator != null) {
            abstractC1366b.g = null;
            return spliterator;
        }
        Supplier supplier = abstractC1366b.h;
        if (supplier != null) {
            Spliterator spliterator2 = (Spliterator) supplier.get();
            abstractC1366b.h = null;
            return spliterator2;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final BaseStream sequential() {
        this.a.l = false;
        return this;
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final BaseStream parallel() {
        this.a.l = true;
        return this;
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.i = true;
        this.h = null;
        this.g = null;
        AbstractC1366b abstractC1366b = this.a;
        Runnable runnable = abstractC1366b.k;
        if (runnable != null) {
            abstractC1366b.k = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC1366b abstractC1366b = this.a;
        Runnable runnable2 = abstractC1366b.k;
        if (runnable2 != null) {
            runnable = new K3(runnable2, runnable);
        }
        abstractC1366b.k = runnable;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public Spliterator spliterator() {
        if (this.i) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.i = true;
        AbstractC1366b abstractC1366b = this.a;
        if (this == abstractC1366b) {
            Spliterator spliterator = abstractC1366b.g;
            if (spliterator != null) {
                abstractC1366b.g = null;
                return spliterator;
            }
            Supplier supplier = abstractC1366b.h;
            if (supplier != null) {
                abstractC1366b.h = null;
                return M(supplier);
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return U(this, new C1361a(0, this), abstractC1366b.l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Spliterator L() {
        return S(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final I0 B(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.a.l) {
            return E(this, spliterator, z, intFunction);
        }
        A0 N = N(F(spliterator), intFunction);
        V(spliterator, N);
        return N.a();
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.a.l;
    }

    private Spliterator S(int i) {
        int i2;
        int i3;
        AbstractC1366b abstractC1366b = this.a;
        Spliterator spliterator = abstractC1366b.g;
        if (spliterator != null) {
            abstractC1366b.g = null;
        } else {
            Supplier supplier = abstractC1366b.h;
            if (supplier != null) {
                spliterator = (Spliterator) supplier.get();
                abstractC1366b.h = null;
            } else {
                throw new IllegalStateException("source already consumed or closed");
            }
        }
        if (abstractC1366b.l && abstractC1366b.j) {
            AbstractC1366b abstractC1366b2 = abstractC1366b.d;
            int i4 = 1;
            while (abstractC1366b != this) {
                int i5 = abstractC1366b2.c;
                if (abstractC1366b2.Q()) {
                    if (EnumC1365a3.SHORT_CIRCUIT.n(i5)) {
                        i5 &= ~EnumC1365a3.u;
                    }
                    spliterator = abstractC1366b2.P(abstractC1366b, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~EnumC1365a3.t) & i5;
                        i3 = EnumC1365a3.s;
                    } else {
                        i2 = (~EnumC1365a3.s) & i5;
                        i3 = EnumC1365a3.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                abstractC1366b2.e = i4;
                abstractC1366b2.f = EnumC1365a3.j(i5, abstractC1366b.f);
                i4++;
                AbstractC1366b abstractC1366b3 = abstractC1366b2;
                abstractC1366b2 = abstractC1366b2.d;
                abstractC1366b = abstractC1366b3;
            }
        }
        if (i != 0) {
            this.f = EnumC1365a3.j(i, this.f);
        }
        return spliterator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final EnumC1370b3 I() {
        AbstractC1366b abstractC1366b = this;
        while (abstractC1366b.e > 0) {
            abstractC1366b = abstractC1366b.b;
        }
        return abstractC1366b.H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long F(Spliterator spliterator) {
        if (EnumC1365a3.SIZED.n(this.f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InterfaceC1424m2 V(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        z(spliterator, W((InterfaceC1424m2) Objects.requireNonNull(interfaceC1424m2)));
        return interfaceC1424m2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        Objects.requireNonNull(interfaceC1424m2);
        if (!EnumC1365a3.SHORT_CIRCUIT.n(this.f)) {
            interfaceC1424m2.l(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(interfaceC1424m2);
            interfaceC1424m2.k();
            return;
        }
        A(spliterator, interfaceC1424m2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean A(Spliterator spliterator, InterfaceC1424m2 interfaceC1424m2) {
        AbstractC1366b abstractC1366b = this;
        while (abstractC1366b.e > 0) {
            abstractC1366b = abstractC1366b.b;
        }
        interfaceC1424m2.l(spliterator.getExactSizeIfKnown());
        boolean G = abstractC1366b.G(spliterator, interfaceC1424m2);
        interfaceC1424m2.k();
        return G;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int J() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean K() {
        return EnumC1365a3.ORDERED.n(this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InterfaceC1424m2 W(InterfaceC1424m2 interfaceC1424m2) {
        Objects.requireNonNull(interfaceC1424m2);
        AbstractC1366b abstractC1366b = this;
        while (abstractC1366b.e > 0) {
            AbstractC1366b abstractC1366b2 = abstractC1366b.b;
            interfaceC1424m2 = abstractC1366b.R(abstractC1366b2.f, interfaceC1424m2);
            abstractC1366b = abstractC1366b2;
        }
        return interfaceC1424m2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Spliterator X(Spliterator spliterator) {
        return this.e == 0 ? spliterator : U(this, new C1361a(6, spliterator), this.a.l);
    }

    I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        return O(abstractC1366b, spliterator, new C1411k(17)).spliterator();
    }
}
