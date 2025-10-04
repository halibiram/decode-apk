package defpackage;

import android.R;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.SinceKotlin;
import kotlin.collections.Grouping;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 듬딟돝딻돷뎰땫뎨뒻뒹뒈딁땦땃듨돛둥딻뒨둬둠됴듨딞딌딨땅땦땻뒉돳땩돷땡뎹딜됴뒷듟뒛돛땋딞듌땸도땃둠땭될됩뒙돴땅뒝돳돼딟땃땅땫될땵딸뒼돰될땅듽둬돰뒉뒙듻뒻뎡돰뒈뎽땱둠득된땡땱돰땋뎻뎽뒷돷뎰땧든돸돠둑돸땱땹될땁딜땪딸땨땋땐땐득딠땨딀둣땃땝디듔듻땍뒵뒾딀돼딄땡뒛뒝뒛뒀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0851x248be67 extends AbstractC0850xd81a0d0b {
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> aggregate(@NotNull Grouping<T, ? extends K> grouping, @NotNull Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = grouping.keyOf(next);
            R.array arrayVar = (Object) linkedHashMap.get(keyOf);
            if (arrayVar == null && !linkedHashMap.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            linkedHashMap.put(keyOf, operation.invoke(keyOf, arrayVar, next, Boolean.valueOf(z)));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M aggregateTo(@NotNull Grouping<T, ? extends K> grouping, @NotNull M destination, @NotNull Function4<? super K, ? super R, ? super T, ? super Boolean, ? extends R> operation) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = grouping.keyOf(next);
            R.array arrayVar = (Object) destination.get(keyOf);
            if (arrayVar == null && !destination.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            destination.put(keyOf, operation.invoke(keyOf, arrayVar, next, Boolean.valueOf(z)));
        }
        return destination;
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, M extends Map<? super K, Integer>> M eachCountTo(@NotNull Grouping<T, ? extends K> grouping, @NotNull M destination) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            K keyOf = grouping.keyOf(sourceIterator.next());
            Object obj = destination.get(keyOf);
            if (obj == null && !destination.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                obj = 0;
            }
            destination.put(keyOf, Integer.valueOf(((Number) obj).intValue() + 1));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> fold(@NotNull Grouping<T, ? extends K> grouping, @NotNull Function2<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(initialValueSelector, "initialValueSelector");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = grouping.keyOf(next);
            R r = (Object) linkedHashMap.get(keyOf);
            if (r == null && !linkedHashMap.containsKey(keyOf)) {
                r = initialValueSelector.invoke(keyOf, next);
            }
            linkedHashMap.put(keyOf, operation.invoke(keyOf, r, next));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(@NotNull Grouping<T, ? extends K> grouping, @NotNull M destination, @NotNull Function2<? super K, ? super T, ? extends R> initialValueSelector, @NotNull Function3<? super K, ? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(initialValueSelector, "initialValueSelector");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            Object keyOf = grouping.keyOf(next);
            R r = (Object) destination.get(keyOf);
            if (r == null && !destination.containsKey(keyOf)) {
                r = initialValueSelector.invoke(keyOf, next);
            }
            destination.put(keyOf, operation.invoke(keyOf, r, next));
        }
        return destination;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K> Map<K, S> reduce(@NotNull Grouping<T, ? extends K> grouping, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            S s = (Object) sourceIterator.next();
            Object keyOf = grouping.keyOf(s);
            R.array arrayVar = (Object) linkedHashMap.get(keyOf);
            if (arrayVar == null && !linkedHashMap.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                s = operation.invoke(keyOf, arrayVar, s);
            }
            linkedHashMap.put(keyOf, s);
        }
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <S, T extends S, K, M extends Map<? super K, S>> M reduceTo(@NotNull Grouping<T, ? extends K> grouping, @NotNull M destination, @NotNull Function3<? super K, ? super S, ? super T, ? extends S> operation) {
        boolean z;
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            S s = (Object) sourceIterator.next();
            Object keyOf = grouping.keyOf(s);
            R.array arrayVar = (Object) destination.get(keyOf);
            if (arrayVar == null && !destination.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                s = operation.invoke(keyOf, arrayVar, s);
            }
            destination.put(keyOf, s);
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R, M extends Map<? super K, R>> M foldTo(@NotNull Grouping<T, ? extends K> grouping, @NotNull M destination, R r, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            K keyOf = grouping.keyOf(next);
            R.attr attrVar = (Object) destination.get(keyOf);
            if (attrVar == null && !destination.containsKey(keyOf)) {
                attrVar = (Object) r;
            }
            destination.put(keyOf, operation.invoke(attrVar, next));
        }
        return destination;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object] */
    @SinceKotlin(version = "1.1")
    @NotNull
    public static final <T, K, R> Map<K, R> fold(@NotNull Grouping<T, ? extends K> grouping, R r, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(grouping, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            ?? next = sourceIterator.next();
            K keyOf = grouping.keyOf(next);
            R.attr attrVar = (Object) linkedHashMap.get(keyOf);
            if (attrVar == null && !linkedHashMap.containsKey(keyOf)) {
                attrVar = (Object) r;
            }
            linkedHashMap.put(keyOf, operation.invoke(attrVar, next));
        }
        return linkedHashMap;
    }
}
