package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1461u0 implements L3 {
    final EnumC1456t0 a;
    final Supplier b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1461u0(EnumC1370b3 enumC1370b3, EnumC1456t0 enumC1456t0, Supplier supplier) {
        this.a = enumC1456t0;
        this.b = supplier;
    }

    @Override // j$.util.stream.L3
    public final int d() {
        return EnumC1365a3.u | EnumC1365a3.r;
    }

    @Override // j$.util.stream.L3
    public final Object b(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        AbstractC1451s0 abstractC1451s0 = (AbstractC1451s0) this.b.get();
        abstractC1366b.V(spliterator, abstractC1451s0);
        return Boolean.valueOf(abstractC1451s0.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.L3
    public final Object c(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        return (Boolean) new C1466v0(this, abstractC1366b, spliterator).invoke();
    }
}
