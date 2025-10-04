package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1453s2 extends AbstractC1402i0 {
    final /* synthetic */ long n;
    final /* synthetic */ long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1453s2(AbstractC1407j0 abstractC1407j0, int i, long j, long j2) {
        super(abstractC1407j0, i, 0);
        this.n = j;
        this.o = j2;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.AbstractC1366b
    final Spliterator P(AbstractC1366b abstractC1366b, Spliterator spliterator) {
        long j;
        long j2;
        long F = abstractC1366b.F(spliterator);
        long j3 = this.o;
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            j$.util.Z z = (j$.util.Z) abstractC1366b.X(spliterator);
            long j4 = this.n;
            return new AbstractC1484y3(z, j4, AbstractC1471w0.B(j4, j3));
        }
        if (!EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            j$.util.Z z2 = (j$.util.Z) abstractC1366b.X(spliterator);
            long j5 = this.n;
            if (j5 <= F) {
                long j6 = F - j5;
                if (j3 >= 0) {
                    j6 = Math.min(j3, j6);
                }
                j = j6;
                j2 = 0;
            } else {
                j = j3;
                j2 = j5;
            }
            return new H3(z2, j2, j);
        }
        return ((I0) new C1473w2(this, abstractC1366b, spliterator, new C1372c0(6), this.n, this.o).invoke()).spliterator();
    }

    /* JADX WARN: Type inference failed for: r13v5, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long F = abstractC1366b.F(spliterator);
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC1471w0.H(abstractC1366b, AbstractC1471w0.C(abstractC1366b.I(), spliterator, this.n, this.o), true);
        }
        if (!EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            j$.util.Z z = (j$.util.Z) abstractC1366b.X(spliterator);
            long j3 = this.n;
            long j4 = this.o;
            if (j3 <= F) {
                j = j4 >= 0 ? Math.min(j4, F - j3) : F - j3;
                j2 = 0;
            } else {
                j = j4;
                j2 = j3;
            }
            return AbstractC1471w0.H(this, new H3(z, j2, j), true);
        }
        return (I0) new C1473w2(this, abstractC1366b, spliterator, intFunction, this.n, this.o).invoke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        return new C1448r2(this, interfaceC1424m2);
    }
}
