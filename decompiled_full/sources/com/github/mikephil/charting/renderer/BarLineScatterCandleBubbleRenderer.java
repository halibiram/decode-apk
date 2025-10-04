package com.github.mikephil.charting.renderer;

import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.data.DataSet;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.dataprovider.BarLineScatterCandleBubbleDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes.dex */
public abstract class BarLineScatterCandleBubbleRenderer extends DataRenderer {
    protected XBounds mXBounds;

    /* loaded from: classes.dex */
    public class XBounds {
        public int max;
        public int min;
        public int range;

        public XBounds() {
        }

        public void set(BarLineScatterCandleBubbleDataProvider barLineScatterCandleBubbleDataProvider, IBarLineScatterCandleBubbleDataSet iBarLineScatterCandleBubbleDataSet) {
            int entryIndex;
            float max = Math.max(0.0f, Math.min(1.0f, BarLineScatterCandleBubbleRenderer.this.mAnimator.getPhaseX()));
            float lowestVisibleX = barLineScatterCandleBubbleDataProvider.getLowestVisibleX();
            float highestVisibleX = barLineScatterCandleBubbleDataProvider.getHighestVisibleX();
            T entryForXValue = iBarLineScatterCandleBubbleDataSet.getEntryForXValue(lowestVisibleX, Float.NaN, DataSet.Rounding.DOWN);
            T entryForXValue2 = iBarLineScatterCandleBubbleDataSet.getEntryForXValue(highestVisibleX, Float.NaN, DataSet.Rounding.UP);
            int i = 0;
            if (entryForXValue == 0) {
                entryIndex = 0;
            } else {
                entryIndex = iBarLineScatterCandleBubbleDataSet.getEntryIndex(entryForXValue);
            }
            this.min = entryIndex;
            if (entryForXValue2 != 0) {
                i = iBarLineScatterCandleBubbleDataSet.getEntryIndex(entryForXValue2);
            }
            this.max = i;
            this.range = (int) ((i - this.min) * max);
        }
    }

    public BarLineScatterCandleBubbleRenderer(ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mXBounds = new XBounds();
    }

    public boolean isInBoundsX(Entry entry, IBarLineScatterCandleBubbleDataSet iBarLineScatterCandleBubbleDataSet) {
        if (entry == null) {
            return false;
        }
        if (iBarLineScatterCandleBubbleDataSet.getEntryIndex(entry) >= this.mAnimator.getPhaseX() * iBarLineScatterCandleBubbleDataSet.getEntryCount()) {
            return false;
        }
        return true;
    }

    public boolean shouldDrawValues(IDataSet iDataSet) {
        if (iDataSet.isVisible() && (iDataSet.isDrawValuesEnabled() || iDataSet.isDrawIconsEnabled())) {
            return true;
        }
        return false;
    }
}
