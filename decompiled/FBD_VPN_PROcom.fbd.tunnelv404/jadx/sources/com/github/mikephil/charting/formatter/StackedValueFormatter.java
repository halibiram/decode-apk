package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class StackedValueFormatter implements IValueFormatter {
    private String mAppendix;
    private boolean mDrawWholeStack;
    private DecimalFormat mFormat;

    public StackedValueFormatter(boolean z, String str, int i) {
        this.mDrawWholeStack = z;
        this.mAppendix = str;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(new ObfuscatedString(new long[]{-8151769677903674781L, -1767897815172333301L}).toString());
            }
            stringBuffer.append(new ObfuscatedString(new long[]{-8077178183874564220L, 8407144632635640030L}).toString());
        }
        this.mFormat = new DecimalFormat(new ObfuscatedString(new long[]{-5197313978975214720L, -8760832909486605408L, 3907975159289728357L}).toString() + stringBuffer.toString());
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        BarEntry barEntry;
        float[] yVals;
        if (!this.mDrawWholeStack && (entry instanceof BarEntry) && (yVals = (barEntry = (BarEntry) entry).getYVals()) != null) {
            if (yVals[yVals.length - 1] == f) {
                return this.mFormat.format(barEntry.getY()) + this.mAppendix;
            }
            return new ObfuscatedString(new long[]{8000359003202791812L}).toString();
        }
        return this.mFormat.format(f) + this.mAppendix;
    }
}
