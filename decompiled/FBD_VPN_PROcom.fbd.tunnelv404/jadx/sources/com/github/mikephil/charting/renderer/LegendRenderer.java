package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Typeface;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.LegendEntry;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.interfaces.datasets.ICandleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class LegendRenderer extends Renderer {
    protected List<LegendEntry> computedEntries;
    protected Paint.FontMetrics legendFontMetrics;
    protected Legend mLegend;
    protected Paint mLegendFormPaint;
    protected Paint mLegendLabelPaint;
    private Path mLineFormPath;

    /* renamed from: com.github.mikephil.charting.renderer.LegendRenderer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation;
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment;

        static {
            int[] iArr = new int[Legend.LegendForm.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm = iArr;
            try {
                iArr[Legend.LegendForm.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[Legend.LegendForm.EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[Legend.LegendForm.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[Legend.LegendForm.CIRCLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[Legend.LegendForm.SQUARE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[Legend.LegendForm.LINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[Legend.LegendOrientation.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation = iArr2;
            try {
                iArr2[Legend.LegendOrientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[Legend.LegendOrientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[Legend.LegendVerticalAlignment.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment = iArr3;
            try {
                iArr3[Legend.LegendVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[Legend.LegendVerticalAlignment.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[Legend.LegendVerticalAlignment.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr4 = new int[Legend.LegendHorizontalAlignment.values().length];
            $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment = iArr4;
            try {
                iArr4[Legend.LegendHorizontalAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[Legend.LegendHorizontalAlignment.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[Legend.LegendHorizontalAlignment.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public LegendRenderer(ViewPortHandler viewPortHandler, Legend legend) {
        super(viewPortHandler);
        this.computedEntries = new ArrayList(16);
        this.legendFontMetrics = new Paint.FontMetrics();
        this.mLineFormPath = new Path();
        this.mLegend = legend;
        Paint paint = new Paint(1);
        this.mLegendLabelPaint = paint;
        paint.setTextSize(Utils.convertDpToPixel(9.0f));
        this.mLegendLabelPaint.setTextAlign(Paint.Align.LEFT);
        Paint paint2 = new Paint(1);
        this.mLegendFormPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.github.mikephil.charting.interfaces.datasets.IDataSet] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.github.mikephil.charting.interfaces.datasets.IDataSet] */
    public void computeLegend(ChartData<?> chartData) {
        String label;
        ChartData<?> chartData2;
        ChartData<?> chartData3 = chartData;
        if (!this.mLegend.isLegendCustom()) {
            this.computedEntries.clear();
            int i = 0;
            while (i < chartData.getDataSetCount()) {
                ?? dataSetByIndex = chartData3.getDataSetByIndex(i);
                List<Integer> colors = dataSetByIndex.getColors();
                int entryCount = dataSetByIndex.getEntryCount();
                if (dataSetByIndex instanceof IBarDataSet) {
                    IBarDataSet iBarDataSet = (IBarDataSet) dataSetByIndex;
                    if (iBarDataSet.isStacked()) {
                        String[] stackLabels = iBarDataSet.getStackLabels();
                        for (int i2 = 0; i2 < colors.size() && i2 < iBarDataSet.getStackSize(); i2++) {
                            this.computedEntries.add(new LegendEntry(stackLabels[i2 % stackLabels.length], dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i2).intValue()));
                        }
                        if (iBarDataSet.getLabel() != null) {
                            this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), Legend.LegendForm.NONE, Float.NaN, Float.NaN, null, ColorTemplate.COLOR_NONE));
                        }
                        chartData2 = chartData3;
                        i++;
                        chartData3 = chartData2;
                    }
                }
                if (dataSetByIndex instanceof IPieDataSet) {
                    IPieDataSet iPieDataSet = (IPieDataSet) dataSetByIndex;
                    for (int i3 = 0; i3 < colors.size() && i3 < entryCount; i3++) {
                        this.computedEntries.add(new LegendEntry(iPieDataSet.getEntryForIndex(i3).getLabel(), dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i3).intValue()));
                    }
                    if (iPieDataSet.getLabel() != null) {
                        this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), Legend.LegendForm.NONE, Float.NaN, Float.NaN, null, ColorTemplate.COLOR_NONE));
                    }
                } else {
                    if (dataSetByIndex instanceof ICandleDataSet) {
                        ICandleDataSet iCandleDataSet = (ICandleDataSet) dataSetByIndex;
                        if (iCandleDataSet.getDecreasingColor() != 1122867) {
                            int decreasingColor = iCandleDataSet.getDecreasingColor();
                            int increasingColor = iCandleDataSet.getIncreasingColor();
                            this.computedEntries.add(new LegendEntry(null, dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), decreasingColor));
                            this.computedEntries.add(new LegendEntry(dataSetByIndex.getLabel(), dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), increasingColor));
                        }
                    }
                    for (int i4 = 0; i4 < colors.size() && i4 < entryCount; i4++) {
                        if (i4 < colors.size() - 1 && i4 < entryCount - 1) {
                            label = null;
                        } else {
                            label = chartData.getDataSetByIndex(i).getLabel();
                        }
                        this.computedEntries.add(new LegendEntry(label, dataSetByIndex.getForm(), dataSetByIndex.getFormSize(), dataSetByIndex.getFormLineWidth(), dataSetByIndex.getFormLineDashEffect(), colors.get(i4).intValue()));
                    }
                }
                chartData2 = chartData;
                i++;
                chartData3 = chartData2;
            }
            if (this.mLegend.getExtraEntries() != null) {
                Collections.addAll(this.computedEntries, this.mLegend.getExtraEntries());
            }
            this.mLegend.setEntries(this.computedEntries);
        }
        Typeface typeface = this.mLegend.getTypeface();
        if (typeface != null) {
            this.mLegendLabelPaint.setTypeface(typeface);
        }
        this.mLegendLabelPaint.setTextSize(this.mLegend.getTextSize());
        this.mLegendLabelPaint.setColor(this.mLegend.getTextColor());
        this.mLegend.calculateDimensions(this.mLegendLabelPaint, this.mViewPortHandler);
    }

    public void drawForm(Canvas canvas, float f, float f2, LegendEntry legendEntry, Legend legend) {
        float f3;
        float f4;
        int i = legendEntry.formColor;
        if (i != 1122868 && i != 1122867 && i != 0) {
            int save = canvas.save();
            Legend.LegendForm legendForm = legendEntry.form;
            if (legendForm == Legend.LegendForm.DEFAULT) {
                legendForm = legend.getForm();
            }
            this.mLegendFormPaint.setColor(legendEntry.formColor);
            if (Float.isNaN(legendEntry.formSize)) {
                f3 = legend.getFormSize();
            } else {
                f3 = legendEntry.formSize;
            }
            float convertDpToPixel = Utils.convertDpToPixel(f3);
            float f5 = convertDpToPixel / 2.0f;
            int i2 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendForm[legendForm.ordinal()];
            if (i2 != 3 && i2 != 4) {
                if (i2 != 5) {
                    if (i2 == 6) {
                        if (Float.isNaN(legendEntry.formLineWidth)) {
                            f4 = legend.getFormLineWidth();
                        } else {
                            f4 = legendEntry.formLineWidth;
                        }
                        float convertDpToPixel2 = Utils.convertDpToPixel(f4);
                        DashPathEffect dashPathEffect = legendEntry.formLineDashEffect;
                        if (dashPathEffect == null) {
                            dashPathEffect = legend.getFormLineDashEffect();
                        }
                        this.mLegendFormPaint.setStyle(Paint.Style.STROKE);
                        this.mLegendFormPaint.setStrokeWidth(convertDpToPixel2);
                        this.mLegendFormPaint.setPathEffect(dashPathEffect);
                        this.mLineFormPath.reset();
                        this.mLineFormPath.moveTo(f, f2);
                        this.mLineFormPath.lineTo(f + convertDpToPixel, f2);
                        canvas.drawPath(this.mLineFormPath, this.mLegendFormPaint);
                    }
                } else {
                    this.mLegendFormPaint.setStyle(Paint.Style.FILL);
                    canvas.drawRect(f, f2 - f5, f + convertDpToPixel, f2 + f5, this.mLegendFormPaint);
                }
            } else {
                this.mLegendFormPaint.setStyle(Paint.Style.FILL);
                canvas.drawCircle(f + f5, f2, f5, this.mLegendFormPaint);
            }
            canvas.restoreToCount(save);
        }
    }

    public void drawLabel(Canvas canvas, float f, float f2, String str) {
        canvas.drawText(str, f, f2, this.mLegendLabelPaint);
    }

    public Paint getFormPaint() {
        return this.mLegendFormPaint;
    }

    public Paint getLabelPaint() {
        return this.mLegendLabelPaint;
    }

    public void renderLegend(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        boolean z;
        float convertDpToPixel;
        float f6;
        boolean z2;
        LegendEntry legendEntry;
        Legend.LegendHorizontalAlignment legendHorizontalAlignment;
        List<FSize> list;
        LegendEntry[] legendEntryArr;
        Canvas canvas2;
        int i;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float contentTop;
        float f12;
        boolean z3;
        float convertDpToPixel2;
        float f13;
        float f14;
        float f15;
        Legend.LegendDirection legendDirection;
        float f16;
        float f17;
        int i2;
        float f18;
        float f19;
        float contentBottom;
        float contentRight;
        float contentLeft;
        float f20;
        double d;
        if (!this.mLegend.isEnabled()) {
            return;
        }
        Typeface typeface = this.mLegend.getTypeface();
        if (typeface != null) {
            this.mLegendLabelPaint.setTypeface(typeface);
        }
        this.mLegendLabelPaint.setTextSize(this.mLegend.getTextSize());
        this.mLegendLabelPaint.setColor(this.mLegend.getTextColor());
        float lineHeight = Utils.getLineHeight(this.mLegendLabelPaint, this.legendFontMetrics);
        float convertDpToPixel3 = Utils.convertDpToPixel(this.mLegend.getYEntrySpace()) + Utils.getLineSpacing(this.mLegendLabelPaint, this.legendFontMetrics);
        float calcTextHeight = lineHeight - (Utils.calcTextHeight(this.mLegendLabelPaint, new ObfuscatedString(new long[]{1933228286596873090L, -5580680240141888007L}).toString()) / 2.0f);
        LegendEntry[] entries = this.mLegend.getEntries();
        float convertDpToPixel4 = Utils.convertDpToPixel(this.mLegend.getFormToTextSpace());
        float convertDpToPixel5 = Utils.convertDpToPixel(this.mLegend.getXEntrySpace());
        Legend.LegendOrientation orientation = this.mLegend.getOrientation();
        Legend.LegendHorizontalAlignment horizontalAlignment = this.mLegend.getHorizontalAlignment();
        Legend.LegendVerticalAlignment verticalAlignment = this.mLegend.getVerticalAlignment();
        Legend.LegendDirection direction = this.mLegend.getDirection();
        float convertDpToPixel6 = Utils.convertDpToPixel(this.mLegend.getFormSize());
        float convertDpToPixel7 = Utils.convertDpToPixel(this.mLegend.getStackSpace());
        float yOffset = this.mLegend.getYOffset();
        float xOffset = this.mLegend.getXOffset();
        int i3 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment[horizontalAlignment.ordinal()];
        float f21 = convertDpToPixel7;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    f = lineHeight;
                    f2 = convertDpToPixel3;
                    f3 = convertDpToPixel4;
                    f4 = convertDpToPixel5;
                    f5 = 0.0f;
                } else {
                    Legend.LegendOrientation legendOrientation = Legend.LegendOrientation.VERTICAL;
                    if (orientation == legendOrientation) {
                        contentLeft = this.mViewPortHandler.getChartWidth() / 2.0f;
                        f4 = convertDpToPixel5;
                    } else {
                        f4 = convertDpToPixel5;
                        contentLeft = this.mViewPortHandler.contentLeft() + (this.mViewPortHandler.contentWidth() / 2.0f);
                    }
                    Legend.LegendDirection legendDirection2 = Legend.LegendDirection.LEFT_TO_RIGHT;
                    f2 = convertDpToPixel3;
                    if (direction == legendDirection2) {
                        f20 = xOffset;
                    } else {
                        f20 = -xOffset;
                    }
                    f5 = contentLeft + f20;
                    if (orientation == legendOrientation) {
                        double d2 = f5;
                        if (direction == legendDirection2) {
                            f3 = convertDpToPixel4;
                            f = lineHeight;
                            d = ((-this.mLegend.mNeededWidth) / 2.0d) + xOffset;
                        } else {
                            f = lineHeight;
                            f3 = convertDpToPixel4;
                            d = (this.mLegend.mNeededWidth / 2.0d) - xOffset;
                        }
                        f5 = (float) (d2 + d);
                    } else {
                        f = lineHeight;
                        f3 = convertDpToPixel4;
                    }
                }
            } else {
                f = lineHeight;
                f2 = convertDpToPixel3;
                f3 = convertDpToPixel4;
                f4 = convertDpToPixel5;
                if (orientation == Legend.LegendOrientation.VERTICAL) {
                    contentRight = this.mViewPortHandler.getChartWidth();
                } else {
                    contentRight = this.mViewPortHandler.contentRight();
                }
                f5 = contentRight - xOffset;
                if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                    f5 -= this.mLegend.mNeededWidth;
                }
            }
        } else {
            f = lineHeight;
            f2 = convertDpToPixel3;
            f3 = convertDpToPixel4;
            f4 = convertDpToPixel5;
            if (orientation != Legend.LegendOrientation.VERTICAL) {
                xOffset += this.mViewPortHandler.contentLeft();
            }
            if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                f5 = xOffset + this.mLegend.mNeededWidth;
            } else {
                f5 = xOffset;
            }
        }
        int i4 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation[orientation.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                int i5 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[verticalAlignment.ordinal()];
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            f12 = 0.0f;
                        } else {
                            float chartHeight = this.mViewPortHandler.getChartHeight() / 2.0f;
                            Legend legend = this.mLegend;
                            f12 = legend.getYOffset() + (chartHeight - (legend.mNeededHeight / 2.0f));
                        }
                    } else {
                        if (horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER) {
                            contentBottom = this.mViewPortHandler.getChartHeight();
                        } else {
                            contentBottom = this.mViewPortHandler.contentBottom();
                        }
                        f12 = contentBottom - (this.mLegend.mNeededHeight + yOffset);
                    }
                } else {
                    if (horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER) {
                        contentTop = 0.0f;
                    } else {
                        contentTop = this.mViewPortHandler.contentTop();
                    }
                    f12 = contentTop + yOffset;
                }
                float f22 = f12;
                boolean z4 = false;
                int i6 = 0;
                float f23 = 0.0f;
                while (i6 < entries.length) {
                    LegendEntry legendEntry2 = entries[i6];
                    if (legendEntry2.form != Legend.LegendForm.NONE) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (Float.isNaN(legendEntry2.formSize)) {
                        convertDpToPixel2 = convertDpToPixel6;
                    } else {
                        convertDpToPixel2 = Utils.convertDpToPixel(legendEntry2.formSize);
                    }
                    if (z3) {
                        Legend.LegendDirection legendDirection3 = Legend.LegendDirection.LEFT_TO_RIGHT;
                        if (direction == legendDirection3) {
                            f19 = f5 + f23;
                        } else {
                            f19 = f5 - (convertDpToPixel2 - f23);
                        }
                        f16 = f19;
                        f14 = f21;
                        f15 = calcTextHeight;
                        legendDirection = direction;
                        f13 = f5;
                        drawForm(canvas, f16, f22 + calcTextHeight, legendEntry2, this.mLegend);
                        if (legendDirection == legendDirection3) {
                            f16 += convertDpToPixel2;
                        }
                    } else {
                        f13 = f5;
                        f14 = f21;
                        f15 = calcTextHeight;
                        legendDirection = direction;
                        f16 = f13;
                    }
                    if (legendEntry2.label != null) {
                        if (z3 && !z4) {
                            if (legendDirection == Legend.LegendDirection.LEFT_TO_RIGHT) {
                                f18 = f3;
                                f17 = f18;
                            } else {
                                f17 = f3;
                                f18 = -f17;
                            }
                            f16 += f18;
                        } else {
                            f17 = f3;
                            if (z4) {
                                f16 = f13;
                            }
                        }
                        if (legendDirection == Legend.LegendDirection.RIGHT_TO_LEFT) {
                            f16 -= Utils.calcTextWidth(this.mLegendLabelPaint, r0);
                        }
                        float f24 = f16;
                        if (!z4) {
                            drawLabel(canvas, f24, f22 + f, legendEntry2.label);
                        } else {
                            f22 += f + f2;
                            drawLabel(canvas, f24, f22 + f, legendEntry2.label);
                        }
                        f22 = f + f2 + f22;
                        i2 = 1;
                        f23 = 0.0f;
                    } else {
                        f17 = f3;
                        f23 = convertDpToPixel2 + f14 + f23;
                        i2 = 1;
                        z4 = true;
                    }
                    i6 += i2;
                    f3 = f17;
                    direction = legendDirection;
                    calcTextHeight = f15;
                    f5 = f13;
                    f21 = f14;
                }
                return;
            }
            return;
        }
        float f25 = f5;
        float f26 = f3;
        List<FSize> calculatedLineSizes = this.mLegend.getCalculatedLineSizes();
        List<FSize> calculatedLabelSizes = this.mLegend.getCalculatedLabelSizes();
        List<Boolean> calculatedLabelBreakPoints = this.mLegend.getCalculatedLabelBreakPoints();
        int i7 = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment[verticalAlignment.ordinal()];
        if (i7 != 1) {
            if (i7 != 2) {
                if (i7 != 3) {
                    yOffset = 0.0f;
                } else {
                    yOffset += (this.mViewPortHandler.getChartHeight() - this.mLegend.mNeededHeight) / 2.0f;
                }
            } else {
                yOffset = (this.mViewPortHandler.getChartHeight() - yOffset) - this.mLegend.mNeededHeight;
            }
        }
        int length = entries.length;
        float f27 = f25;
        int i8 = 0;
        int i9 = 0;
        while (i9 < length) {
            LegendEntry legendEntry3 = entries[i9];
            float f28 = f27;
            if (legendEntry3.form != Legend.LegendForm.NONE) {
                z = true;
            } else {
                z = false;
            }
            if (Float.isNaN(legendEntry3.formSize)) {
                convertDpToPixel = convertDpToPixel6;
            } else {
                convertDpToPixel = Utils.convertDpToPixel(legendEntry3.formSize);
            }
            if (i9 < calculatedLabelBreakPoints.size() && calculatedLabelBreakPoints.get(i9).booleanValue()) {
                yOffset = f + f2 + yOffset;
                f6 = f25;
            } else {
                f6 = f28;
            }
            if (f6 == f25 && horizontalAlignment == Legend.LegendHorizontalAlignment.CENTER && i8 < calculatedLineSizes.size()) {
                if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                    f11 = calculatedLineSizes.get(i8).width;
                } else {
                    f11 = -calculatedLineSizes.get(i8).width;
                }
                f6 += f11 / 2.0f;
                i8++;
            }
            int i10 = i8;
            if (legendEntry3.label == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                    f6 -= convertDpToPixel;
                }
                float f29 = f6;
                legendEntry = legendEntry3;
                list = calculatedLineSizes;
                i = i9;
                legendEntryArr = entries;
                canvas2 = canvas;
                legendHorizontalAlignment = horizontalAlignment;
                drawForm(canvas, f29, yOffset + calcTextHeight, legendEntry, this.mLegend);
                if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                    f6 = f29 + convertDpToPixel;
                } else {
                    f6 = f29;
                }
            } else {
                legendEntry = legendEntry3;
                legendHorizontalAlignment = horizontalAlignment;
                list = calculatedLineSizes;
                legendEntryArr = entries;
                canvas2 = canvas;
                i = i9;
            }
            if (!z2) {
                if (z) {
                    if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                        f10 = -f26;
                    } else {
                        f10 = f26;
                    }
                    f6 += f10;
                }
                Legend.LegendDirection legendDirection4 = Legend.LegendDirection.RIGHT_TO_LEFT;
                if (direction == legendDirection4) {
                    f6 -= calculatedLabelSizes.get(i).width;
                }
                drawLabel(canvas2, f6, yOffset + f, legendEntry.label);
                if (direction == Legend.LegendDirection.LEFT_TO_RIGHT) {
                    f6 += calculatedLabelSizes.get(i).width;
                }
                if (direction == legendDirection4) {
                    f7 = f4;
                    f9 = -f7;
                } else {
                    f7 = f4;
                    f9 = f7;
                }
                f27 = f6 + f9;
            } else {
                f7 = f4;
                if (direction == Legend.LegendDirection.RIGHT_TO_LEFT) {
                    f8 = -f21;
                } else {
                    f8 = f21;
                }
                f27 = f6 + f8;
            }
            i9 = i + 1;
            f4 = f7;
            i8 = i10;
            calculatedLineSizes = list;
            entries = legendEntryArr;
            horizontalAlignment = legendHorizontalAlignment;
        }
    }
}
