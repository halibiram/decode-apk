package com.github.mikephil.charting.charts;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.listener.PieRadarChartTouchListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public abstract class PieRadarChartBase<T extends ChartData<? extends IDataSet<? extends Entry>>> extends Chart<T> {
    protected float mMinOffset;
    private float mRawRotationAngle;
    protected boolean mRotateEnabled;
    private float mRotationAngle;

    /* renamed from: com.github.mikephil.charting.charts.PieRadarChartBase$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment;

        static {
            int[] iArr = new int[Legend.LegendOrientation.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation = iArr;
            try {
                iArr[Legend.LegendOrientation.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[Legend.LegendOrientation.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Legend.LegendHorizontalAlignment.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment = iArr2;
            try {
                iArr2[Legend.LegendHorizontalAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[Legend.LegendHorizontalAlignment.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[Legend.LegendHorizontalAlignment.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[Legend.LegendVerticalAlignment.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment = iArr3;
            try {
                iArr3[Legend.LegendVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[Legend.LegendVerticalAlignment.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public PieRadarChartBase(Context context) {
        super(context);
        this.mRotationAngle = 270.0f;
        this.mRawRotationAngle = 270.0f;
        this.mRotateEnabled = true;
        this.mMinOffset = 0.0f;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void calcMinMax() {
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void calculateOffsets() {
        float f;
        float f2;
        float f3;
        float convertDpToPixel;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        Legend legend = this.mLegend;
        float f9 = 0.0f;
        if (legend != null && legend.isEnabled() && !this.mLegend.isDrawInsideEnabled()) {
            float min = Math.min(this.mLegend.mNeededWidth, this.mLegend.getMaxSizePercent() * this.mViewPortHandler.getChartWidth());
            int i = AnonymousClass2.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[this.mLegend.getOrientation().ordinal()];
            if (i != 1) {
                if (i == 2 && (this.mLegend.getVerticalAlignment() == Legend.LegendVerticalAlignment.TOP || this.mLegend.getVerticalAlignment() == Legend.LegendVerticalAlignment.BOTTOM)) {
                    f8 = Math.min(this.mLegend.mNeededHeight + getRequiredLegendOffset(), this.mLegend.getMaxSizePercent() * this.mViewPortHandler.getChartHeight());
                    int i2 = AnonymousClass2.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[this.mLegend.getVerticalAlignment().ordinal()];
                    if (i2 != 1) {
                        if (i2 == 2) {
                            f7 = f8;
                            f8 = 0.0f;
                            convertDpToPixel = 0.0f;
                        }
                    }
                    convertDpToPixel = 0.0f;
                    f7 = 0.0f;
                }
                f8 = 0.0f;
                convertDpToPixel = 0.0f;
                f7 = 0.0f;
            } else {
                if (this.mLegend.getHorizontalAlignment() != Legend.LegendHorizontalAlignment.LEFT && this.mLegend.getHorizontalAlignment() != Legend.LegendHorizontalAlignment.RIGHT) {
                    convertDpToPixel = 0.0f;
                } else if (this.mLegend.getVerticalAlignment() == Legend.LegendVerticalAlignment.CENTER) {
                    convertDpToPixel = Utils.convertDpToPixel(13.0f) + min;
                } else {
                    convertDpToPixel = Utils.convertDpToPixel(8.0f) + min;
                    Legend legend2 = this.mLegend;
                    float f10 = legend2.mNeededHeight + legend2.mTextHeightMax;
                    MPPointF center = getCenter();
                    if (this.mLegend.getHorizontalAlignment() == Legend.LegendHorizontalAlignment.RIGHT) {
                        f4 = (getWidth() - convertDpToPixel) + 15.0f;
                    } else {
                        f4 = convertDpToPixel - 15.0f;
                    }
                    float f11 = f10 + 15.0f;
                    float distanceToCenter = distanceToCenter(f4, f11);
                    MPPointF position = getPosition(center, getRadius(), getAngleForPoint(f4, f11));
                    float distanceToCenter2 = distanceToCenter(position.x, position.y);
                    float convertDpToPixel2 = Utils.convertDpToPixel(5.0f);
                    if (f11 < center.y || getHeight() - convertDpToPixel <= getWidth()) {
                        if (distanceToCenter < distanceToCenter2) {
                            convertDpToPixel = (distanceToCenter2 - distanceToCenter) + convertDpToPixel2;
                        } else {
                            convertDpToPixel = 0.0f;
                        }
                    }
                    MPPointF.recycleInstance(center);
                    MPPointF.recycleInstance(position);
                }
                int i3 = AnonymousClass2.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[this.mLegend.getHorizontalAlignment().ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            int i4 = AnonymousClass2.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[this.mLegend.getVerticalAlignment().ordinal()];
                            if (i4 != 1) {
                                if (i4 == 2) {
                                    f5 = Math.min(this.mLegend.mNeededHeight, this.mLegend.getMaxSizePercent() * this.mViewPortHandler.getChartHeight());
                                    convertDpToPixel = 0.0f;
                                    f6 = 0.0f;
                                    float f12 = f6;
                                    f7 = f5;
                                    f8 = f12;
                                }
                            } else {
                                f6 = Math.min(this.mLegend.mNeededHeight, this.mLegend.getMaxSizePercent() * this.mViewPortHandler.getChartHeight());
                                f5 = 0.0f;
                                convertDpToPixel = 0.0f;
                                float f122 = f6;
                                f7 = f5;
                                f8 = f122;
                            }
                        }
                    } else {
                        f5 = 0.0f;
                        f6 = 0.0f;
                        float f1222 = f6;
                        f7 = f5;
                        f8 = f1222;
                    }
                } else {
                    f9 = convertDpToPixel;
                }
                f5 = 0.0f;
                convertDpToPixel = 0.0f;
                f6 = 0.0f;
                float f12222 = f6;
                f7 = f5;
                f8 = f12222;
            }
            f9 += getRequiredBaseOffset();
            f2 = convertDpToPixel + getRequiredBaseOffset();
            f = f8 + getRequiredBaseOffset();
            f3 = f7 + getRequiredBaseOffset();
        } else {
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
        }
        float convertDpToPixel3 = Utils.convertDpToPixel(this.mMinOffset);
        if (this instanceof RadarChart) {
            XAxis xAxis = getXAxis();
            if (xAxis.isEnabled() && xAxis.isDrawLabelsEnabled()) {
                convertDpToPixel3 = Math.max(convertDpToPixel3, xAxis.mLabelRotatedWidth);
            }
        }
        this.mViewPortHandler.restrainViewPort(Math.max(convertDpToPixel3, getExtraLeftOffset() + f9), Math.max(convertDpToPixel3, getExtraTopOffset() + f), Math.max(convertDpToPixel3, getExtraRightOffset() + f2), Math.max(convertDpToPixel3, Math.max(getRequiredBaseOffset(), getExtraBottomOffset() + f3)));
        if (this.mLogEnabled) {
            new ObfuscatedString(new long[]{-2579810737705547464L, -3925049722618429489L, 3440068364656759090L}).toString();
            new ObfuscatedString(new long[]{-6375836971863227086L, -2432837515764383513L, -4935259192046626129L}).toString();
            new ObfuscatedString(new long[]{1446293775212911783L, -7458063948073224384L, -3958812320607453247L}).toString();
            new ObfuscatedString(new long[]{8527857994159671989L, -200860387743447908L, -4863666224097048599L}).toString();
            new ObfuscatedString(new long[]{-5178397600284560809L, 31043276848150607L, -2400313666216569610L}).toString();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        ChartTouchListener chartTouchListener = this.mChartTouchListener;
        if (chartTouchListener instanceof PieRadarChartTouchListener) {
            ((PieRadarChartTouchListener) chartTouchListener).computeScroll();
        }
    }

    public float distanceToCenter(float f, float f2) {
        float f3;
        float f4;
        MPPointF centerOffsets = getCenterOffsets();
        float f5 = centerOffsets.x;
        if (f > f5) {
            f3 = f - f5;
        } else {
            f3 = f5 - f;
        }
        float f6 = centerOffsets.y;
        if (f2 > f6) {
            f4 = f2 - f6;
        } else {
            f4 = f6 - f2;
        }
        float sqrt = (float) Math.sqrt(Math.pow(f4, 2.0d) + Math.pow(f3, 2.0d));
        MPPointF.recycleInstance(centerOffsets);
        return sqrt;
    }

    public float getAngleForPoint(float f, float f2) {
        MPPointF centerOffsets = getCenterOffsets();
        double d = f - centerOffsets.x;
        double d2 = f2 - centerOffsets.y;
        float degrees = (float) Math.toDegrees(Math.acos(d2 / Math.sqrt((d2 * d2) + (d * d))));
        if (f > centerOffsets.x) {
            degrees = 360.0f - degrees;
        }
        float f3 = degrees + 90.0f;
        if (f3 > 360.0f) {
            f3 -= 360.0f;
        }
        MPPointF.recycleInstance(centerOffsets);
        return f3;
    }

    public float getDiameter() {
        RectF contentRect = this.mViewPortHandler.getContentRect();
        contentRect.left = getExtraLeftOffset() + contentRect.left;
        contentRect.top = getExtraTopOffset() + contentRect.top;
        contentRect.right -= getExtraRightOffset();
        contentRect.bottom -= getExtraBottomOffset();
        return Math.min(contentRect.width(), contentRect.height());
    }

    public abstract int getIndexForAngle(float f);

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public int getMaxVisibleCount() {
        return this.mData.getEntryCount();
    }

    public float getMinOffset() {
        return this.mMinOffset;
    }

    public MPPointF getPosition(MPPointF mPPointF, float f, float f2) {
        MPPointF mPPointF2 = MPPointF.getInstance(0.0f, 0.0f);
        getPosition(mPPointF, f, f2, mPPointF2);
        return mPPointF2;
    }

    public abstract float getRadius();

    public float getRawRotationAngle() {
        return this.mRawRotationAngle;
    }

    public abstract float getRequiredBaseOffset();

    public abstract float getRequiredLegendOffset();

    public float getRotationAngle() {
        return this.mRotationAngle;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getYChartMax() {
        return 0.0f;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getYChartMin() {
        return 0.0f;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mChartTouchListener = new PieRadarChartTouchListener(this);
    }

    public boolean isRotationEnabled() {
        return this.mRotateEnabled;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void notifyDataSetChanged() {
        if (this.mData == null) {
            return;
        }
        calcMinMax();
        if (this.mLegend != null) {
            this.mLegendRenderer.computeLegend(this.mData);
        }
        calculateOffsets();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ChartTouchListener chartTouchListener;
        if (this.mTouchEnabled && (chartTouchListener = this.mChartTouchListener) != null) {
            return chartTouchListener.onTouch(this, motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setMinOffset(float f) {
        this.mMinOffset = f;
    }

    public void setRotationAngle(float f) {
        this.mRawRotationAngle = f;
        this.mRotationAngle = Utils.getNormalizedAngle(f);
    }

    public void setRotationEnabled(boolean z) {
        this.mRotateEnabled = z;
    }

    @SuppressLint({"NewApi"})
    public void spin(int i, float f, float f2, Easing.EasingOption easingOption) {
        setRotationAngle(f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{8022173879652594095L, -8597554996788887983L, 5075090855231987309L}).toString(), f, f2);
        ofFloat.setDuration(i);
        ofFloat.setInterpolator(Easing.getEasingFunctionFromOption(easingOption));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.mikephil.charting.charts.PieRadarChartBase.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PieRadarChartBase.this.postInvalidate();
            }
        });
        ofFloat.start();
    }

    public void getPosition(MPPointF mPPointF, float f, float f2, MPPointF mPPointF2) {
        double d = f;
        double d2 = f2;
        mPPointF2.x = (float) ((Math.cos(Math.toRadians(d2)) * d) + mPPointF.x);
        mPPointF2.y = (float) ((Math.sin(Math.toRadians(d2)) * d) + mPPointF.y);
    }

    public PieRadarChartBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRotationAngle = 270.0f;
        this.mRawRotationAngle = 270.0f;
        this.mRotateEnabled = true;
        this.mMinOffset = 0.0f;
    }

    public PieRadarChartBase(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRotationAngle = 270.0f;
        this.mRawRotationAngle = 270.0f;
        this.mRotateEnabled = true;
        this.mMinOffset = 0.0f;
    }
}
