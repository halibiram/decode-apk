package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class Doubles extends DoublesMethodsForWeb {
    public static final int BYTES = 8;

    @GwtIncompatible
    static final Pattern FLOATING_POINT_PATTERN = fpPattern();

    @GwtCompatible
    /* loaded from: classes2.dex */
    public static class DoubleArrayAsList extends AbstractList<Double> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final double[] array;
        final int end;
        final int start;

        public DoubleArrayAsList(double[] dArr) {
            this(dArr, 0, dArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@CheckForNull Object obj) {
            if ((obj instanceof Double) && Doubles.indexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof DoubleArrayAsList) {
                DoubleArrayAsList doubleArrayAsList = (DoubleArrayAsList) obj;
                int size = size();
                if (doubleArrayAsList.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.array[this.start + i] != doubleArrayAsList.array[doubleArrayAsList.start + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i = 1;
            for (int i2 = this.start; i2 < this.end; i2++) {
                i = (i * 31) + Doubles.hashCode(this.array[i2]);
            }
            return i;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@CheckForNull Object obj) {
            int indexOf;
            if ((obj instanceof Double) && (indexOf = Doubles.indexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end)) >= 0) {
                return indexOf - this.start;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@CheckForNull Object obj) {
            int lastIndexOf;
            if ((obj instanceof Double) && (lastIndexOf = Doubles.lastIndexOf(this.array, ((Double) obj).doubleValue(), this.start, this.end)) >= 0) {
                return lastIndexOf - this.start;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Double> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            double[] dArr = this.array;
            int i3 = this.start;
            return new DoubleArrayAsList(dArr, i + i3, i3 + i2);
        }

        public double[] toDoubleArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 12);
            sb.append('[');
            sb.append(this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i < this.end) {
                    sb.append(new ObfuscatedString(new long[]{-3385462189595809229L, 6608413390692231365L}).toString());
                    sb.append(this.array[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }

        public DoubleArrayAsList(double[] dArr, int i, int i2) {
            this.array = dArr;
            this.start = i;
            this.end = i2;
        }

        @Override // java.util.AbstractList, java.util.List
        public Double get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Double.valueOf(this.array[this.start + i]);
        }

        @Override // java.util.AbstractList, java.util.List
        public Double set(int i, Double d) {
            Preconditions.checkElementIndex(i, size());
            double[] dArr = this.array;
            int i2 = this.start;
            double d2 = dArr[i2 + i];
            dArr[i2 + i] = ((Double) Preconditions.checkNotNull(d)).doubleValue();
            return Double.valueOf(d2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class DoubleConverter extends Converter<String, Double> implements Serializable {
        static final DoubleConverter INSTANCE = new DoubleConverter();
        private static final long serialVersionUID = 1;

        private DoubleConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-6077893707117061747L, 4267724135374478397L, 612695062409787882L, 3656720584552594857L, -364465542905207578L}).toString();
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Double d) {
            return d.toString();
        }

        @Override // com.google.common.base.Converter
        public Double doForward(String str) {
            return Double.valueOf(str);
        }
    }

    /* loaded from: classes2.dex */
    public enum LexicographicalComparator implements Comparator<double[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{7112800367085271332L, -3175030136395150609L, 6190831720756281165L, 1340664710700080829L, -8669863313978542625L, 7190586629271410783L}).toString();
        }

        @Override // java.util.Comparator
        public int compare(double[] dArr, double[] dArr2) {
            int min = Math.min(dArr.length, dArr2.length);
            for (int i = 0; i < min; i++) {
                int compare = Double.compare(dArr[i], dArr2[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return dArr.length - dArr2.length;
        }
    }

    private Doubles() {
    }

    public static List<Double> asList(double... dArr) {
        if (dArr.length == 0) {
            return Collections.emptyList();
        }
        return new DoubleArrayAsList(dArr);
    }

    public static int compare(double d, double d2) {
        return Double.compare(d, d2);
    }

    public static double[] concat(double[]... dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        double[] dArr3 = new double[i];
        int i2 = 0;
        for (double[] dArr4 : dArr) {
            System.arraycopy(dArr4, 0, dArr3, i2, dArr4.length);
            i2 += dArr4.length;
        }
        return dArr3;
    }

    @Beta
    public static double constrainToRange(double d, double d2, double d3) {
        if (d2 <= d3) {
            return Math.min(Math.max(d, d2), d3);
        }
        throw new IllegalArgumentException(Strings.lenientFormat(new ObfuscatedString(new long[]{2339109415471284973L, 7030235224054618265L, 809664802412621915L, -8188289470461244367L, -7639995311367546914L, 6350280993897466911L, 7834138415147038323L}).toString(), Double.valueOf(d2), Double.valueOf(d3)));
    }

    public static boolean contains(double[] dArr, double d) {
        for (double d2 : dArr) {
            if (d2 == d) {
                return true;
            }
        }
        return false;
    }

    public static double[] ensureCapacity(double[] dArr, int i, int i2) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{7960872940889572266L, -3523757350512681842L, -8498346399597386285L, -2697249204084854843L}).toString(), i);
        if (i2 >= 0) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-771660536934341121L, -361951219937910221L, 4871800477045827539L, -8553080566756742175L}).toString(), i2);
        if (dArr.length < i) {
            return Arrays.copyOf(dArr, i + i2);
        }
        return dArr;
    }

    @GwtIncompatible
    private static Pattern fpPattern() {
        String concat = String.valueOf(new ObfuscatedString(new long[]{6202296946830642821L, 3966704528350630081L, -4943530388723662354L, -2239551404206401676L, -1061542566725006029L}).toString()).concat(new ObfuscatedString(new long[]{2060323423888704158L, 991043744109864793L, 3342600485042002845L, -7867878207220425311L, -4709787388534591483L}).toString());
        String obfuscatedString = new ObfuscatedString(new long[]{6949772968958617142L, -4013232660947948592L, -2316733142206371036L, -4353080156276711035L, 8037242354889153872L, -2135666183277898721L, 8842185882108517955L, 6220815598327482428L}).toString();
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(25, obfuscatedString));
        sb.append(new ObfuscatedString(new long[]{-8804527766656550532L, -7296589704636722112L}).toString());
        sb.append(obfuscatedString);
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6300074516838977670L, 5227378608279905044L, 5229167337532605696L, 1606528610985483740L}), sb);
        StringBuilder sb2 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(23, concat), m3332x9d12c1f4));
        sb2.append(new ObfuscatedString(new long[]{-6375985704641383394L, 4141518337283662758L, -8587527631647866035L, 6899717996712743071L}).toString());
        sb2.append(concat);
        sb2.append(new ObfuscatedString(new long[]{1273137778388940715L, -5481565061647764495L}).toString());
        sb2.append(m3332x9d12c1f4);
        return Pattern.compile(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6474842167745900765L, 242898049858286509L}), sb2).replace(new ObfuscatedString(new long[]{681861607773732345L, 8954050859743727706L}).toString(), new ObfuscatedString(new long[]{-8318510273740967858L, -24019991605444420L}).toString()));
    }

    public static int hashCode(double d) {
        return Double.valueOf(d).hashCode();
    }

    public static int indexOf(double[] dArr, double d) {
        return indexOf(dArr, d, 0, dArr.length);
    }

    public static boolean isFinite(double d) {
        return Double.NEGATIVE_INFINITY < d && d < Double.POSITIVE_INFINITY;
    }

    public static String join(String str, double... dArr) {
        Preconditions.checkNotNull(str);
        if (dArr.length == 0) {
            return new ObfuscatedString(new long[]{-1137694009581306192L}).toString();
        }
        StringBuilder sb = new StringBuilder(dArr.length * 12);
        sb.append(dArr[0]);
        for (int i = 1; i < dArr.length; i++) {
            sb.append(str);
            sb.append(dArr[i]);
        }
        return sb.toString();
    }

    public static int lastIndexOf(double[] dArr, double d) {
        return lastIndexOf(dArr, d, 0, dArr.length);
    }

    public static Comparator<double[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    @GwtIncompatible("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static double max(double... dArr) {
        boolean z;
        if (dArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            d = Math.max(d, dArr[i]);
        }
        return d;
    }

    @GwtIncompatible("Available in GWT! Annotation is to avoid conflict with GWT specialization of base class.")
    public static double min(double... dArr) {
        boolean z;
        if (dArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            d = Math.min(d, dArr[i]);
        }
        return d;
    }

    public static void reverse(double[] dArr) {
        Preconditions.checkNotNull(dArr);
        reverse(dArr, 0, dArr.length);
    }

    public static void sortDescending(double[] dArr) {
        Preconditions.checkNotNull(dArr);
        sortDescending(dArr, 0, dArr.length);
    }

    @Beta
    public static Converter<String, Double> stringConverter() {
        return DoubleConverter.INSTANCE;
    }

    public static double[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof DoubleArrayAsList) {
            return ((DoubleArrayAsList) collection).toDoubleArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        double[] dArr = new double[length];
        for (int i = 0; i < length; i++) {
            dArr[i] = ((Number) Preconditions.checkNotNull(array[i])).doubleValue();
        }
        return dArr;
    }

    @Beta
    @CheckForNull
    @GwtIncompatible
    public static Double tryParse(String str) {
        if (FLOATING_POINT_PATTERN.matcher(str).matches()) {
            try {
                return Double.valueOf(Double.parseDouble(str));
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indexOf(double[] dArr, double d, int i, int i2) {
        while (i < i2) {
            if (dArr[i] == d) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lastIndexOf(double[] dArr, double d, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (dArr[i3] == d) {
                return i3;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003e, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int indexOf(double[] dArr, double[] dArr2) {
        Preconditions.checkNotNull(dArr, new ObfuscatedString(new long[]{-4892602665805601494L, 5819228778686887360L}).toString());
        Preconditions.checkNotNull(dArr2, new ObfuscatedString(new long[]{-7306477737741043107L, -4663301621276390809L}).toString());
        if (dArr2.length == 0) {
            return 0;
        }
        int i = 0;
        while (i < (dArr.length - dArr2.length) + 1) {
            for (int i2 = 0; i2 < dArr2.length; i2++) {
                if (dArr[i + i2] != dArr2[i2]) {
                    break;
                }
            }
            return i;
        }
        return -1;
    }

    public static void reverse(double[] dArr, int i, int i2) {
        Preconditions.checkNotNull(dArr);
        Preconditions.checkPositionIndexes(i, i2, dArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            double d = dArr[i];
            dArr[i] = dArr[i3];
            dArr[i3] = d;
            i++;
        }
    }

    public static void sortDescending(double[] dArr, int i, int i2) {
        Preconditions.checkNotNull(dArr);
        Preconditions.checkPositionIndexes(i, i2, dArr.length);
        Arrays.sort(dArr, i, i2);
        reverse(dArr, i, i2);
    }
}
