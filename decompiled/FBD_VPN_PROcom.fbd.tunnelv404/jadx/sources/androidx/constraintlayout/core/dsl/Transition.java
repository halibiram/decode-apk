package androidx.constraintlayout.core.dsl;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes.dex */
public class Transition {
    private String mConstraintSetEnd;
    private String mConstraintSetStart;
    private String mId;
    private OnSwipe mOnSwipe = null;
    final int UNSET = -1;
    private final int DEFAULT_DURATION = HttpStatusCodesKt.HTTP_BAD_REQUEST;
    private final float DEFAULT_STAGGER = 0.0f;
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private int mDefaultInterpolatorID = -1;
    private int mDuration = HttpStatusCodesKt.HTTP_BAD_REQUEST;
    private float mStagger = 0.0f;
    private KeyFrames mKeyFrames = new KeyFrames();

    public Transition(String str, String str2) {
        this.mId = null;
        this.mConstraintSetEnd = null;
        this.mConstraintSetStart = null;
        this.mId = "default";
        this.mConstraintSetStart = str;
        this.mConstraintSetEnd = str2;
    }

    public String getId() {
        return this.mId;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public void setFrom(String str) {
        this.mConstraintSetStart = str;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setKeyFrames(Keys keys) {
        this.mKeyFrames.add(keys);
    }

    public void setOnSwipe(OnSwipe onSwipe) {
        this.mOnSwipe = onSwipe;
    }

    public void setStagger(float f) {
        this.mStagger = f;
    }

    public void setTo(String str) {
        this.mConstraintSetEnd = str;
    }

    public String toJson() {
        return toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mId);
        sb.append(":{\nfrom:'");
        sb.append(this.mConstraintSetStart);
        sb.append("',\nto:'");
        String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, this.mConstraintSetEnd, "',\n");
        if (this.mDuration != 400) {
            m2936xd2bcb0cf = AbstractC0362x4440ab85.m2935x1db10c9d(AbstractC0362x4440ab85.m2943xc20437a5(m2936xd2bcb0cf, "duration:"), ",\n", this.mDuration);
        }
        if (this.mStagger != 0.0f) {
            StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(m2936xd2bcb0cf, "stagger:");
            m2943xc20437a5.append(this.mStagger);
            m2943xc20437a5.append(",\n");
            m2936xd2bcb0cf = m2943xc20437a5.toString();
        }
        if (this.mOnSwipe != null) {
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(m2936xd2bcb0cf);
            m3341xc20437a5.append(this.mOnSwipe.toString());
            m2936xd2bcb0cf = m3341xc20437a5.toString();
        }
        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(m2936xd2bcb0cf);
        m3341xc20437a52.append(this.mKeyFrames.toString());
        return AbstractC0362x4440ab85.m2931x34271fae(m3341xc20437a52.toString(), "},\n");
    }

    public Transition(String str, String str2, String str3) {
        this.mId = null;
        this.mConstraintSetEnd = null;
        this.mConstraintSetStart = null;
        this.mId = str;
        this.mConstraintSetStart = str2;
        this.mConstraintSetEnd = str3;
    }
}
