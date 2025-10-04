package j$.util.stream;

import java.util.function.Supplier;

/* renamed from: j$.util.stream.m0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1422m0 implements Supplier {
    public final /* synthetic */ int a;
    public final /* synthetic */ EnumC1456t0 b;

    public /* synthetic */ C1422m0(EnumC1456t0 enumC1456t0, int i) {
        this.a = i;
        this.b = enumC1456t0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.a) {
            case 0:
                return new AbstractC1451s0(this.b);
            case 1:
                return new AbstractC1451s0(this.b);
            default:
                return new AbstractC1451s0(this.b);
        }
    }
}
