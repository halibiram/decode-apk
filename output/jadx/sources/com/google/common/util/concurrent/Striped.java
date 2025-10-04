package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C1201xd7e98285;
import defpackage.C1202xe9fe149b;
import j$.util.DesugarCollections;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@Beta
@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public abstract class Striped<L> {
    private static final int ALL_SET = -1;
    private static final int LARGE_LAZY_CUTOFF = 1024;

    /* loaded from: classes2.dex */
    public static class CompactStriped<L> extends PowerOfTwoStriped<L> {
        private final Object[] array;

        public /* synthetic */ CompactStriped(int i, Supplier supplier, AnonymousClass1 anonymousClass1) {
            this(i, supplier);
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            return (L) this.array[i];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.array.length;
        }

        private CompactStriped(int i, Supplier<L> supplier) {
            super(i);
            int i2 = 0;
            Preconditions.checkArgument(i <= 1073741824, new ObfuscatedString(new long[]{-6701110842505036623L, -8551456030263421557L, -5463957612269925836L, -6031039956358572742L}).toString());
            this.array = new Object[this.mask + 1];
            while (true) {
                Object[] objArr = this.array;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = supplier.get();
                i2++;
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class LargeLazyStriped<L> extends PowerOfTwoStriped<L> {
        final ConcurrentMap<Integer, L> locks;
        final int size;
        final Supplier<L> supplier;

        public LargeLazyStriped(int i, Supplier<L> supplier) {
            super(i);
            int i2;
            int i3 = this.mask;
            if (i3 == -1) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = i3 + 1;
            }
            this.size = i2;
            this.supplier = supplier;
            this.locks = new MapMaker().weakValues().makeMap();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.size != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            L l = this.locks.get(Integer.valueOf(i));
            if (l != null) {
                return l;
            }
            L l2 = this.supplier.get();
            return (L) MoreObjects.firstNonNull(this.locks.putIfAbsent(Integer.valueOf(i), l2), l2);
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }
    }

    /* loaded from: classes2.dex */
    public static class PaddedLock extends ReentrantLock {
        long unused1;
        long unused2;
        long unused3;

        public PaddedLock() {
            super(false);
        }
    }

    /* loaded from: classes2.dex */
    public static class PaddedSemaphore extends Semaphore {
        long unused1;
        long unused2;
        long unused3;

        public PaddedSemaphore(int i) {
            super(i, false);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class PowerOfTwoStriped<L> extends Striped<L> {
        final int mask;

        public PowerOfTwoStriped(int i) {
            super();
            boolean z;
            int ceilToPowerOfTwo;
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3952682105556257134L, -4177975766505270656L, -4387223390696389477L, -8124371148451560722L}).toString());
            if (i > 1073741824) {
                ceilToPowerOfTwo = -1;
            } else {
                ceilToPowerOfTwo = Striped.ceilToPowerOfTwo(i) - 1;
            }
            this.mask = ceilToPowerOfTwo;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(indexFor(obj));
        }

        @Override // com.google.common.util.concurrent.Striped
        public final int indexFor(Object obj) {
            return Striped.smear(obj.hashCode()) & this.mask;
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class SmallLazyStriped<L> extends PowerOfTwoStriped<L> {
        final AtomicReferenceArray<ArrayReference<? extends L>> locks;
        final ReferenceQueue<L> queue;
        final int size;
        final Supplier<L> supplier;

        /* loaded from: classes2.dex */
        public static final class ArrayReference<L> extends WeakReference<L> {
            final int index;

            public ArrayReference(L l, int i, ReferenceQueue<L> referenceQueue) {
                super(l, referenceQueue);
                this.index = i;
            }
        }

        public SmallLazyStriped(int i, Supplier<L> supplier) {
            super(i);
            int i2;
            this.queue = new ReferenceQueue<>();
            int i3 = this.mask;
            if (i3 == -1) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = i3 + 1;
            }
            this.size = i2;
            this.locks = new AtomicReferenceArray<>(i2);
            this.supplier = supplier;
        }

        private void drainQueue() {
            while (true) {
                Reference<? extends L> poll = this.queue.poll();
                if (poll != null) {
                    ArrayReference<? extends L> arrayReference = (ArrayReference) poll;
                    AtomicReferenceArray<ArrayReference<? extends L>> atomicReferenceArray = this.locks;
                    int i = arrayReference.index;
                    while (!atomicReferenceArray.compareAndSet(i, arrayReference, null) && atomicReferenceArray.get(i) == arrayReference) {
                    }
                } else {
                    return;
                }
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            L l;
            L l2;
            if (this.size != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            ArrayReference<? extends L> arrayReference = this.locks.get(i);
            if (arrayReference == null) {
                l = null;
            } else {
                l = arrayReference.get();
            }
            if (l != null) {
                return l;
            }
            L l3 = this.supplier.get();
            ArrayReference<? extends L> arrayReference2 = new ArrayReference<>(l3, i, this.queue);
            do {
                AtomicReferenceArray<ArrayReference<? extends L>> atomicReferenceArray = this.locks;
                while (!atomicReferenceArray.compareAndSet(i, arrayReference, arrayReference2)) {
                    if (atomicReferenceArray.get(i) != arrayReference) {
                        arrayReference = this.locks.get(i);
                        if (arrayReference == null) {
                            l2 = null;
                        } else {
                            l2 = arrayReference.get();
                        }
                    }
                }
                drainQueue();
                return l3;
            } while (l2 == null);
            return l2;
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }
    }

    /* loaded from: classes2.dex */
    public static final class WeakSafeCondition extends ForwardingCondition {
        private final Condition delegate;
        private final WeakSafeReadWriteLock strongReference;

        public WeakSafeCondition(Condition condition, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = condition;
            this.strongReference = weakSafeReadWriteLock;
        }

        @Override // com.google.common.util.concurrent.ForwardingCondition
        public Condition delegate() {
            return this.delegate;
        }
    }

    /* loaded from: classes2.dex */
    public static final class WeakSafeLock extends ForwardingLock {
        private final Lock delegate;
        private final WeakSafeReadWriteLock strongReference;

        public WeakSafeLock(Lock lock, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = lock;
            this.strongReference = weakSafeReadWriteLock;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock
        public Lock delegate() {
            return this.delegate;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new WeakSafeCondition(this.delegate.newCondition(), this.strongReference);
        }
    }

    /* loaded from: classes2.dex */
    public static final class WeakSafeReadWriteLock implements ReadWriteLock {
        private final ReadWriteLock delegate = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new WeakSafeLock(this.delegate.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new WeakSafeLock(this.delegate.writeLock(), this);
        }
    }

    public /* synthetic */ Striped(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static int ceilToPowerOfTwo(int i) {
        return 1 << IntMath.log2(i, RoundingMode.CEILING);
    }

    public static <L> Striped<L> custom(int i, Supplier<L> supplier) {
        return new CompactStriped(i, supplier);
    }

    private static /* synthetic */ Lock lambda$lazyWeakLock$0() {
        return new ReentrantLock(false);
    }

    public static /* synthetic */ Semaphore lambda$lazyWeakSemaphore$2(int i) {
        return new Semaphore(i, false);
    }

    public static /* synthetic */ Semaphore lambda$semaphore$1(int i) {
        return new PaddedSemaphore(i);
    }

    private static <L> Striped<L> lazy(int i, Supplier<L> supplier) {
        if (i < 1024) {
            return new SmallLazyStriped(i, supplier);
        }
        return new LargeLazyStriped(i, supplier);
    }

    public static Striped<Lock> lazyWeakLock(int i) {
        return lazy(i, new C1202xe9fe149b(0));
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i) {
        return lazy(i, new C0276x9e171bf9(0));
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i, int i2) {
        return lazy(i, new C1201xd7e98285(i2, 1));
    }

    public static Striped<Lock> lock(int i) {
        return custom(i, new C0276x9e171bf9(1));
    }

    public static Striped<ReadWriteLock> readWriteLock(int i) {
        return custom(i, new C1202xe9fe149b(1));
    }

    public static Striped<Semaphore> semaphore(int i, int i2) {
        return custom(i, new C1201xd7e98285(i2, 0));
    }

    public static int smear(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ Lock m1296x3271d0aa() {
        return lambda$lazyWeakLock$0();
    }

    public Iterable<L> bulkGet(Iterable<? extends Object> iterable) {
        ArrayList newArrayList = Lists.newArrayList(iterable);
        if (newArrayList.isEmpty()) {
            return ImmutableList.of();
        }
        int[] iArr = new int[newArrayList.size()];
        for (int i = 0; i < newArrayList.size(); i++) {
            iArr[i] = indexFor(newArrayList.get(i));
        }
        Arrays.sort(iArr);
        int i2 = iArr[0];
        newArrayList.set(0, getAt(i2));
        for (int i3 = 1; i3 < newArrayList.size(); i3++) {
            int i4 = iArr[i3];
            if (i4 == i2) {
                newArrayList.set(i3, newArrayList.get(i3 - 1));
            } else {
                newArrayList.set(i3, getAt(i4));
                i2 = i4;
            }
        }
        return DesugarCollections.unmodifiableList(newArrayList);
    }

    public abstract L get(Object obj);

    public abstract L getAt(int i);

    public abstract int indexFor(Object obj);

    public abstract int size();

    private Striped() {
    }
}
