package kotlin.jvm.optionals;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC1144x81de89fe;
import defpackage.AbstractC1145xfc271605;
import j$.util.Optional;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00002\n\u0002\u0010\u0000\n\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a%\u0010\u0003\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a.\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\f\u0012\b\b\u0001\u0012\u0004\b\u00028\u00000\u00022\u0006\u0010\u0005\u001a\u00028\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001aE\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\f\u0012\b\b\u0001\u0012\u0004\b\u00028\u00000\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0087\bø\u0001\u0001ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0000¢\u0006\u0004\b\t\u0010\n\u001a=\u0010\u000e\u001a\u00028\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\u0010\b\u0001\u0010\f*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u000b*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\r\u001a\u00028\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010\"\b\b\u0000\u0010\u0001*\u00020\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0011\u0010\u0012\u001a+\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013\"\b\b\u0000\u0010\u0001*\u00020\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001a+\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\b\b\u0000\u0010\u0001*\u00020\u0000*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0017\u0010\u0018\u0082\u0002\u000b\n\u0002\b9\n\u0005\b\u009920\u0001¨\u0006\u0019"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "j$/util/Optional", "getOrNull", "(Lj$/util/Optional;)Ljava/lang/Object;", "defaultValue", "getOrDefault", "(Lj$/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function0;", "getOrElse", "(Lj$/util/Optional;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "C", "destination", "toCollection", "(Lj$/util/Optional;Ljava/util/Collection;)Ljava/util/Collection;", "", "toList", "(Lj$/util/Optional;)Ljava/util/List;", "", "toSet", "(Lj$/util/Optional;)Ljava/util/Set;", "Lkotlin/sequences/Sequence;", "asSequence", "(Lj$/util/Optional;)Lkotlin/sequences/Sequence;", "kotlin-stdlib-jdk8"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OptionalsKt {
    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T> Sequence<T> asSequence(@NotNull Optional<? extends T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            return SequencesKt__SequencesKt.sequenceOf(optional.get());
        }
        return SequencesKt__SequencesKt.emptySequence();
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final <T> T getOrDefault(@NotNull Optional<? extends T> optional, T t) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            return optional.get();
        }
        return t;
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final <T> T getOrElse(@NotNull Optional<? extends T> optional, @NotNull Function0<? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (optional.isPresent()) {
            return optional.get();
        }
        return defaultValue.invoke();
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @Nullable
    public static final <T> T getOrNull(@NotNull Optional<T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        return optional.orElse(null);
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T, C extends Collection<? super T>> C toCollection(@NotNull Optional<T> optional, @NotNull C destination) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (optional.isPresent()) {
            T t = optional.get();
            Intrinsics.checkNotNullExpressionValue(t, "get(...)");
            destination.add(t);
        }
        return destination;
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T> List<T> toList(@NotNull Optional<? extends T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            return AbstractC0586x968d4673.listOf(optional.get());
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @SinceKotlin(version = "1.8")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T> Set<T> toSet(@NotNull Optional<? extends T> optional) {
        Intrinsics.checkNotNullParameter(optional, "<this>");
        if (optional.isPresent()) {
            return AbstractC1144x81de89fe.setOf(optional.get());
        }
        return AbstractC1145xfc271605.emptySet();
    }
}
