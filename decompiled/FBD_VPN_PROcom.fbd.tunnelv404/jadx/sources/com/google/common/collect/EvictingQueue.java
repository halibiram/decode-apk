package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

@Beta
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class EvictingQueue<E> extends ForwardingQueue<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;

    @VisibleForTesting
    final int maxSize;

    private EvictingQueue(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-4541622456215415604L, -8185733276767538910L, 3329752863045168256L, 8508121003321723672L}).toString(), i);
        this.delegate = new ArrayDeque(i);
        this.maxSize = i;
    }

    public static <E> EvictingQueue<E> create(int i) {
        return new EvictingQueue<>(i);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
    @CanIgnoreReturnValue
    public boolean add(E e) {
        Preconditions.checkNotNull(e);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e);
        return true;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size >= this.maxSize) {
            clear();
            return Iterables.addAll(this, Iterables.skip(collection, size - this.maxSize));
        }
        return standardAddAll(collection);
    }

    @Override // com.google.common.collect.ForwardingQueue, java.util.Queue
    @CanIgnoreReturnValue
    public boolean offer(E e) {
        return add(e);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return super.toArray();
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public Queue<E> delegate() {
        return this.delegate;
    }
}
