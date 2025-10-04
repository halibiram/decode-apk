package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* loaded from: classes4.dex */
final class j4 extends m4 implements IntConsumer, j$.util.W {
    int e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j4(Spliterator spliterator, m4 m4Var, int i) {
        super(spliterator, m4Var);
        this.f = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.com.android.tools.r8.a.c(this, intConsumer);
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.g(this, consumer);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        do {
        } while (tryAdvance(intConsumer));
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.d = (this.d + 1) & 63;
        this.e = i;
    }

    @Override // j$.util.stream.m4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new j4((j$.util.W) spliterator, this, 0);
            default:
                return new j4((j$.util.W) spliterator, this, 1);
        }
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.c0 trySplit() {
        switch (this.f) {
            case 1:
                return trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.W
    public final boolean tryAdvance(IntConsumer intConsumer) {
        switch (this.f) {
            case 0:
                boolean z = this.c;
                Spliterator spliterator = this.a;
                if (z) {
                    this.c = false;
                    boolean tryAdvance = ((j$.util.W) spliterator).tryAdvance((IntConsumer) this);
                    if (tryAdvance && b()) {
                        IntPredicate intPredicate = null;
                        intPredicate.test(this.e);
                        throw null;
                    }
                    if (!tryAdvance) {
                        return tryAdvance;
                    }
                    intConsumer.accept(this.e);
                    return tryAdvance;
                }
                return ((j$.util.W) spliterator).tryAdvance(intConsumer);
            default:
                if (this.c && b() && ((j$.util.W) this.a).tryAdvance((IntConsumer) this)) {
                    IntPredicate intPredicate2 = null;
                    intPredicate2.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public j$.util.W trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.W) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((IntConsumer) obj);
                return false;
            default:
                return tryAdvance((IntConsumer) obj);
        }
    }
}
