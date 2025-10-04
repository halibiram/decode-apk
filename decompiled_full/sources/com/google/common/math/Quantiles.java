package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.google.common.primitives.Ints;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Quantiles {

    /* loaded from: classes2.dex */
    public static final class Scale {
        private final int scale;

        public ScaleAndIndex index(int i) {
            return new ScaleAndIndex(this.scale, i);
        }

        public ScaleAndIndexes indexes(int... iArr) {
            return new ScaleAndIndexes(this.scale, (int[]) iArr.clone());
        }

        private Scale(int i) {
            Preconditions.checkArgument(i > 0, new ObfuscatedString(new long[]{4281203445559479332L, 6656103894236934359L, -1427664757859048103L, -9108571568078336587L, -9188294348852996158L}).toString());
            this.scale = i;
        }

        public ScaleAndIndexes indexes(Collection<Integer> collection) {
            return new ScaleAndIndexes(this.scale, Ints.toArray(collection));
        }
    }

    /* loaded from: classes2.dex */
    public static final class ScaleAndIndex {
        private final int index;
        private final int scale;

        public double compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public double computeInPlace(double... dArr) {
            boolean z;
            if (dArr.length > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-7216985909519718081L, 3928405074724947815L, -4269290408223622371L, 1709329215438284286L, 1316960114164126652L, 1192334401060498541L, 1458664970429684086L}).toString());
            if (Quantiles.containsNaN(dArr)) {
                return Double.NaN;
            }
            long length = this.index * (dArr.length - 1);
            int divide = (int) LongMath.divide(length, this.scale, RoundingMode.DOWN);
            int i = (int) (length - (divide * this.scale));
            Quantiles.selectInPlace(divide, dArr, 0, dArr.length - 1);
            if (i == 0) {
                return dArr[divide];
            }
            int i2 = divide + 1;
            Quantiles.selectInPlace(i2, dArr, i2, dArr.length - 1);
            return Quantiles.interpolate(dArr[divide], dArr[i2], i, this.scale);
        }

        private ScaleAndIndex(int i, int i2) {
            Quantiles.checkIndex(i2, i);
            this.scale = i;
            this.index = i2;
        }

        public double compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public double compute(long... jArr) {
            return computeInPlace(Quantiles.longsToDoubles(jArr));
        }

        public double compute(int... iArr) {
            return computeInPlace(Quantiles.intsToDoubles(iArr));
        }
    }

    /* loaded from: classes2.dex */
    public static final class ScaleAndIndexes {
        private final int[] indexes;
        private final int scale;

        public Map<Integer, Double> compute(Collection<? extends Number> collection) {
            return computeInPlace(Doubles.toArray(collection));
        }

        public Map<Integer, Double> computeInPlace(double... dArr) {
            boolean z;
            int i = 0;
            if (dArr.length > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8620296821807724629L, 8440658417853031193L, 4749915832892518436L, 3214064542947568033L, -5794101417545520966L, -6008289609036879574L, 5252881913452737524L}).toString());
            if (Quantiles.containsNaN(dArr)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int[] iArr = this.indexes;
                int length = iArr.length;
                while (i < length) {
                    linkedHashMap.put(Integer.valueOf(iArr[i]), Double.valueOf(Double.NaN));
                    i++;
                }
                return DesugarCollections.unmodifiableMap(linkedHashMap);
            }
            int[] iArr2 = this.indexes;
            int[] iArr3 = new int[iArr2.length];
            int[] iArr4 = new int[iArr2.length];
            int[] iArr5 = new int[iArr2.length * 2];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= this.indexes.length) {
                    break;
                }
                long length2 = r4[i2] * (dArr.length - 1);
                int divide = (int) LongMath.divide(length2, this.scale, RoundingMode.DOWN);
                int i4 = (int) (length2 - (divide * this.scale));
                iArr3[i2] = divide;
                iArr4[i2] = i4;
                iArr5[i3] = divide;
                int i5 = i3 + 1;
                if (i4 != 0) {
                    iArr5[i5] = divide + 1;
                    i3 += 2;
                } else {
                    i3 = i5;
                }
                i2++;
            }
            Arrays.sort(iArr5, 0, i3);
            Quantiles.selectAllInPlace(iArr5, 0, i3 - 1, dArr, 0, dArr.length - 1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            while (true) {
                int[] iArr6 = this.indexes;
                if (i < iArr6.length) {
                    int i6 = iArr3[i];
                    int i7 = iArr4[i];
                    if (i7 == 0) {
                        linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(dArr[i6]));
                    } else {
                        linkedHashMap2.put(Integer.valueOf(iArr6[i]), Double.valueOf(Quantiles.interpolate(dArr[i6], dArr[i6 + 1], i7, this.scale)));
                    }
                    i++;
                } else {
                    return DesugarCollections.unmodifiableMap(linkedHashMap2);
                }
            }
        }

        private ScaleAndIndexes(int i, int[] iArr) {
            for (int i2 : iArr) {
                Quantiles.checkIndex(i2, i);
            }
            Preconditions.checkArgument(iArr.length > 0, new ObfuscatedString(new long[]{4800777134175359661L, 1123297993403920541L, 1449090583574162046L, 7524489870708403651L, -1340559453875792920L, 7986368939949280180L}).toString());
            this.scale = i;
            this.indexes = iArr;
        }

        public Map<Integer, Double> compute(double... dArr) {
            return computeInPlace((double[]) dArr.clone());
        }

        public Map<Integer, Double> compute(long... jArr) {
            return computeInPlace(Quantiles.longsToDoubles(jArr));
        }

        public Map<Integer, Double> compute(int... iArr) {
            return computeInPlace(Quantiles.intsToDoubles(iArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkIndex(int i, int i2) {
        if (i >= 0 && i <= i2) {
            return;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3217303096089159686L, 2129883045558461288L, -6004401091868455754L, 5528227373057813568L, -1946678742653992628L, -4854919544108974789L, -53224316584860726L, 153694446338770160L, 7597851212815266705L}), new StringBuilder(70), i2));
    }

    private static int chooseNextSelection(int[] iArr, int i, int i2, int i3, int i4) {
        if (i == i2) {
            return i;
        }
        int i5 = i3 + i4;
        int i6 = i5 >>> 1;
        while (i2 > i + 1) {
            int i7 = (i + i2) >>> 1;
            int i8 = iArr[i7];
            if (i8 > i6) {
                i2 = i7;
            } else if (i8 < i6) {
                i = i7;
            } else {
                return i7;
            }
        }
        if ((i5 - iArr[i]) - iArr[i2] > 0) {
            return i2;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean containsNaN(double... dArr) {
        for (double d : dArr) {
            if (Double.isNaN(d)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double interpolate(double d, double d2, double d3, double d4) {
        if (d == Double.NEGATIVE_INFINITY) {
            return d2 == Double.POSITIVE_INFINITY ? Double.NaN : Double.NEGATIVE_INFINITY;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        return (((d2 - d) * d3) / d4) + d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] intsToDoubles(int[] iArr) {
        int length = iArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = iArr[i];
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double[] longsToDoubles(long[] jArr) {
        int length = jArr.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = jArr[i];
        }
        return dArr;
    }

    public static ScaleAndIndex median() {
        return scale(2).index(1);
    }

    private static void movePivotToStartOfSlice(double[] dArr, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        int i3 = (i + i2) >>> 1;
        double d = dArr[i2];
        double d2 = dArr[i3];
        if (d < d2) {
            z = true;
        } else {
            z = false;
        }
        double d3 = dArr[i];
        if (d2 < d3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (d >= d3) {
            z3 = false;
        }
        if (z == z2) {
            swap(dArr, i3, i);
        } else if (z != z3) {
            swap(dArr, i, i2);
        }
    }

    private static int partition(double[] dArr, int i, int i2) {
        movePivotToStartOfSlice(dArr, i, i2);
        double d = dArr[i];
        int i3 = i2;
        while (i2 > i) {
            if (dArr[i2] > d) {
                swap(dArr, i3, i2);
                i3--;
            }
            i2--;
        }
        swap(dArr, i, i3);
        return i3;
    }

    public static Scale percentiles() {
        return scale(100);
    }

    public static Scale quartiles() {
        return scale(4);
    }

    public static Scale scale(int i) {
        return new Scale(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void selectAllInPlace(int[] iArr, int i, int i2, double[] dArr, int i3, int i4) {
        int chooseNextSelection = chooseNextSelection(iArr, i, i2, i3, i4);
        int i5 = iArr[chooseNextSelection];
        selectInPlace(i5, dArr, i3, i4);
        int i6 = chooseNextSelection - 1;
        while (i6 >= i && iArr[i6] == i5) {
            i6--;
        }
        if (i6 >= i) {
            selectAllInPlace(iArr, i, i6, dArr, i3, i5 - 1);
        }
        int i7 = chooseNextSelection + 1;
        while (i7 <= i2 && iArr[i7] == i5) {
            i7++;
        }
        if (i7 <= i2) {
            selectAllInPlace(iArr, i7, i2, dArr, i5 + 1, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void selectInPlace(int i, double[] dArr, int i2, int i3) {
        if (i == i2) {
            int i4 = i2;
            for (int i5 = i2 + 1; i5 <= i3; i5++) {
                if (dArr[i4] > dArr[i5]) {
                    i4 = i5;
                }
            }
            if (i4 != i2) {
                swap(dArr, i4, i2);
                return;
            }
            return;
        }
        while (i3 > i2) {
            int partition = partition(dArr, i2, i3);
            if (partition >= i) {
                i3 = partition - 1;
            }
            if (partition <= i) {
                i2 = partition + 1;
            }
        }
    }

    private static void swap(double[] dArr, int i, int i2) {
        double d = dArr[i];
        dArr[i] = dArr[i2];
        dArr[i2] = d;
    }
}
