package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class LottieImageAsset {

    @Nullable
    private Bitmap bitmap;
    private final String dirName;
    private final String fileName;
    private final int height;
    private final String id;
    private final int width;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public LottieImageAsset(int i, int i2, String str, String str2, String str3) {
        this.width = i;
        this.height = i2;
        this.id = str;
        this.fileName = str2;
        this.dirName = str3;
    }

    public LottieImageAsset copyWithScale(float f) {
        LottieImageAsset lottieImageAsset = new LottieImageAsset((int) (this.width * f), (int) (this.height * f), this.id, this.fileName, this.dirName);
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            lottieImageAsset.setBitmap(Bitmap.createScaledBitmap(bitmap, lottieImageAsset.width, lottieImageAsset.height, true));
        }
        return lottieImageAsset;
    }

    @Nullable
    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public String getDirName() {
        return this.dirName;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getHeight() {
        return this.height;
    }

    public String getId() {
        return this.id;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean hasBitmap() {
        if (this.bitmap == null && (!this.fileName.startsWith(new ObfuscatedString(new long[]{1432532888222929299L, 6628196607056153766L}).toString()) || this.fileName.indexOf(new ObfuscatedString(new long[]{-5773552237572303990L, 974375640283677828L}).toString()) <= 0)) {
            return false;
        }
        return true;
    }

    public void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }
}
