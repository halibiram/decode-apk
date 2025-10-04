package j$.util.stream;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1379d2 extends AbstractC1384e2 {
    public final /* synthetic */ int m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AbstractC1379d2(AbstractC1366b abstractC1366b, int i, int i2) {
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

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        switch (this.m) {
            case 0:
                return !K() ? this : new AbstractC1379d2(this, EnumC1365a3.r, 1);
            default:
                return !K() ? this : new AbstractC1379d2(this, EnumC1365a3.r, 1);
        }
    }
}
