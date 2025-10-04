package com.airbnb.lottie.value;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class ScaleXY {
    private float scaleX;
    private float scaleY;

    public ScaleXY(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public boolean equals(float f, float f2) {
        if (this.scaleX == f && this.scaleY == f2) {
            return true;
        }
        return false;
    }

    public float getScaleX() {
        return this.scaleX;
    }

    public float getScaleY() {
        return this.scaleY;
    }

    public void set(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public String toString() {
        return getScaleX() + new ObfuscatedString(new long[]{-2435441203990110512L, -251637229686487527L}).toString() + getScaleY();
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }
}
