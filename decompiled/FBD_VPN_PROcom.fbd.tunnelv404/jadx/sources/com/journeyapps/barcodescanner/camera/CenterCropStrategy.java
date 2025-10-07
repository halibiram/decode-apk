package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class CenterCropStrategy extends PreviewScalingStrategy {
    private static final String TAG = "CenterCropStrategy";

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public float getScore(Size size, Size size2) {
        if (size.width > 0 && size.height > 0) {
            Size scaleCrop = size.scaleCrop(size2);
            float f = (scaleCrop.width * 1.0f) / size.width;
            if (f > 1.0f) {
                f = (float) Math.pow(1.0f / f, 1.1d);
            }
            float f2 = ((scaleCrop.height * 1.0f) / size2.height) + ((scaleCrop.width * 1.0f) / size2.width);
            return ((1.0f / f2) / f2) * f;
        }
        return 0.0f;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        Size scaleCrop = size.scaleCrop(size2);
        new ObfuscatedString(new long[]{-4381156705751660502L, 8170176245864098676L, 8812792237593122218L}).toString();
        size.toString();
        new ObfuscatedString(new long[]{8779821827623938629L, -8143160299483009675L, 5368296453583097504L}).toString();
        Objects.toString(scaleCrop);
        new ObfuscatedString(new long[]{1125254298149400520L, -3922225540441564079L}).toString();
        Objects.toString(size2);
        int i = (scaleCrop.width - size2.width) / 2;
        int i2 = (scaleCrop.height - size2.height) / 2;
        return new Rect(-i, -i2, scaleCrop.width - i, scaleCrop.height - i2);
    }
}
