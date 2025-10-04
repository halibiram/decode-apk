package androidx.constraintlayout.core.dsl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes.dex */
public class KeyPositions extends Keys {
    private int[] mFrames;
    private String[] mTarget;
    private String mTransitionEasing = null;
    private Type mPositionType = null;
    private float[] mPercentWidth = null;
    private float[] mPercentHeight = null;
    private float[] mPercentX = null;
    private float[] mPercentY = null;

    /* loaded from: classes.dex */
    public enum Type {
        CARTESIAN,
        SCREEN,
        PATH
    }

    public KeyPositions(int i, String... strArr) {
        this.mFrames = null;
        this.mTarget = strArr;
        this.mFrames = new int[i];
        float length = 100.0f / (r3.length + 1);
        int i2 = 0;
        while (true) {
            int[] iArr = this.mFrames;
            if (i2 < iArr.length) {
                iArr[i2] = (int) ((i2 * length) + length);
                i2++;
            } else {
                return;
            }
        }
    }

    public int[] getFrames() {
        return this.mFrames;
    }

    public float[] getPercentHeight() {
        return this.mPercentHeight;
    }

    public float[] getPercentWidth() {
        return this.mPercentWidth;
    }

    public float[] getPercentX() {
        return this.mPercentX;
    }

    public float[] getPercentY() {
        return this.mPercentY;
    }

    public Type getPositionType() {
        return this.mPositionType;
    }

    public String[] getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public void setFrames(int... iArr) {
        this.mFrames = iArr;
    }

    public void setPercentHeight(float... fArr) {
        this.mPercentHeight = fArr;
    }

    public void setPercentWidth(float... fArr) {
        this.mPercentWidth = fArr;
    }

    public void setPercentX(float... fArr) {
        this.mPercentX = fArr;
    }

    public void setPercentY(float... fArr) {
        this.mPercentY = fArr;
    }

    public void setPositionType(Type type) {
        this.mPositionType = type;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public String toString() {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5("KeyPositions:{\n");
        append(m3341xc20437a5, TypedValues.AttributesType.S_TARGET, this.mTarget);
        m3341xc20437a5.append("frame:");
        m3341xc20437a5.append(Arrays.toString(this.mFrames));
        m3341xc20437a5.append(",\n");
        if (this.mPositionType != null) {
            m3341xc20437a5.append("type:'");
            m3341xc20437a5.append(this.mPositionType);
            m3341xc20437a5.append("',\n");
        }
        append(m3341xc20437a5, "easing", this.mTransitionEasing);
        append(m3341xc20437a5, "percentX", this.mPercentX);
        append(m3341xc20437a5, "percentX", this.mPercentY);
        append(m3341xc20437a5, "percentWidth", this.mPercentWidth);
        append(m3341xc20437a5, "percentHeight", this.mPercentHeight);
        m3341xc20437a5.append("},\n");
        return m3341xc20437a5.toString();
    }
}
