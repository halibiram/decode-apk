package androidx.constraintlayout.core.dsl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes.dex */
public class KeyPosition extends Keys {
    private int mFrame;
    private String mTarget;
    private String mTransitionEasing = null;
    private float mPercentWidth = Float.NaN;
    private float mPercentHeight = Float.NaN;
    private float mPercentX = Float.NaN;
    private float mPercentY = Float.NaN;
    private Type mPositionType = Type.CARTESIAN;

    /* loaded from: classes.dex */
    public enum Type {
        CARTESIAN,
        SCREEN,
        PATH
    }

    public KeyPosition(String str, int i) {
        this.mTarget = null;
        this.mFrame = 0;
        this.mTarget = str;
        this.mFrame = i;
    }

    public int getFrames() {
        return this.mFrame;
    }

    public float getPercentHeight() {
        return this.mPercentHeight;
    }

    public float getPercentWidth() {
        return this.mPercentWidth;
    }

    public float getPercentX() {
        return this.mPercentX;
    }

    public float getPercentY() {
        return this.mPercentY;
    }

    public Type getPositionType() {
        return this.mPositionType;
    }

    public String getTarget() {
        return this.mTarget;
    }

    public String getTransitionEasing() {
        return this.mTransitionEasing;
    }

    public void setFrames(int i) {
        this.mFrame = i;
    }

    public void setPercentHeight(float f) {
        this.mPercentHeight = f;
    }

    public void setPercentWidth(float f) {
        this.mPercentWidth = f;
    }

    public void setPercentX(float f) {
        this.mPercentX = f;
    }

    public void setPercentY(float f) {
        this.mPercentY = f;
    }

    public void setPositionType(Type type) {
        this.mPositionType = type;
    }

    public void setTarget(String str) {
        this.mTarget = str;
    }

    public void setTransitionEasing(String str) {
        this.mTransitionEasing = str;
    }

    public String toString() {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5("KeyPositions:{\n");
        append(m3341xc20437a5, TypedValues.AttributesType.S_TARGET, this.mTarget);
        m3341xc20437a5.append("frame:");
        m3341xc20437a5.append(this.mFrame);
        m3341xc20437a5.append(",\n");
        if (this.mPositionType != null) {
            m3341xc20437a5.append("type:'");
            m3341xc20437a5.append(this.mPositionType);
            m3341xc20437a5.append("',\n");
        }
        append(m3341xc20437a5, "easing", this.mTransitionEasing);
        append(m3341xc20437a5, "percentX", this.mPercentX);
        append(m3341xc20437a5, "percentY", this.mPercentY);
        append(m3341xc20437a5, "percentWidth", this.mPercentWidth);
        append(m3341xc20437a5, "percentHeight", this.mPercentHeight);
        m3341xc20437a5.append("},\n");
        return m3341xc20437a5.toString();
    }
}
