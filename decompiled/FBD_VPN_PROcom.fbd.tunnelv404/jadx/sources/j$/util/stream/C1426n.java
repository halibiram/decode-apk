package j$.util.stream;

import java.util.HashSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.n, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1426n extends AbstractC1404i2 {
    public final /* synthetic */ int b;
    Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1426n(AbstractC1366b abstractC1366b, InterfaceC1424m2 interfaceC1424m2, int i) {
        super(interfaceC1424m2);
        this.b = i;
        this.c = abstractC1366b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1426n(InterfaceC1424m2 interfaceC1424m2) {
        super(interfaceC1424m2);
        this.b = 0;
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public void k() {
        switch (this.b) {
            case 0:
                this.c = null;
                this.a.k();
                return;
            default:
                super.k();
                return;
        }
    }

    @Override // j$.util.stream.AbstractC1404i2, j$.util.stream.InterfaceC1424m2
    public void l(long j) {
        switch (this.b) {
            case 0:
                this.c = new HashSet();
                this.a.l(-1L);
                return;
            case 1:
            default:
                super.l(j);
                return;
            case 2:
                this.a.l(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                if (((HashSet) this.c).contains(obj)) {
                    return;
                }
                ((HashSet) this.c).add(obj);
                this.a.accept((InterfaceC1424m2) obj);
                return;
            case 1:
                ((Consumer) ((C1455t) this.c).o).accept(obj);
                this.a.accept((InterfaceC1424m2) obj);
                return;
            case 2:
                if (((Predicate) ((C1455t) this.c).o).test(obj)) {
                    this.a.accept((InterfaceC1424m2) obj);
                    return;
                }
                return;
            case 3:
                this.a.accept((InterfaceC1424m2) ((Function) ((C1455t) this.c).o).apply(obj));
                return;
            case 4:
                this.a.accept(((ToIntFunction) ((V) this.c).o).applyAsInt(obj));
                return;
            case 5:
                this.a.accept(((ToLongFunction) ((C1392g0) this.c).o).applyAsLong(obj));
                return;
            default:
                this.a.accept(((ToDoubleFunction) ((C1480y) this.c).o).applyAsDouble(obj));
                return;
        }
    }
}
