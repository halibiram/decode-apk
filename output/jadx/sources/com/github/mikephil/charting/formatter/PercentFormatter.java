package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class PercentFormatter implements IValueFormatter, IAxisValueFormatter {
    protected DecimalFormat mFormat;

    public PercentFormatter() {
        this.mFormat = new DecimalFormat(new ObfuscatedString(new long[]{750202984900294551L, -6835672087215591393L, -7022233736731075126L}).toString());
    }

    public int getDecimalDigits() {
        return 1;
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mFormat.format(f));
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1044233977308907183L, -4275085274672643998L}), sb);
    }

    public PercentFormatter(DecimalFormat decimalFormat) {
        this.mFormat = decimalFormat;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mFormat.format(f));
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8799900768301005893L, 6191869556102627296L}), sb);
    }
}
