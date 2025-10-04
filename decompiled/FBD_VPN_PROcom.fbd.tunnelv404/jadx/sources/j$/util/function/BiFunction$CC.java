package j$.util.function;

import j$.util.Objects;
import j$.util.concurrent.t;
import java.util.function.BiFunction;
import java.util.function.Function;

/* renamed from: j$.util.function.BiFunction$-CC */
/* loaded from: classes4.dex */
public final /* synthetic */ class BiFunction$CC {
    public static BiFunction $default$andThen(BiFunction biFunction, Function function) {
        Objects.requireNonNull(function);
        return new t(biFunction, function);
    }
}
