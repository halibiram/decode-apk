package j$.util.stream;

import java.util.function.Predicate;

/* renamed from: j$.util.stream.o0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1432o0 extends AbstractC1451s0 {
    final /* synthetic */ EnumC1456t0 c;
    final /* synthetic */ Predicate d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1432o0(EnumC1456t0 enumC1456t0, Predicate predicate) {
        super(enumC1456t0);
        this.c = enumC1456t0;
        this.d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.a) {
            return;
        }
        boolean test = this.d.test(obj);
        EnumC1456t0 enumC1456t0 = this.c;
        z = enumC1456t0.a;
        if (test == z) {
            this.a = true;
            z2 = enumC1456t0.b;
            this.b = z2;
        }
    }
}
