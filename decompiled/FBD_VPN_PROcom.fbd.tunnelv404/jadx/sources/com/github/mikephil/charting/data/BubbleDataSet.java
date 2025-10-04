package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BubbleDataSet extends BarLineScatterCandleBubbleDataSet<BubbleEntry> implements IBubbleDataSet {
    private float mHighlightCircleWidth;
    protected float mMaxSize;
    protected boolean mNormalizeSize;

    public BubbleDataSet(List<BubbleEntry> list, String str) {
        super(list, str);
        this.mNormalizeSize = true;
        this.mHighlightCircleWidth = 2.5f;
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public DataSet<BubbleEntry> copy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mValues.size(); i++) {
            arrayList.add(((BubbleEntry) this.mValues.get(i)).copy());
        }
        BubbleDataSet bubbleDataSet = new BubbleDataSet(arrayList, getLabel());
        bubbleDataSet.mColors = this.mColors;
        bubbleDataSet.mHighLightColor = this.mHighLightColor;
        return bubbleDataSet;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet
    public float getHighlightCircleWidth() {
        return this.mHighlightCircleWidth;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet
    public float getMaxSize() {
        return this.mMaxSize;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet
    public boolean isNormalizeSizeEnabled() {
        return this.mNormalizeSize;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet
    public void setHighlightCircleWidth(float f) {
        this.mHighlightCircleWidth = Utils.convertDpToPixel(f);
    }

    public void setNormalizeSizeEnabled(boolean z) {
        this.mNormalizeSize = z;
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public void calcMinMax(BubbleEntry bubbleEntry) {
        super.calcMinMax((BubbleDataSet) bubbleEntry);
        float size = bubbleEntry.getSize();
        if (size > this.mMaxSize) {
            this.mMaxSize = size;
        }
    }
}
