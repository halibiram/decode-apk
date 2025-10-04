package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class Z extends AbstractC1362a0 {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Z(AbstractC1366b abstractC1366b, int i, int i2) {
        super(abstractC1366b, i);
        this.m = i2;
    }

    @Override // j$.util.stream.AbstractC1366b
    final boolean Q() {
        switch (this.m) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.AbstractC1366b
    final Spliterator M(Supplier supplier) {
        switch (this.m) {
            case 0:
                return new C1430n3(supplier);
            default:
                return new C1430n3(supplier);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        switch (this.m) {
            case 0:
                return !K() ? this : new C1465v(this, EnumC1365a3.r, 2);
            default:
                return !K() ? this : new C1465v(this, EnumC1365a3.r, 2);
        }
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        switch (this.m) {
            case 0:
                parallel();
                return this;
            default:
                parallel();
                return this;
        }
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream, j$.util.stream.DoubleStream
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        switch (this.m) {
            case 0:
                sequential();
                return this;
            default:
                sequential();
                return this;
        }
    }

    @Override // j$.util.stream.AbstractC1366b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        switch (this.m) {
            case 0:
                return spliterator();
            default:
                return spliterator();
        }
    }
}
