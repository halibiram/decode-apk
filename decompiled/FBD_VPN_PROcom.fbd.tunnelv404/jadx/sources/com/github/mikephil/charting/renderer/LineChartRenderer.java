package com.github.mikephil.charting.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.renderer.BarLineScatterCandleBubbleRenderer;
import com.github.mikephil.charting.utils.MPPointD;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class LineChartRenderer extends LineRadarRenderer {
    protected Path cubicFillPath;
    protected Path cubicPath;
    protected Canvas mBitmapCanvas;
    protected Bitmap.Config mBitmapConfig;
    protected LineDataProvider mChart;
    protected Paint mCirclePaintInner;
    private float[] mCirclesBuffer;
    protected WeakReference<Bitmap> mDrawBitmap;
    protected Path mGenerateFilledPathBuffer;
    private HashMap<IDataSet, DataSetImageCache> mImageCaches;
    private float[] mLineBuffer;

    /* renamed from: com.github.mikephil.charting.renderer.LineChartRenderer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode;

        static {
            int[] iArr = new int[LineDataSet.Mode.values().length];
            $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode = iArr;
            try {
                iArr[LineDataSet.Mode.LINEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.STEPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.CUBIC_BEZIER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.HORIZONTAL_BEZIER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LineChartRenderer(LineDataProvider lineDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mBitmapConfig = Bitmap.Config.ARGB_8888;
        this.cubicPath = new Path();
        this.cubicFillPath = new Path();
        this.mLineBuffer = new float[4];
        this.mGenerateFilledPathBuffer = new Path();
        this.mImageCaches = new HashMap<>();
        this.mCirclesBuffer = new float[2];
        this.mChart = lineDataProvider;
        Paint paint = new Paint(1);
        this.mCirclePaintInner = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mCirclePaintInner.setColor(-1);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r3v6, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    private void generateFilledPath(ILineDataSet iLineDataSet, int i, int i2, Path path) {
        boolean z;
        float fillLinePosition = iLineDataSet.getFillFormatter().getFillLinePosition(iLineDataSet, this.mChart);
        float phaseY = this.mAnimator.getPhaseY();
        if (iLineDataSet.getMode() == LineDataSet.Mode.STEPPED) {
            z = true;
        } else {
            z = false;
        }
        path.reset();
        ?? entryForIndex = iLineDataSet.getEntryForIndex(i);
        path.moveTo(entryForIndex.getX(), fillLinePosition);
        path.lineTo(entryForIndex.getX(), entryForIndex.getY() * phaseY);
        int i3 = i + 1;
        Entry entry = null;
        while (true) {
            Entry entry2 = entry;
            if (i3 > i2) {
                break;
            }
            ?? entryForIndex2 = iLineDataSet.getEntryForIndex(i3);
            if (z && entry2 != null) {
                path.lineTo(entryForIndex2.getX(), entry2.getY() * phaseY);
            }
            path.lineTo(entryForIndex2.getX(), entryForIndex2.getY() * phaseY);
            i3++;
            entry = entryForIndex2;
        }
        if (entry != null) {
            path.lineTo(entry.getX(), fillLinePosition);
        }
        path.close();
    }

    /* JADX WARN: Type inference failed for: r14v2, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    public void drawCircles(Canvas canvas) {
        boolean z;
        boolean z2;
        DataSetImageCache dataSetImageCache;
        Bitmap bitmap;
        this.mRenderPaint.setStyle(Paint.Style.FILL);
        float phaseY = this.mAnimator.getPhaseY();
        float[] fArr = this.mCirclesBuffer;
        char c = 0;
        float f = 0.0f;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        List<T> dataSets = this.mChart.getLineData().getDataSets();
        int i = 0;
        while (i < dataSets.size()) {
            ILineDataSet iLineDataSet = (ILineDataSet) dataSets.get(i);
            if (iLineDataSet.isVisible() && iLineDataSet.isDrawCirclesEnabled() && iLineDataSet.getEntryCount() != 0) {
                this.mCirclePaintInner.setColor(iLineDataSet.getCircleHoleColor());
                Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
                this.mXBounds.set(this.mChart, iLineDataSet);
                float circleRadius = iLineDataSet.getCircleRadius();
                float circleHoleRadius = iLineDataSet.getCircleHoleRadius();
                if (iLineDataSet.isDrawCircleHoleEnabled() && circleHoleRadius < circleRadius && circleHoleRadius > f) {
                    z = true;
                } else {
                    z = false;
                }
                if (z && iLineDataSet.getCircleHoleColor() == 1122867) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                AnonymousClass1 anonymousClass1 = null;
                if (this.mImageCaches.containsKey(iLineDataSet)) {
                    dataSetImageCache = this.mImageCaches.get(iLineDataSet);
                } else {
                    dataSetImageCache = new DataSetImageCache(this, anonymousClass1);
                    this.mImageCaches.put(iLineDataSet, dataSetImageCache);
                }
                if (dataSetImageCache.init(iLineDataSet)) {
                    dataSetImageCache.fill(iLineDataSet, z, z2);
                }
                BarLineScatterCandleBubbleRenderer.XBounds xBounds = this.mXBounds;
                int i2 = xBounds.range;
                int i3 = xBounds.min;
                int i4 = i2 + i3;
                while (i3 <= i4) {
                    ?? entryForIndex = iLineDataSet.getEntryForIndex(i3);
                    if (entryForIndex == 0) {
                        break;
                    }
                    this.mCirclesBuffer[c] = entryForIndex.getX();
                    this.mCirclesBuffer[1] = entryForIndex.getY() * phaseY;
                    transformer.pointValuesToPixel(this.mCirclesBuffer);
                    if (!this.mViewPortHandler.isInBoundsRight(this.mCirclesBuffer[c])) {
                        break;
                    }
                    if (this.mViewPortHandler.isInBoundsLeft(this.mCirclesBuffer[c]) && this.mViewPortHandler.isInBoundsY(this.mCirclesBuffer[1]) && (bitmap = dataSetImageCache.getBitmap(i3)) != null) {
                        float[] fArr2 = this.mCirclesBuffer;
                        canvas.drawBitmap(bitmap, fArr2[c] - circleRadius, fArr2[1] - circleRadius, (Paint) null);
                    }
                    i3++;
                    c = 0;
                }
            }
            i++;
            c = 0;
            f = 0.0f;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    public void drawCubicBezier(ILineDataSet iLineDataSet) {
        Math.max(0.0f, Math.min(1.0f, this.mAnimator.getPhaseX()));
        float phaseY = this.mAnimator.getPhaseY();
        Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
        this.mXBounds.set(this.mChart, iLineDataSet);
        float cubicIntensity = iLineDataSet.getCubicIntensity();
        this.cubicPath.reset();
        BarLineScatterCandleBubbleRenderer.XBounds xBounds = this.mXBounds;
        if (xBounds.range >= 1) {
            int i = xBounds.min;
            T entryForIndex = iLineDataSet.getEntryForIndex(Math.max(i - 1, 0));
            ?? entryForIndex2 = iLineDataSet.getEntryForIndex(Math.max(i, 0));
            if (entryForIndex2 == 0) {
                return;
            }
            this.cubicPath.moveTo(entryForIndex2.getX(), entryForIndex2.getY() * phaseY);
            Entry entry = entryForIndex2;
            int i2 = this.mXBounds.min + 1;
            int i3 = -1;
            Entry entry2 = entryForIndex2;
            Entry entry3 = entryForIndex;
            while (true) {
                BarLineScatterCandleBubbleRenderer.XBounds xBounds2 = this.mXBounds;
                Entry entry4 = entry2;
                if (i2 > xBounds2.range + xBounds2.min) {
                    break;
                }
                if (i3 != i2) {
                    entry4 = iLineDataSet.getEntryForIndex(i2);
                }
                int i4 = i2 + 1;
                if (i4 < iLineDataSet.getEntryCount()) {
                    i2 = i4;
                }
                ?? entryForIndex3 = iLineDataSet.getEntryForIndex(i2);
                this.cubicPath.cubicTo(entry.getX() + ((entry4.getX() - entry3.getX()) * cubicIntensity), (entry.getY() + ((entry4.getY() - entry3.getY()) * cubicIntensity)) * phaseY, entry4.getX() - ((entryForIndex3.getX() - entry.getX()) * cubicIntensity), (entry4.getY() - ((entryForIndex3.getY() - entry.getY()) * cubicIntensity)) * phaseY, entry4.getX(), entry4.getY() * phaseY);
                entry3 = entry;
                entry = entry4;
                entry2 = entryForIndex3;
                int i5 = i2;
                i2 = i4;
                i3 = i5;
            }
        }
        if (iLineDataSet.isDrawFilledEnabled()) {
            this.cubicFillPath.reset();
            this.cubicFillPath.addPath(this.cubicPath);
            drawCubicFill(this.mBitmapCanvas, iLineDataSet, this.cubicFillPath, transformer, this.mXBounds);
        }
        this.mRenderPaint.setColor(iLineDataSet.getColor());
        this.mRenderPaint.setStyle(Paint.Style.STROKE);
        transformer.pathValueToPixel(this.cubicPath);
        this.mBitmapCanvas.drawPath(this.cubicPath, this.mRenderPaint);
        this.mRenderPaint.setPathEffect(null);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.github.mikephil.charting.data.Entry] */
    public void drawCubicFill(Canvas canvas, ILineDataSet iLineDataSet, Path path, Transformer transformer, BarLineScatterCandleBubbleRenderer.XBounds xBounds) {
        float fillLinePosition = iLineDataSet.getFillFormatter().getFillLinePosition(iLineDataSet, this.mChart);
        path.lineTo(iLineDataSet.getEntryForIndex(xBounds.min + xBounds.range).getX(), fillLinePosition);
        path.lineTo(iLineDataSet.getEntryForIndex(xBounds.min).getX(), fillLinePosition);
        path.close();
        transformer.pathValueToPixel(path);
        Drawable fillDrawable = iLineDataSet.getFillDrawable();
        if (fillDrawable != null) {
            drawFilledPath(canvas, path, fillDrawable);
        } else {
            drawFilledPath(canvas, path, iLineDataSet.getFillColor(), iLineDataSet.getFillAlpha());
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        int chartWidth = (int) this.mViewPortHandler.getChartWidth();
        int chartHeight = (int) this.mViewPortHandler.getChartHeight();
        WeakReference<Bitmap> weakReference = this.mDrawBitmap;
        if (weakReference == null || weakReference.get().getWidth() != chartWidth || this.mDrawBitmap.get().getHeight() != chartHeight) {
            if (chartWidth > 0 && chartHeight > 0) {
                this.mDrawBitmap = new WeakReference<>(Bitmap.createBitmap(chartWidth, chartHeight, this.mBitmapConfig));
                this.mBitmapCanvas = new Canvas(this.mDrawBitmap.get());
            } else {
                return;
            }
        }
        this.mDrawBitmap.get().eraseColor(0);
        for (T t : this.mChart.getLineData().getDataSets()) {
            if (t.isVisible()) {
                drawDataSet(canvas, t);
            }
        }
        canvas.drawBitmap(this.mDrawBitmap.get(), 0.0f, 0.0f, this.mRenderPaint);
    }

    public void drawDataSet(Canvas canvas, ILineDataSet iLineDataSet) {
        if (iLineDataSet.getEntryCount() < 1) {
            return;
        }
        this.mRenderPaint.setStrokeWidth(iLineDataSet.getLineWidth());
        this.mRenderPaint.setPathEffect(iLineDataSet.getDashPathEffect());
        int i = AnonymousClass1.$SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[iLineDataSet.getMode().ordinal()];
        if (i != 3) {
            if (i != 4) {
                drawLinear(canvas, iLineDataSet);
            } else {
                drawHorizontalBezier(iLineDataSet);
            }
        } else {
            drawCubicBezier(iLineDataSet);
        }
        this.mRenderPaint.setPathEffect(null);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        drawCircles(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        LineData lineData = this.mChart.getLineData();
        for (Highlight highlight : highlightArr) {
            ILineDataSet iLineDataSet = (ILineDataSet) lineData.getDataSetByIndex(highlight.getDataSetIndex());
            if (iLineDataSet != null && iLineDataSet.isHighlightEnabled()) {
                ?? entryForXValue = iLineDataSet.getEntryForXValue(highlight.getX(), highlight.getY());
                if (isInBoundsX(entryForXValue, iLineDataSet)) {
                    MPPointD pixelForValues = this.mChart.getTransformer(iLineDataSet.getAxisDependency()).getPixelForValues(entryForXValue.getX(), this.mAnimator.getPhaseY() * entryForXValue.getY());
                    highlight.setDraw((float) pixelForValues.x, (float) pixelForValues.y);
                    drawHighlightLines(canvas, (float) pixelForValues.x, (float) pixelForValues.y, iLineDataSet);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    public void drawHorizontalBezier(ILineDataSet iLineDataSet) {
        float phaseY = this.mAnimator.getPhaseY();
        Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
        this.mXBounds.set(this.mChart, iLineDataSet);
        this.cubicPath.reset();
        BarLineScatterCandleBubbleRenderer.XBounds xBounds = this.mXBounds;
        if (xBounds.range >= 1) {
            ?? entryForIndex = iLineDataSet.getEntryForIndex(xBounds.min);
            this.cubicPath.moveTo(entryForIndex.getX(), entryForIndex.getY() * phaseY);
            int i = this.mXBounds.min + 1;
            Entry entry = entryForIndex;
            while (true) {
                BarLineScatterCandleBubbleRenderer.XBounds xBounds2 = this.mXBounds;
                if (i > xBounds2.range + xBounds2.min) {
                    break;
                }
                ?? entryForIndex2 = iLineDataSet.getEntryForIndex(i);
                float x = ((entryForIndex2.getX() - entry.getX()) / 2.0f) + entry.getX();
                this.cubicPath.cubicTo(x, entry.getY() * phaseY, x, entryForIndex2.getY() * phaseY, entryForIndex2.getX(), entryForIndex2.getY() * phaseY);
                i++;
                entry = entryForIndex2;
            }
        }
        if (iLineDataSet.isDrawFilledEnabled()) {
            this.cubicFillPath.reset();
            this.cubicFillPath.addPath(this.cubicPath);
            drawCubicFill(this.mBitmapCanvas, iLineDataSet, this.cubicFillPath, transformer, this.mXBounds);
        }
        this.mRenderPaint.setColor(iLineDataSet.getColor());
        this.mRenderPaint.setStyle(Paint.Style.STROKE);
        transformer.pathValueToPixel(this.cubicPath);
        this.mBitmapCanvas.drawPath(this.cubicPath, this.mRenderPaint);
        this.mRenderPaint.setPathEffect(null);
    }

    /* JADX WARN: Type inference failed for: r10v11, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r13v4, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r6v22, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    public void drawLinear(Canvas canvas, ILineDataSet iLineDataSet) {
        int i;
        Canvas canvas2;
        int i2;
        int entryCount = iLineDataSet.getEntryCount();
        boolean isDrawSteppedEnabled = iLineDataSet.isDrawSteppedEnabled();
        if (isDrawSteppedEnabled) {
            i = 4;
        } else {
            i = 2;
        }
        Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
        float phaseY = this.mAnimator.getPhaseY();
        this.mRenderPaint.setStyle(Paint.Style.STROKE);
        if (iLineDataSet.isDashedLineEnabled()) {
            canvas2 = this.mBitmapCanvas;
        } else {
            canvas2 = canvas;
        }
        this.mXBounds.set(this.mChart, iLineDataSet);
        if (iLineDataSet.isDrawFilledEnabled() && entryCount > 0) {
            drawLinearFill(canvas, iLineDataSet, transformer, this.mXBounds);
        }
        if (iLineDataSet.getColors().size() > 1) {
            int i3 = i * 2;
            if (this.mLineBuffer.length <= i3) {
                this.mLineBuffer = new float[i * 4];
            }
            int i4 = this.mXBounds.min;
            while (true) {
                BarLineScatterCandleBubbleRenderer.XBounds xBounds = this.mXBounds;
                if (i4 > xBounds.range + xBounds.min) {
                    break;
                }
                ?? entryForIndex = iLineDataSet.getEntryForIndex(i4);
                if (entryForIndex != 0) {
                    this.mLineBuffer[0] = entryForIndex.getX();
                    this.mLineBuffer[1] = entryForIndex.getY() * phaseY;
                    if (i4 < this.mXBounds.max) {
                        ?? entryForIndex2 = iLineDataSet.getEntryForIndex(i4 + 1);
                        if (entryForIndex2 == 0) {
                            break;
                        }
                        if (isDrawSteppedEnabled) {
                            this.mLineBuffer[2] = entryForIndex2.getX();
                            float[] fArr = this.mLineBuffer;
                            float f = fArr[1];
                            fArr[3] = f;
                            fArr[4] = fArr[2];
                            fArr[5] = f;
                            fArr[6] = entryForIndex2.getX();
                            this.mLineBuffer[7] = entryForIndex2.getY() * phaseY;
                        } else {
                            this.mLineBuffer[2] = entryForIndex2.getX();
                            this.mLineBuffer[3] = entryForIndex2.getY() * phaseY;
                        }
                    } else {
                        float[] fArr2 = this.mLineBuffer;
                        fArr2[2] = fArr2[0];
                        fArr2[3] = fArr2[1];
                    }
                    transformer.pointValuesToPixel(this.mLineBuffer);
                    if (!this.mViewPortHandler.isInBoundsRight(this.mLineBuffer[0])) {
                        break;
                    }
                    if (this.mViewPortHandler.isInBoundsLeft(this.mLineBuffer[2]) && (this.mViewPortHandler.isInBoundsTop(this.mLineBuffer[1]) || this.mViewPortHandler.isInBoundsBottom(this.mLineBuffer[3]))) {
                        this.mRenderPaint.setColor(iLineDataSet.getColor(i4));
                        canvas2.drawLines(this.mLineBuffer, 0, i3, this.mRenderPaint);
                    }
                }
                i4++;
            }
        } else {
            int i5 = entryCount * i;
            if (this.mLineBuffer.length < Math.max(i5, i) * 2) {
                this.mLineBuffer = new float[Math.max(i5, i) * 4];
            }
            if (iLineDataSet.getEntryForIndex(this.mXBounds.min) != 0) {
                int i6 = this.mXBounds.min;
                int i7 = 0;
                while (true) {
                    BarLineScatterCandleBubbleRenderer.XBounds xBounds2 = this.mXBounds;
                    if (i6 > xBounds2.range + xBounds2.min) {
                        break;
                    }
                    if (i6 == 0) {
                        i2 = 0;
                    } else {
                        i2 = i6 - 1;
                    }
                    ?? entryForIndex3 = iLineDataSet.getEntryForIndex(i2);
                    ?? entryForIndex4 = iLineDataSet.getEntryForIndex(i6);
                    if (entryForIndex3 != 0 && entryForIndex4 != 0) {
                        this.mLineBuffer[i7] = entryForIndex3.getX();
                        int i8 = i7 + 2;
                        this.mLineBuffer[i7 + 1] = entryForIndex3.getY() * phaseY;
                        if (isDrawSteppedEnabled) {
                            this.mLineBuffer[i8] = entryForIndex4.getX();
                            this.mLineBuffer[i7 + 3] = entryForIndex3.getY() * phaseY;
                            this.mLineBuffer[i7 + 4] = entryForIndex4.getX();
                            i8 = i7 + 6;
                            this.mLineBuffer[i7 + 5] = entryForIndex3.getY() * phaseY;
                        }
                        this.mLineBuffer[i8] = entryForIndex4.getX();
                        this.mLineBuffer[i8 + 1] = entryForIndex4.getY() * phaseY;
                        i7 = i8 + 2;
                    }
                    i6++;
                }
                if (i7 > 0) {
                    transformer.pointValuesToPixel(this.mLineBuffer);
                    int max = Math.max((this.mXBounds.range + 1) * i, i) * 2;
                    this.mRenderPaint.setColor(iLineDataSet.getColor());
                    canvas2.drawLines(this.mLineBuffer, 0, max, this.mRenderPaint);
                }
            }
        }
        this.mRenderPaint.setPathEffect(null);
    }

    public void drawLinearFill(Canvas canvas, ILineDataSet iLineDataSet, Transformer transformer, BarLineScatterCandleBubbleRenderer.XBounds xBounds) {
        int i;
        int i2;
        Path path = this.mGenerateFilledPathBuffer;
        int i3 = xBounds.min;
        int i4 = xBounds.range + i3;
        int i5 = 0;
        do {
            i = (i5 * 128) + i3;
            i2 = i + 128;
            if (i2 > i4) {
                i2 = i4;
            }
            if (i <= i2) {
                generateFilledPath(iLineDataSet, i, i2, path);
                transformer.pathValueToPixel(path);
                Drawable fillDrawable = iLineDataSet.getFillDrawable();
                if (fillDrawable != null) {
                    drawFilledPath(canvas, path, fillDrawable);
                } else {
                    drawFilledPath(canvas, path, iLineDataSet.getFillColor(), iLineDataSet.getFillAlpha());
                }
            }
            i5++;
        } while (i <= i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [com.github.mikephil.charting.data.Entry, com.github.mikephil.charting.data.BaseEntry] */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        int i;
        MPPointF mPPointF;
        float f;
        float f2;
        if (isDrawingValuesAllowed(this.mChart)) {
            List<T> dataSets = this.mChart.getLineData().getDataSets();
            for (int i2 = 0; i2 < dataSets.size(); i2++) {
                ILineDataSet iLineDataSet = (ILineDataSet) dataSets.get(i2);
                if (shouldDrawValues(iLineDataSet)) {
                    applyValueTextStyle(iLineDataSet);
                    Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
                    int circleRadius = (int) (iLineDataSet.getCircleRadius() * 1.75f);
                    if (!iLineDataSet.isDrawCirclesEnabled()) {
                        circleRadius /= 2;
                    }
                    int i3 = circleRadius;
                    this.mXBounds.set(this.mChart, iLineDataSet);
                    float phaseX = this.mAnimator.getPhaseX();
                    float phaseY = this.mAnimator.getPhaseY();
                    BarLineScatterCandleBubbleRenderer.XBounds xBounds = this.mXBounds;
                    float[] generateTransformedValuesLine = transformer.generateTransformedValuesLine(iLineDataSet, phaseX, phaseY, xBounds.min, xBounds.max);
                    MPPointF mPPointF2 = MPPointF.getInstance(iLineDataSet.getIconsOffset());
                    mPPointF2.x = Utils.convertDpToPixel(mPPointF2.x);
                    mPPointF2.y = Utils.convertDpToPixel(mPPointF2.y);
                    int i4 = 0;
                    while (i4 < generateTransformedValuesLine.length) {
                        float f3 = generateTransformedValuesLine[i4];
                        float f4 = generateTransformedValuesLine[i4 + 1];
                        if (!this.mViewPortHandler.isInBoundsRight(f3)) {
                            break;
                        }
                        if (!this.mViewPortHandler.isInBoundsLeft(f3) || !this.mViewPortHandler.isInBoundsY(f4)) {
                            i = i4;
                            mPPointF = mPPointF2;
                        } else {
                            int i5 = i4 / 2;
                            ?? entryForIndex = iLineDataSet.getEntryForIndex(this.mXBounds.min + i5);
                            if (iLineDataSet.isDrawValuesEnabled()) {
                                f = f4;
                                f2 = f3;
                                i = i4;
                                mPPointF = mPPointF2;
                                drawValue(canvas, iLineDataSet.getValueFormatter(), entryForIndex.getY(), entryForIndex, i2, f3, f4 - i3, iLineDataSet.getValueTextColor(i5));
                            } else {
                                f = f4;
                                f2 = f3;
                                i = i4;
                                mPPointF = mPPointF2;
                            }
                            if (entryForIndex.getIcon() != null && iLineDataSet.isDrawIconsEnabled()) {
                                Drawable icon = entryForIndex.getIcon();
                                Utils.drawImage(canvas, icon, (int) (f2 + mPPointF.x), (int) (f + mPPointF.y), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                            }
                        }
                        i4 = i + 2;
                        mPPointF2 = mPPointF;
                    }
                    MPPointF.recycleInstance(mPPointF2);
                }
            }
        }
    }

    public Bitmap.Config getBitmapConfig() {
        return this.mBitmapConfig;
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

    public void setBitmapConfig(Bitmap.Config config2) {
        this.mBitmapConfig = config2;
        releaseBitmap();
    }

    /* loaded from: classes.dex */
    public class DataSetImageCache {
        private Bitmap[] circleBitmaps;
        private Path mCirclePathBuffer;

        private DataSetImageCache() {
            this.mCirclePathBuffer = new Path();
        }

        public void fill(ILineDataSet iLineDataSet, boolean z, boolean z2) {
            int circleColorCount = iLineDataSet.getCircleColorCount();
            float circleRadius = iLineDataSet.getCircleRadius();
            float circleHoleRadius = iLineDataSet.getCircleHoleRadius();
            for (int i = 0; i < circleColorCount; i++) {
                int i2 = (int) (circleRadius * 2.1d);
                Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(createBitmap);
                this.circleBitmaps[i] = createBitmap;
                LineChartRenderer.this.mRenderPaint.setColor(iLineDataSet.getCircleColor(i));
                if (z2) {
                    this.mCirclePathBuffer.reset();
                    this.mCirclePathBuffer.addCircle(circleRadius, circleRadius, circleRadius, Path.Direction.CW);
                    this.mCirclePathBuffer.addCircle(circleRadius, circleRadius, circleHoleRadius, Path.Direction.CCW);
                    canvas.drawPath(this.mCirclePathBuffer, LineChartRenderer.this.mRenderPaint);
                } else {
                    canvas.drawCircle(circleRadius, circleRadius, circleRadius, LineChartRenderer.this.mRenderPaint);
                    if (z) {
                        canvas.drawCircle(circleRadius, circleRadius, circleHoleRadius, LineChartRenderer.this.mCirclePaintInner);
                    }
                }
            }
        }

        public Bitmap getBitmap(int i) {
            Bitmap[] bitmapArr = this.circleBitmaps;
            return bitmapArr[i % bitmapArr.length];
        }

        public boolean init(ILineDataSet iLineDataSet) {
            int circleColorCount = iLineDataSet.getCircleColorCount();
            Bitmap[] bitmapArr = this.circleBitmaps;
            if (bitmapArr == null) {
                this.circleBitmaps = new Bitmap[circleColorCount];
                return true;
            }
            if (bitmapArr.length != circleColorCount) {
                this.circleBitmaps = new Bitmap[circleColorCount];
                return true;
            }
            return false;
        }

        public /* synthetic */ DataSetImageCache(LineChartRenderer lineChartRenderer, AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
