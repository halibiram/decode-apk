package com.google.zxing.common.reedsolomon;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    public GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = genericGF;
            int length = iArr.length;
            int i = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i < length && iArr[i] == 0) {
                    i++;
                }
                if (i == length) {
                    this.coefficients = new int[]{0};
                    return;
                }
                int[] iArr2 = new int[length - i];
                this.coefficients = iArr2;
                System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
                return;
            }
            this.coefficients = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    public GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (isZero()) {
                return genericGFPoly;
            }
            if (genericGFPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int[] iArr2 = genericGFPoly.coefficients;
            if (iArr.length <= iArr2.length) {
                iArr = iArr2;
                iArr2 = iArr;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i = length; i < iArr.length; i++) {
                iArr3[i] = GenericGF.addOrSubtract(iArr2[i - length], iArr[i]);
            }
            return new GenericGFPoly(this.field, iArr3);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8423340262144644998L, 8338473405889558663L, -3158057113276760999L, -4470074072367047838L, 322602284980803685L, 3662072922055893640L, 6802083447002624573L}).toString());
    }

    public GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (!genericGFPoly.isZero()) {
                GenericGFPoly zero = this.field.getZero();
                int inverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
                GenericGFPoly genericGFPoly2 = this;
                while (genericGFPoly2.getDegree() >= genericGFPoly.getDegree() && !genericGFPoly2.isZero()) {
                    int degree = genericGFPoly2.getDegree() - genericGFPoly.getDegree();
                    int multiply = this.field.multiply(genericGFPoly2.getCoefficient(genericGFPoly2.getDegree()), inverse);
                    GenericGFPoly multiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, multiply);
                    zero = zero.addOrSubtract(this.field.buildMonomial(degree, multiply));
                    genericGFPoly2 = genericGFPoly2.addOrSubtract(multiplyByMonomial);
                }
                return new GenericGFPoly[]{zero, genericGFPoly2};
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{119911953656118230L, -7335731898564790111L, 2368307562928213596L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8894891047409220953L, 7421512376432560353L, 1940843588679198483L, -5447206078307007660L, -1242596687929520544L, -6556633003504120173L, -4984016157814272221L}).toString());
    }

    public int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.coefficients) {
                i2 = GenericGF.addOrSubtract(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.coefficients;
        int i4 = iArr[0];
        int length = iArr.length;
        for (int i5 = 1; i5 < length; i5++) {
            i4 = GenericGF.addOrSubtract(this.field.multiply(i, i4), this.coefficients[i5]);
        }
        return i4;
    }

    public int getCoefficient(int i) {
        return this.coefficients[(r0.length - 1) - i];
    }

    public int[] getCoefficients() {
        return this.coefficients;
    }

    public int getDegree() {
        return this.coefficients.length - 1;
    }

    public boolean isZero() {
        if (this.coefficients[0] != 0) {
            return false;
        }
        return true;
    }

    public GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (this.field.equals(genericGFPoly.field)) {
            if (!isZero() && !genericGFPoly.isZero()) {
                int[] iArr = this.coefficients;
                int length = iArr.length;
                int[] iArr2 = genericGFPoly.coefficients;
                int length2 = iArr2.length;
                int[] iArr3 = new int[(length + length2) - 1];
                for (int i = 0; i < length; i++) {
                    int i2 = iArr[i];
                    for (int i3 = 0; i3 < length2; i3++) {
                        int i4 = i + i3;
                        iArr3[i4] = GenericGF.addOrSubtract(iArr3[i4], this.field.multiply(i2, iArr2[i3]));
                    }
                }
                return new GenericGFPoly(this.field, iArr3);
            }
            return this.field.getZero();
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8158751350564616247L, -2599270713885066382L, -6846595239324937064L, -4619780719197857837L, 2312527829103854433L, 5637861880716382450L, 3732568056498596855L}).toString());
    }

    public GenericGFPoly multiplyByMonomial(int i, int i2) {
        if (i >= 0) {
            if (i2 == 0) {
                return this.field.getZero();
            }
            int length = this.coefficients.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
            }
            return new GenericGFPoly(this.field, iArr);
        }
        throw new IllegalArgumentException();
    }

    public String toString() {
        if (isZero()) {
            return new ObfuscatedString(new long[]{4347050436100344548L, -5949916596553273152L}).toString();
        }
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    if (degree == getDegree()) {
                        sb.append(new ObfuscatedString(new long[]{415382964839511537L, -6482681667986904702L}).toString());
                    } else {
                        sb.append(new ObfuscatedString(new long[]{8862352218179713717L, 2533881718244237011L}).toString());
                    }
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(new ObfuscatedString(new long[]{2774026542442912365L, 5837573487073764852L}).toString());
                }
                if (degree == 0 || coefficient != 1) {
                    int log = this.field.log(coefficient);
                    if (log == 0) {
                        sb.append('1');
                    } else if (log == 1) {
                        sb.append('a');
                    } else {
                        sb.append(new ObfuscatedString(new long[]{-8017982648647781820L, 64088218142297627L}).toString());
                        sb.append(log);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append(new ObfuscatedString(new long[]{-1724158127522211347L, -1560949675088528032L}).toString());
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }

    public GenericGFPoly multiply(int i) {
        if (i == 0) {
            return this.field.getZero();
        }
        if (i == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.field.multiply(this.coefficients[i2], i);
        }
        return new GenericGFPoly(this.field, iArr);
    }
}
