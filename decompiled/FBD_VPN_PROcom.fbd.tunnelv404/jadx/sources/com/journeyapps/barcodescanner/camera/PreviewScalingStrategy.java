package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class PreviewScalingStrategy {
    private static final String TAG = "PreviewScalingStrategy";

    public List<Size> getBestPreviewOrder(List<Size> list, final Size size) {
        if (size == null) {
            return list;
        }
        Collections.sort(list, new Comparator<Size>() { // from class: com.journeyapps.barcodescanner.camera.PreviewScalingStrategy.1
            @Override // java.util.Comparator
            public int compare(Size size2, Size size3) {
                return Float.compare(PreviewScalingStrategy.this.getScore(size3, size), PreviewScalingStrategy.this.getScore(size2, size));
            }
        });
        return list;
    }

    public Size getBestPreviewSize(List<Size> list, Size size) {
        List<Size> bestPreviewOrder = getBestPreviewOrder(list, size);
        new ObfuscatedString(new long[]{3172004282434178019L, 8937753235807295147L, 5605698968298365233L, 7115630205468721647L}).toString();
        Objects.toString(size);
        new ObfuscatedString(new long[]{-8940032897400722066L, -879643565816828843L, 2598883403934797871L, -3567127282590241802L, 5287532119295420824L}).toString();
        Objects.toString(bestPreviewOrder);
        return bestPreviewOrder.get(0);
    }

    public float getScore(Size size, Size size2) {
        return 0.5f;
    }

    public abstract Rect scalePreview(Size size, Size size2);
}
