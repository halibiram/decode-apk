package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public class LegacyPreviewScalingStrategy extends PreviewScalingStrategy {
    private static final String TAG = "LegacyPreviewScalingStrategy";

    public static Size scale(Size size, Size size2) {
        Size scale;
        if (size2.fitsIn(size)) {
            while (true) {
                scale = size.scale(2, 3);
                Size scale2 = size.scale(1, 2);
                if (!size2.fitsIn(scale2)) {
                    break;
                }
                size = scale2;
            }
            if (size2.fitsIn(scale)) {
                return scale;
            }
            return size;
        }
        do {
            Size scale3 = size.scale(3, 2);
            size = size.scale(2, 1);
            if (size2.fitsIn(scale3)) {
                return scale3;
            }
        } while (!size2.fitsIn(size));
        return size;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Size getBestPreviewSize(List<Size> list, final Size size) {
        if (size == null) {
            return list.get(0);
        }
        Collections.sort(list, new Comparator<Size>() { // from class: com.journeyapps.barcodescanner.camera.LegacyPreviewScalingStrategy.1
            @Override // java.util.Comparator
            public int compare(Size size2, Size size3) {
                int i = LegacyPreviewScalingStrategy.scale(size2, size).width - size2.width;
                int i2 = LegacyPreviewScalingStrategy.scale(size3, size).width - size3.width;
                if (i == 0 && i2 == 0) {
                    return size2.compareTo(size3);
                }
                if (i == 0) {
                    return -1;
                }
                if (i2 == 0) {
                    return 1;
                }
                if (i < 0 && i2 < 0) {
                    return size2.compareTo(size3);
                }
                if (i <= 0 || i2 <= 0) {
                    return i < 0 ? -1 : 1;
                }
                return -size2.compareTo(size3);
            }
        });
        new ObfuscatedString(new long[]{-6373385697189186060L, 7799845260123488693L, -7411607573702487738L, -734331658496609822L}).toString();
        size.toString();
        new ObfuscatedString(new long[]{-8783021028318213685L, 5133463560797184314L, 4430452882066206957L, 4959520794861296562L, -8190005072102349436L}).toString();
        Objects.toString(list);
        return list.get(0);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        Size scale = scale(size, size2);
        new ObfuscatedString(new long[]{-7571741116231016448L, -7130526559285686861L, -1452555719409107841L}).toString();
        Objects.toString(size);
        new ObfuscatedString(new long[]{4609636951888311712L, 3793600955962208916L, 4490958750455575950L}).toString();
        Objects.toString(scale);
        new ObfuscatedString(new long[]{-6344328711197405073L, 3797694321967367303L}).toString();
        Objects.toString(size2);
        int i = (scale.width - size2.width) / 2;
        int i2 = (scale.height - size2.height) / 2;
        return new Rect(-i, -i2, scale.width - i, scale.height - i2);
    }
}
