package com.google.android.material.slider;

import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class BasicLabelFormatter implements LabelFormatter {
    private static final int BILLION = 1000000000;
    private static final int MILLION = 1000000;
    private static final int THOUSAND = 1000;
    private static final long TRILLION = 1000000000000L;

    @Override // com.google.android.material.slider.LabelFormatter
    @NonNull
    public String getFormattedValue(float f) {
        if (f >= 1.0E12f) {
            return String.format(Locale.US, new ObfuscatedString(new long[]{-3766532426573921443L, 1696944744953596982L}).toString(), Float.valueOf(f / 1.0E12f));
        }
        if (f >= 1.0E9f) {
            return String.format(Locale.US, new ObfuscatedString(new long[]{-4853907795746328431L, -3752916419494372094L}).toString(), Float.valueOf(f / 1.0E9f));
        }
        if (f >= 1000000.0f) {
            return String.format(Locale.US, new ObfuscatedString(new long[]{5448445063106352822L, 7699400363420087004L}).toString(), Float.valueOf(f / 1000000.0f));
        }
        if (f >= 1000.0f) {
            return String.format(Locale.US, new ObfuscatedString(new long[]{-6550892839563160817L, 971179557487496449L}).toString(), Float.valueOf(f / 1000.0f));
        }
        return String.format(Locale.US, new ObfuscatedString(new long[]{972645962535463661L, 1379519204406883229L}).toString(), Float.valueOf(f));
    }
}
