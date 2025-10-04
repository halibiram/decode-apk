package com.google.android.material.carousel;

import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class Arrangement {
    private static final float MEDIUM_ITEM_FLEX_PERCENTAGE = 0.1f;
    final float cost;
    final int largeCount;
    float largeSize;
    int mediumCount;
    float mediumSize;
    final int priority;
    int smallCount;
    float smallSize;

    public Arrangement(int i, float f, float f2, float f3, int i2, float f4, int i3, float f5, int i4, float f6) {
        this.priority = i;
        this.smallSize = MathUtils.clamp(f, f2, f3);
        this.smallCount = i2;
        this.mediumSize = f4;
        this.mediumCount = i3;
        this.largeSize = f5;
        this.largeCount = i4;
        fit(f6, f2, f3, f5);
        this.cost = cost(f5);
    }

    private float calculateLargeSize(float f, int i, float f2, int i2, int i3) {
        if (i <= 0) {
            f2 = 0.0f;
        }
        float f3 = i2 / 2.0f;
        return (f - ((i + f3) * f2)) / (i3 + f3);
    }

    private float cost(float f) {
        if (!isValid()) {
            return Float.MAX_VALUE;
        }
        return Math.abs(f - this.largeSize) * this.priority;
    }

    public static Arrangement findLowestCostArrangement(float f, float f2, float f3, float f4, int[] iArr, float f5, int[] iArr2, float f6, int[] iArr3) {
        Arrangement arrangement = null;
        int i = 1;
        for (int i2 : iArr3) {
            int length = iArr2.length;
            int i3 = 0;
            while (i3 < length) {
                int i4 = iArr2[i3];
                int length2 = iArr.length;
                int i5 = 0;
                while (i5 < length2) {
                    int i6 = i5;
                    int i7 = length2;
                    int i8 = i3;
                    int i9 = length;
                    Arrangement arrangement2 = new Arrangement(i, f2, f3, f4, iArr[i5], f5, i4, f6, i2, f);
                    if (arrangement == null || arrangement2.cost < arrangement.cost) {
                        if (arrangement2.cost == 0.0f) {
                            return arrangement2;
                        }
                        arrangement = arrangement2;
                    }
                    i++;
                    i5 = i6 + 1;
                    length2 = i7;
                    i3 = i8;
                    length = i9;
                }
                i3++;
            }
        }
        return arrangement;
    }

    private void fit(float f, float f2, float f3, float f4) {
        float f5;
        float space = f - getSpace();
        int i = this.smallCount;
        if (i > 0 && space > 0.0f) {
            float f6 = this.smallSize;
            this.smallSize = Math.min(space / i, f3 - f6) + f6;
        } else if (i > 0 && space < 0.0f) {
            float f7 = this.smallSize;
            this.smallSize = Math.max(space / i, f2 - f7) + f7;
        }
        int i2 = this.smallCount;
        if (i2 > 0) {
            f5 = this.smallSize;
        } else {
            f5 = 0.0f;
        }
        this.smallSize = f5;
        float calculateLargeSize = calculateLargeSize(f, i2, f5, this.mediumCount, this.largeCount);
        this.largeSize = calculateLargeSize;
        float f8 = (this.smallSize + calculateLargeSize) / 2.0f;
        this.mediumSize = f8;
        int i3 = this.mediumCount;
        if (i3 > 0 && calculateLargeSize != f4) {
            float f9 = (f4 - calculateLargeSize) * this.largeCount;
            float min = Math.min(Math.abs(f9), f8 * 0.1f * i3);
            if (f9 > 0.0f) {
                this.mediumSize -= min / this.mediumCount;
                this.largeSize = (min / this.largeCount) + this.largeSize;
            } else {
                this.mediumSize = (min / this.mediumCount) + this.mediumSize;
                this.largeSize -= min / this.largeCount;
            }
        }
    }

    private float getSpace() {
        return (this.smallSize * this.smallCount) + (this.mediumSize * this.mediumCount) + (this.largeSize * this.largeCount);
    }

    private boolean isValid() {
        int i = this.largeCount;
        if (i > 0 && this.smallCount > 0 && this.mediumCount > 0) {
            float f = this.largeSize;
            float f2 = this.mediumSize;
            if (f <= f2 || f2 <= this.smallSize) {
                return false;
            }
            return true;
        }
        if (i > 0 && this.smallCount > 0 && this.largeSize <= this.smallSize) {
            return false;
        }
        return true;
    }

    public int getItemCount() {
        return this.smallCount + this.mediumCount + this.largeCount;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4952106771365871478L, -3621314758202948568L, -4141744132675106064L, -6408091957839259181L}).toString());
        sb.append(this.priority);
        sb.append(new ObfuscatedString(new long[]{6402878372316860070L, 2118056382531663645L, 979347376572027298L}).toString());
        sb.append(this.smallCount);
        sb.append(new ObfuscatedString(new long[]{6330990080867563861L, 162849632029592619L, 1483451105400809328L}).toString());
        sb.append(this.smallSize);
        sb.append(new ObfuscatedString(new long[]{7320450198595677150L, 8356154341860231561L, -4283951877086086167L}).toString());
        sb.append(this.mediumCount);
        sb.append(new ObfuscatedString(new long[]{-1412711418412735050L, -7580172514923888556L, 6613535577751873530L}).toString());
        sb.append(this.mediumSize);
        sb.append(new ObfuscatedString(new long[]{3533738448539365563L, -4368294220610517874L, 431978237664827363L}).toString());
        sb.append(this.largeCount);
        sb.append(new ObfuscatedString(new long[]{7506332170087541867L, 3166094195433536671L, 7627159271470658733L}).toString());
        sb.append(this.largeSize);
        sb.append(new ObfuscatedString(new long[]{-2897181154881794462L, 2728417194893679113L}).toString());
        sb.append(this.cost);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4434220294987738167L, 1226537266566791009L}), sb);
    }
}
