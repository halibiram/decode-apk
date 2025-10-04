package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final /* synthetic */ class C1372c0 implements LongBinaryOperator, Consumer, IntFunction {
    public final /* synthetic */ int a;

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        int i = this.a;
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 2:
                return Consumer$CC.$default$andThen(this, consumer);
            case 8:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.a) {
            case 0:
                return Math.max(j, j2);
            default:
                return j + j2;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 3:
                return new Object[i];
            case 4:
                return new Object[i];
            case 5:
                return new Integer[i];
            case 6:
                return new Long[i];
            case 7:
                return new Double[i];
            case 8:
            case 9:
            default:
                return new Double[i];
            case 10:
                return new Integer[i];
            case 11:
                return new Integer[i];
            case 12:
                return new Long[i];
            case 13:
                return new Long[i];
            case 14:
                return new Double[i];
        }
    }
}
