package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class P2 extends V2 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.V2
    public final void s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // j$.util.stream.V2
    public final int t(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // java.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            e((DoubleConsumer) consumer);
        } else {
            if (O3.a) {
                O3.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            AbstractC1344b.a((O2) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.V2
    protected final Object[] w() {
        return new double[8];
    }

    @Override // j$.util.stream.V2
    public final Object c(int i) {
        return new double[i];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        x();
        double[] dArr = (double[]) this.e;
        int i = this.b;
        this.b = i + 1;
        dArr[i] = d;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.V2, java.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public j$.util.T spliterator() {
        return new O2(this, 0, this.c, 0, this.b);
    }

    public final String toString() {
        double[] dArr = (double[]) d();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }
}
