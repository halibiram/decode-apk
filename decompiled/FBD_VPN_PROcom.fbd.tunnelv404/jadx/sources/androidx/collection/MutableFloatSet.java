package androidx.collection;

import androidx.annotation.IntRange;
import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0001J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u000eH\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0011\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0086\u0002J\u0011\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0086\u0002J\u0011\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH\u0086\u0002J\u0011\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fH\u0086\u0002J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0001J\u000e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\u001b\u001a\u00020\u000eH\u0002J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0003H\u0002J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u0003H\u0002J\b\u0010 \u001a\u00020\u0003H\u0007J\u0019\u0010!\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#H\u0082\bR\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Landroidx/collection/MutableFloatSet;", "Landroidx/collection/FloatSet;", "initialCapacity", "", "(I)V", "growthLimit", "add", "", "element", "", "addAll", "elements", "", "adjustStorage", "", "clear", "findAbsoluteInsertIndex", "findFirstAvailableSlot", "hash1", "initializeGrowth", "initializeMetadata", "capacity", "initializeStorage", "minusAssign", "plusAssign", "remove", "removeAll", "removeDeletedMarkers", "removeElementAt", "index", "resizeStorage", "newCapacity", "trim", "writeMetadata", "value", "", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/MutableFloatSet\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 FloatSet.kt\nandroidx/collection/FloatSet\n+ 6 FloatSet.kt\nandroidx/collection/FloatSetKt\n*L\n1#1,853:1\n832#1,2:997\n836#1,5:1005\n832#1,2:1036\n836#1,5:1044\n832#1,2:1061\n836#1,5:1069\n832#1,2:1075\n836#1,5:1083\n1#2:854\n1672#3,6:855\n1826#3:874\n1688#3:878\n1619#3:895\n1615#3:898\n1795#3,3:902\n1809#3,3:906\n1733#3:910\n1721#3:912\n1715#3:913\n1728#3:918\n1818#3:920\n1619#3:934\n1615#3:937\n1795#3,3:941\n1809#3,3:945\n1733#3:949\n1721#3:951\n1715#3:952\n1728#3:957\n1818#3:959\n1826#3:981\n1688#3:985\n1672#3,6:999\n1672#3,6:1010\n1615#3:1019\n1619#3:1020\n1795#3,3:1021\n1809#3,3:1024\n1733#3:1027\n1721#3:1028\n1715#3:1029\n1728#3:1030\n1818#3:1031\n1682#3:1032\n1661#3:1033\n1680#3:1034\n1661#3:1035\n1672#3,6:1038\n1795#3,3:1049\n1826#3:1052\n1715#3:1053\n1685#3:1054\n1661#3:1055\n1615#3:1059\n1619#3:1060\n1672#3,6:1063\n1661#3:1074\n1672#3,6:1077\n1672#3,6:1088\n1672#3,6:1094\n13614#4,2:861\n13614#4,2:968\n262#5,4:863\n232#5,7:867\n243#5,3:875\n246#5,2:879\n266#5,2:881\n249#5,6:883\n268#5:889\n442#5:890\n443#5:894\n445#5,2:896\n447#5,3:899\n450#5:905\n451#5:909\n452#5:911\n453#5,4:914\n459#5:919\n460#5,8:921\n442#5:929\n443#5:933\n445#5,2:935\n447#5,3:938\n450#5:944\n451#5:948\n452#5:950\n453#5,4:953\n459#5:958\n460#5,8:960\n262#5,4:970\n232#5,7:974\n243#5,3:982\n246#5,2:986\n266#5,2:988\n249#5,6:990\n268#5:996\n849#6,3:891\n849#6,3:930\n849#6,3:1016\n849#6,3:1056\n*S KotlinDebug\n*F\n+ 1 FloatSet.kt\nandroidx/collection/MutableFloatSet\n*L\n673#1:997,2\n673#1:1005,5\n731#1:1036,2\n731#1:1044,5\n803#1:1061,2\n803#1:1069,5\n818#1:1075,2\n818#1:1083,5\n526#1:855,6\n595#1:874\n595#1:878\n607#1:895\n607#1:898\n607#1:902,3\n607#1:906,3\n607#1:910\n607#1:912\n607#1:913\n607#1:918\n607#1:920\n620#1:934\n620#1:937\n620#1:941,3\n620#1:945,3\n620#1:949\n620#1:951\n620#1:952\n620#1:957\n620#1:959\n663#1:981\n663#1:985\n673#1:999,6\n683#1:1010,6\n697#1:1019\n698#1:1020\n705#1:1021,3\n706#1:1024,3\n707#1:1027\n708#1:1028\n708#1:1029\n712#1:1030\n715#1:1031\n724#1:1032\n724#1:1033\n730#1:1034\n730#1:1035\n731#1:1038,6\n745#1:1049,3\n746#1:1052\n748#1:1053\n798#1:1054\n798#1:1055\n801#1:1059\n803#1:1060\n803#1:1063,6\n816#1:1074\n818#1:1077,6\n833#1:1088,6\n839#1:1094,6\n573#1:861,2\n642#1:968,2\n595#1:863,4\n595#1:867,7\n595#1:875,3\n595#1:879,2\n595#1:881,2\n595#1:883,6\n595#1:889\n607#1:890\n607#1:894\n607#1:896,2\n607#1:899,3\n607#1:905\n607#1:909\n607#1:911\n607#1:914,4\n607#1:919\n607#1:921,8\n620#1:929\n620#1:933\n620#1:935,2\n620#1:938,3\n620#1:944\n620#1:948\n620#1:950\n620#1:953,4\n620#1:958\n620#1:960,8\n663#1:970,4\n663#1:974,7\n663#1:982,3\n663#1:986,2\n663#1:988,2\n663#1:990,6\n663#1:996\n607#1:891,3\n620#1:930,3\n696#1:1016,3\n800#1:1056,3\n*E\n"})
/* loaded from: classes.dex */
public final class MutableFloatSet extends FloatSet {
    private int growthLimit;

    public MutableFloatSet() {
        this(0, 1, null);
    }

    private final void adjustStorage() {
        if (this._capacity > 8) {
            if (Long.compare(AbstractC0749x8313616e.m3324x3271d0aa(this._size, 32L) ^ Long.MIN_VALUE, AbstractC0749x8313616e.m3324x3271d0aa(this._capacity, 25L) ^ Long.MIN_VALUE) <= 0) {
                removeDeletedMarkers();
                return;
            }
        }
        resizeStorage(ScatterMapKt.nextCapacity(this._capacity));
    }

    private final int findAbsoluteInsertIndex(float element) {
        int i;
        int floatToIntBits = Float.floatToIntBits(element) * ScatterMapKt.MurmurHashC1;
        int i2 = floatToIntBits ^ (floatToIntBits << 16);
        int i3 = i2 >>> 7;
        int i4 = i2 & 127;
        int i5 = this._capacity;
        int i6 = i3 & i5;
        int i7 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i8 = i6 >> 3;
            int i9 = (i6 & 7) << 3;
            long j = ((jArr[i8 + 1] << (64 - i9)) & ((-i9) >> 63)) | (jArr[i8] >>> i9);
            long j2 = i4;
            int i10 = i7;
            long j3 = j ^ (j2 * ScatterMapKt.BitmaskLsb);
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j4) >> 3) + i6) & i5;
                if (this.elements[numberOfTrailingZeros] == element) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j) << 6) & j & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i3);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage();
                    findFirstAvailableSlot = findFirstAvailableSlot(i3);
                }
                this._size++;
                int i11 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i12 = findFirstAvailableSlot >> 3;
                long j5 = jArr2[i12];
                int i13 = (findFirstAvailableSlot & 7) << 3;
                if (((j5 >> i13) & 255) == 128) {
                    i = 1;
                } else {
                    i = 0;
                }
                this.growthLimit = i11 - i;
                jArr2[i12] = (j5 & (~(255 << i13))) | (j2 << i13);
                int i14 = this._capacity;
                int i15 = ((findFirstAvailableSlot - 7) & i14) + (i14 & 7);
                int i16 = i15 >> 3;
                int i17 = (i15 & 7) << 3;
                jArr2[i16] = ((~(255 << i17)) & jArr2[i16]) | (j2 << i17);
                return findFirstAvailableSlot;
            }
            i7 = i10 + 8;
            i6 = (i6 + i7) & i5;
        }
    }

    private final int findFirstAvailableSlot(int hash1) {
        int i = this._capacity;
        int i2 = hash1 & i;
        int i3 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i4 = i2 >> 3;
            int i5 = (i2 & 7) << 3;
            long j = ((jArr[i4 + 1] << (64 - i5)) & ((-i5) >> 63)) | (jArr[i4] >>> i5);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i2 + (Long.numberOfTrailingZeros(j2) >> 3)) & i;
            }
            i3 += 8;
            i2 = (i2 + i3) & i;
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(get_capacity()) - this._size;
    }

    private final void initializeMetadata(int capacity) {
        long[] jArr;
        if (capacity == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            jArr = new long[((capacity + 15) & (-8)) >> 3];
            ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
        }
        this.metadata = jArr;
        int i = capacity >> 3;
        long j = 255 << ((capacity & 7) << 3);
        jArr[i] = (jArr[i] & (~j)) | j;
        initializeGrowth();
    }

    private final void initializeStorage(int initialCapacity) {
        int i;
        if (initialCapacity > 0) {
            i = Math.max(7, ScatterMapKt.normalizeCapacity(initialCapacity));
        } else {
            i = 0;
        }
        this._capacity = i;
        initializeMetadata(i);
        this.elements = new float[i];
    }

    private final void removeDeletedMarkers() {
        long[] jArr = this.metadata;
        int i = this._capacity;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 >> 3;
            int i5 = (i3 & 7) << 3;
            if (((jArr[i4] >> i5) & 255) == 254) {
                long[] jArr2 = this.metadata;
                jArr2[i4] = (128 << i5) | (jArr2[i4] & (~(255 << i5)));
                int i6 = this._capacity;
                int i7 = ((i3 - 7) & i6) + (i6 & 7);
                int i8 = i7 >> 3;
                int i9 = (i7 & 7) << 3;
                jArr2[i8] = ((~(255 << i9)) & jArr2[i8]) | (128 << i9);
                i2++;
            }
        }
        this.growthLimit += i2;
    }

    private final void removeElementAt(int index) {
        this._size--;
        long[] jArr = this.metadata;
        int i = index >> 3;
        int i2 = (index & 7) << 3;
        jArr[i] = (jArr[i] & (~(255 << i2))) | (254 << i2);
        int i3 = this._capacity;
        int i4 = ((index - 7) & i3) + (i3 & 7);
        int i5 = i4 >> 3;
        int i6 = (i4 & 7) << 3;
        jArr[i5] = (jArr[i5] & (~(255 << i6))) | (254 << i6);
    }

    private final void resizeStorage(int newCapacity) {
        long[] jArr;
        float[] fArr;
        long[] jArr2 = this.metadata;
        float[] fArr2 = this.elements;
        int i = this._capacity;
        initializeStorage(newCapacity);
        float[] fArr3 = this.elements;
        int i2 = 0;
        while (i2 < i) {
            if (((jArr2[i2 >> 3] >> ((i2 & 7) << 3)) & 255) < 128) {
                float f = fArr2[i2];
                int floatToIntBits = Float.floatToIntBits(f) * ScatterMapKt.MurmurHashC1;
                int i3 = floatToIntBits ^ (floatToIntBits << 16);
                int findFirstAvailableSlot = findFirstAvailableSlot(i3 >>> 7);
                long j = i3 & 127;
                long[] jArr3 = this.metadata;
                int i4 = findFirstAvailableSlot >> 3;
                int i5 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                fArr = fArr2;
                jArr3[i4] = ((~(255 << i5)) & jArr3[i4]) | (j << i5);
                int i6 = this._capacity;
                int i7 = ((findFirstAvailableSlot - 7) & i6) + (i6 & 7);
                int i8 = i7 >> 3;
                int i9 = (i7 & 7) << 3;
                jArr3[i8] = ((~(255 << i9)) & jArr3[i8]) | (j << i9);
                fArr3[findFirstAvailableSlot] = f;
            } else {
                jArr = jArr2;
                fArr = fArr2;
            }
            i2++;
            jArr2 = jArr;
            fArr2 = fArr;
        }
    }

    private final void writeMetadata(int index, long value) {
        long[] jArr = this.metadata;
        int i = index >> 3;
        int i2 = (index & 7) << 3;
        jArr[i] = (jArr[i] & (~(255 << i2))) | (value << i2);
        int i3 = this._capacity;
        int i4 = ((index - 7) & i3) + (i3 & 7);
        int i5 = i4 >> 3;
        int i6 = (i4 & 7) << 3;
        jArr[i5] = (value << i6) | (jArr[i5] & (~(255 << i6)));
    }

    public final boolean add(float element) {
        int i = this._size;
        this.elements[findAbsoluteInsertIndex(element)] = element;
        if (this._size != i) {
            return true;
        }
        return false;
    }

    public final boolean addAll(@NotNull float[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i = this._size;
        plusAssign(elements);
        return i != this._size;
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            ArraysKt___ArraysJvmKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
            long[] jArr2 = this.metadata;
            int i = this._capacity;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        initializeGrowth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0065, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0067, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void minusAssign(float element) {
        int i;
        int floatToIntBits = Float.floatToIntBits(element) * ScatterMapKt.MurmurHashC1;
        int i2 = floatToIntBits ^ (floatToIntBits << 16);
        int i3 = i2 & 127;
        int i4 = this._capacity;
        int i5 = (i2 >>> 7) & i4;
        int i6 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (i3 * ScatterMapKt.BitmaskLsb) ^ j;
            long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L);
            while (true) {
                if (j3 == 0) {
                    break;
                }
                i = ((Long.numberOfTrailingZeros(j3) >> 3) + i5) & i4;
                if (this.elements[i] == element) {
                    break loop0;
                } else {
                    j3 &= j3 - 1;
                }
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
        }
        if (i >= 0) {
            removeElementAt(i);
        }
    }

    public final void plusAssign(float element) {
        this.elements[findAbsoluteInsertIndex(element)] = element;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0068, code lost:
    
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006a, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(float element) {
        int i;
        int floatToIntBits = Float.floatToIntBits(element) * ScatterMapKt.MurmurHashC1;
        int i2 = floatToIntBits ^ (floatToIntBits << 16);
        int i3 = i2 & 127;
        int i4 = this._capacity;
        int i5 = (i2 >>> 7) & i4;
        boolean z = false;
        int i6 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (i3 * ScatterMapKt.BitmaskLsb) ^ j;
            long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L);
            while (true) {
                if (j3 == 0) {
                    break;
                }
                i = ((Long.numberOfTrailingZeros(j3) >> 3) + i5) & i4;
                if (this.elements[i] == element) {
                    break loop0;
                }
                j3 &= j3 - 1;
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
        }
        if (i >= 0) {
            z = true;
        }
        if (z) {
            removeElementAt(i);
        }
        return z;
    }

    public final boolean removeAll(@NotNull float[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i = this._size;
        minusAssign(elements);
        return i != this._size;
    }

    @IntRange(from = 0)
    public final int trim() {
        int i = this._capacity;
        int normalizeCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (normalizeCapacity < i) {
            resizeStorage(normalizeCapacity);
            return i - this._capacity;
        }
        return 0;
    }

    public /* synthetic */ MutableFloatSet(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public MutableFloatSet(int i) {
        super(null);
        if (i >= 0) {
            initializeStorage(ScatterMapKt.unloadedCapacity(i));
            return;
        }
        throw new IllegalArgumentException("Capacity must be a positive value.");
    }

    public final void plusAssign(@NotNull float[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (float f : elements) {
            plusAssign(f);
        }
    }

    public final boolean addAll(@NotNull FloatSet elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i = this._size;
        plusAssign(elements);
        return i != this._size;
    }

    public final boolean removeAll(@NotNull FloatSet elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int i = this._size;
        minusAssign(elements);
        return i != this._size;
    }

    public final void plusAssign(@NotNull FloatSet elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        float[] fArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        plusAssign(fArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void minusAssign(@NotNull float[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (float f : elements) {
            minusAssign(f);
        }
    }

    public final void minusAssign(@NotNull FloatSet elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        float[] fArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        minusAssign(fArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }
}
