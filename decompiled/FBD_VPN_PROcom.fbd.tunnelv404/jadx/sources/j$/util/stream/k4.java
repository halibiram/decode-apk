package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* loaded from: classes4.dex */
final class k4 extends m4 implements LongConsumer, j$.util.Z {
    long e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k4(Spliterator spliterator, int i) {
        super(spliterator);
        this.f = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k4(Spliterator spliterator, m4 m4Var, int i) {
        super(spliterator, m4Var);
        this.f = i;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.d(this, longConsumer);
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1344b.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1344b.h(this, consumer);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        do {
        } while (tryAdvance(longConsumer));
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.d = (this.d + 1) & 63;
        this.e = j;
    }

    @Override // j$.util.stream.m4
    final Spliterator c(Spliterator spliterator) {
        switch (this.f) {
            case 0:
                return new k4((j$.util.Z) spliterator, this, 0);
            default:
                return new k4((j$.util.Z) spliterator, this, 1);
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

    @Override // j$.util.Z
    public final boolean tryAdvance(LongConsumer longConsumer) {
        switch (this.f) {
            case 0:
                boolean z = this.c;
                Spliterator spliterator = this.a;
                if (z) {
                    this.c = false;
                    boolean tryAdvance = ((j$.util.Z) spliterator).tryAdvance((LongConsumer) this);
                    if (tryAdvance && b()) {
                        LongPredicate longPredicate = null;
                        longPredicate.test(this.e);
                        throw null;
                    }
                    if (!tryAdvance) {
                        return tryAdvance;
                    }
                    longConsumer.accept(this.e);
                    return tryAdvance;
                }
                return ((j$.util.Z) spliterator).tryAdvance(longConsumer);
            default:
                if (this.c && b() && ((j$.util.Z) this.a).tryAdvance((LongConsumer) this)) {
                    LongPredicate longPredicate2 = null;
                    longPredicate2.test(this.e);
                    throw null;
                }
                this.c = false;
                return false;
        }
    }

    @Override // j$.util.stream.m4, j$.util.Spliterator
    public j$.util.Z trySplit() {
        switch (this.f) {
            case 1:
                if (this.b.get()) {
                    return null;
                }
                return (j$.util.Z) super.trySplit();
            default:
                return super.trySplit();
        }
    }

    @Override // j$.util.c0
    public /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        switch (this.f) {
            case 1:
                tryAdvance((LongConsumer) obj);
                return false;
            default:
                return tryAdvance((LongConsumer) obj);
        }
    }
}
