package kotlin.sequences;

import defpackage.C1121x14c75004;
import java.util.Iterator;
import kotlin.BuilderInference;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes3.dex */
public abstract class SequencesKt__SequenceBuilderKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> Iterator<T> iterator(@BuilderInference @NotNull Function2<? super SequenceScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        C1121x14c75004 c1121x14c75004 = (Iterator<T>) new SequenceScope();
        c1121x14c75004.f5432x75d576dc = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(block, c1121x14c75004, c1121x14c75004);
        return c1121x14c75004;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static <T> Sequence<T> sequence(@BuilderInference @NotNull final Function2<? super SequenceScope<? super T>, ? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return new Sequence<T>() { // from class: kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return SequencesKt__SequenceBuilderKt.iterator(Function2.this);
            }
        };
    }
}
