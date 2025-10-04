package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes4.dex */
final class I extends J {
    static final E c;
    static final E d;

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.a) {
            return Optional.b(this.b);
        }
        return null;
    }

    static {
        EnumC1370b3 enumC1370b3 = EnumC1370b3.REFERENCE;
        c = new E(true, enumC1370b3, Optional.a(), new C1441q(8), new C1411k(9));
        d = new E(false, enumC1370b3, Optional.a(), new C1441q(8), new C1411k(9));
    }
}
