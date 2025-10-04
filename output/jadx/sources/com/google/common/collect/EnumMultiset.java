package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class EnumMultiset<E extends Enum<E>> extends AbstractMultiset<E> implements Serializable {

    @GwtIncompatible
    private static final long serialVersionUID = 0;
    private transient int[] counts;
    private transient int distinctElements;
    private transient E[] enumConstants;
    private transient long size;
    private transient Class<E> type;

    /* loaded from: classes2.dex */
    public abstract class Itr<T> implements Iterator<T> {
        int index = 0;
        int toRemove = -1;

        public Itr() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.index < EnumMultiset.this.enumConstants.length) {
                int[] iArr = EnumMultiset.this.counts;
                int i = this.index;
                if (iArr[i] > 0) {
                    return true;
                }
                this.index = i + 1;
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T output = output(this.index);
                int i = this.index;
                this.toRemove = i;
                this.index = i + 1;
                return output;
            }
            throw new NoSuchElementException();
        }

        public abstract T output(int i);

        @Override // java.util.Iterator
        public void remove() {
            boolean z;
            if (this.toRemove >= 0) {
                z = true;
            } else {
                z = false;
            }
            CollectPreconditions.checkRemove(z);
            if (EnumMultiset.this.counts[this.toRemove] > 0) {
                EnumMultiset.access$210(EnumMultiset.this);
                EnumMultiset.access$322(EnumMultiset.this, r0.counts[this.toRemove]);
                EnumMultiset.this.counts[this.toRemove] = 0;
            }
            this.toRemove = -1;
        }
    }

    private EnumMultiset(Class<E> cls) {
        this.type = cls;
        Preconditions.checkArgument(cls.isEnum());
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
    }

    public static /* synthetic */ int access$210(EnumMultiset enumMultiset) {
        int i = enumMultiset.distinctElements;
        enumMultiset.distinctElements = i - 1;
        return i;
    }

    public static /* synthetic */ long access$322(EnumMultiset enumMultiset, long j) {
        long j2 = enumMultiset.size - j;
        enumMultiset.size = j2;
        return j2;
    }

    private void checkIsE(Object obj) {
        Preconditions.checkNotNull(obj);
        if (isActuallyE(obj)) {
            return;
        }
        String valueOf = String.valueOf(this.type);
        String valueOf2 = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 21);
        sb.append(new ObfuscatedString(new long[]{-5843574877919743053L, 2576788451917462993L, 204564239944200306L}).toString());
        sb.append(valueOf);
        throw new ClassCastException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1792955964365278914L, -6063627597631074070L, -5873917420936330644L}), sb, valueOf2));
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Class<E> cls) {
        return new EnumMultiset<>(cls);
    }

    private boolean isActuallyE(@CheckForNull Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        Enum r5 = (Enum) obj;
        int ordinal = r5.ordinal();
        E[] eArr = this.enumConstants;
        if (ordinal >= eArr.length || eArr[ordinal] != r5) {
            return false;
        }
        return true;
    }

    @GwtIncompatible
    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        Class<E> cls = (Class) objectInputStream.readObject();
        this.type = cls;
        E[] enumConstants = cls.getEnumConstants();
        this.enumConstants = enumConstants;
        this.counts = new int[enumConstants.length];
        Serialization.populateMultiset(this, objectInputStream);
    }

    @GwtIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.type);
        Serialization.writeMultiset(this, objectOutputStream);
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Arrays.fill(this.counts, 0);
        this.size = 0L;
        this.distinctElements = 0;
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@CheckForNull Object obj) {
        if (obj != null && isActuallyE(obj)) {
            return this.counts[((Enum) obj).ordinal()];
        }
        return 0;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public int distinctElements() {
        return this.distinctElements;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public Iterator<E> elementIterator() {
        return new EnumMultiset<E>.Itr<E>() { // from class: com.google.common.collect.EnumMultiset.1
            @Override // com.google.common.collect.EnumMultiset.Itr
            public E output(int i) {
                return (E) EnumMultiset.this.enumConstants[i];
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.AbstractMultiset
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new EnumMultiset<E>.Itr<Multiset.Entry<E>>() { // from class: com.google.common.collect.EnumMultiset.2
            @Override // com.google.common.collect.EnumMultiset.Itr
            public Multiset.Entry<E> output(final int i) {
                return new Multisets.AbstractEntry<E>() { // from class: com.google.common.collect.EnumMultiset.2.1
                    @Override // com.google.common.collect.Multiset.Entry
                    public int getCount() {
                        return EnumMultiset.this.counts[i];
                    }

                    @Override // com.google.common.collect.Multiset.Entry
                    public E getElement() {
                        return (E) EnumMultiset.this.enumConstants[i];
                    }
                };
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.iteratorImpl(this);
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(@CheckForNull Object obj, int i) {
        if (obj == null || !isActuallyE(obj)) {
            return 0;
        }
        Enum r1 = (Enum) obj;
        CollectPreconditions.checkNonnegative(i, new ObfuscatedString(new long[]{7865304108855108075L, -50037710040363021L, -8901024582769321359L}).toString());
        if (i == 0) {
            return count(obj);
        }
        int ordinal = r1.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        if (i2 == 0) {
            return 0;
        }
        if (i2 <= i) {
            iArr[ordinal] = 0;
            this.distinctElements--;
            this.size -= i2;
        } else {
            iArr[ordinal] = i2 - i;
            this.size -= i;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.size);
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable) {
        Iterator<E> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), new ObfuscatedString(new long[]{6769740665328430342L, -2648188346807836161L, 9175481570358108453L, -1111603657823333428L, 7466847118621124176L, 3813572991025135288L, 1006204167921052252L}).toString());
        EnumMultiset<E> enumMultiset = new EnumMultiset<>(it.next().getDeclaringClass());
        Iterables.addAll(enumMultiset, iterable);
        return enumMultiset;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(E e, int i) {
        checkIsE(e);
        CollectPreconditions.checkNonnegative(i, new ObfuscatedString(new long[]{7201030865680275361L, -9015569590007530335L, -1741310858069356799L}).toString());
        if (i == 0) {
            return count(e);
        }
        int ordinal = e.ordinal();
        int i2 = this.counts[ordinal];
        long j = i;
        long j2 = i2 + j;
        Preconditions.checkArgument(j2 <= 2147483647L, new ObfuscatedString(new long[]{-7842915791641521241L, -2757369287919507756L, 3209100861834967057L, 1053903969674216814L}).toString(), j2);
        this.counts[ordinal] = (int) j2;
        if (i2 == 0) {
            this.distinctElements++;
        }
        this.size += j;
        return i2;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean setCount(@ParametricNullness Object obj, int i, int i2) {
        return super.setCount(obj, i, i2);
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(E e, int i) {
        checkIsE(e);
        CollectPreconditions.checkNonnegative(i, new ObfuscatedString(new long[]{-3160258752983268181L, -562832070955846884L}).toString());
        int ordinal = e.ordinal();
        int[] iArr = this.counts;
        int i2 = iArr[ordinal];
        iArr[ordinal] = i;
        this.size += i - i2;
        if (i2 == 0 && i > 0) {
            this.distinctElements++;
        } else if (i2 > 0 && i == 0) {
            this.distinctElements--;
        }
        return i2;
    }

    public static <E extends Enum<E>> EnumMultiset<E> create(Iterable<E> iterable, Class<E> cls) {
        EnumMultiset<E> create = create(cls);
        Iterables.addAll(create, iterable);
        return create;
    }
}
