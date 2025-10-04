package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 디뒝뒹듐땰땲듻땪됐둥뒤뒝뒘둘돶딽뎨딝뒬뎻돰뒘뎠뒾땅돤뒻되듟돴됩듨땐둣돳땄딞뒝땲됴뒨딌듸딻둬돶돝듐딄땄돠딻될땜둣될땠땟땱뒀뒬득듬뒘듌땟딀땅돵땐땝뒘딸뒉땅뒐땍따땥땨된듐땰딝딅딀딁뎨땝딝땵딻돵든됫뒙땟돵딹뎨딤돝뎬뎽딝땃돛땪됐딄딞딝뎬됨돷둬땱됴땝뒐땔돨두드됩땭뎠드됫둬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0961xbc4021d9 extends AbstractC0960x6fbeaf6a {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <K, V> Map<K, V> build(@NotNull Map<K, V> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((MapBuilder) builder).build();
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <K, V> Map<K, V> createMapBuilder() {
        return new MapBuilder();
    }

    public static final <K, V> V getOrPut(@NotNull ConcurrentMap<K, V> concurrentMap, K k, @NotNull Function0<? extends V> defaultValue) {
        Intrinsics.checkNotNullParameter(concurrentMap, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        V v = concurrentMap.get(k);
        if (v == null) {
            V invoke = defaultValue.invoke();
            V putIfAbsent = concurrentMap.putIfAbsent(k, invoke);
            if (putIfAbsent == null) {
                return invoke;
            }
            return putIfAbsent;
        }
        return v;
    }

    @PublishedApi
    public static int mapCapacity(int i) {
        if (i >= 0) {
            if (i < 3) {
                return i + 1;
            }
            if (i < 1073741824) {
                return (int) ((i / 0.75f) + 1.0f);
            }
            return Integer.MAX_VALUE;
        }
        return i;
    }

    @NotNull
    public static <K, V> Map<K, V> mapOf(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.checkNotNullParameter(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        Intrinsics.checkNotNullExpressionValue(singletonMap, "singletonMap(...)");
        return singletonMap;
    }

    @NotNull
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> sortedMapOf(@NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        TreeMap treeMap = new TreeMap();
        AbstractC0962xa4a1ff52.putAll(treeMap, pairs);
        return treeMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> toSingletonMap(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        Intrinsics.checkNotNullExpressionValue(singletonMap, "with(...)");
        return singletonMap;
    }

    @NotNull
    public static final <K extends Comparable<? super K>, V> SortedMap<K, V> toSortedMap(@NotNull Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new TreeMap(map);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <K, V> Map<K, V> createMapBuilder(int i) {
        return new MapBuilder(i);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <K, V> SortedMap<K, V> sortedMapOf(@NotNull Comparator<? super K> comparator, @NotNull Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        TreeMap treeMap = new TreeMap(comparator);
        AbstractC0962xa4a1ff52.putAll(treeMap, pairs);
        return treeMap;
    }

    @NotNull
    public static final <K, V> SortedMap<K, V> toSortedMap(@NotNull Map<? extends K, ? extends V> map, @NotNull Comparator<? super K> comparator) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        return treeMap;
    }
}
