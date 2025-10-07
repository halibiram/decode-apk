package com.github.mikephil.charting.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.core.view.ViewCompat;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes.dex */
public class PieChartRenderer extends DataRenderer {
    protected Canvas mBitmapCanvas;
    private RectF mCenterTextLastBounds;
    private CharSequence mCenterTextLastValue;
    private StaticLayout mCenterTextLayout;
    private TextPaint mCenterTextPaint;
    protected PieChart mChart;
    protected WeakReference<Bitmap> mDrawBitmap;
    protected Path mDrawCenterTextPathBuffer;
    protected RectF mDrawHighlightedRectF;
    private Paint mEntryLabelsPaint;
    private Path mHoleCirclePath;
    protected Paint mHolePaint;
    private RectF mInnerRectBuffer;
    private Path mPathBuffer;
    private RectF[] mRectBuffer;
    protected Paint mTransparentCirclePaint;
    protected Paint mValueLinePaint;

    public PieChartRenderer(PieChart pieChart, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mCenterTextLastBounds = new RectF();
        this.mRectBuffer = new RectF[]{new RectF(), new RectF(), new RectF()};
        this.mPathBuffer = new Path();
        this.mInnerRectBuffer = new RectF();
        this.mHoleCirclePath = new Path();
        this.mDrawCenterTextPathBuffer = new Path();
        this.mDrawHighlightedRectF = new RectF();
        this.mChart = pieChart;
        Paint paint = new Paint(1);
        this.mHolePaint = paint;
        paint.setColor(-1);
        Paint paint2 = this.mHolePaint;
        Paint.Style style = Paint.Style.FILL;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.mTransparentCirclePaint = paint3;
        paint3.setColor(-1);
        this.mTransparentCirclePaint.setStyle(style);
        this.mTransparentCirclePaint.setAlpha(105);
        TextPaint textPaint = new TextPaint(1);
        this.mCenterTextPaint = textPaint;
        textPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mCenterTextPaint.setTextSize(Utils.convertDpToPixel(12.0f));
        this.mValuePaint.setTextSize(Utils.convertDpToPixel(13.0f));
        this.mValuePaint.setColor(-1);
        Paint paint4 = this.mValuePaint;
        Paint.Align align = Paint.Align.CENTER;
        paint4.setTextAlign(align);
        Paint paint5 = new Paint(1);
        this.mEntryLabelsPaint = paint5;
        paint5.setColor(-1);
        this.mEntryLabelsPaint.setTextAlign(align);
        this.mEntryLabelsPaint.setTextSize(Utils.convertDpToPixel(13.0f));
        Paint paint6 = new Paint(1);
        this.mValueLinePaint = paint6;
        paint6.setStyle(Paint.Style.STROKE);
    }

    public float calculateMinimumRadiusForSpacedSlice(MPPointF mPPointF, float f, float f2, float f3, float f4, float f5, float f6) {
        double d = (f5 + f6) * 0.017453292f;
        float cos = (((float) Math.cos(d)) * f) + mPPointF.x;
        float sin = (((float) Math.sin(d)) * f) + mPPointF.y;
        double d2 = ((f6 / 2.0f) + f5) * 0.017453292f;
        float cos2 = (((float) Math.cos(d2)) * f) + mPPointF.x;
        float sin2 = (((float) Math.sin(d2)) * f) + mPPointF.y;
        return (float) ((f - ((float) (Math.tan(((180.0d - f2) / 2.0d) * 0.017453292519943295d) * (Math.sqrt(Math.pow(sin - f4, 2.0d) + Math.pow(cos - f3, 2.0d)) / 2.0d)))) - Math.sqrt(Math.pow(sin2 - ((sin + f4) / 2.0f), 2.0d) + Math.pow(cos2 - ((cos + f3) / 2.0f), 2.0d)));
    }

    public void drawCenterText(Canvas canvas) {
        float radius;
        MPPointF mPPointF;
        CharSequence centerText = this.mChart.getCenterText();
        if (this.mChart.isDrawCenterTextEnabled() && centerText != null) {
            MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
            MPPointF centerTextOffset = this.mChart.getCenterTextOffset();
            float f = centerCircleBox.x + centerTextOffset.x;
            float f2 = centerCircleBox.y + centerTextOffset.y;
            if (this.mChart.isDrawHoleEnabled() && !this.mChart.isDrawSlicesUnderHoleEnabled()) {
                radius = (this.mChart.getHoleRadius() / 100.0f) * this.mChart.getRadius();
            } else {
                radius = this.mChart.getRadius();
            }
            RectF[] rectFArr = this.mRectBuffer;
            RectF rectF = rectFArr[0];
            rectF.left = f - radius;
            rectF.top = f2 - radius;
            rectF.right = f + radius;
            rectF.bottom = f2 + radius;
            RectF rectF2 = rectFArr[1];
            rectF2.set(rectF);
            float centerTextRadiusPercent = this.mChart.getCenterTextRadiusPercent() / 100.0f;
            if (centerTextRadiusPercent > 0.0d) {
                rectF2.inset((rectF2.width() - (rectF2.width() * centerTextRadiusPercent)) / 2.0f, (rectF2.height() - (rectF2.height() * centerTextRadiusPercent)) / 2.0f);
            }
            if (centerText.equals(this.mCenterTextLastValue) && rectF2.equals(this.mCenterTextLastBounds)) {
                mPPointF = centerTextOffset;
            } else {
                this.mCenterTextLastBounds.set(rectF2);
                this.mCenterTextLastValue = centerText;
                mPPointF = centerTextOffset;
                this.mCenterTextLayout = new StaticLayout(centerText, 0, centerText.length(), this.mCenterTextPaint, (int) Math.max(Math.ceil(this.mCenterTextLastBounds.width()), 1.0d), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            }
            float height = this.mCenterTextLayout.getHeight();
            canvas.save();
            Path path = this.mDrawCenterTextPathBuffer;
            path.reset();
            path.addOval(rectF, Path.Direction.CW);
            canvas.clipPath(path);
            canvas.translate(rectF2.left, ((rectF2.height() - height) / 2.0f) + rectF2.top);
            this.mCenterTextLayout.draw(canvas);
            canvas.restore();
            MPPointF.recycleInstance(centerCircleBox);
            MPPointF.recycleInstance(mPPointF);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        int chartWidth = (int) this.mViewPortHandler.getChartWidth();
        int chartHeight = (int) this.mViewPortHandler.getChartHeight();
        WeakReference<Bitmap> weakReference = this.mDrawBitmap;
        if (weakReference == null || weakReference.get().getWidth() != chartWidth || this.mDrawBitmap.get().getHeight() != chartHeight) {
            if (chartWidth > 0 && chartHeight > 0) {
                this.mDrawBitmap = new WeakReference<>(Bitmap.createBitmap(chartWidth, chartHeight, Bitmap.Config.ARGB_4444));
                this.mBitmapCanvas = new Canvas(this.mDrawBitmap.get());
            } else {
                return;
            }
        }
        this.mDrawBitmap.get().eraseColor(0);
        for (IPieDataSet iPieDataSet : ((PieData) this.mChart.getData()).getDataSets()) {
            if (iPieDataSet.isVisible() && iPieDataSet.getEntryCount() > 0) {
                drawDataSet(canvas, iPieDataSet);
            }
        }
    }

    public void drawDataSet(Canvas canvas, IPieDataSet iPieDataSet) {
        boolean z;
        float f;
        float sliceSpace;
        int i;
        float f2;
        float f3;
        float f4;
        RectF rectF;
        int i2;
        float[] fArr;
        int i3;
        float f5;
        MPPointF mPPointF;
        boolean z2;
        float f6;
        float f7;
        float f8;
        MPPointF mPPointF2;
        float f9;
        int i4;
        float f10;
        PieChartRenderer pieChartRenderer = this;
        IPieDataSet iPieDataSet2 = iPieDataSet;
        float rotationAngle = pieChartRenderer.mChart.getRotationAngle();
        float phaseX = pieChartRenderer.mAnimator.getPhaseX();
        float phaseY = pieChartRenderer.mAnimator.getPhaseY();
        RectF circleBox = pieChartRenderer.mChart.getCircleBox();
        int entryCount = iPieDataSet.getEntryCount();
        float[] drawAngles = pieChartRenderer.mChart.getDrawAngles();
        MPPointF centerCircleBox = pieChartRenderer.mChart.getCenterCircleBox();
        float radius = pieChartRenderer.mChart.getRadius();
        if (pieChartRenderer.mChart.isDrawHoleEnabled() && !pieChartRenderer.mChart.isDrawSlicesUnderHoleEnabled()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            f = (pieChartRenderer.mChart.getHoleRadius() / 100.0f) * radius;
        } else {
            f = 0.0f;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < entryCount; i6++) {
            if (Math.abs(iPieDataSet2.getEntryForIndex(i6).getY()) > Utils.FLOAT_EPSILON) {
                i5++;
            }
        }
        if (i5 <= 1) {
            sliceSpace = 0.0f;
        } else {
            sliceSpace = pieChartRenderer.getSliceSpace(iPieDataSet2);
        }
        int i7 = 0;
        float f11 = 0.0f;
        while (i7 < entryCount) {
            float f12 = drawAngles[i7];
            float abs = Math.abs(iPieDataSet2.getEntryForIndex(i7).getY());
            float f13 = Utils.FLOAT_EPSILON;
            if (abs > f13 && !pieChartRenderer.mChart.needsHighlight(i7)) {
                if (sliceSpace > 0.0f && f12 <= 180.0f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                pieChartRenderer.mRenderPaint.setColor(iPieDataSet2.getColor(i7));
                if (i5 == 1) {
                    f6 = 0.0f;
                } else {
                    f6 = sliceSpace / (radius * 0.017453292f);
                }
                float f14 = (((f6 / 2.0f) + f11) * phaseY) + rotationAngle;
                float f15 = (f12 - f6) * phaseY;
                if (f15 < 0.0f) {
                    f15 = 0.0f;
                }
                pieChartRenderer.mPathBuffer.reset();
                int i8 = i7;
                int i9 = i5;
                double d = f14 * 0.017453292f;
                i2 = entryCount;
                fArr = drawAngles;
                float cos = centerCircleBox.x + (((float) Math.cos(d)) * radius);
                float sin = centerCircleBox.y + (((float) Math.sin(d)) * radius);
                if (f15 >= 360.0f && f15 % 360.0f <= f13) {
                    f4 = phaseX;
                    pieChartRenderer.mPathBuffer.addCircle(centerCircleBox.x, centerCircleBox.y, radius, Path.Direction.CW);
                } else {
                    f4 = phaseX;
                    pieChartRenderer.mPathBuffer.moveTo(cos, sin);
                    pieChartRenderer.mPathBuffer.arcTo(circleBox, f14, f15);
                }
                RectF rectF2 = pieChartRenderer.mInnerRectBuffer;
                float f16 = centerCircleBox.x;
                float f17 = centerCircleBox.y;
                float f18 = f15;
                rectF2.set(f16 - f, f17 - f, f16 + f, f17 + f);
                if (z) {
                    if (f <= 0.0f && !z2) {
                        f5 = f;
                        f3 = rotationAngle;
                        f7 = f18;
                        f8 = 360.0f;
                        f2 = radius;
                        mPPointF = centerCircleBox;
                        rectF = circleBox;
                        i3 = i9;
                        i = i8;
                    } else {
                        if (z2) {
                            f9 = f18;
                            rectF = circleBox;
                            i3 = i9;
                            i = i8;
                            f5 = f;
                            i4 = 1;
                            f2 = radius;
                            mPPointF2 = centerCircleBox;
                            float calculateMinimumRadiusForSpacedSlice = calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f12 * phaseY, cos, sin, f14, f9);
                            if (calculateMinimumRadiusForSpacedSlice < 0.0f) {
                                calculateMinimumRadiusForSpacedSlice = -calculateMinimumRadiusForSpacedSlice;
                            }
                            f = Math.max(f5, calculateMinimumRadiusForSpacedSlice);
                        } else {
                            f5 = f;
                            mPPointF2 = centerCircleBox;
                            f9 = f18;
                            i4 = 1;
                            f2 = radius;
                            rectF = circleBox;
                            i3 = i9;
                            i = i8;
                        }
                        if (i3 != i4 && f != 0.0f) {
                            f10 = sliceSpace / (f * 0.017453292f);
                        } else {
                            f10 = 0.0f;
                        }
                        float f19 = (((f10 / 2.0f) + f11) * phaseY) + rotationAngle;
                        float f20 = (f12 - f10) * phaseY;
                        if (f20 < 0.0f) {
                            f20 = 0.0f;
                        }
                        float f21 = f19 + f20;
                        if (f15 >= 360.0f && f9 % 360.0f <= f13) {
                            pieChartRenderer = this;
                            pieChartRenderer.mPathBuffer.addCircle(mPPointF2.x, mPPointF2.y, f, Path.Direction.CCW);
                            f3 = rotationAngle;
                        } else {
                            pieChartRenderer = this;
                            double d2 = f21 * 0.017453292f;
                            f3 = rotationAngle;
                            pieChartRenderer.mPathBuffer.lineTo((((float) Math.cos(d2)) * f) + mPPointF2.x, (f * ((float) Math.sin(d2))) + mPPointF2.y);
                            pieChartRenderer.mPathBuffer.arcTo(pieChartRenderer.mInnerRectBuffer, f21, -f20);
                        }
                        mPPointF = mPPointF2;
                        pieChartRenderer.mPathBuffer.close();
                        pieChartRenderer.mBitmapCanvas.drawPath(pieChartRenderer.mPathBuffer, pieChartRenderer.mRenderPaint);
                    }
                } else {
                    f5 = f;
                    f3 = rotationAngle;
                    f7 = f18;
                    f2 = radius;
                    mPPointF = centerCircleBox;
                    rectF = circleBox;
                    i3 = i9;
                    i = i8;
                    f8 = 360.0f;
                }
                if (f7 % f8 > f13) {
                    if (z2) {
                        float calculateMinimumRadiusForSpacedSlice2 = calculateMinimumRadiusForSpacedSlice(mPPointF, f2, f12 * phaseY, cos, sin, f14, f7);
                        double d3 = ((f7 / 2.0f) + f14) * 0.017453292f;
                        pieChartRenderer.mPathBuffer.lineTo((((float) Math.cos(d3)) * calculateMinimumRadiusForSpacedSlice2) + mPPointF.x, (calculateMinimumRadiusForSpacedSlice2 * ((float) Math.sin(d3))) + mPPointF.y);
                    } else {
                        pieChartRenderer.mPathBuffer.lineTo(mPPointF.x, mPPointF.y);
                    }
                }
                pieChartRenderer.mPathBuffer.close();
                pieChartRenderer.mBitmapCanvas.drawPath(pieChartRenderer.mPathBuffer, pieChartRenderer.mRenderPaint);
            } else {
                i = i7;
                f2 = radius;
                f3 = rotationAngle;
                f4 = phaseX;
                rectF = circleBox;
                i2 = entryCount;
                fArr = drawAngles;
                i3 = i5;
                f5 = f;
                mPPointF = centerCircleBox;
            }
            f11 = (f12 * f4) + f11;
            i7 = i + 1;
            iPieDataSet2 = iPieDataSet;
            centerCircleBox = mPPointF;
            i5 = i3;
            f = f5;
            circleBox = rectF;
            entryCount = i2;
            drawAngles = fArr;
            phaseX = f4;
            radius = f2;
            rotationAngle = f3;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    public void drawEntryLabel(Canvas canvas, String str, float f, float f2) {
        canvas.drawText(str, f, f2, this.mEntryLabelsPaint);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        drawHole(canvas);
        canvas.drawBitmap(this.mDrawBitmap.get(), 0.0f, 0.0f, (Paint) null);
        drawCenterText(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        boolean z;
        float f;
        IPieDataSet dataSetByIndex;
        float f2;
        int i;
        float sliceSpace;
        boolean z2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float[] fArr;
        float[] fArr2;
        float f8;
        RectF rectF;
        int i2;
        int i3;
        int i4;
        float f9;
        float f10;
        int i5;
        float f11;
        float f12;
        Highlight[] highlightArr2 = highlightArr;
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        if (this.mChart.isDrawHoleEnabled() && !this.mChart.isDrawSlicesUnderHoleEnabled()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            f = (this.mChart.getHoleRadius() / 100.0f) * radius;
        } else {
            f = 0.0f;
        }
        RectF rectF2 = this.mDrawHighlightedRectF;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        int i6 = 0;
        while (i6 < highlightArr2.length) {
            int x = (int) highlightArr2[i6].getX();
            if (x >= drawAngles.length || (dataSetByIndex = ((PieData) this.mChart.getData()).getDataSetByIndex(highlightArr2[i6].getDataSetIndex())) == null || !dataSetByIndex.isHighlightEnabled()) {
                i5 = i6;
                rectF = rectF2;
                f7 = phaseX;
                fArr = drawAngles;
                fArr2 = absoluteAngles;
                f8 = f;
            } else {
                int entryCount = dataSetByIndex.getEntryCount();
                int i7 = 0;
                for (int i8 = 0; i8 < entryCount; i8++) {
                    if (Math.abs(dataSetByIndex.getEntryForIndex(i8).getY()) > Utils.FLOAT_EPSILON) {
                        i7++;
                    }
                }
                if (x == 0) {
                    i = 1;
                    f2 = 0.0f;
                } else {
                    f2 = absoluteAngles[x - 1] * phaseX;
                    i = 1;
                }
                if (i7 <= i) {
                    sliceSpace = 0.0f;
                } else {
                    sliceSpace = dataSetByIndex.getSliceSpace();
                }
                float f13 = drawAngles[x];
                float selectionShift = dataSetByIndex.getSelectionShift();
                float f14 = radius + selectionShift;
                int i9 = i6;
                rectF2.set(this.mChart.getCircleBox());
                float f15 = -selectionShift;
                rectF2.inset(f15, f15);
                if (sliceSpace > 0.0f && f13 <= 180.0f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.mRenderPaint.setColor(dataSetByIndex.getColor(x));
                if (i7 == 1) {
                    f3 = 0.0f;
                } else {
                    f3 = sliceSpace / (radius * 0.017453292f);
                }
                if (i7 == 1) {
                    f4 = 0.0f;
                } else {
                    f4 = sliceSpace / (f14 * 0.017453292f);
                }
                float f16 = (((f3 / 2.0f) + f2) * phaseY) + rotationAngle;
                float f17 = (f13 - f3) * phaseY;
                if (f17 < 0.0f) {
                    f5 = 0.0f;
                } else {
                    f5 = f17;
                }
                float f18 = (((f4 / 2.0f) + f2) * phaseY) + rotationAngle;
                float f19 = (f13 - f4) * phaseY;
                if (f19 < 0.0f) {
                    f19 = 0.0f;
                }
                this.mPathBuffer.reset();
                if (f5 >= 360.0f && f5 % 360.0f <= Utils.FLOAT_EPSILON) {
                    this.mPathBuffer.addCircle(centerCircleBox.x, centerCircleBox.y, f14, Path.Direction.CW);
                    f6 = f;
                    f7 = phaseX;
                    fArr = drawAngles;
                    fArr2 = absoluteAngles;
                } else {
                    f6 = f;
                    f7 = phaseX;
                    double d = f18 * 0.017453292f;
                    fArr = drawAngles;
                    fArr2 = absoluteAngles;
                    this.mPathBuffer.moveTo((((float) Math.cos(d)) * f14) + centerCircleBox.x, (f14 * ((float) Math.sin(d))) + centerCircleBox.y);
                    this.mPathBuffer.arcTo(rectF2, f18, f19);
                }
                if (z2) {
                    double d2 = f16 * 0.017453292f;
                    i3 = i9;
                    i4 = 1;
                    f8 = f6;
                    f9 = 0.0f;
                    rectF = rectF2;
                    i2 = i7;
                    f10 = calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f13 * phaseY, (((float) Math.cos(d2)) * radius) + centerCircleBox.x, (((float) Math.sin(d2)) * radius) + centerCircleBox.y, f16, f5);
                } else {
                    f8 = f6;
                    rectF = rectF2;
                    i2 = i7;
                    i3 = i9;
                    i4 = 1;
                    f9 = 0.0f;
                    f10 = 0.0f;
                }
                RectF rectF3 = this.mInnerRectBuffer;
                float f20 = centerCircleBox.x;
                float f21 = centerCircleBox.y;
                rectF3.set(f20 - f8, f21 - f8, f20 + f8, f21 + f8);
                if (!z || (f8 <= f9 && !z2)) {
                    i5 = i3;
                    if (f5 % 360.0f > Utils.FLOAT_EPSILON) {
                        if (z2) {
                            double d3 = ((f5 / 2.0f) + f16) * 0.017453292f;
                            this.mPathBuffer.lineTo((((float) Math.cos(d3)) * f10) + centerCircleBox.x, (f10 * ((float) Math.sin(d3))) + centerCircleBox.y);
                        } else {
                            this.mPathBuffer.lineTo(centerCircleBox.x, centerCircleBox.y);
                        }
                    }
                } else {
                    if (z2) {
                        if (f10 < f9) {
                            f10 = -f10;
                        }
                        f11 = Math.max(f8, f10);
                    } else {
                        f11 = f8;
                    }
                    if (i2 != i4 && f11 != f9) {
                        f12 = sliceSpace / (f11 * 0.017453292f);
                    } else {
                        f12 = 0.0f;
                    }
                    float f22 = (((f12 / 2.0f) + f2) * phaseY) + rotationAngle;
                    float f23 = (f13 - f12) * phaseY;
                    if (f23 < f9) {
                        f23 = 0.0f;
                    }
                    float f24 = f22 + f23;
                    if (f5 >= 360.0f && f5 % 360.0f <= Utils.FLOAT_EPSILON) {
                        this.mPathBuffer.addCircle(centerCircleBox.x, centerCircleBox.y, f11, Path.Direction.CCW);
                        i5 = i3;
                    } else {
                        double d4 = f24 * 0.017453292f;
                        i5 = i3;
                        this.mPathBuffer.lineTo((((float) Math.cos(d4)) * f11) + centerCircleBox.x, (f11 * ((float) Math.sin(d4))) + centerCircleBox.y);
                        this.mPathBuffer.arcTo(this.mInnerRectBuffer, f24, -f23);
                    }
                }
                this.mPathBuffer.close();
                this.mBitmapCanvas.drawPath(this.mPathBuffer, this.mRenderPaint);
            }
            i6 = i5 + 1;
            rectF2 = rectF;
            highlightArr2 = highlightArr;
            f = f8;
            phaseX = f7;
            drawAngles = fArr;
            absoluteAngles = fArr2;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    public void drawHole(Canvas canvas) {
        if (this.mChart.isDrawHoleEnabled() && this.mBitmapCanvas != null) {
            float radius = this.mChart.getRadius();
            float holeRadius = (this.mChart.getHoleRadius() / 100.0f) * radius;
            MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
            if (Color.alpha(this.mHolePaint.getColor()) > 0) {
                this.mBitmapCanvas.drawCircle(centerCircleBox.x, centerCircleBox.y, holeRadius, this.mHolePaint);
            }
            if (Color.alpha(this.mTransparentCirclePaint.getColor()) > 0 && this.mChart.getTransparentCircleRadius() > this.mChart.getHoleRadius()) {
                int alpha = this.mTransparentCirclePaint.getAlpha();
                float transparentCircleRadius = (this.mChart.getTransparentCircleRadius() / 100.0f) * radius;
                this.mTransparentCirclePaint.setAlpha((int) (this.mAnimator.getPhaseY() * this.mAnimator.getPhaseX() * alpha));
                this.mHoleCirclePath.reset();
                this.mHoleCirclePath.addCircle(centerCircleBox.x, centerCircleBox.y, transparentCircleRadius, Path.Direction.CW);
                this.mHoleCirclePath.addCircle(centerCircleBox.x, centerCircleBox.y, holeRadius, Path.Direction.CCW);
                this.mBitmapCanvas.drawPath(this.mHoleCirclePath, this.mTransparentCirclePaint);
                this.mTransparentCirclePaint.setAlpha(alpha);
            }
            MPPointF.recycleInstance(centerCircleBox);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drawRoundedSlices(Canvas canvas) {
        float f;
        float[] fArr;
        float f2;
        if (!this.mChart.isDrawRoundedSlicesEnabled()) {
            return;
        }
        IPieDataSet dataSet = ((PieData) this.mChart.getData()).getDataSet();
        if (!dataSet.isVisible()) {
            return;
        }
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        float holeRadius = (radius - ((this.mChart.getHoleRadius() * radius) / 100.0f)) / 2.0f;
        float[] drawAngles = this.mChart.getDrawAngles();
        float rotationAngle = this.mChart.getRotationAngle();
        int i = 0;
        while (i < dataSet.getEntryCount()) {
            float f3 = drawAngles[i];
            if (Math.abs(dataSet.getEntryForIndex(i).getY()) > Utils.FLOAT_EPSILON) {
                double d = radius - holeRadius;
                double d2 = (rotationAngle + f3) * phaseY;
                f = phaseY;
                fArr = drawAngles;
                f2 = rotationAngle;
                float cos = (float) (centerCircleBox.x + (Math.cos(Math.toRadians(d2)) * d));
                float sin = (float) ((Math.sin(Math.toRadians(d2)) * d) + centerCircleBox.y);
                this.mRenderPaint.setColor(dataSet.getColor(i));
                this.mBitmapCanvas.drawCircle(cos, sin, holeRadius, this.mRenderPaint);
            } else {
                f = phaseY;
                fArr = drawAngles;
                f2 = rotationAngle;
            }
            rotationAngle = (f3 * phaseX) + f2;
            i++;
            phaseY = f;
            drawAngles = fArr;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        int i;
        int i2;
        List<IPieDataSet> list;
        float f;
        float f2;
        float[] fArr;
        float f3;
        float y;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        PieDataSet.ValuePosition valuePosition;
        PieDataSet.ValuePosition valuePosition2;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        int i3;
        IPieDataSet iPieDataSet;
        float f10;
        IPieDataSet iPieDataSet2;
        MPPointF mPPointF;
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float holeRadius = this.mChart.getHoleRadius() / 100.0f;
        float f11 = (radius / 10.0f) * 3.6f;
        if (this.mChart.isDrawHoleEnabled()) {
            f11 = (radius - (radius * holeRadius)) / 2.0f;
        }
        float f12 = radius - f11;
        PieData pieData = (PieData) this.mChart.getData();
        List<IPieDataSet> dataSets = pieData.getDataSets();
        float yValueSum = pieData.getYValueSum();
        boolean isDrawEntryLabelsEnabled = this.mChart.isDrawEntryLabelsEnabled();
        canvas.save();
        float convertDpToPixel = Utils.convertDpToPixel(5.0f);
        int i4 = 0;
        int i5 = 0;
        while (i5 < dataSets.size()) {
            IPieDataSet iPieDataSet3 = dataSets.get(i5);
            boolean isDrawValuesEnabled = iPieDataSet3.isDrawValuesEnabled();
            if (!isDrawValuesEnabled && !isDrawEntryLabelsEnabled) {
                i = i4;
                i2 = i5;
                list = dataSets;
                f = radius;
                f2 = rotationAngle;
                fArr = drawAngles;
            } else {
                PieDataSet.ValuePosition xValuePosition = iPieDataSet3.getXValuePosition();
                PieDataSet.ValuePosition yValuePosition = iPieDataSet3.getYValuePosition();
                applyValueTextStyle(iPieDataSet3);
                float convertDpToPixel2 = Utils.convertDpToPixel(4.0f) + Utils.calcTextHeight(this.mValuePaint, new ObfuscatedString(new long[]{4825805946746760057L, -7164768860648312199L}).toString());
                IValueFormatter valueFormatter = iPieDataSet3.getValueFormatter();
                int entryCount = iPieDataSet3.getEntryCount();
                this.mValueLinePaint.setColor(iPieDataSet3.getValueLineColor());
                this.mValueLinePaint.setStrokeWidth(Utils.convertDpToPixel(iPieDataSet3.getValueLineWidth()));
                float sliceSpace = getSliceSpace(iPieDataSet3);
                MPPointF mPPointF2 = MPPointF.getInstance(iPieDataSet3.getIconsOffset());
                mPPointF2.x = Utils.convertDpToPixel(mPPointF2.x);
                mPPointF2.y = Utils.convertDpToPixel(mPPointF2.y);
                i = i4;
                int i6 = 0;
                while (i6 < entryCount) {
                    PieEntry entryForIndex = iPieDataSet3.getEntryForIndex(i6);
                    if (i == 0) {
                        f3 = 0.0f;
                    } else {
                        f3 = absoluteAngles[i - 1] * phaseX;
                    }
                    float f13 = ((((drawAngles[i] - ((sliceSpace / (f12 * 0.017453292f)) / 2.0f)) / 2.0f) + f3) * phaseY) + rotationAngle;
                    if (this.mChart.isUsePercentValuesEnabled()) {
                        y = (entryForIndex.getY() / yValueSum) * 100.0f;
                    } else {
                        y = entryForIndex.getY();
                    }
                    int i7 = i6;
                    MPPointF mPPointF3 = mPPointF2;
                    double d = f13 * 0.017453292f;
                    int i8 = i5;
                    List<IPieDataSet> list2 = dataSets;
                    float cos = (float) Math.cos(d);
                    float f14 = rotationAngle;
                    float[] fArr2 = drawAngles;
                    float sin = (float) Math.sin(d);
                    if (isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int i9 = entryCount;
                    if (isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (!z && !z2) {
                        valuePosition = yValuePosition;
                        valuePosition2 = xValuePosition;
                        iPieDataSet2 = iPieDataSet3;
                        f10 = cos;
                        f9 = radius;
                        i3 = i7;
                    } else {
                        float valueLinePart1Length = iPieDataSet3.getValueLinePart1Length();
                        float valueLinePart2Length = iPieDataSet3.getValueLinePart2Length();
                        valuePosition = yValuePosition;
                        float valueLinePart1OffsetPercentage = iPieDataSet3.getValueLinePart1OffsetPercentage() / 100.0f;
                        valuePosition2 = xValuePosition;
                        if (this.mChart.isDrawHoleEnabled()) {
                            float f15 = radius * holeRadius;
                            f4 = AbstractC0362x4440ab85.m2925xfbe0c504(radius, f15, valueLinePart1OffsetPercentage, f15);
                        } else {
                            f4 = valueLinePart1OffsetPercentage * radius;
                        }
                        if (iPieDataSet3.isValueLineVariableLength()) {
                            f5 = valueLinePart2Length * f12 * ((float) Math.abs(Math.sin(d)));
                        } else {
                            f5 = valueLinePart2Length * f12;
                        }
                        float f16 = centerCircleBox.x;
                        float f17 = (f4 * cos) + f16;
                        float f18 = centerCircleBox.y;
                        float f19 = (f4 * sin) + f18;
                        float f20 = (valueLinePart1Length + 1.0f) * f12;
                        float f21 = (f20 * cos) + f16;
                        float f22 = (f20 * sin) + f18;
                        double d2 = f13 % 360.0d;
                        if (d2 >= 90.0d && d2 <= 270.0d) {
                            float f23 = f21 - f5;
                            Paint paint = this.mValuePaint;
                            Paint.Align align = Paint.Align.RIGHT;
                            paint.setTextAlign(align);
                            if (z) {
                                this.mEntryLabelsPaint.setTextAlign(align);
                            }
                            f6 = f23;
                            f7 = f23 - convertDpToPixel;
                        } else {
                            f6 = f21 + f5;
                            Paint paint2 = this.mValuePaint;
                            Paint.Align align2 = Paint.Align.LEFT;
                            paint2.setTextAlign(align2);
                            if (z) {
                                this.mEntryLabelsPaint.setTextAlign(align2);
                            }
                            f7 = f6 + convertDpToPixel;
                        }
                        if (iPieDataSet3.getValueLineColor() != 1122867) {
                            f9 = radius;
                            i3 = i7;
                            f8 = f7;
                            canvas.drawLine(f17, f19, f21, f22, this.mValueLinePaint);
                            canvas.drawLine(f21, f22, f6, f22, this.mValueLinePaint);
                        } else {
                            f8 = f7;
                            f9 = radius;
                            i3 = i7;
                        }
                        if (z && z2) {
                            iPieDataSet = iPieDataSet3;
                            f10 = cos;
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f8, f22, iPieDataSet3.getValueTextColor(i3));
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f8, f22 + convertDpToPixel2);
                            }
                        } else {
                            iPieDataSet = iPieDataSet3;
                            f10 = cos;
                            float f24 = f8;
                            if (z) {
                                if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                    drawEntryLabel(canvas, entryForIndex.getLabel(), f24, (convertDpToPixel2 / 2.0f) + f22);
                                }
                            } else if (z2) {
                                iPieDataSet2 = iPieDataSet;
                                drawValue(canvas, valueFormatter, y, entryForIndex, 0, f24, (convertDpToPixel2 / 2.0f) + f22, iPieDataSet2.getValueTextColor(i3));
                            }
                        }
                        iPieDataSet2 = iPieDataSet;
                    }
                    if (z3 || z4) {
                        float f25 = (f12 * f10) + centerCircleBox.x;
                        float f26 = (f12 * sin) + centerCircleBox.y;
                        this.mValuePaint.setTextAlign(Paint.Align.CENTER);
                        if (z3 && z4) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f25, f26, iPieDataSet2.getValueTextColor(i3));
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f25, f26 + convertDpToPixel2);
                            }
                        } else if (z3) {
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f25, (convertDpToPixel2 / 2.0f) + f26);
                            }
                        } else if (z4) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f25, (convertDpToPixel2 / 2.0f) + f26, iPieDataSet2.getValueTextColor(i3));
                        }
                    }
                    if (entryForIndex.getIcon() != null && iPieDataSet2.isDrawIconsEnabled()) {
                        Drawable icon = entryForIndex.getIcon();
                        mPPointF = mPPointF3;
                        float f27 = mPPointF.y;
                        Utils.drawImage(canvas, icon, (int) (((f12 + f27) * f10) + centerCircleBox.x), (int) (((f12 + f27) * sin) + centerCircleBox.y + mPPointF.x), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                    } else {
                        mPPointF = mPPointF3;
                    }
                    i++;
                    i6 = i3 + 1;
                    mPPointF2 = mPPointF;
                    iPieDataSet3 = iPieDataSet2;
                    radius = f9;
                    dataSets = list2;
                    i5 = i8;
                    rotationAngle = f14;
                    drawAngles = fArr2;
                    entryCount = i9;
                    xValuePosition = valuePosition2;
                    yValuePosition = valuePosition;
                }
                i2 = i5;
                list = dataSets;
                f = radius;
                f2 = rotationAngle;
                fArr = drawAngles;
                MPPointF.recycleInstance(mPPointF2);
            }
            i5 = i2 + 1;
            i4 = i;
            radius = f;
            dataSets = list;
            rotationAngle = f2;
            drawAngles = fArr;
        }
        MPPointF.recycleInstance(centerCircleBox);
        canvas.restore();
    }

    public TextPaint getPaintCenterText() {
        return this.mCenterTextPaint;
    }

    public Paint getPaintEntryLabels() {
        return this.mEntryLabelsPaint;
    }

    public Paint getPaintHole() {
        return this.mHolePaint;
    }

    public Paint getPaintTransparentCircle() {
        return this.mTransparentCirclePaint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public float getSliceSpace(IPieDataSet iPieDataSet) {
        if (!iPieDataSet.isAutomaticallyDisableSliceSpacingEnabled()) {
            return iPieDataSet.getSliceSpace();
        }
        if (iPieDataSet.getSliceSpace() / this.mViewPortHandler.getSmallestContentExtension() > (iPieDataSet.getYMin() / ((PieData) this.mChart.getData()).getYValueSum()) * 2.0f) {
            return 0.0f;
        }
        return iPieDataSet.getSliceSpace();
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
    }

    public void releaseBitmap() {
        Canvas canvas = this.mBitmapCanvas;
        if (canvas != null) {
            canvas.setBitmap(null);
            this.mBitmapCanvas = null;
        }
        WeakReference<Bitmap> weakReference = this.mDrawBitmap;
        if (weakReference != null) {
            weakReference.get().recycle();
            this.mDrawBitmap.clear();
            this.mDrawBitmap = null;
        }
    }
}
