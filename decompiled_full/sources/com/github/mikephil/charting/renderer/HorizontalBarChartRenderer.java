package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.buffer.BarBuffer;
import com.github.mikephil.charting.buffer.HorizontalBarBuffer;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.dataprovider.ChartInterface;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class HorizontalBarChartRenderer extends BarChartRenderer {
    private RectF mBarShadowRectBuffer;

    public HorizontalBarChartRenderer(BarDataProvider barDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(barDataProvider, chartAnimator, viewPortHandler);
        this.mBarShadowRectBuffer = new RectF();
        this.mValuePaint.setTextAlign(Paint.Align.LEFT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
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
                rectF.top = x - barWidth;
                rectF.bottom = x + barWidth;
                transformer.rectValueToPixel(rectF);
                if (this.mViewPortHandler.isInBoundsTop(this.mBarShadowRectBuffer.bottom)) {
                    if (!this.mViewPortHandler.isInBoundsBottom(this.mBarShadowRectBuffer.top)) {
                        break;
                    }
                    this.mBarShadowRectBuffer.left = this.mViewPortHandler.contentLeft();
                    this.mBarShadowRectBuffer.right = this.mViewPortHandler.contentRight();
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
            int i4 = i3 + 3;
            if (this.mViewPortHandler.isInBoundsTop(barBuffer.buffer[i4])) {
                int i5 = i3 + 1;
                if (this.mViewPortHandler.isInBoundsBottom(barBuffer.buffer[i5])) {
                    if (!z2) {
                        this.mRenderPaint.setColor(iBarDataSet.getColor(i3 / 4));
                    }
                    float[] fArr = barBuffer.buffer;
                    int i6 = i3 + 2;
                    canvas.drawRect(fArr[i3], fArr[i5], fArr[i6], fArr[i4], this.mRenderPaint);
                    if (z) {
                        float[] fArr2 = barBuffer.buffer;
                        canvas.drawRect(fArr2[i3], fArr2[i5], fArr2[i6], fArr2[i4], this.mBarBorderPaint);
                    }
                }
            } else {
                return;
            }
        }
    }

    public void drawValue(Canvas canvas, String str, float f, float f2, int i) {
        this.mValuePaint.setColor(i);
        canvas.drawText(str, f, f2, this.mValuePaint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.BarChartRenderer, com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        MPPointF mPPointF;
        List list;
        int i;
        boolean z;
        float[] fArr;
        float f;
        float f2;
        boolean z2;
        int i2;
        float f3;
        float[] fArr2;
        float f4;
        float f5;
        float f6;
        float f7;
        BarEntry barEntry;
        float f8;
        int i3;
        float f9;
        float f10;
        float f11;
        int i4;
        float f12;
        float f13;
        List list2;
        MPPointF mPPointF2;
        BarBuffer barBuffer;
        IValueFormatter iValueFormatter;
        float f14;
        int i5 = 2;
        if (isDrawingValuesAllowed(this.mChart)) {
            List dataSets = this.mChart.getBarData().getDataSets();
            float convertDpToPixel = Utils.convertDpToPixel(5.0f);
            boolean isDrawValueAboveBarEnabled = this.mChart.isDrawValueAboveBarEnabled();
            int i6 = 0;
            while (i6 < this.mChart.getBarData().getDataSetCount()) {
                IBarDataSet iBarDataSet = (IBarDataSet) dataSets.get(i6);
                if (!shouldDrawValues(iBarDataSet)) {
                    list = dataSets;
                    i3 = 1;
                } else {
                    boolean isInverted = this.mChart.isInverted(iBarDataSet.getAxisDependency());
                    applyValueTextStyle(iBarDataSet);
                    // fill-array-data instruction
                    new long[i5][0] = -2233006304394201645L;
                    new long[i5][1] = 5778963135041615943L;
                    float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, new ObfuscatedString(r2).toString()) / 2.0f;
                    IValueFormatter valueFormatter = iBarDataSet.getValueFormatter();
                    BarBuffer barBuffer2 = this.mBarBuffers[i6];
                    float phaseY = this.mAnimator.getPhaseY();
                    MPPointF mPPointF3 = MPPointF.getInstance(iBarDataSet.getIconsOffset());
                    mPPointF3.x = Utils.convertDpToPixel(mPPointF3.x);
                    mPPointF3.y = Utils.convertDpToPixel(mPPointF3.y);
                    if (!iBarDataSet.isStacked()) {
                        int i7 = 0;
                        while (i7 < this.mAnimator.getPhaseX() * barBuffer2.buffer.length) {
                            float[] fArr3 = barBuffer2.buffer;
                            int i8 = i7 + 1;
                            float f15 = fArr3[i8];
                            float f16 = (fArr3[i7 + 3] + f15) / 2.0f;
                            if (!this.mViewPortHandler.isInBoundsTop(f15)) {
                                break;
                            }
                            if (!this.mViewPortHandler.isInBoundsX(barBuffer2.buffer[i7]) || !this.mViewPortHandler.isInBoundsBottom(barBuffer2.buffer[i8])) {
                                i4 = i7;
                                mPPointF2 = mPPointF3;
                                barBuffer = barBuffer2;
                                list2 = dataSets;
                                iValueFormatter = valueFormatter;
                            } else {
                                BarEntry barEntry2 = (BarEntry) iBarDataSet.getEntryForIndex(i7 / 4);
                                float y = barEntry2.getY();
                                String formattedValue = valueFormatter.getFormattedValue(y, barEntry2, i6, this.mViewPortHandler);
                                float calcTextWidth = Utils.calcTextWidth(this.mValuePaint, formattedValue);
                                if (isDrawValueAboveBarEnabled) {
                                    f9 = convertDpToPixel;
                                } else {
                                    f9 = -(calcTextWidth + convertDpToPixel);
                                }
                                if (isDrawValueAboveBarEnabled) {
                                    f10 = -(calcTextWidth + convertDpToPixel);
                                } else {
                                    f10 = convertDpToPixel;
                                }
                                if (isInverted) {
                                    f9 = (-f9) - calcTextWidth;
                                    f10 = (-f10) - calcTextWidth;
                                }
                                float f17 = f10;
                                if (iBarDataSet.isDrawValuesEnabled()) {
                                    float f18 = barBuffer2.buffer[i7 + 2];
                                    if (y >= 0.0f) {
                                        f14 = f9;
                                    } else {
                                        f14 = f17;
                                    }
                                    f11 = y;
                                    i4 = i7;
                                    f12 = f17;
                                    mPPointF2 = mPPointF3;
                                    f13 = f9;
                                    barBuffer = barBuffer2;
                                    list2 = dataSets;
                                    iValueFormatter = valueFormatter;
                                    drawValue(canvas, formattedValue, f18 + f14, f16 + calcTextHeight, iBarDataSet.getValueTextColor(i7 / 2));
                                } else {
                                    f11 = y;
                                    i4 = i7;
                                    f12 = f17;
                                    f13 = f9;
                                    list2 = dataSets;
                                    mPPointF2 = mPPointF3;
                                    barBuffer = barBuffer2;
                                    iValueFormatter = valueFormatter;
                                }
                                if (barEntry2.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                    Drawable icon = barEntry2.getIcon();
                                    float f19 = barBuffer.buffer[i4 + 2];
                                    if (f11 >= 0.0f) {
                                        f12 = f13;
                                    }
                                    Utils.drawImage(canvas, icon, (int) (f19 + f12 + mPPointF2.x), (int) (f16 + mPPointF2.y), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                                }
                            }
                            i7 = i4 + 4;
                            mPPointF3 = mPPointF2;
                            barBuffer2 = barBuffer;
                            valueFormatter = iValueFormatter;
                            dataSets = list2;
                        }
                        mPPointF = mPPointF3;
                        list = dataSets;
                    } else {
                        mPPointF = mPPointF3;
                        list = dataSets;
                        Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < this.mAnimator.getPhaseX() * iBarDataSet.getEntryCount()) {
                            BarEntry barEntry3 = (BarEntry) iBarDataSet.getEntryForIndex(i9);
                            int valueTextColor = iBarDataSet.getValueTextColor(i9);
                            float[] yVals = barEntry3.getYVals();
                            if (yVals == null) {
                                int i11 = i10 + 1;
                                if (!this.mViewPortHandler.isInBoundsTop(barBuffer2.buffer[i11])) {
                                    break;
                                }
                                if (this.mViewPortHandler.isInBoundsX(barBuffer2.buffer[i10]) && this.mViewPortHandler.isInBoundsBottom(barBuffer2.buffer[i11])) {
                                    String formattedValue2 = valueFormatter.getFormattedValue(barEntry3.getY(), barEntry3, i6, this.mViewPortHandler);
                                    float calcTextWidth2 = Utils.calcTextWidth(this.mValuePaint, formattedValue2);
                                    if (isDrawValueAboveBarEnabled) {
                                        f6 = convertDpToPixel;
                                    } else {
                                        f6 = -(calcTextWidth2 + convertDpToPixel);
                                    }
                                    if (isDrawValueAboveBarEnabled) {
                                        f7 = -(calcTextWidth2 + convertDpToPixel);
                                    } else {
                                        f7 = convertDpToPixel;
                                    }
                                    if (isInverted) {
                                        f6 = (-f6) - calcTextWidth2;
                                        f7 = (-f7) - calcTextWidth2;
                                    }
                                    float f20 = f6;
                                    float f21 = f7;
                                    if (iBarDataSet.isDrawValuesEnabled()) {
                                        float f22 = barBuffer2.buffer[i10 + 2];
                                        if (barEntry3.getY() >= 0.0f) {
                                            f8 = f20;
                                        } else {
                                            f8 = f21;
                                        }
                                        z = isInverted;
                                        fArr = yVals;
                                        barEntry = barEntry3;
                                        i = i9;
                                        drawValue(canvas, formattedValue2, f22 + f8, barBuffer2.buffer[i11] + calcTextHeight, valueTextColor);
                                    } else {
                                        i = i9;
                                        z = isInverted;
                                        fArr = yVals;
                                        barEntry = barEntry3;
                                    }
                                    if (barEntry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                        Drawable icon2 = barEntry.getIcon();
                                        float f23 = barBuffer2.buffer[i10 + 2];
                                        if (barEntry.getY() < 0.0f) {
                                            f20 = f21;
                                        }
                                        Utils.drawImage(canvas, icon2, (int) (f23 + f20 + mPPointF.x), (int) (barBuffer2.buffer[i11] + mPPointF.y), icon2.getIntrinsicWidth(), icon2.getIntrinsicHeight());
                                    }
                                }
                            } else {
                                i = i9;
                                z = isInverted;
                                fArr = yVals;
                                int length = fArr.length * 2;
                                float[] fArr4 = new float[length];
                                float f24 = -barEntry3.getNegativeSum();
                                int i12 = 0;
                                int i13 = 0;
                                float f25 = 0.0f;
                                while (i12 < length) {
                                    float f26 = fArr[i13];
                                    if (f26 == 0.0f && (f25 == 0.0f || f24 == 0.0f)) {
                                        float f27 = f24;
                                        f24 = f26;
                                        f5 = f27;
                                    } else if (f26 >= 0.0f) {
                                        f25 += f26;
                                        f5 = f24;
                                        f24 = f25;
                                    } else {
                                        f5 = f24 - f26;
                                    }
                                    fArr4[i12] = f24 * phaseY;
                                    i12 += 2;
                                    i13++;
                                    f24 = f5;
                                }
                                transformer.pointValuesToPixel(fArr4);
                                int i14 = 0;
                                while (i14 < length) {
                                    float f28 = fArr[i14 / 2];
                                    String formattedValue3 = valueFormatter.getFormattedValue(f28, barEntry3, i6, this.mViewPortHandler);
                                    float calcTextWidth3 = Utils.calcTextWidth(this.mValuePaint, formattedValue3);
                                    if (isDrawValueAboveBarEnabled) {
                                        f = convertDpToPixel;
                                    } else {
                                        f = -(calcTextWidth3 + convertDpToPixel);
                                    }
                                    int i15 = length;
                                    if (isDrawValueAboveBarEnabled) {
                                        f2 = -(calcTextWidth3 + convertDpToPixel);
                                    } else {
                                        f2 = convertDpToPixel;
                                    }
                                    if (z) {
                                        f = (-f) - calcTextWidth3;
                                        f2 = (-f2) - calcTextWidth3;
                                    }
                                    if ((f28 == 0.0f && f24 == 0.0f && f25 > 0.0f) || f28 < 0.0f) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    float f29 = fArr4[i14];
                                    if (z2) {
                                        f = f2;
                                    }
                                    float f30 = f29 + f;
                                    float[] fArr5 = barBuffer2.buffer;
                                    float f31 = (fArr5[i10 + 1] + fArr5[i10 + 3]) / 2.0f;
                                    if (!this.mViewPortHandler.isInBoundsTop(f31)) {
                                        break;
                                    }
                                    if (!this.mViewPortHandler.isInBoundsX(f30) || !this.mViewPortHandler.isInBoundsBottom(f31)) {
                                        i2 = i14;
                                        fArr2 = fArr4;
                                    } else {
                                        if (iBarDataSet.isDrawValuesEnabled()) {
                                            i2 = i14;
                                            f3 = f31;
                                            fArr2 = fArr4;
                                            f4 = f30;
                                            drawValue(canvas, formattedValue3, f30, f31 + calcTextHeight, valueTextColor);
                                        } else {
                                            i2 = i14;
                                            f3 = f31;
                                            fArr2 = fArr4;
                                            f4 = f30;
                                        }
                                        if (barEntry3.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                            Drawable icon3 = barEntry3.getIcon();
                                            Utils.drawImage(canvas, icon3, (int) (f4 + mPPointF.x), (int) (f3 + mPPointF.y), icon3.getIntrinsicWidth(), icon3.getIntrinsicHeight());
                                        }
                                    }
                                    i14 = i2 + 2;
                                    length = i15;
                                    fArr4 = fArr2;
                                }
                            }
                            if (fArr == null) {
                                i10 += 4;
                            } else {
                                i10 = (fArr.length * 4) + i10;
                            }
                            i9 = i + 1;
                            isInverted = z;
                        }
                    }
                    i3 = 1;
                    MPPointF.recycleInstance(mPPointF);
                }
                i6 += i3;
                dataSets = list;
                i5 = 2;
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer, com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
        int i;
        BarData barData = this.mChart.getBarData();
        this.mBarBuffers = new HorizontalBarBuffer[barData.getDataSetCount()];
        for (int i2 = 0; i2 < this.mBarBuffers.length; i2++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i2);
            BarBuffer[] barBufferArr = this.mBarBuffers;
            int entryCount = iBarDataSet.getEntryCount() * 4;
            if (iBarDataSet.isStacked()) {
                i = iBarDataSet.getStackSize();
            } else {
                i = 1;
            }
            barBufferArr[i2] = new HorizontalBarBuffer(entryCount * i, barData.getDataSetCount(), iBarDataSet.isStacked());
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public boolean isDrawingValuesAllowed(ChartInterface chartInterface) {
        if (chartInterface.getData().getEntryCount() < this.mViewPortHandler.getScaleY() * chartInterface.getMaxVisibleCount()) {
            return true;
        }
        return false;
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
    public void prepareBarHighlight(float f, float f2, float f3, float f4, Transformer transformer) {
        this.mBarRect.set(f2, f - f4, f3, f + f4);
        transformer.rectToPixelPhaseHorizontal(this.mBarRect, this.mAnimator.getPhaseY());
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
    public void setHighlightDrawPos(Highlight highlight, RectF rectF) {
        highlight.setDraw(rectF.centerY(), rectF.right);
    }
}
