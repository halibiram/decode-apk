package com.journeyapps.barcodescanner;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.ResultPoint;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;

/* loaded from: classes3.dex */
public class SourceData {
    private Rect cropRect;
    private RawImageData data;
    private int imageFormat;
    private boolean previewMirrored;
    private int rotation;
    private int scalingFactor = 1;

    public SourceData(byte[] bArr, int i, int i2, int i3, int i4) {
        this.data = new RawImageData(bArr, i, i2);
        this.rotation = i4;
        this.imageFormat = i3;
        if (i * i2 <= bArr.length) {
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5991246521543495032L, -8272046891259953529L, -8075252161590858574L, -7172072391586046837L, 6617127950831459333L, -134209538269295839L, -5582791561017536561L}).toString() + i + new ObfuscatedString(new long[]{-4696782061000273734L, -8829420241771679462L}).toString() + i2 + new ObfuscatedString(new long[]{7940196879446509648L, -1187521763974801036L}).toString() + bArr.length);
    }

    public PlanarYUVLuminanceSource createSource() {
        RawImageData cropAndScale = this.data.rotateCameraPreview(this.rotation).cropAndScale(this.cropRect, this.scalingFactor);
        return new PlanarYUVLuminanceSource(cropAndScale.getData(), cropAndScale.getWidth(), cropAndScale.getHeight(), 0, 0, cropAndScale.getWidth(), cropAndScale.getHeight(), false);
    }

    public Bitmap getBitmap() {
        return getBitmap(1);
    }

    public Rect getCropRect() {
        return this.cropRect;
    }

    public byte[] getData() {
        return this.data.getData();
    }

    public int getDataHeight() {
        return this.data.getHeight();
    }

    public int getDataWidth() {
        return this.data.getWidth();
    }

    public int getImageFormat() {
        return this.imageFormat;
    }

    public int getScalingFactor() {
        return this.scalingFactor;
    }

    public boolean isPreviewMirrored() {
        return this.previewMirrored;
    }

    public boolean isRotated() {
        if (this.rotation % 180 != 0) {
            return true;
        }
        return false;
    }

    public void setCropRect(Rect rect) {
        this.cropRect = rect;
    }

    public void setPreviewMirrored(boolean z) {
        this.previewMirrored = z;
    }

    public void setScalingFactor(int i) {
        this.scalingFactor = i;
    }

    public ResultPoint translateResultPoint(ResultPoint resultPoint) {
        float x = (resultPoint.getX() * this.scalingFactor) + this.cropRect.left;
        float y = (resultPoint.getY() * this.scalingFactor) + this.cropRect.top;
        if (this.previewMirrored) {
            x = this.data.getWidth() - x;
        }
        return new ResultPoint(x, y);
    }

    public Bitmap getBitmap(int i) {
        return getBitmap(this.cropRect, i);
    }

    public Bitmap getBitmap(Rect rect, int i) {
        if (rect == null) {
            rect = new Rect(0, 0, this.data.getWidth(), this.data.getHeight());
        } else if (isRotated()) {
            rect = new Rect(rect.top, rect.left, rect.bottom, rect.right);
        }
        YuvImage yuvImage = new YuvImage(this.data.getData(), this.imageFormat, this.data.getWidth(), this.data.getHeight(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        if (this.rotation == 0) {
            return decodeByteArray;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(this.rotation);
        return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, false);
    }
}
