package j$.util.stream;

import java.util.function.IntConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class D0 implements IntConsumer {
    public final /* synthetic */ int a;

    public /* synthetic */ D0(int i) {
        this.a = i;
    }

    private final void accept$j$$util$stream$Node$OfInt$$ExternalSyntheticLambda0(int i) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfInt$$ExternalSyntheticLambda0(int i) {
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.a;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.a) {
            case 0:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
            default:
                return j$.com.android.tools.r8.a.c(this, intConsumer);
        }
    }
}
