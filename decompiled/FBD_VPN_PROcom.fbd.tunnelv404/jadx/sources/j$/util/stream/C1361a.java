package j$.util.stream;

import j$.util.C1348f;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1361a implements Supplier, Consumer, BooleanSupplier, DoubleFunction, Function, LongFunction {
    public final /* synthetic */ int a;
    public Object b;

    public /* synthetic */ C1361a(int i) {
        this.a = i;
    }

    public /* synthetic */ C1361a(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.a) {
            case 1:
                ((InterfaceC1424m2) this.b).accept((InterfaceC1424m2) obj);
                return;
            default:
                ((ArrayList) this.b).add(obj);
                return;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 1:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public /* synthetic */ Function andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 0:
                return ((AbstractC1366b) this.b).L();
            default:
                return (Spliterator) this.b;
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object apply = ((Function) this.b).apply(obj);
        if (apply == null) {
            return null;
        }
        if (apply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) apply);
        }
        if (apply instanceof java.util.stream.Stream) {
            return X2.j((java.util.stream.Stream) apply);
        }
        if (apply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) apply);
        }
        if (apply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) apply);
        }
        if (apply instanceof DoubleStream) {
            return D.j((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return C.j((java.util.stream.DoubleStream) apply);
        }
        if (apply instanceof LongStream) {
            return C1417l0.j((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return C1412k0.j((java.util.stream.LongStream) apply);
        }
        C1348f.a("java.util.stream.*Stream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        Object apply = ((DoubleFunction) this.b).apply(d);
        if (apply == null) {
            return null;
        }
        if (apply instanceof DoubleStream) {
            return D.j((DoubleStream) apply);
        }
        if (apply instanceof java.util.stream.DoubleStream) {
            return C.j((java.util.stream.DoubleStream) apply);
        }
        C1348f.a("java.util.stream.DoubleStream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        Object apply = ((LongFunction) this.b).apply(j);
        if (apply == null) {
            return null;
        }
        if (apply instanceof LongStream) {
            return C1417l0.j((LongStream) apply);
        }
        if (apply instanceof java.util.stream.LongStream) {
            return C1412k0.j((java.util.stream.LongStream) apply);
        }
        C1348f.a("java.util.stream.LongStream", apply.getClass());
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.a) {
            case 2:
                C1445q3 c1445q3 = (C1445q3) this.b;
                return c1445q3.d.tryAdvance(c1445q3.e);
            case 3:
                C1454s3 c1454s3 = (C1454s3) this.b;
                return c1454s3.d.tryAdvance(c1454s3.e);
            case 4:
                C1464u3 c1464u3 = (C1464u3) this.b;
                return c1464u3.d.tryAdvance(c1464u3.e);
            default:
                J3 j3 = (J3) this.b;
                return j3.d.tryAdvance(j3.e);
        }
    }
}
