package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class FitCenterStrategy extends PreviewScalingStrategy {
    private static final String TAG = "FitCenterStrategy";

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public float getScore(Size size, Size size2) {
        if (size.width > 0 && size.height > 0) {
            Size scaleFit = size.scaleFit(size2);
            float f = (scaleFit.width * 1.0f) / size.width;
            if (f > 1.0f) {
                f = (float) Math.pow(1.0f / f, 1.1d);
            }
            float f2 = ((size2.height * 1.0f) / scaleFit.height) * ((size2.width * 1.0f) / scaleFit.width);
            return (((1.0f / f2) / f2) / f2) * f;
        }
        return 0.0f;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        Size scaleFit = size.scaleFit(size2);
        new ObfuscatedString(new long[]{1195227151846880713L, -636069855492320695L, -5534439172427828996L}).toString();
        size.toString();
        new ObfuscatedString(new long[]{233417730433471732L, 3838508310217408728L, 261150933226594243L}).toString();
        Objects.toString(scaleFit);
        new ObfuscatedString(new long[]{4665800052133920720L, 5121507294671436334L}).toString();
        Objects.toString(size2);
        int i = (scaleFit.width - size2.width) / 2;
        int i2 = (scaleFit.height - size2.height) / 2;
        return new Rect(-i, -i2, scaleFit.width - i, scaleFit.height - i2);
    }
}
