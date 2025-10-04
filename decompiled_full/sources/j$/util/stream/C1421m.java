package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.m, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1421m extends AbstractC1404i2 {
    public final /* synthetic */ int b = 2;
    boolean c;
    Object d;

    public /* synthetic */ C1421m(InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1421m(P3 p3, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = p3;
        this.c = true;
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public final void l(long j) {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
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
                InterfaceC1424m2 interfaceC1424m2 = this.a;
                if (obj == null) {
                    if (this.c) {
                        return;
                    }
                    this.c = true;
                    this.d = null;
                    interfaceC1424m2.p((InterfaceC1424m2) null);
                    return;
                }
                Object obj2 = this.d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.d = obj;
                    interfaceC1424m2.p((InterfaceC1424m2) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C1361a) ((C1455t) this.d).o).apply((C1361a) obj);
                if (stream != null) {
                    try {
                        boolean z = this.c;
                        InterfaceC1424m2 interfaceC1424m22 = this.a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(interfaceC1424m22);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC1424m22.n() && spliterator.tryAdvance(interfaceC1424m22)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.c) {
                    boolean test = ((P3) this.d).n.test(obj);
                    this.c = test;
                    if (test) {
                        this.a.p((InterfaceC1424m2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public boolean n() {
        switch (this.b) {
            case 1:
                this.c = true;
                return this.a.n();
            case 2:
                return !this.c || this.a.n();
            default:
                return super.n();
        }
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public void k() {
        switch (this.b) {
            case 0:
                this.c = false;
                this.d = null;
                this.a.k();
                return;
            default:
                super.k();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1421m(C1455t c1455t, InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.d = c1455t;
    }
}
