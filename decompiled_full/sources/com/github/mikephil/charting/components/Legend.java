package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Legend extends ComponentBase {
    private List<Boolean> mCalculatedLabelBreakPoints;
    private List<FSize> mCalculatedLabelSizes;
    private List<FSize> mCalculatedLineSizes;
    private LegendDirection mDirection;
    private boolean mDrawInside;
    private LegendEntry[] mEntries;
    private LegendEntry[] mExtraEntries;
    private DashPathEffect mFormLineDashEffect;
    private float mFormLineWidth;
    private float mFormSize;
    private float mFormToTextSpace;
    private LegendHorizontalAlignment mHorizontalAlignment;
    private boolean mIsLegendCustom;
    private float mMaxSizePercent;
    public float mNeededHeight;
    public float mNeededWidth;
    private LegendOrientation mOrientation;
    private LegendForm mShape;
    private float mStackSpace;
    public float mTextHeightMax;
    public float mTextWidthMax;
    private LegendVerticalAlignment mVerticalAlignment;
    private boolean mWordWrapEnabled;
    private float mXEntrySpace;
    private float mYEntrySpace;

    /* renamed from: com.github.mikephil.charting.components.Legend$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition;

        static {
            int[] iArr = new int[LegendOrientation.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation = iArr;
            try {
                iArr[LegendOrientation.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[LegendOrientation.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[LegendPosition.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition = iArr2;
            try {
                iArr2[LegendPosition.LEFT_OF_CHART.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.LEFT_OF_CHART_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.LEFT_OF_CHART_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.RIGHT_OF_CHART.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.RIGHT_OF_CHART_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.RIGHT_OF_CHART_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.ABOVE_CHART_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.ABOVE_CHART_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.ABOVE_CHART_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.BELOW_CHART_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.BELOW_CHART_CENTER.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.BELOW_CHART_RIGHT.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[LegendPosition.PIECHART_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum LegendDirection {
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT
    }

    /* loaded from: classes.dex */
    public enum LegendForm {
        NONE,
        EMPTY,
        DEFAULT,
        SQUARE,
        CIRCLE,
        LINE
    }

    /* loaded from: classes.dex */
    public enum LegendHorizontalAlignment {
        LEFT,
        CENTER,
        RIGHT
    }

    /* loaded from: classes.dex */
    public enum LegendOrientation {
        HORIZONTAL,
        VERTICAL
    }

    @Deprecated
    /* loaded from: classes.dex */
    public enum LegendPosition {
        RIGHT_OF_CHART,
        RIGHT_OF_CHART_CENTER,
        RIGHT_OF_CHART_INSIDE,
        LEFT_OF_CHART,
        LEFT_OF_CHART_CENTER,
        LEFT_OF_CHART_INSIDE,
        BELOW_CHART_LEFT,
        BELOW_CHART_RIGHT,
        BELOW_CHART_CENTER,
        ABOVE_CHART_LEFT,
        ABOVE_CHART_RIGHT,
        ABOVE_CHART_CENTER,
        PIECHART_CENTER
    }

    /* loaded from: classes.dex */
    public enum LegendVerticalAlignment {
        TOP,
        CENTER,
        BOTTOM
    }

    public Legend() {
        this.mEntries = new LegendEntry[0];
        this.mIsLegendCustom = false;
        this.mHorizontalAlignment = LegendHorizontalAlignment.LEFT;
        this.mVerticalAlignment = LegendVerticalAlignment.BOTTOM;
        this.mOrientation = LegendOrientation.HORIZONTAL;
        this.mDrawInside = false;
        this.mDirection = LegendDirection.LEFT_TO_RIGHT;
        this.mShape = LegendForm.SQUARE;
        this.mFormSize = 8.0f;
        this.mFormLineWidth = 3.0f;
        this.mFormLineDashEffect = null;
        this.mXEntrySpace = 6.0f;
        this.mYEntrySpace = 0.0f;
        this.mFormToTextSpace = 5.0f;
        this.mStackSpace = 3.0f;
        this.mMaxSizePercent = 0.95f;
        this.mNeededWidth = 0.0f;
        this.mNeededHeight = 0.0f;
        this.mTextHeightMax = 0.0f;
        this.mTextWidthMax = 0.0f;
        this.mWordWrapEnabled = false;
        this.mCalculatedLabelSizes = new ArrayList(16);
        this.mCalculatedLabelBreakPoints = new ArrayList(16);
        this.mCalculatedLineSizes = new ArrayList(16);
        this.mTextSize = Utils.convertDpToPixel(10.0f);
        this.mXOffset = Utils.convertDpToPixel(5.0f);
        this.mYOffset = Utils.convertDpToPixel(3.0f);
    }

    public void calculateDimensions(Paint paint, ViewPortHandler viewPortHandler) {
        boolean z;
        float convertDpToPixel;
        boolean z2;
        float convertDpToPixel2;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i;
        float f7;
        float convertDpToPixel3 = Utils.convertDpToPixel(this.mFormSize);
        float convertDpToPixel4 = Utils.convertDpToPixel(this.mStackSpace);
        float convertDpToPixel5 = Utils.convertDpToPixel(this.mFormToTextSpace);
        float convertDpToPixel6 = Utils.convertDpToPixel(this.mXEntrySpace);
        float convertDpToPixel7 = Utils.convertDpToPixel(this.mYEntrySpace);
        boolean z3 = this.mWordWrapEnabled;
        LegendEntry[] legendEntryArr = this.mEntries;
        int length = legendEntryArr.length;
        this.mTextWidthMax = getMaximumEntryWidth(paint);
        this.mTextHeightMax = getMaximumEntryHeight(paint);
        int i2 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[this.mOrientation.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                float lineHeight = Utils.getLineHeight(paint);
                float lineSpacing = Utils.getLineSpacing(paint) + convertDpToPixel7;
                float contentWidth = viewPortHandler.contentWidth() * this.mMaxSizePercent;
                this.mCalculatedLabelBreakPoints.clear();
                this.mCalculatedLabelSizes.clear();
                this.mCalculatedLineSizes.clear();
                int i3 = 0;
                float f8 = 0.0f;
                int i4 = -1;
                float f9 = 0.0f;
                float f10 = 0.0f;
                while (i3 < length) {
                    LegendEntry legendEntry = legendEntryArr[i3];
                    float f11 = convertDpToPixel3;
                    float f12 = convertDpToPixel6;
                    if (legendEntry.form != LegendForm.NONE) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (Float.isNaN(legendEntry.formSize)) {
                        convertDpToPixel2 = f11;
                    } else {
                        convertDpToPixel2 = Utils.convertDpToPixel(legendEntry.formSize);
                    }
                    String str = legendEntry.label;
                    LegendEntry[] legendEntryArr2 = legendEntryArr;
                    float f13 = lineSpacing;
                    this.mCalculatedLabelBreakPoints.add(Boolean.FALSE);
                    if (i4 == -1) {
                        f = 0.0f;
                    } else {
                        f = f9 + convertDpToPixel4;
                    }
                    if (str != null) {
                        f2 = convertDpToPixel4;
                        this.mCalculatedLabelSizes.add(Utils.calcTextSize(paint, str));
                        if (z2) {
                            f7 = convertDpToPixel5 + convertDpToPixel2;
                        } else {
                            f7 = 0.0f;
                        }
                        f4 = f + f7 + this.mCalculatedLabelSizes.get(i3).width;
                    } else {
                        f2 = convertDpToPixel4;
                        float f14 = convertDpToPixel2;
                        this.mCalculatedLabelSizes.add(FSize.getInstance(0.0f, 0.0f));
                        if (z2) {
                            f3 = f14;
                        } else {
                            f3 = 0.0f;
                        }
                        f4 = f + f3;
                        if (i4 == -1) {
                            i4 = i3;
                        }
                    }
                    if (str != null || i3 == length - 1) {
                        float f15 = f10;
                        if (f15 == 0.0f) {
                            f5 = 0.0f;
                        } else {
                            f5 = f12;
                        }
                        if (z3 && f15 != 0.0f && contentWidth - f15 < f5 + f4) {
                            this.mCalculatedLineSizes.add(FSize.getInstance(f15, lineHeight));
                            f8 = Math.max(f8, f15);
                            List<Boolean> list = this.mCalculatedLabelBreakPoints;
                            if (i4 > -1) {
                                i = i4;
                            } else {
                                i = i3;
                            }
                            list.set(i, Boolean.TRUE);
                            f6 = f4;
                        } else {
                            f6 = f5 + f4 + f15;
                        }
                        if (i3 == length - 1) {
                            this.mCalculatedLineSizes.add(FSize.getInstance(f6, lineHeight));
                            f8 = Math.max(f8, f6);
                        }
                        f10 = f6;
                    }
                    if (str != null) {
                        i4 = -1;
                    }
                    i3++;
                    convertDpToPixel4 = f2;
                    convertDpToPixel3 = f11;
                    convertDpToPixel6 = f12;
                    lineSpacing = f13;
                    f9 = f4;
                    legendEntryArr = legendEntryArr2;
                }
                float f16 = lineSpacing;
                this.mNeededWidth = f8;
                this.mNeededHeight = (f16 * (this.mCalculatedLineSizes.size() == 0 ? 0 : this.mCalculatedLineSizes.size() - 1)) + (lineHeight * this.mCalculatedLineSizes.size());
            }
        } else {
            float lineHeight2 = Utils.getLineHeight(paint);
            float f17 = 0.0f;
            float f18 = 0.0f;
            float f19 = 0.0f;
            boolean z4 = false;
            for (int i5 = 0; i5 < length; i5++) {
                LegendEntry legendEntry2 = legendEntryArr[i5];
                if (legendEntry2.form != LegendForm.NONE) {
                    z = true;
                } else {
                    z = false;
                }
                if (Float.isNaN(legendEntry2.formSize)) {
                    convertDpToPixel = convertDpToPixel3;
                } else {
                    convertDpToPixel = Utils.convertDpToPixel(legendEntry2.formSize);
                }
                String str2 = legendEntry2.label;
                if (!z4) {
                    f19 = 0.0f;
                }
                if (z) {
                    if (z4) {
                        f19 += convertDpToPixel4;
                    }
                    f19 += convertDpToPixel;
                }
                if (str2 != null) {
                    if (z && !z4) {
                        f19 += convertDpToPixel5;
                    } else if (z4) {
                        f17 = Math.max(f17, f19);
                        f18 += lineHeight2 + convertDpToPixel7;
                        f19 = 0.0f;
                        z4 = false;
                    }
                    f19 += Utils.calcTextWidth(paint, str2);
                    if (i5 < length - 1) {
                        f18 = lineHeight2 + convertDpToPixel7 + f18;
                    }
                } else {
                    f19 += convertDpToPixel;
                    if (i5 < length - 1) {
                        f19 += convertDpToPixel4;
                    }
                    z4 = true;
                }
                f17 = Math.max(f17, f19);
            }
            this.mNeededWidth = f17;
            this.mNeededHeight = f18;
        }
        this.mNeededHeight += this.mYOffset;
        this.mNeededWidth += this.mXOffset;
    }

    public List<Boolean> getCalculatedLabelBreakPoints() {
        return this.mCalculatedLabelBreakPoints;
    }

    public List<FSize> getCalculatedLabelSizes() {
        return this.mCalculatedLabelSizes;
    }

    public List<FSize> getCalculatedLineSizes() {
        return this.mCalculatedLineSizes;
    }

    @Deprecated
    public int[] getColors() {
        int i;
        int[] iArr = new int[this.mEntries.length];
        int i2 = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.mEntries;
            if (i2 < legendEntryArr.length) {
                LegendEntry legendEntry = legendEntryArr[i2];
                LegendForm legendForm = legendEntry.form;
                if (legendForm == LegendForm.NONE) {
                    i = ColorTemplate.COLOR_SKIP;
                } else if (legendForm == LegendForm.EMPTY) {
                    i = ColorTemplate.COLOR_NONE;
                } else {
                    i = legendEntry.formColor;
                }
                iArr[i2] = i;
                i2++;
            } else {
                return iArr;
            }
        }
    }

    public LegendDirection getDirection() {
        return this.mDirection;
    }

    public LegendEntry[] getEntries() {
        return this.mEntries;
    }

    @Deprecated
    public int[] getExtraColors() {
        int i;
        int[] iArr = new int[this.mExtraEntries.length];
        int i2 = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.mExtraEntries;
            if (i2 < legendEntryArr.length) {
                LegendEntry legendEntry = legendEntryArr[i2];
                LegendForm legendForm = legendEntry.form;
                if (legendForm == LegendForm.NONE) {
                    i = ColorTemplate.COLOR_SKIP;
                } else if (legendForm == LegendForm.EMPTY) {
                    i = ColorTemplate.COLOR_NONE;
                } else {
                    i = legendEntry.formColor;
                }
                iArr[i2] = i;
                i2++;
            } else {
                return iArr;
            }
        }
    }

    public LegendEntry[] getExtraEntries() {
        return this.mExtraEntries;
    }

    @Deprecated
    public String[] getExtraLabels() {
        String[] strArr = new String[this.mExtraEntries.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.mExtraEntries;
            if (i < legendEntryArr.length) {
                strArr[i] = legendEntryArr[i].label;
                i++;
            } else {
                return strArr;
            }
        }
    }

    public LegendForm getForm() {
        return this.mShape;
    }

    public DashPathEffect getFormLineDashEffect() {
        return this.mFormLineDashEffect;
    }

    public float getFormLineWidth() {
        return this.mFormLineWidth;
    }

    public float getFormSize() {
        return this.mFormSize;
    }

    public float getFormToTextSpace() {
        return this.mFormToTextSpace;
    }

    public LegendHorizontalAlignment getHorizontalAlignment() {
        return this.mHorizontalAlignment;
    }

    @Deprecated
    public String[] getLabels() {
        String[] strArr = new String[this.mEntries.length];
        int i = 0;
        while (true) {
            LegendEntry[] legendEntryArr = this.mEntries;
            if (i < legendEntryArr.length) {
                strArr[i] = legendEntryArr[i].label;
                i++;
            } else {
                return strArr;
            }
        }
    }

    public float getMaxSizePercent() {
        return this.mMaxSizePercent;
    }

    public float getMaximumEntryHeight(Paint paint) {
        float f = 0.0f;
        for (LegendEntry legendEntry : this.mEntries) {
            String str = legendEntry.label;
            if (str != null) {
                float calcTextHeight = Utils.calcTextHeight(paint, str);
                if (calcTextHeight > f) {
                    f = calcTextHeight;
                }
            }
        }
        return f;
    }

    public float getMaximumEntryWidth(Paint paint) {
        float f;
        float convertDpToPixel = Utils.convertDpToPixel(this.mFormToTextSpace);
        float f2 = 0.0f;
        float f3 = 0.0f;
        for (LegendEntry legendEntry : this.mEntries) {
            if (Float.isNaN(legendEntry.formSize)) {
                f = this.mFormSize;
            } else {
                f = legendEntry.formSize;
            }
            float convertDpToPixel2 = Utils.convertDpToPixel(f);
            if (convertDpToPixel2 > f3) {
                f3 = convertDpToPixel2;
            }
            String str = legendEntry.label;
            if (str != null) {
                float calcTextWidth = Utils.calcTextWidth(paint, str);
                if (calcTextWidth > f2) {
                    f2 = calcTextWidth;
                }
            }
        }
        return f2 + f3 + convertDpToPixel;
    }

    public LegendOrientation getOrientation() {
        return this.mOrientation;
    }

    @Deprecated
    public LegendPosition getPosition() {
        LegendOrientation legendOrientation = this.mOrientation;
        if (legendOrientation == LegendOrientation.VERTICAL && this.mHorizontalAlignment == LegendHorizontalAlignment.CENTER && this.mVerticalAlignment == LegendVerticalAlignment.CENTER) {
            return LegendPosition.PIECHART_CENTER;
        }
        if (legendOrientation == LegendOrientation.HORIZONTAL) {
            if (this.mVerticalAlignment == LegendVerticalAlignment.TOP) {
                LegendHorizontalAlignment legendHorizontalAlignment = this.mHorizontalAlignment;
                if (legendHorizontalAlignment == LegendHorizontalAlignment.LEFT) {
                    return LegendPosition.ABOVE_CHART_LEFT;
                }
                if (legendHorizontalAlignment == LegendHorizontalAlignment.RIGHT) {
                    return LegendPosition.ABOVE_CHART_RIGHT;
                }
                return LegendPosition.ABOVE_CHART_CENTER;
            }
            LegendHorizontalAlignment legendHorizontalAlignment2 = this.mHorizontalAlignment;
            if (legendHorizontalAlignment2 == LegendHorizontalAlignment.LEFT) {
                return LegendPosition.BELOW_CHART_LEFT;
            }
            if (legendHorizontalAlignment2 == LegendHorizontalAlignment.RIGHT) {
                return LegendPosition.BELOW_CHART_RIGHT;
            }
            return LegendPosition.BELOW_CHART_CENTER;
        }
        if (this.mHorizontalAlignment == LegendHorizontalAlignment.LEFT) {
            LegendVerticalAlignment legendVerticalAlignment = this.mVerticalAlignment;
            if (legendVerticalAlignment == LegendVerticalAlignment.TOP && this.mDrawInside) {
                return LegendPosition.LEFT_OF_CHART_INSIDE;
            }
            if (legendVerticalAlignment == LegendVerticalAlignment.CENTER) {
                return LegendPosition.LEFT_OF_CHART_CENTER;
            }
            return LegendPosition.LEFT_OF_CHART;
        }
        LegendVerticalAlignment legendVerticalAlignment2 = this.mVerticalAlignment;
        if (legendVerticalAlignment2 == LegendVerticalAlignment.TOP && this.mDrawInside) {
            return LegendPosition.RIGHT_OF_CHART_INSIDE;
        }
        if (legendVerticalAlignment2 == LegendVerticalAlignment.CENTER) {
            return LegendPosition.RIGHT_OF_CHART_CENTER;
        }
        return LegendPosition.RIGHT_OF_CHART;
    }

    public float getStackSpace() {
        return this.mStackSpace;
    }

    public LegendVerticalAlignment getVerticalAlignment() {
        return this.mVerticalAlignment;
    }

    public float getXEntrySpace() {
        return this.mXEntrySpace;
    }

    public float getYEntrySpace() {
        return this.mYEntrySpace;
    }

    public boolean isDrawInsideEnabled() {
        return this.mDrawInside;
    }

    public boolean isLegendCustom() {
        return this.mIsLegendCustom;
    }

    public boolean isWordWrapEnabled() {
        return this.mWordWrapEnabled;
    }

    public void resetCustom() {
        this.mIsLegendCustom = false;
    }

    public void setCustom(LegendEntry[] legendEntryArr) {
        this.mEntries = legendEntryArr;
        this.mIsLegendCustom = true;
    }

    public void setDirection(LegendDirection legendDirection) {
        this.mDirection = legendDirection;
    }

    public void setDrawInside(boolean z) {
        this.mDrawInside = z;
    }

    public void setEntries(List<LegendEntry> list) {
        this.mEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    public void setExtra(List<LegendEntry> list) {
        this.mExtraEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
    }

    public void setForm(LegendForm legendForm) {
        this.mShape = legendForm;
    }

    public void setFormLineDashEffect(DashPathEffect dashPathEffect) {
        this.mFormLineDashEffect = dashPathEffect;
    }

    public void setFormLineWidth(float f) {
        this.mFormLineWidth = f;
    }

    public void setFormSize(float f) {
        this.mFormSize = f;
    }

    public void setFormToTextSpace(float f) {
        this.mFormToTextSpace = f;
    }

    public void setHorizontalAlignment(LegendHorizontalAlignment legendHorizontalAlignment) {
        this.mHorizontalAlignment = legendHorizontalAlignment;
    }

    public void setMaxSizePercent(float f) {
        this.mMaxSizePercent = f;
    }

    public void setOrientation(LegendOrientation legendOrientation) {
        this.mOrientation = legendOrientation;
    }

    @Deprecated
    public void setPosition(LegendPosition legendPosition) {
        boolean z;
        LegendVerticalAlignment legendVerticalAlignment;
        LegendVerticalAlignment legendVerticalAlignment2;
        LegendHorizontalAlignment legendHorizontalAlignment;
        LegendHorizontalAlignment legendHorizontalAlignment2;
        switch (AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendPosition[legendPosition.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.mHorizontalAlignment = LegendHorizontalAlignment.LEFT;
                if (legendPosition == LegendPosition.LEFT_OF_CHART_CENTER) {
                    legendVerticalAlignment = LegendVerticalAlignment.CENTER;
                } else {
                    legendVerticalAlignment = LegendVerticalAlignment.TOP;
                }
                this.mVerticalAlignment = legendVerticalAlignment;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
            case 4:
            case 5:
            case 6:
                this.mHorizontalAlignment = LegendHorizontalAlignment.RIGHT;
                if (legendPosition == LegendPosition.RIGHT_OF_CHART_CENTER) {
                    legendVerticalAlignment2 = LegendVerticalAlignment.CENTER;
                } else {
                    legendVerticalAlignment2 = LegendVerticalAlignment.TOP;
                }
                this.mVerticalAlignment = legendVerticalAlignment2;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
            case 7:
            case 8:
            case 9:
                if (legendPosition == LegendPosition.ABOVE_CHART_LEFT) {
                    legendHorizontalAlignment = LegendHorizontalAlignment.LEFT;
                } else if (legendPosition == LegendPosition.ABOVE_CHART_RIGHT) {
                    legendHorizontalAlignment = LegendHorizontalAlignment.RIGHT;
                } else {
                    legendHorizontalAlignment = LegendHorizontalAlignment.CENTER;
                }
                this.mHorizontalAlignment = legendHorizontalAlignment;
                this.mVerticalAlignment = LegendVerticalAlignment.TOP;
                this.mOrientation = LegendOrientation.HORIZONTAL;
                break;
            case 10:
            case 11:
            case 12:
                if (legendPosition == LegendPosition.BELOW_CHART_LEFT) {
                    legendHorizontalAlignment2 = LegendHorizontalAlignment.LEFT;
                } else if (legendPosition == LegendPosition.BELOW_CHART_RIGHT) {
                    legendHorizontalAlignment2 = LegendHorizontalAlignment.RIGHT;
                } else {
                    legendHorizontalAlignment2 = LegendHorizontalAlignment.CENTER;
                }
                this.mHorizontalAlignment = legendHorizontalAlignment2;
                this.mVerticalAlignment = LegendVerticalAlignment.BOTTOM;
                this.mOrientation = LegendOrientation.HORIZONTAL;
                break;
            case 13:
                this.mHorizontalAlignment = LegendHorizontalAlignment.CENTER;
                this.mVerticalAlignment = LegendVerticalAlignment.CENTER;
                this.mOrientation = LegendOrientation.VERTICAL;
                break;
        }
        if (legendPosition != LegendPosition.LEFT_OF_CHART_INSIDE && legendPosition != LegendPosition.RIGHT_OF_CHART_INSIDE) {
            z = false;
        } else {
            z = true;
        }
        this.mDrawInside = z;
    }

    public void setStackSpace(float f) {
        this.mStackSpace = f;
    }

    public void setVerticalAlignment(LegendVerticalAlignment legendVerticalAlignment) {
        this.mVerticalAlignment = legendVerticalAlignment;
    }

    public void setWordWrapEnabled(boolean z) {
        this.mWordWrapEnabled = z;
    }

    public void setXEntrySpace(float f) {
        this.mXEntrySpace = f;
    }

    public void setYEntrySpace(float f) {
        this.mYEntrySpace = f;
    }

    public void setExtra(LegendEntry[] legendEntryArr) {
        if (legendEntryArr == null) {
            legendEntryArr = new LegendEntry[0];
        }
        this.mExtraEntries = legendEntryArr;
    }

    public void setCustom(List<LegendEntry> list) {
        this.mEntries = (LegendEntry[]) list.toArray(new LegendEntry[list.size()]);
        this.mIsLegendCustom = true;
    }

    @Deprecated
    public void setExtra(List<Integer> list, List<String> list2) {
        setExtra(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }

    public void setExtra(int[] iArr, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
            LegendEntry legendEntry = new LegendEntry();
            int i2 = iArr[i];
            legendEntry.formColor = i2;
            legendEntry.label = strArr[i];
            if (i2 == 1122868 || i2 == 0) {
                legendEntry.form = LegendForm.NONE;
            } else if (i2 == 1122867) {
                legendEntry.form = LegendForm.EMPTY;
            }
            arrayList.add(legendEntry);
        }
        this.mExtraEntries = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
    }

    public Legend(LegendEntry[] legendEntryArr) {
        this();
        if (legendEntryArr != null) {
            this.mEntries = legendEntryArr;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2040367852525785046L, 1665179966150113885L, 4603064274023214756L, 4244008352282000944L}).toString());
    }

    @Deprecated
    public Legend(int[] iArr, String[] strArr) {
        this();
        if (iArr != null && strArr != null) {
            if (iArr.length == strArr.length) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < Math.min(iArr.length, strArr.length); i++) {
                    LegendEntry legendEntry = new LegendEntry();
                    int i2 = iArr[i];
                    legendEntry.formColor = i2;
                    legendEntry.label = strArr[i];
                    if (i2 == 1122868) {
                        legendEntry.form = LegendForm.NONE;
                    } else if (i2 == 1122867 || i2 == 0) {
                        legendEntry.form = LegendForm.EMPTY;
                    }
                    arrayList.add(legendEntry);
                }
                this.mEntries = (LegendEntry[]) arrayList.toArray(new LegendEntry[arrayList.size()]);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3564827568785691601L, -613977385746590648L, 6407451581924169520L, 997573716195172175L, -3816170377708753502L, 7603600827215212594L, 3043385478094433904L, -1400954263754916932L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{6104479238089210180L, 8756708338201691512L, -2259973796931966938L, 6662023402800698632L, 4896641946186943637L, 8612459013608398858L}).toString());
    }

    @Deprecated
    public Legend(List<Integer> list, List<String> list2) {
        this(Utils.convertIntegers(list), Utils.convertStrings(list2));
    }
}
