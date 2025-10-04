package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.buffer.BarBuffer;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.highlight.Range;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class BarChartRenderer extends BarLineScatterCandleBubbleRenderer {
    protected Paint mBarBorderPaint;
    protected BarBuffer[] mBarBuffers;
    protected RectF mBarRect;
    private RectF mBarShadowRectBuffer;
    protected BarDataProvider mChart;
    protected Paint mShadowPaint;

    public BarChartRenderer(BarDataProvider barDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mBarRect = new RectF();
        this.mBarShadowRectBuffer = new RectF();
        this.mChart = barDataProvider;
        Paint paint = new Paint(1);
        this.mHighlightPaint = paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.mHighlightPaint.setColor(Color.rgb(0, 0, 0));
        this.mHighlightPaint.setAlpha(120);
        Paint paint2 = new Paint(1);
        this.mShadowPaint = paint2;
        paint2.setStyle(style);
        Paint paint3 = new Paint(1);
        this.mBarBorderPaint = paint3;
        paint3.setStyle(Paint.Style.STROKE);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        BarData barData = this.mChart.getBarData();
        for (int i = 0; i < barData.getDataSetCount(); i++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i);
            if (iBarDataSet.isVisible()) {
                drawDataSet(canvas, iBarDataSet, i);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drawDataSet(Canvas canvas, IBarDataSet iBarDataSet, int i) {
        boolean z;
        Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
        this.mBarBorderPaint.setColor(iBarDataSet.getBarBorderColor());
        this.mBarBorderPaint.setStrokeWidth(Utils.convertDpToPixel(iBarDataSet.getBarBorderWidth()));
        boolean z2 = true;
        if (iBarDataSet.getBarBorderWidth() > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        if (this.mChart.isDrawBarShadowEnabled()) {
            this.mShadowPaint.setColor(iBarDataSet.getBarShadowColor());
            float barWidth = this.mChart.getBarData().getBarWidth() / 2.0f;
            int min = Math.min((int) Math.ceil(iBarDataSet.getEntryCount() * phaseX), iBarDataSet.getEntryCount());
            for (int i2 = 0; i2 < min; i2++) {
                float x = ((BarEntry) iBarDataSet.getEntryForIndex(i2)).getX();
                RectF rectF = this.mBarShadowRectBuffer;
                rectF.left = x - barWidth;
                rectF.right = x + barWidth;
                transformer.rectValueToPixel(rectF);
                if (this.mViewPortHandler.isInBoundsLeft(this.mBarShadowRectBuffer.right)) {
                    if (!this.mViewPortHandler.isInBoundsRight(this.mBarShadowRectBuffer.left)) {
                        break;
                    }
                    this.mBarShadowRectBuffer.top = this.mViewPortHandler.contentTop();
                    this.mBarShadowRectBuffer.bottom = this.mViewPortHandler.contentBottom();
                    canvas.drawRect(this.mBarShadowRectBuffer, this.mShadowPaint);
                }
            }
        }
        BarBuffer barBuffer = this.mBarBuffers[i];
        barBuffer.setPhases(phaseX, phaseY);
        barBuffer.setDataSet(i);
        barBuffer.setInverted(this.mChart.isInverted(iBarDataSet.getAxisDependency()));
        barBuffer.setBarWidth(this.mChart.getBarData().getBarWidth());
        barBuffer.feed(iBarDataSet);
        transformer.pointValuesToPixel(barBuffer.buffer);
        if (iBarDataSet.getColors().size() != 1) {
            z2 = false;
        }
        if (z2) {
            this.mRenderPaint.setColor(iBarDataSet.getColor());
        }
        for (int i3 = 0; i3 < barBuffer.size(); i3 += 4) {
            int i4 = i3 + 2;
            if (this.mViewPortHandler.isInBoundsLeft(barBuffer.buffer[i4])) {
                if (this.mViewPortHandler.isInBoundsRight(barBuffer.buffer[i3])) {
                    if (!z2) {
                        this.mRenderPaint.setColor(iBarDataSet.getColor(i3 / 4));
                    }
                    float[] fArr = barBuffer.buffer;
                    int i5 = i3 + 1;
                    int i6 = i3 + 3;
                    canvas.drawRect(fArr[i3], fArr[i5], fArr[i4], fArr[i6], this.mRenderPaint);
                    if (z) {
                        float[] fArr2 = barBuffer.buffer;
                        canvas.drawRect(fArr2[i3], fArr2[i5], fArr2[i4], fArr2[i6], this.mBarBorderPaint);
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        float y;
        float f;
        BarData barData = this.mChart.getBarData();
        for (Highlight highlight : highlightArr) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(highlight.getDataSetIndex());
            if (iBarDataSet != null && iBarDataSet.isHighlightEnabled()) {
                BarEntry barEntry = (BarEntry) iBarDataSet.getEntryForXValue(highlight.getX(), highlight.getY());
                if (isInBoundsX(barEntry, iBarDataSet)) {
                    Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
                    this.mHighlightPaint.setColor(iBarDataSet.getHighLightColor());
                    this.mHighlightPaint.setAlpha(iBarDataSet.getHighLightAlpha());
                    if (highlight.getStackIndex() >= 0 && barEntry.isStacked()) {
                        if (this.mChart.isHighlightFullBarEnabled()) {
                            float positiveSum = barEntry.getPositiveSum();
                            f = -barEntry.getNegativeSum();
                            y = positiveSum;
                        } else {
                            Range range = barEntry.getRanges()[highlight.getStackIndex()];
                            y = range.from;
                            f = range.to;
                        }
                    } else {
                        y = barEntry.getY();
                        f = 0.0f;
                    }
                    prepareBarHighlight(barEntry.getX(), y, f, barData.getBarWidth() / 2.0f, transformer);
                    setHighlightDrawPos(highlight, this.mBarRect);
                    canvas.drawRect(this.mBarRect, this.mHighlightPaint);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        float f;
        float f2;
        MPPointF mPPointF;
        int i;
        float[] fArr;
        IBarDataSet iBarDataSet;
        int i2;
        List list;
        Transformer transformer;
        boolean z;
        float f3;
        int i3;
        float[] fArr2;
        int i4;
        float f4;
        float f5;
        float f6;
        int i5;
        float f7;
        float f8;
        float f9;
        List list2;
        int i6;
        MPPointF mPPointF2;
        BarBuffer barBuffer;
        IBarDataSet iBarDataSet2;
        int i7;
        float f10;
        float f11;
        float f12;
        int i8 = 2;
        if (isDrawingValuesAllowed(this.mChart)) {
            List dataSets = this.mChart.getBarData().getDataSets();
            float convertDpToPixel = Utils.convertDpToPixel(4.5f);
            boolean isDrawValueAboveBarEnabled = this.mChart.isDrawValueAboveBarEnabled();
            int i9 = 0;
            while (i9 < this.mChart.getBarData().getDataSetCount()) {
                IBarDataSet iBarDataSet3 = (IBarDataSet) dataSets.get(i9);
                if (!shouldDrawValues(iBarDataSet3)) {
                    i = i9;
                    list2 = dataSets;
                } else {
                    applyValueTextStyle(iBarDataSet3);
                    boolean isInverted = this.mChart.isInverted(iBarDataSet3.getAxisDependency());
                    long[] jArr = new long[i8];
                    // fill-array-data instruction
                    jArr[0] = -4436990124489812778L;
                    jArr[1] = 6216594274064044332L;
                    float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, new ObfuscatedString(jArr).toString());
                    if (isDrawValueAboveBarEnabled) {
                        f = -convertDpToPixel;
                    } else {
                        f = calcTextHeight + convertDpToPixel;
                    }
                    if (isDrawValueAboveBarEnabled) {
                        f2 = calcTextHeight + convertDpToPixel;
                    } else {
                        f2 = -convertDpToPixel;
                    }
                    if (isInverted) {
                        f = (-f) - calcTextHeight;
                        f2 = (-f2) - calcTextHeight;
                    }
                    float f13 = f;
                    float f14 = f2;
                    BarBuffer barBuffer2 = this.mBarBuffers[i9];
                    float phaseY = this.mAnimator.getPhaseY();
                    MPPointF mPPointF3 = MPPointF.getInstance(iBarDataSet3.getIconsOffset());
                    mPPointF3.x = Utils.convertDpToPixel(mPPointF3.x);
                    mPPointF3.y = Utils.convertDpToPixel(mPPointF3.y);
                    if (!iBarDataSet3.isStacked()) {
                        int i10 = 0;
                        while (i10 < this.mAnimator.getPhaseX() * barBuffer2.buffer.length) {
                            float[] fArr3 = barBuffer2.buffer;
                            float f15 = (fArr3[i10] + fArr3[i10 + 2]) / 2.0f;
                            if (!this.mViewPortHandler.isInBoundsRight(f15)) {
                                break;
                            }
                            int i11 = i10 + 1;
                            if (!this.mViewPortHandler.isInBoundsY(barBuffer2.buffer[i11]) || !this.mViewPortHandler.isInBoundsLeft(f15)) {
                                i6 = i10;
                                mPPointF2 = mPPointF3;
                                barBuffer = barBuffer2;
                                iBarDataSet2 = iBarDataSet3;
                                i7 = i9;
                            } else {
                                int i12 = i10 / 4;
                                Entry entry = (BarEntry) iBarDataSet3.getEntryForIndex(i12);
                                float y = entry.getY();
                                if (iBarDataSet3.isDrawValuesEnabled()) {
                                    IValueFormatter valueFormatter = iBarDataSet3.getValueFormatter();
                                    if (y >= 0.0f) {
                                        f12 = barBuffer2.buffer[i11] + f13;
                                    } else {
                                        f12 = barBuffer2.buffer[i10 + 3] + f14;
                                    }
                                    f10 = f15;
                                    i6 = i10;
                                    mPPointF2 = mPPointF3;
                                    barBuffer = barBuffer2;
                                    iBarDataSet2 = iBarDataSet3;
                                    i7 = i9;
                                    drawValue(canvas, valueFormatter, y, entry, i9, f10, f12, iBarDataSet3.getValueTextColor(i12));
                                } else {
                                    f10 = f15;
                                    i6 = i10;
                                    mPPointF2 = mPPointF3;
                                    barBuffer = barBuffer2;
                                    iBarDataSet2 = iBarDataSet3;
                                    i7 = i9;
                                }
                                if (entry.getIcon() != null && iBarDataSet2.isDrawIconsEnabled()) {
                                    Drawable icon = entry.getIcon();
                                    if (y >= 0.0f) {
                                        f11 = barBuffer.buffer[i11] + f13;
                                    } else {
                                        f11 = barBuffer.buffer[i6 + 3] + f14;
                                    }
                                    Utils.drawImage(canvas, icon, (int) (f10 + mPPointF2.x), (int) (f11 + mPPointF2.y), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                                }
                            }
                            i10 = i6 + 4;
                            barBuffer2 = barBuffer;
                            mPPointF3 = mPPointF2;
                            i9 = i7;
                            iBarDataSet3 = iBarDataSet2;
                        }
                        mPPointF = mPPointF3;
                        i = i9;
                    } else {
                        mPPointF = mPPointF3;
                        IBarDataSet iBarDataSet4 = iBarDataSet3;
                        i = i9;
                        Transformer transformer2 = this.mChart.getTransformer(iBarDataSet4.getAxisDependency());
                        int i13 = 0;
                        int i14 = 0;
                        while (i13 < this.mAnimator.getPhaseX() * iBarDataSet4.getEntryCount()) {
                            IBarDataSet iBarDataSet5 = iBarDataSet4;
                            BarEntry barEntry = (BarEntry) iBarDataSet5.getEntryForIndex(i13);
                            float[] yVals = barEntry.getYVals();
                            float[] fArr4 = barBuffer2.buffer;
                            float f16 = (fArr4[i14] + fArr4[i14 + 2]) / 2.0f;
                            int valueTextColor = iBarDataSet5.getValueTextColor(i13);
                            if (yVals == null) {
                                if (!this.mViewPortHandler.isInBoundsRight(f16)) {
                                    break;
                                }
                                int i15 = i14 + 1;
                                if (this.mViewPortHandler.isInBoundsY(barBuffer2.buffer[i15]) && this.mViewPortHandler.isInBoundsLeft(f16)) {
                                    if (iBarDataSet5.isDrawValuesEnabled()) {
                                        IValueFormatter valueFormatter2 = iBarDataSet5.getValueFormatter();
                                        float y2 = barEntry.getY();
                                        float f17 = barBuffer2.buffer[i15];
                                        if (barEntry.getY() >= 0.0f) {
                                            f9 = f13;
                                        } else {
                                            f9 = f14;
                                        }
                                        f7 = f16;
                                        fArr = yVals;
                                        iBarDataSet = iBarDataSet5;
                                        i2 = i13;
                                        list = dataSets;
                                        transformer = transformer2;
                                        drawValue(canvas, valueFormatter2, y2, barEntry, i, f7, f17 + f9, valueTextColor);
                                    } else {
                                        f7 = f16;
                                        fArr = yVals;
                                        iBarDataSet = iBarDataSet5;
                                        i2 = i13;
                                        list = dataSets;
                                        transformer = transformer2;
                                    }
                                    if (barEntry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                        Drawable icon2 = barEntry.getIcon();
                                        float f18 = barBuffer2.buffer[i15];
                                        if (barEntry.getY() >= 0.0f) {
                                            f8 = f13;
                                        } else {
                                            f8 = f14;
                                        }
                                        Utils.drawImage(canvas, icon2, (int) (f7 + mPPointF.x), (int) (f18 + f8 + mPPointF.y), icon2.getIntrinsicWidth(), icon2.getIntrinsicHeight());
                                    }
                                } else {
                                    transformer2 = transformer2;
                                    dataSets = dataSets;
                                    iBarDataSet4 = iBarDataSet5;
                                    i13 = i13;
                                }
                            } else {
                                fArr = yVals;
                                iBarDataSet = iBarDataSet5;
                                i2 = i13;
                                list = dataSets;
                                transformer = transformer2;
                                float f19 = f16;
                                int length = fArr.length * 2;
                                float[] fArr5 = new float[length];
                                float f20 = -barEntry.getNegativeSum();
                                int i16 = 0;
                                int i17 = 0;
                                float f21 = 0.0f;
                                while (i16 < length) {
                                    float f22 = fArr[i17];
                                    if (f22 == 0.0f && (f21 == 0.0f || f20 == 0.0f)) {
                                        i5 = 1;
                                        float f23 = f20;
                                        f20 = f22;
                                        f6 = f23;
                                    } else {
                                        if (f22 >= 0.0f) {
                                            f21 += f22;
                                            f6 = f20;
                                            f20 = f21;
                                        } else {
                                            f6 = f20 - f22;
                                        }
                                        i5 = 1;
                                    }
                                    fArr5[i16 + 1] = f20 * phaseY;
                                    i16 += 2;
                                    i17 += i5;
                                    f20 = f6;
                                }
                                transformer.pointValuesToPixel(fArr5);
                                int i18 = 0;
                                while (i18 < length) {
                                    int i19 = i18 / 2;
                                    float f24 = fArr[i19];
                                    if ((f24 == 0.0f && f20 == 0.0f && f21 > 0.0f) || f24 < 0.0f) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    float f25 = fArr5[i18 + 1];
                                    if (z) {
                                        f3 = f14;
                                    } else {
                                        f3 = f13;
                                    }
                                    float f26 = f25 + f3;
                                    if (!this.mViewPortHandler.isInBoundsRight(f19)) {
                                        break;
                                    }
                                    if (!this.mViewPortHandler.isInBoundsY(f26) || !this.mViewPortHandler.isInBoundsLeft(f19)) {
                                        i3 = i18;
                                        fArr2 = fArr5;
                                        i4 = length;
                                        f4 = f19;
                                    } else {
                                        if (iBarDataSet.isDrawValuesEnabled()) {
                                            f5 = f26;
                                            i3 = i18;
                                            fArr2 = fArr5;
                                            i4 = length;
                                            f4 = f19;
                                            drawValue(canvas, iBarDataSet.getValueFormatter(), fArr[i19], barEntry, i, f19, f5, valueTextColor);
                                        } else {
                                            f5 = f26;
                                            i3 = i18;
                                            fArr2 = fArr5;
                                            i4 = length;
                                            f4 = f19;
                                        }
                                        if (barEntry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                            Drawable icon3 = barEntry.getIcon();
                                            Utils.drawImage(canvas, icon3, (int) (f4 + mPPointF.x), (int) (f5 + mPPointF.y), icon3.getIntrinsicWidth(), icon3.getIntrinsicHeight());
                                        }
                                    }
                                    i18 = i3 + 2;
                                    fArr5 = fArr2;
                                    length = i4;
                                    f19 = f4;
                                }
                            }
                            if (fArr == null) {
                                i14 += 4;
                            } else {
                                i14 = (fArr.length * 4) + i14;
                            }
                            i13 = i2 + 1;
                            transformer2 = transformer;
                            dataSets = list;
                            iBarDataSet4 = iBarDataSet;
                        }
                    }
                    list2 = dataSets;
                    MPPointF.recycleInstance(mPPointF);
                }
                i9 = i + 1;
                dataSets = list2;
                i8 = 2;
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
        int i;
        BarData barData = this.mChart.getBarData();
        this.mBarBuffers = new BarBuffer[barData.getDataSetCount()];
        for (int i2 = 0; i2 < this.mBarBuffers.length; i2++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i2);
            BarBuffer[] barBufferArr = this.mBarBuffers;
            int entryCount = iBarDataSet.getEntryCount() * 4;
            if (iBarDataSet.isStacked()) {
                i = iBarDataSet.getStackSize();
            } else {
                i = 1;
            }
            barBufferArr[i2] = new BarBuffer(entryCount * i, barData.getDataSetCount(), iBarDataSet.isStacked());
        }
    }

    public void prepareBarHighlight(float f, float f2, float f3, float f4, Transformer transformer) {
        this.mBarRect.set(f - f4, f2, f + f4, f3);
        transformer.rectToPixelPhase(this.mBarRect, this.mAnimator.getPhaseY());
    }

    public void setHighlightDrawPos(Highlight highlight, RectF rectF) {
        highlight.setDraw(rectF.centerX(), rectF.top);
    }
}
