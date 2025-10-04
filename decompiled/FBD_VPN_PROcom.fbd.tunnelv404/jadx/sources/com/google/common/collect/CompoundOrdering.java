package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import javax.annotation.CheckForNull;

@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class CompoundOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator<? super T>[] comparators;

    public CompoundOrdering(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.comparators = new Comparator[]{comparator, comparator2};
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(@ParametricNullness T t, @ParametricNullness T t2) {
        int i = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.comparators;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i].compare(t, t2);
            if (compare != 0) {
                return compare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.comparators, ((CompoundOrdering) obj).comparators);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.comparators);
    }

    public String toString() {
        String arrays = Arrays.toString(this.comparators);
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(19, arrays));
        sb.append(new ObfuscatedString(new long[]{-6738094707079013977L, 3950210100893709878L, 125663424317165148L, -307058376143722592L}).toString());
        sb.append(arrays);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2537364281100687766L, 4739193796713123524L}), sb);
    }

    public CompoundOrdering(Iterable<? extends Comparator<? super T>> iterable) {
        this.comparators = (Comparator[]) Iterables.toArray(iterable, new Comparator[0]);
    }
}
