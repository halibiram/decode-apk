package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class BarData extends BarLineScatterCandleBubbleData<IBarDataSet> {
    private float mBarWidth;

    public BarData() {
        this.mBarWidth = 0.85f;
    }

    public float getBarWidth() {
        return this.mBarWidth;
    }

    public float getGroupWidth(float f, float f2) {
        return ((this.mBarWidth + f2) * this.mDataSets.size()) + f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void groupBars(float f, float f2, float f3) {
        BarEntry barEntry;
        if (this.mDataSets.size() > 1) {
            int entryCount = ((IBarDataSet) getMaxEntryCountSet()).getEntryCount();
            float f4 = f2 / 2.0f;
            float f5 = f3 / 2.0f;
            float f6 = this.mBarWidth / 2.0f;
            float groupWidth = getGroupWidth(f2, f3);
            for (int i = 0; i < entryCount; i++) {
                float f7 = f + f4;
                for (T t : this.mDataSets) {
                    float f8 = f7 + f5 + f6;
                    if (i < t.getEntryCount() && (barEntry = (BarEntry) t.getEntryForIndex(i)) != null) {
                        barEntry.setX(f8);
                    }
                    f7 = f8 + f6 + f5;
                }
                float f9 = f7 + f4;
                float f10 = groupWidth - (f9 - f);
                if (f10 > 0.0f || f10 < 0.0f) {
                    f9 += f10;
                }
                f = f9;
            }
            notifyDataChanged();
            return;
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{-2241834584839726235L, 3003893516053288192L, 6119241444954669738L, -574435813366736051L, -1728570037048370528L, 3764663824620997889L, -1277682649736080583L, 711364446044869163L, -2985342334907060921L}).toString());
    }

    public void setBarWidth(float f) {
        this.mBarWidth = f;
    }

    public BarData(IBarDataSet... iBarDataSetArr) {
        super(iBarDataSetArr);
        this.mBarWidth = 0.85f;
    }

    public BarData(List<IBarDataSet> list) {
        super(list);
        this.mBarWidth = 0.85f;
    }
}
