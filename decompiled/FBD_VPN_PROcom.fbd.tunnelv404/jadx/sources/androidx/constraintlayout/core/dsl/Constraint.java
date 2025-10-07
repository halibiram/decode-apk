package androidx.constraintlayout.core.dsl;

import defpackage.AbstractC0362x4440ab85;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Constraint {
    public static final Constraint PARENT = new Constraint("parent");
    static int UNSET = Integer.MIN_VALUE;
    static Map<ChainMode, String> chainModeMap;
    private float mCircleAngle;
    private String mCircleConstraint;
    private int mCircleRadius;
    private boolean mConstrainedHeight;
    private boolean mConstrainedWidth;
    private String mDimensionRatio;
    private int mEditorAbsoluteX;
    private int mEditorAbsoluteY;
    private int mHeight;
    private Behaviour mHeightDefault;
    private int mHeightMax;
    private int mHeightMin;
    private float mHeightPercent;
    private float mHorizontalBias;
    private ChainMode mHorizontalChainStyle;
    private float mHorizontalWeight;
    private final String mId;
    private String[] mReferenceIds;
    private float mVerticalBias;
    private ChainMode mVerticalChainStyle;
    private float mVerticalWeight;
    private int mWidth;
    private Behaviour mWidthDefault;
    private int mWidthMax;
    private int mWidthMin;
    private float mWidthPercent;
    String helperType = null;
    String helperJason = null;
    private HAnchor mLeft = new HAnchor(HSide.LEFT);
    private HAnchor mRight = new HAnchor(HSide.RIGHT);
    private VAnchor mTop = new VAnchor(VSide.TOP);
    private VAnchor mBottom = new VAnchor(VSide.BOTTOM);
    private HAnchor mStart = new HAnchor(HSide.START);
    private HAnchor mEnd = new HAnchor(HSide.END);
    private VAnchor mBaseline = new VAnchor(VSide.BASELINE);

    /* loaded from: classes.dex */
    public class Anchor {
        Anchor mConnection = null;
        int mGoneMargin = Integer.MIN_VALUE;
        int mMargin;
        final Side mSide;

        public Anchor(Side side) {
            this.mSide = side;
        }

        public void build(StringBuilder sb) {
            if (this.mConnection != null) {
                sb.append(this.mSide.toString().toLowerCase());
                sb.append(":");
                sb.append(this);
                sb.append(",\n");
            }
        }

        public String getId() {
            return Constraint.this.mId;
        }

        public Constraint getParent() {
            return Constraint.this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[");
            if (this.mConnection != null) {
                sb.append("'");
                sb.append(this.mConnection.getId());
                sb.append("','");
                sb.append(this.mConnection.mSide.toString().toLowerCase());
                sb.append("'");
            }
            if (this.mMargin != 0) {
                sb.append(",");
                sb.append(this.mMargin);
            }
            if (this.mGoneMargin != Integer.MIN_VALUE) {
                if (this.mMargin == 0) {
                    sb.append(",0,");
                    sb.append(this.mGoneMargin);
                } else {
                    sb.append(",");
                    sb.append(this.mGoneMargin);
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public enum Behaviour {
        SPREAD,
        WRAP,
        PERCENT,
        RATIO,
        RESOLVED
    }

    /* loaded from: classes.dex */
    public enum ChainMode {
        SPREAD,
        SPREAD_INSIDE,
        PACKED
    }

    /* loaded from: classes.dex */
    public class HAnchor extends Anchor {
        public HAnchor(HSide hSide) {
            super(Side.valueOf(hSide.name()));
        }
    }

    /* loaded from: classes.dex */
    public enum HSide {
        LEFT,
        RIGHT,
        START,
        END
    }

    /* loaded from: classes.dex */
    public enum Side {
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        START,
        END,
        BASELINE
    }

    /* loaded from: classes.dex */
    public class VAnchor extends Anchor {
        public VAnchor(VSide vSide) {
            super(Side.valueOf(vSide.name()));
        }
    }

    /* loaded from: classes.dex */
    public enum VSide {
        TOP,
        BOTTOM,
        BASELINE
    }

    static {
        HashMap hashMap = new HashMap();
        chainModeMap = hashMap;
        hashMap.put(ChainMode.SPREAD, "spread");
        chainModeMap.put(ChainMode.SPREAD_INSIDE, "spread_inside");
        chainModeMap.put(ChainMode.PACKED, "packed");
    }

    public Constraint(String str) {
        int i = UNSET;
        this.mWidth = i;
        this.mHeight = i;
        this.mHorizontalBias = Float.NaN;
        this.mVerticalBias = Float.NaN;
        this.mDimensionRatio = null;
        this.mCircleConstraint = null;
        this.mCircleRadius = Integer.MIN_VALUE;
        this.mCircleAngle = Float.NaN;
        this.mEditorAbsoluteX = Integer.MIN_VALUE;
        this.mEditorAbsoluteY = Integer.MIN_VALUE;
        this.mVerticalWeight = Float.NaN;
        this.mHorizontalWeight = Float.NaN;
        this.mHorizontalChainStyle = null;
        this.mVerticalChainStyle = null;
        this.mWidthDefault = null;
        this.mHeightDefault = null;
        this.mWidthMax = i;
        this.mHeightMax = i;
        this.mWidthMin = i;
        this.mHeightMin = i;
        this.mWidthPercent = Float.NaN;
        this.mHeightPercent = Float.NaN;
        this.mReferenceIds = null;
        this.mConstrainedWidth = false;
        this.mConstrainedHeight = false;
        this.mId = str;
    }

    public void append(StringBuilder sb, String str, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        sb.append(str);
        sb.append(":");
        sb.append(f);
        sb.append(",\n");
    }

    public String convertStringArrayToString(String[] strArr) {
        String str;
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < strArr.length; i++) {
            if (i == 0) {
                str = "'";
            } else {
                str = ",'";
            }
            sb.append(str);
            sb.append(strArr[i]);
            sb.append("'");
        }
        sb.append("]");
        return sb.toString();
    }

    public VAnchor getBaseline() {
        return this.mBaseline;
    }

    public VAnchor getBottom() {
        return this.mBottom;
    }

    public float getCircleAngle() {
        return this.mCircleAngle;
    }

    public String getCircleConstraint() {
        return this.mCircleConstraint;
    }

    public int getCircleRadius() {
        return this.mCircleRadius;
    }

    public String getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getEditorAbsoluteX() {
        return this.mEditorAbsoluteX;
    }

    public int getEditorAbsoluteY() {
        return this.mEditorAbsoluteY;
    }

    public HAnchor getEnd() {
        return this.mEnd;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public Behaviour getHeightDefault() {
        return this.mHeightDefault;
    }

    public int getHeightMax() {
        return this.mHeightMax;
    }

    public int getHeightMin() {
        return this.mHeightMin;
    }

    public float getHeightPercent() {
        return this.mHeightPercent;
    }

    public float getHorizontalBias() {
        return this.mHorizontalBias;
    }

    public ChainMode getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public float getHorizontalWeight() {
        return this.mHorizontalWeight;
    }

    public HAnchor getLeft() {
        return this.mLeft;
    }

    public String[] getReferenceIds() {
        return this.mReferenceIds;
    }

    public HAnchor getRight() {
        return this.mRight;
    }

    public HAnchor getStart() {
        return this.mStart;
    }

    public VAnchor getTop() {
        return this.mTop;
    }

    public float getVerticalBias() {
        return this.mVerticalBias;
    }

    public ChainMode getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public float getVerticalWeight() {
        return this.mVerticalWeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public Behaviour getWidthDefault() {
        return this.mWidthDefault;
    }

    public int getWidthMax() {
        return this.mWidthMax;
    }

    public int getWidthMin() {
        return this.mWidthMin;
    }

    public float getWidthPercent() {
        return this.mWidthPercent;
    }

    public boolean isConstrainedHeight() {
        return this.mConstrainedHeight;
    }

    public boolean isConstrainedWidth() {
        return this.mConstrainedWidth;
    }

    public void linkToBaseline(VAnchor vAnchor) {
        linkToBaseline(vAnchor, 0);
    }

    public void linkToBottom(VAnchor vAnchor) {
        linkToBottom(vAnchor, 0);
    }

    public void linkToEnd(HAnchor hAnchor) {
        linkToEnd(hAnchor, 0);
    }

    public void linkToLeft(HAnchor hAnchor) {
        linkToLeft(hAnchor, 0);
    }

    public void linkToRight(HAnchor hAnchor) {
        linkToRight(hAnchor, 0);
    }

    public void linkToStart(HAnchor hAnchor) {
        linkToStart(hAnchor, 0);
    }

    public void linkToTop(VAnchor vAnchor) {
        linkToTop(vAnchor, 0);
    }

    public void setCircleAngle(float f) {
        this.mCircleAngle = f;
    }

    public void setCircleConstraint(String str) {
        this.mCircleConstraint = str;
    }

    public void setCircleRadius(int i) {
        this.mCircleRadius = i;
    }

    public void setConstrainedHeight(boolean z) {
        this.mConstrainedHeight = z;
    }

    public void setConstrainedWidth(boolean z) {
        this.mConstrainedWidth = z;
    }

    public void setDimensionRatio(String str) {
        this.mDimensionRatio = str;
    }

    public void setEditorAbsoluteX(int i) {
        this.mEditorAbsoluteX = i;
    }

    public void setEditorAbsoluteY(int i) {
        this.mEditorAbsoluteY = i;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public void setHeightDefault(Behaviour behaviour) {
        this.mHeightDefault = behaviour;
    }

    public void setHeightMax(int i) {
        this.mHeightMax = i;
    }

    public void setHeightMin(int i) {
        this.mHeightMin = i;
    }

    public void setHeightPercent(float f) {
        this.mHeightPercent = f;
    }

    public void setHorizontalBias(float f) {
        this.mHorizontalBias = f;
    }

    public void setHorizontalChainStyle(ChainMode chainMode) {
        this.mHorizontalChainStyle = chainMode;
    }

    public void setHorizontalWeight(float f) {
        this.mHorizontalWeight = f;
    }

    public void setReferenceIds(String[] strArr) {
        this.mReferenceIds = strArr;
    }

    public void setVerticalBias(float f) {
        this.mVerticalBias = f;
    }

    public void setVerticalChainStyle(ChainMode chainMode) {
        this.mVerticalChainStyle = chainMode;
    }

    public void setVerticalWeight(float f) {
        this.mVerticalWeight = f;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public void setWidthDefault(Behaviour behaviour) {
        this.mWidthDefault = behaviour;
    }

    public void setWidthMax(int i) {
        this.mWidthMax = i;
    }

    public void setWidthMin(int i) {
        this.mWidthMin = i;
    }

    public void setWidthPercent(float f) {
        this.mWidthPercent = f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), this.mId, ":{\n"));
        this.mLeft.build(sb);
        this.mRight.build(sb);
        this.mTop.build(sb);
        this.mBottom.build(sb);
        this.mStart.build(sb);
        this.mEnd.build(sb);
        this.mBaseline.build(sb);
        if (this.mWidth != UNSET) {
            sb.append("width:");
            sb.append(this.mWidth);
            sb.append(",\n");
        }
        if (this.mHeight != UNSET) {
            sb.append("height:");
            sb.append(this.mHeight);
            sb.append(",\n");
        }
        append(sb, "horizontalBias", this.mHorizontalBias);
        append(sb, "verticalBias", this.mVerticalBias);
        if (this.mDimensionRatio != null) {
            sb.append("dimensionRatio:'");
            sb.append(this.mDimensionRatio);
            sb.append("',\n");
        }
        if (this.mCircleConstraint != null && (!Float.isNaN(this.mCircleAngle) || this.mCircleRadius != Integer.MIN_VALUE)) {
            sb.append("circular:['");
            sb.append(this.mCircleConstraint);
            sb.append("'");
            if (!Float.isNaN(this.mCircleAngle)) {
                sb.append(",");
                sb.append(this.mCircleAngle);
            }
            if (this.mCircleRadius != Integer.MIN_VALUE) {
                if (Float.isNaN(this.mCircleAngle)) {
                    sb.append(",0,");
                    sb.append(this.mCircleRadius);
                } else {
                    sb.append(",");
                    sb.append(this.mCircleRadius);
                }
            }
            sb.append("],\n");
        }
        append(sb, "verticalWeight", this.mVerticalWeight);
        append(sb, "horizontalWeight", this.mHorizontalWeight);
        if (this.mHorizontalChainStyle != null) {
            sb.append("horizontalChainStyle:'");
            sb.append(chainModeMap.get(this.mHorizontalChainStyle));
            sb.append("',\n");
        }
        if (this.mVerticalChainStyle != null) {
            sb.append("verticalChainStyle:'");
            sb.append(chainModeMap.get(this.mVerticalChainStyle));
            sb.append("',\n");
        }
        if (this.mWidthDefault != null) {
            int i = this.mWidthMax;
            int i2 = UNSET;
            if (i == i2 && this.mWidthMin == i2) {
                sb.append("width:'");
                sb.append(this.mWidthDefault.toString().toLowerCase());
                sb.append("',\n");
            } else {
                sb.append("width:{value:'");
                sb.append(this.mWidthDefault.toString().toLowerCase());
                sb.append("'");
                if (this.mWidthMax != UNSET) {
                    sb.append(",max:");
                    sb.append(this.mWidthMax);
                }
                if (this.mWidthMin != UNSET) {
                    sb.append(",min:");
                    sb.append(this.mWidthMin);
                }
                sb.append("},\n");
            }
        }
        if (this.mHeightDefault != null) {
            int i3 = this.mHeightMax;
            int i4 = UNSET;
            if (i3 == i4 && this.mHeightMin == i4) {
                sb.append("height:'");
                sb.append(this.mHeightDefault.toString().toLowerCase());
                sb.append("',\n");
            } else {
                sb.append("height:{value:'");
                sb.append(this.mHeightDefault.toString().toLowerCase());
                sb.append("'");
                if (this.mHeightMax != UNSET) {
                    sb.append(",max:");
                    sb.append(this.mHeightMax);
                }
                if (this.mHeightMin != UNSET) {
                    sb.append(",min:");
                    sb.append(this.mHeightMin);
                }
                sb.append("},\n");
            }
        }
        if (!Double.isNaN(this.mWidthPercent)) {
            sb.append("width:'");
            sb.append((int) this.mWidthPercent);
            sb.append("%',\n");
        }
        if (!Double.isNaN(this.mHeightPercent)) {
            sb.append("height:'");
            sb.append((int) this.mHeightPercent);
            sb.append("%',\n");
        }
        if (this.mReferenceIds != null) {
            sb.append("referenceIds:");
            sb.append(convertStringArrayToString(this.mReferenceIds));
            sb.append(",\n");
        }
        if (this.mConstrainedWidth) {
            sb.append("constrainedWidth:");
            sb.append(this.mConstrainedWidth);
            sb.append(",\n");
        }
        if (this.mConstrainedHeight) {
            sb.append("constrainedHeight:");
            sb.append(this.mConstrainedHeight);
            sb.append(",\n");
        }
        sb.append("},\n");
        return sb.toString();
    }

    public void linkToBaseline(VAnchor vAnchor, int i) {
        linkToBaseline(vAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToBottom(VAnchor vAnchor, int i) {
        linkToBottom(vAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToEnd(HAnchor hAnchor, int i) {
        linkToEnd(hAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToLeft(HAnchor hAnchor, int i) {
        linkToLeft(hAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToRight(HAnchor hAnchor, int i) {
        linkToRight(hAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToStart(HAnchor hAnchor, int i) {
        linkToStart(hAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToTop(VAnchor vAnchor, int i) {
        linkToTop(vAnchor, i, Integer.MIN_VALUE);
    }

    public void linkToBaseline(VAnchor vAnchor, int i, int i2) {
        VAnchor vAnchor2 = this.mBaseline;
        vAnchor2.mConnection = vAnchor;
        vAnchor2.mMargin = i;
        vAnchor2.mGoneMargin = i2;
    }

    public void linkToBottom(VAnchor vAnchor, int i, int i2) {
        VAnchor vAnchor2 = this.mBottom;
        vAnchor2.mConnection = vAnchor;
        vAnchor2.mMargin = i;
        vAnchor2.mGoneMargin = i2;
    }

    public void linkToEnd(HAnchor hAnchor, int i, int i2) {
        HAnchor hAnchor2 = this.mEnd;
        hAnchor2.mConnection = hAnchor;
        hAnchor2.mMargin = i;
        hAnchor2.mGoneMargin = i2;
    }

    public void linkToLeft(HAnchor hAnchor, int i, int i2) {
        HAnchor hAnchor2 = this.mLeft;
        hAnchor2.mConnection = hAnchor;
        hAnchor2.mMargin = i;
        hAnchor2.mGoneMargin = i2;
    }

    public void linkToRight(HAnchor hAnchor, int i, int i2) {
        HAnchor hAnchor2 = this.mRight;
        hAnchor2.mConnection = hAnchor;
        hAnchor2.mMargin = i;
        hAnchor2.mGoneMargin = i2;
    }

    public void linkToStart(HAnchor hAnchor, int i, int i2) {
        HAnchor hAnchor2 = this.mStart;
        hAnchor2.mConnection = hAnchor;
        hAnchor2.mMargin = i;
        hAnchor2.mGoneMargin = i2;
    }

    public void linkToTop(VAnchor vAnchor, int i, int i2) {
        VAnchor vAnchor2 = this.mTop;
        vAnchor2.mConnection = vAnchor;
        vAnchor2.mMargin = i;
        vAnchor2.mGoneMargin = i2;
    }
}
