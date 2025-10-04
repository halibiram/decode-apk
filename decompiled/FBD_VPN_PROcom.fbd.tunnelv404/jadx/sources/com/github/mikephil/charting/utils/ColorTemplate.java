package com.github.mikephil.charting.utils;

import android.content.res.Resources;
import android.graphics.Color;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes.dex */
public class ColorTemplate {
    public static final int COLOR_NONE = 1122867;
    public static final int COLOR_SKIP = 1122868;
    public static final int[] LIBERTY_COLORS = {Color.rgb(HttpStatusCodesKt.HTTP_MULTI_STATUS, 248, 246), Color.rgb(148, 212, 212), Color.rgb(136, 180, 187), Color.rgb(118, 174, 175), Color.rgb(42, 109, 130)};
    public static final int[] JOYFUL_COLORS = {Color.rgb(217, 80, 138), Color.rgb(254, 149, 7), Color.rgb(254, 247, 120), Color.rgb(106, 167, 134), Color.rgb(53, 194, 209)};
    public static final int[] PASTEL_COLORS = {Color.rgb(64, 89, 128), Color.rgb(149, 165, 124), Color.rgb(217, 184, 162), Color.rgb(191, 134, 134), Color.rgb(179, 48, 80)};
    public static final int[] COLORFUL_COLORS = {Color.rgb(193, 37, 82), Color.rgb(255, 102, 0), Color.rgb(245, 199, 0), Color.rgb(106, 150, 31), Color.rgb(179, 100, 53)};
    public static final int[] VORDIPLOM_COLORS = {Color.rgb(192, 255, 140), Color.rgb(255, 247, 140), Color.rgb(255, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 140), Color.rgb(140, 234, 255), Color.rgb(255, 140, 157)};
    public static final int[] MATERIAL_COLORS = {rgb(new ObfuscatedString(new long[]{-3183448964655383760L, -3544686081618962262L}).toString()), rgb(new ObfuscatedString(new long[]{-8372878210843863152L, 8335087945874987143L}).toString()), rgb(new ObfuscatedString(new long[]{5910469063409926930L, 3856158354310171409L}).toString()), rgb(new ObfuscatedString(new long[]{6988521800046166291L, 1964921306642607927L}).toString())};

    public static int colorWithAlpha(int i, int i2) {
        return (i & 16777215) | ((i2 & 255) << 24);
    }

    public static List<Integer> createColors(Resources resources, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(resources.getColor(i)));
        }
        return arrayList;
    }

    public static int getHoloBlue() {
        return Color.rgb(51, 181, 229);
    }

    public static int rgb(String str) {
        int parseLong = (int) Long.parseLong(str.replace(new ObfuscatedString(new long[]{3571299877259899439L, 725825105606278743L}).toString(), new ObfuscatedString(new long[]{-2761386686432842250L}).toString()), 16);
        return Color.rgb((parseLong >> 16) & 255, (parseLong >> 8) & 255, parseLong & 255);
    }

    public static List<Integer> createColors(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }
}
