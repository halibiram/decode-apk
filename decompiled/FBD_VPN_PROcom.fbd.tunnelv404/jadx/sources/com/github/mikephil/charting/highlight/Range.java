package com.github.mikephil.charting.highlight;

/* loaded from: classes.dex */
public final class Range {
    public float from;
    public float to;

    public Range(float f, float f2) {
        this.from = f;
        this.to = f2;
    }

    public boolean contains(float f) {
        if (f > this.from && f <= this.to) {
            return true;
        }
        return false;
    }

    public boolean isLarger(float f) {
        if (f > this.to) {
            return true;
        }
        return false;
    }

    public boolean isSmaller(float f) {
        if (f < this.from) {
            return true;
        }
        return false;
    }
}
