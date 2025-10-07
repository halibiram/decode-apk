package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.x1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
class C1477x1 extends CountedCompleter {
    protected final I0 a;
    protected final int b;
    public final /* synthetic */ int c;
    private final Object d;

    public C1477x1(I0 i0, Object obj, int i) {
        this.c = i;
        this.a = i0;
        this.b = 0;
        this.d = obj;
    }

    C1477x1(C1477x1 c1477x1, I0 i0, int i, byte b) {
        super(c1477x1);
        this.a = i0;
        this.b = i;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C1477x1 c1477x1 = this;
        while (c1477x1.a.q() != 0) {
            c1477x1.setPendingCount(c1477x1.a.q() - 1);
            int i = 0;
            int i2 = 0;
            while (i < c1477x1.a.q() - 1) {
                C1477x1 a = c1477x1.a(i, c1477x1.b + i2);
                i2 = (int) (i2 + a.a.count());
                a.fork();
                i++;
            }
            c1477x1 = c1477x1.a(i, c1477x1.b + i2);
        }
        switch (c1477x1.c) {
            case 0:
                ((H0) c1477x1.a).r(c1477x1.b, c1477x1.d);
                break;
            default:
                c1477x1.a.i((Object[]) c1477x1.d, c1477x1.b);
                break;
        }
        c1477x1.propagateCompletion();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1477x1(C1477x1 c1477x1, I0 i0, int i) {
        this(c1477x1, i0, i, (byte) 0);
        this.c = 1;
        this.d = (Object[]) c1477x1.d;
    }

    final C1477x1 a(int i, int i2) {
        switch (this.c) {
            case 0:
                return new C1477x1(this, ((H0) this.a).b(i), i2);
            default:
                return new C1477x1(this, this.a.b(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1477x1(C1477x1 c1477x1, H0 h0, int i) {
        this(c1477x1, h0, i, (byte) 0);
        this.c = 0;
        this.d = c1477x1.d;
    }
}
