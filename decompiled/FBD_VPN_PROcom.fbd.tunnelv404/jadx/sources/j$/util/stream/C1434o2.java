package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1434o2 extends AbstractC1379d2 {
    final /* synthetic */ long n;
    final /* synthetic */ long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1434o2(AbstractC1384e2 abstractC1384e2, int i, long j, long j2) {
        super(abstractC1384e2, i, 0);
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
            Spliterator X = abstractC1366b.X(spliterator);
            long j4 = this.n;
            return new C1489z3(X, j4, AbstractC1471w0.B(j4, j3));
        }
        if (!EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            Spliterator X2 = abstractC1366b.X(spliterator);
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
            return new H3(X2, j2, j);
        }
        return ((I0) new C1473w2(this, abstractC1366b, spliterator, new C1372c0(3), this.n, this.o).invoke()).spliterator();
    }

    /* JADX WARN: Type inference failed for: r13v4, types: [j$.util.Spliterator, j$.util.stream.H3] */
    @Override // j$.util.stream.AbstractC1366b
    final I0 O(AbstractC1366b abstractC1366b, Spliterator spliterator, IntFunction intFunction) {
        long j;
        long j2;
        long F = abstractC1366b.F(spliterator);
        if (F > 0 && spliterator.hasCharacteristics(16384)) {
            return AbstractC1471w0.E(abstractC1366b, AbstractC1471w0.C(abstractC1366b.I(), spliterator, this.n, this.o), true, intFunction);
        }
        if (!EnumC1365a3.ORDERED.n(abstractC1366b.J())) {
            Spliterator X = abstractC1366b.X(spliterator);
            long j3 = this.n;
            long j4 = this.o;
            if (j3 <= F) {
                j2 = j4 >= 0 ? Math.min(j4, F - j3) : F - j3;
                j = 0;
            } else {
                j = j3;
                j2 = j4;
            }
            return AbstractC1471w0.E(this, new H3(X, j, j2), true, intFunction);
        }
        return (I0) new C1473w2(this, abstractC1366b, spliterator, intFunction, this.n, this.o).invoke();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.util.stream.AbstractC1366b
    public final InterfaceC1424m2 R(int i, InterfaceC1424m2 interfaceC1424m2) {
        return new C1429n2(this, interfaceC1424m2);
    }
}
