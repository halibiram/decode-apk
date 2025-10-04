package j$.util.stream;

import j$.util.C1496z;
import j$.util.Optional;
import j$.util.function.Predicate$CC;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.q, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1441q implements DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, Supplier, Predicate, ToIntFunction, IntBinaryOperator, ObjIntConsumer, BiConsumer, ObjLongConsumer, LongBinaryOperator, ToLongFunction, LongFunction {
    public final /* synthetic */ int a;

    public /* synthetic */ C1441q(int i) {
        this.a = i;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.a) {
            case 5:
                return Predicate$CC.$default$and(this, predicate);
            case 6:
                return Predicate$CC.$default$and(this, predicate);
            case 7:
                return Predicate$CC.$default$and(this, predicate);
            default:
                return Predicate$CC.$default$and(this, predicate);
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 15:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 20:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            case 24:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
            default:
                return j$.com.android.tools.r8.a.a(this, biConsumer);
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.max(d, d2);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.a) {
            case 13:
                return Math.min(i, i2);
            case 16:
                return i + i2;
            default:
                return Math.max(i, i2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        return Math.min(j, j2);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.a) {
            case 5:
                return Predicate$CC.$default$negate(this);
            case 6:
                return Predicate$CC.$default$negate(this);
            case 7:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.a) {
            case 5:
                return Predicate$CC.$default$or(this, predicate);
            case 6:
                return Predicate$CC.$default$or(this, predicate);
            case 7:
                return Predicate$CC.$default$or(this, predicate);
            default:
                return Predicate$CC.$default$or(this, predicate);
        }
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.a) {
            case 5:
                return ((j$.util.C) obj).c();
            case 6:
                return ((j$.util.D) obj).c();
            case 7:
                return ((j$.util.E) obj).c();
            default:
                return ((Optional) obj).isPresent();
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 4:
                return new double[3];
            case 18:
                return new long[2];
            default:
                return new long[2];
        }
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        switch (this.a) {
            case 21:
                ((j$.util.B) obj).accept(j);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + j;
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 15:
                ((C1496z) obj).b((C1496z) obj2);
                return;
            case 20:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                return;
            case 24:
                ((j$.util.B) obj).b((j$.util.B) obj2);
                return;
            default:
                long[] jArr3 = (long[]) obj;
                long[] jArr4 = (long[]) obj2;
                jArr3[0] = jArr3[0] + jArr4[0];
                jArr3[1] = jArr3[1] + jArr4[1];
                return;
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.a) {
            case 14:
                ((C1496z) obj).accept(i);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                return;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 2:
                return new Double[i];
            case 9:
                return new Object[i];
            case 10:
                return new Integer[i];
            case 12:
                return Integer.valueOf(i);
            default:
                return new Long[i];
        }
    }
}
