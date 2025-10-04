package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Ordering;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.util.List;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class ExplicitOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMap<T, Integer> rankMap;

    public ExplicitOrdering(List<T> list) {
        this(Maps.indexMap(list));
    }

    private int rank(T t) {
        Integer num = this.rankMap.get(t);
        if (num != null) {
            return num.intValue();
        }
        throw new Ordering.IncomparableValueException(t);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return rank(t) - rank(t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof ExplicitOrdering) {
            return this.rankMap.equals(((ExplicitOrdering) obj).rankMap);
        }
        return false;
    }

    public int hashCode() {
        return this.rankMap.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.rankMap.keySet());
        StringBuilder sb = new StringBuilder(valueOf.length() + 19);
        sb.append(new ObfuscatedString(new long[]{7881819792795912985L, 2673086525183451538L, -8918641312447720898L, 8466023800170265337L}).toString());
        sb.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4536423791823838161L, -3412058613081933230L}), sb);
    }

    public ExplicitOrdering(ImmutableMap<T, Integer> immutableMap) {
        this.rankMap = immutableMap;
    }
}
