package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class NaturalOrdering extends Ordering<Comparable<?>> implements Serializable {
    static final NaturalOrdering INSTANCE = new NaturalOrdering();
    private static final long serialVersionUID = 0;

    @CheckForNull
    private transient Ordering<Comparable<?>> nullsFirst;

    @CheckForNull
    private transient Ordering<Comparable<?>> nullsLast;

    private NaturalOrdering() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable<?>> Ordering<S> nullsFirst() {
        Ordering<S> ordering = (Ordering<S>) this.nullsFirst;
        if (ordering == null) {
            Ordering<S> nullsFirst = super.nullsFirst();
            this.nullsFirst = nullsFirst;
            return nullsFirst;
        }
        return ordering;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable<?>> Ordering<S> nullsLast() {
        Ordering<S> ordering = (Ordering<S>) this.nullsLast;
        if (ordering == null) {
            Ordering<S> nullsLast = super.nullsLast();
            this.nullsLast = nullsLast;
            return nullsLast;
        }
        return ordering;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable<?>> Ordering<S> reverse() {
        return ReverseNaturalOrdering.INSTANCE;
    }

    public String toString() {
        return new ObfuscatedString(new long[]{-3580823325521767057L, -7646552476486736511L, -227792408444033133L, 3127569662106179067L}).toString();
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }
}
