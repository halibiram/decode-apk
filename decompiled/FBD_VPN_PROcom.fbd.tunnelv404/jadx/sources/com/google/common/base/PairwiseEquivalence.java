package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class PairwiseEquivalence<E, T extends E> extends Equivalence<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    final Equivalence<E> elementEquivalence;

    public PairwiseEquivalence(Equivalence<E> equivalence) {
        this.elementEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof PairwiseEquivalence) {
            return this.elementEquivalence.equals(((PairwiseEquivalence) obj).elementEquivalence);
        }
        return false;
    }

    public int hashCode() {
        return this.elementEquivalence.hashCode() ^ 1185147655;
    }

    public String toString() {
        String valueOf = String.valueOf(this.elementEquivalence);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8674332317744007979L, -6361431600778727584L, -1090539959655670572L}), AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + 11, valueOf));
    }

    @Override // com.google.common.base.Equivalence
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.elementEquivalence.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    @Override // com.google.common.base.Equivalence
    public int doHash(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i = 78721;
        while (it.hasNext()) {
            i = (i * 24943) + this.elementEquivalence.hash(it.next());
        }
        return i;
    }
}
