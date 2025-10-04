package j$.util;

import java.util.RandomAccess;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes4.dex */
public class DesugarCollections {
    public static <T> java.util.Collection<T> unmodifiableCollection(java.util.Collection<? extends T> collection) {
        return new C1355m(collection);
    }

    public static <T> java.util.Set<T> unmodifiableSet(java.util.Set<? extends T> set) {
        return (java.util.Set<T>) new C1355m(set);
    }

    public static <T> SortedSet<T> unmodifiableSortedSet(SortedSet<T> sortedSet) {
        return new C1494x(sortedSet);
    }

    public static <T> java.util.List<T> unmodifiableList(java.util.List<? extends T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C1357o(list);
        }
        return new C1357o(list);
    }

    public static <K, V> java.util.Map<K, V> unmodifiableMap(java.util.Map<? extends K, ? extends V> map) {
        return new C1490t(map);
    }

    public static <K, V> SortedMap<K, V> unmodifiableSortedMap(SortedMap<K, ? extends V> sortedMap) {
        return new C1493w(sortedMap);
    }

    public static <T> java.util.Collection<T> synchronizedCollection(java.util.Collection<T> collection) {
        return new C1349g(collection);
    }

    public static <T> java.util.Set<T> synchronizedSet(java.util.Set<T> set) {
        return (java.util.Set<T>) new C1349g(set);
    }

    public static <T> java.util.List<T> synchronizedList(java.util.List<T> list) {
        if (!(list instanceof RandomAccess)) {
            return new C1350h(list);
        }
        return new C1350h(list);
    }

    public static <K, V> java.util.Map<K, V> synchronizedMap(java.util.Map<K, V> map) {
        return new C1351i(map);
    }
}
