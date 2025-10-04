package com.google.zxing.pdf417.decoder.ec;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ModulusPoly {
    private final int[] coefficients;
    private final ModulusGF field;

    public ModulusPoly(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = modulusGF;
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

    public ModulusPoly add(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (isZero()) {
                return modulusPoly;
            }
            if (modulusPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int[] iArr2 = modulusPoly.coefficients;
            if (iArr.length <= iArr2.length) {
                iArr = iArr2;
                iArr2 = iArr;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i = length; i < iArr.length; i++) {
                iArr3[i] = this.field.add(iArr2[i - length], iArr[i]);
            }
            return new ModulusPoly(this.field, iArr3);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-103199143473904923L, -2793453585265155044L, -9113849972777227924L, -1499658450846017822L, -64611823428776639L, -5429704221103661065L, -6888911349696752392L}).toString());
    }

    public int evaluateAt(int i) {
        if (i == 0) {
            return getCoefficient(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.coefficients) {
                i2 = this.field.add(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.coefficients;
        int i4 = iArr[0];
        int length = iArr.length;
        for (int i5 = 1; i5 < length; i5++) {
            ModulusGF modulusGF = this.field;
            i4 = modulusGF.add(modulusGF.multiply(i, i4), this.coefficients[i5]);
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

    public ModulusPoly multiply(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (!isZero() && !modulusPoly.isZero()) {
                int[] iArr = this.coefficients;
                int length = iArr.length;
                int[] iArr2 = modulusPoly.coefficients;
                int length2 = iArr2.length;
                int[] iArr3 = new int[(length + length2) - 1];
                for (int i = 0; i < length; i++) {
                    int i2 = iArr[i];
                    for (int i3 = 0; i3 < length2; i3++) {
                        int i4 = i + i3;
                        ModulusGF modulusGF = this.field;
                        iArr3[i4] = modulusGF.add(iArr3[i4], modulusGF.multiply(i2, iArr2[i3]));
                    }
                }
                return new ModulusPoly(this.field, iArr3);
            }
            return this.field.getZero();
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{3871910733270314430L, 7123391980154363319L, 5800596276206473173L, 374544925925653872L, -8896522104947771592L, 7608709908763194159L, -5711718120262769344L}).toString());
    }

    public ModulusPoly multiplyByMonomial(int i, int i2) {
        if (i >= 0) {
            if (i2 == 0) {
                return this.field.getZero();
            }
            int length = this.coefficients.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
            }
            return new ModulusPoly(this.field, iArr);
        }
        throw new IllegalArgumentException();
    }

    public ModulusPoly negative() {
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.field.subtract(0, this.coefficients[i]);
        }
        return new ModulusPoly(this.field, iArr);
    }

    public ModulusPoly subtract(ModulusPoly modulusPoly) {
        if (this.field.equals(modulusPoly.field)) {
            if (modulusPoly.isZero()) {
                return this;
            }
            return add(modulusPoly.negative());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7467572317276875510L, 4066781933992855497L, 7929288247448029097L, -59370844377261954L, 2127918561886008632L, 7150858243104153521L, -6832959284720783063L}).toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(new ObfuscatedString(new long[]{8509116072863428261L, 1036402806153359120L}).toString());
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(new ObfuscatedString(new long[]{8016483355807430909L, -2936051291814483819L}).toString());
                }
                if (degree == 0 || coefficient != 1) {
                    sb.append(coefficient);
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append(new ObfuscatedString(new long[]{543008365701981459L, 1296107113814653197L}).toString());
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }

    public ModulusPoly multiply(int i) {
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
        return new ModulusPoly(this.field, iArr);
    }
}
