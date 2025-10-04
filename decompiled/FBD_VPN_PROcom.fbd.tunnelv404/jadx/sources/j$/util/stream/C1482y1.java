package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1482y1 extends AbstractC1471w0 {
    final /* synthetic */ LongBinaryOperator h;
    final /* synthetic */ long i;

    @Override // j$.util.stream.AbstractC1471w0
    public final S1 c0() {
        return new Q1(this.i, this.h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1482y1(EnumC1370b3 enumC1370b3, LongBinaryOperator longBinaryOperator, long j) {
        this.h = longBinaryOperator;
        this.i = j;
    }
}
