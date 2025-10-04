package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import java.util.Collection;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ElementTypesAreNonnullByDefault
@Deprecated
/* loaded from: classes2.dex */
public abstract class ForwardingBlockingDeque<E> extends ForwardingDeque<E> implements BlockingDeque<E> {
    @Override // com.google.common.collect.ForwardingDeque, com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract BlockingDeque<E> delegate();

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return delegate().drainTo(collection);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) {
        return delegate().offer(e, j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public boolean offerFirst(E e, long j, TimeUnit timeUnit) {
        return delegate().offerFirst(e, j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    public boolean offerLast(E e, long j, TimeUnit timeUnit) {
        return delegate().offerLast(e, j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    @CheckForNull
    public E poll(long j, TimeUnit timeUnit) {
        return delegate().poll(j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    @CheckForNull
    public E pollFirst(long j, TimeUnit timeUnit) {
        return delegate().pollFirst(j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque
    @CheckForNull
    public E pollLast(long j, TimeUnit timeUnit) {
        return delegate().pollLast(j, timeUnit);
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public void put(E e) {
        delegate().put(e);
    }

    @Override // java.util.concurrent.BlockingDeque
    public void putFirst(E e) {
        delegate().putFirst(e);
    }

    @Override // java.util.concurrent.BlockingDeque
    public void putLast(E e) {
        delegate().putLast(e);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return delegate().remainingCapacity();
    }

    @Override // java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue
    public E take() {
        return delegate().take();
    }

    @Override // java.util.concurrent.BlockingDeque
    public E takeFirst() {
        return delegate().takeFirst();
    }

    @Override // java.util.concurrent.BlockingDeque
    public E takeLast() {
        return delegate().takeLast();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        return delegate().drainTo(collection, i);
    }
}
