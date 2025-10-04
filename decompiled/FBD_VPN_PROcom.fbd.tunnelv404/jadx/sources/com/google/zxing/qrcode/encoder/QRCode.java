package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;
    private ErrorCorrectionLevel ecLevel;
    private int maskPattern = -1;
    private ByteMatrix matrix;
    private Mode mode;
    private Version version;

    public static boolean isValidMaskPattern(int i) {
        return i >= 0 && i < 8;
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.ecLevel;
    }

    public int getMaskPattern() {
        return this.maskPattern;
    }

    public ByteMatrix getMatrix() {
        return this.matrix;
    }

    public Mode getMode() {
        return this.mode;
    }

    public Version getVersion() {
        return this.version;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.ecLevel = errorCorrectionLevel;
    }

    public void setMaskPattern(int i) {
        this.maskPattern = i;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.matrix = byteMatrix;
    }

    public void setMode(Mode mode) {
        this.mode = mode;
    }

    public void setVersion(Version version) {
        this.version = version;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append(new ObfuscatedString(new long[]{-2754880949093017685L, -1340494556188303547L}).toString());
        sb.append(new ObfuscatedString(new long[]{3756363353960337396L, 2931424069294172827L}).toString());
        sb.append(this.mode);
        sb.append(new ObfuscatedString(new long[]{-5744136745939695082L, -140639520085989444L, -9024051193442398319L}).toString());
        sb.append(this.ecLevel);
        sb.append(new ObfuscatedString(new long[]{-1489855121743819595L, -3179089013063172046L, -3445309296948096756L}).toString());
        sb.append(this.version);
        sb.append(new ObfuscatedString(new long[]{-7052117503013541197L, 472216781585377940L, -719517664967436216L}).toString());
        sb.append(this.maskPattern);
        if (this.matrix == null) {
            sb.append(new ObfuscatedString(new long[]{1214745004059639078L, -5049333107090507315L, -2762668080864533840L}).toString());
        } else {
            sb.append(new ObfuscatedString(new long[]{4152691161404687758L, -8342624376153420733L, -5083333609962242948L}).toString());
            sb.append(this.matrix);
        }
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1757190755143899794L, 8805451161667847873L}), sb);
    }
}
