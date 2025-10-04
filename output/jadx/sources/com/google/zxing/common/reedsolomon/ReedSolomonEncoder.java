package com.google.zxing.common.reedsolomon;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class ReedSolomonEncoder {
    private final List<GenericGFPoly> cachedGenerators;
    private final GenericGF field;

    public ReedSolomonEncoder(GenericGF genericGF) {
        this.field = genericGF;
        ArrayList arrayList = new ArrayList();
        this.cachedGenerators = arrayList;
        arrayList.add(new GenericGFPoly(genericGF, new int[]{1}));
    }

    private GenericGFPoly buildGenerator(int i) {
        if (i >= this.cachedGenerators.size()) {
            GenericGFPoly genericGFPoly = (GenericGFPoly) AbstractC0362x4440ab85.m2928x75d576dc(1, this.cachedGenerators);
            for (int size = this.cachedGenerators.size(); size <= i; size++) {
                GenericGF genericGF = this.field;
                genericGFPoly = genericGFPoly.multiply(new GenericGFPoly(genericGF, new int[]{1, genericGF.exp(genericGF.getGeneratorBase() + (size - 1))}));
                this.cachedGenerators.add(genericGFPoly);
            }
        }
        return this.cachedGenerators.get(i);
    }

    public void encode(int[] iArr, int i) {
        if (i != 0) {
            int length = iArr.length - i;
            if (length > 0) {
                GenericGFPoly buildGenerator = buildGenerator(i);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] coefficients = new GenericGFPoly(this.field, iArr2).multiplyByMonomial(i, 1).divide(buildGenerator)[1].getCoefficients();
                int length2 = i - coefficients.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    iArr[length + i2] = 0;
                }
                System.arraycopy(coefficients, 0, iArr, length + length2, coefficients.length);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3612430030278393585L, -6327904287628170395L, 4186751254932150480L, 1339468602094269095L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4691442411382380145L, 2182019322654033285L, -2058809937043242103L, 4925032243328337792L, -3593688511453953790L}).toString());
    }
}
