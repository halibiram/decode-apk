package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BubbleData;
import com.github.mikephil.charting.data.CandleData;
import com.github.mikephil.charting.data.CombinedData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.highlight.CombinedHighlighter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.CombinedDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.github.mikephil.charting.renderer.CombinedChartRenderer;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class CombinedChart extends BarLineChartBase<CombinedData> implements CombinedDataProvider {
    private boolean mDrawBarShadow;
    protected DrawOrder[] mDrawOrder;
    private boolean mDrawValueAboveBar;
    protected boolean mHighlightFullBarEnabled;

    /* loaded from: classes.dex */
    public enum DrawOrder {
        BAR,
        BUBBLE,
        LINE,
        CANDLE,
        SCATTER
    }

    public CombinedChart(Context context) {
        super(context);
        this.mDrawValueAboveBar = true;
        this.mHighlightFullBarEnabled = false;
        this.mDrawBarShadow = false;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void drawMarkers(Canvas canvas) {
        if (this.mMarker != null && isDrawMarkersEnabled() && valuesToHighlight()) {
            int i = 0;
            while (true) {
                Highlight[] highlightArr = this.mIndicesToHighlight;
                if (i < highlightArr.length) {
                    Highlight highlight = highlightArr[i];
                    IBarLineScatterCandleBubbleDataSet<? extends Entry> dataSetByHighlight = ((CombinedData) this.mData).getDataSetByHighlight(highlight);
                    Entry entryForHighlight = ((CombinedData) this.mData).getEntryForHighlight(highlight);
                    if (entryForHighlight != null) {
                        if (dataSetByHighlight.getEntryIndex(entryForHighlight) <= this.mAnimator.getPhaseX() * dataSetByHighlight.getEntryCount()) {
                            float[] markerPosition = getMarkerPosition(highlight);
                            if (this.mViewPortHandler.isInBounds(markerPosition[0], markerPosition[1])) {
                                this.mMarker.refreshContent(entryForHighlight, highlight);
                                this.mMarker.draw(canvas, markerPosition[0], markerPosition[1]);
                            }
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public BarData getBarData() {
        T t = this.mData;
        if (t == 0) {
            return null;
        }
        return ((CombinedData) t).getBarData();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BubbleDataProvider
    public BubbleData getBubbleData() {
        T t = this.mData;
        if (t == 0) {
            return null;
        }
        return ((CombinedData) t).getBubbleData();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.CandleDataProvider
    public CandleData getCandleData() {
        T t = this.mData;
        if (t == 0) {
            return null;
        }
        return ((CombinedData) t).getCandleData();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.CombinedDataProvider
    public CombinedData getCombinedData() {
        return (CombinedData) this.mData;
    }

    public DrawOrder[] getDrawOrder() {
        return this.mDrawOrder;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public Highlight getHighlightByTouchPoint(float f, float f2) {
        if (this.mData == 0) {
            new ObfuscatedString(new long[]{-6670372051624614988L, 7481765726739604500L, -8665189408237548944L}).toString();
            new ObfuscatedString(new long[]{-6634487065469951662L, -186033826000292667L, -2526009401566490017L, 1084174232548780433L, 7133819968309757015L, 7424359210257548019L}).toString();
            return null;
        }
        Highlight highlight = getHighlighter().getHighlight(f, f2);
        if (highlight != null && isHighlightFullBarEnabled()) {
            return new Highlight(highlight.getX(), highlight.getY(), highlight.getXPx(), highlight.getYPx(), highlight.getDataSetIndex(), -1, highlight.getAxis());
        }
        return highlight;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider
    public LineData getLineData() {
        T t = this.mData;
        if (t == 0) {
            return null;
        }
        return ((CombinedData) t).getLineData();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider
    public ScatterData getScatterData() {
        T t = this.mData;
        if (t == 0) {
            return null;
        }
        return ((CombinedData) t).getScatterData();
    }

    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mDrawOrder = new DrawOrder[]{DrawOrder.BAR, DrawOrder.BUBBLE, DrawOrder.LINE, DrawOrder.CANDLE, DrawOrder.SCATTER};
        setHighlighter(new CombinedHighlighter(this, this));
        setHighlightFullBarEnabled(true);
        this.mRenderer = new CombinedChartRenderer(this, this.mAnimator, this.mViewPortHandler);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawBarShadowEnabled() {
        return this.mDrawBarShadow;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawValueAboveBarEnabled() {
        return this.mDrawValueAboveBar;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isHighlightFullBarEnabled() {
        return this.mHighlightFullBarEnabled;
    }

    public void setDrawBarShadow(boolean z) {
        this.mDrawBarShadow = z;
    }

    public void setDrawOrder(DrawOrder[] drawOrderArr) {
        if (drawOrderArr != null && drawOrderArr.length > 0) {
            this.mDrawOrder = drawOrderArr;
        }
    }

    public void setDrawValueAboveBar(boolean z) {
        this.mDrawValueAboveBar = z;
    }

    public void setHighlightFullBarEnabled(boolean z) {
        this.mHighlightFullBarEnabled = z;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public void setData(CombinedData combinedData) {
        super.setData((CombinedChart) combinedData);
        setHighlighter(new CombinedHighlighter(this, this));
        ((CombinedChartRenderer) this.mRenderer).createRenderers();
        this.mRenderer.initBuffers();
    }

    public CombinedChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDrawValueAboveBar = true;
        this.mHighlightFullBarEnabled = false;
        this.mDrawBarShadow = false;
    }

    public CombinedChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawValueAboveBar = true;
        this.mHighlightFullBarEnabled = false;
        this.mDrawBarShadow = false;
    }
}
