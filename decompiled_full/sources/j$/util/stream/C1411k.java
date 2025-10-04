package j$.util.stream;

import j$.util.C1495y;
import j$.util.C1496z;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.k, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1411k implements BinaryOperator, Function, BiConsumer, ObjDoubleConsumer, Supplier, LongFunction, IntFunction, DoubleBinaryOperator {
    public final /* synthetic */ int a;

    public /* synthetic */ C1411k(int i) {
        this.a = i;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 2:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 4:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 20:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 24:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 25:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            default:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
        }
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 0:
                return BiFunction$CC.$default$andThen(this, function);
            case 11:
                return BiFunction$CC.$default$andThen(this, function);
            case 13:
                return BiFunction$CC.$default$andThen(this, function);
            case 15:
                return BiFunction$CC.$default$andThen(this, function);
            default:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m1757andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.a) {
            case 10:
                return AbstractC1471w0.J(j);
            case 11:
            default:
                return AbstractC1471w0.T(j);
            case 12:
                return AbstractC1471w0.S(j);
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Set set = Collectors.a;
        return obj;
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        switch (this.a) {
            case 3:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                Collectors.a(dArr, d);
                dArr[3] = dArr[3] + d;
                return;
            case 4:
            default:
                ((C1495y) obj).accept(d);
                return;
            case 5:
                double[] dArr2 = (double[]) obj;
                Collectors.a(dArr2, d);
                dArr2[2] = dArr2[2] + d;
                return;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 6:
                return new Object();
            case 7:
                return new Object();
            case 8:
                return new Object();
            case 9:
                return new Object();
            case 18:
                return new C1495y();
            case 19:
                return new ArrayList();
            case 21:
                return new C1496z();
            case 22:
                return new j$.util.B();
            case 23:
                return new LinkedHashSet();
            default:
                return new double[4];
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 2:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                return;
            case 4:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.a(dArr3, dArr4[0]);
                Collectors.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                return;
            case 20:
                ((List) obj).add(obj2);
                return;
            case 24:
                ((LinkedHashSet) obj).add(obj2);
                return;
            case 25:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                return;
            default:
                ((C1495y) obj).b((C1495y) obj2);
                return;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                List list = (List) obj;
                Set set = Collectors.a;
                list.addAll((List) obj2);
                return list;
            case 11:
                return new K0((C0) obj, (C0) obj2);
            case 13:
                return new K0((E0) obj, (E0) obj2);
            case 15:
                return new K0((G0) obj, (G0) obj2);
            default:
                return new K0((I0) obj, (I0) obj2);
        }
    }
}
