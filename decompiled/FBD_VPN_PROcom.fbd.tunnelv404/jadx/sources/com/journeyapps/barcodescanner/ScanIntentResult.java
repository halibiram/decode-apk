package com.journeyapps.barcodescanner;

import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class ScanIntentResult {
    private final String barcodeImagePath;
    private final String contents;
    private final String errorCorrectionLevel;
    private final String formatName;
    private final Integer orientation;
    private final Intent originalIntent;
    private final byte[] rawBytes;

    public ScanIntentResult() {
        this(null, null, null, null, null, null, null);
    }

    public static ScanIntentResult parseActivityResult(int i, Intent intent) {
        Integer valueOf;
        if (i == -1) {
            String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{-58297971396229620L, -5556458378313227057L, 7790352871596011877L}).toString());
            String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{-8040419903029275862L, -804314776736709504L, -3826977094466209413L, -985871868682285142L}).toString());
            byte[] byteArrayExtra = intent.getByteArrayExtra(new ObfuscatedString(new long[]{-94816316303012408L, 100444345618974476L, -1282056896314106254L, -1235269710727633716L}).toString());
            int intExtra = intent.getIntExtra(new ObfuscatedString(new long[]{-7492831371120956031L, 1940377573729154629L, -3315296343206498435L, -7427737067050638920L}).toString(), Integer.MIN_VALUE);
            if (intExtra == Integer.MIN_VALUE) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(intExtra);
            }
            return new ScanIntentResult(stringExtra, stringExtra2, byteArrayExtra, valueOf, intent.getStringExtra(new ObfuscatedString(new long[]{-608502033693901389L, 6879598927367838753L, 1170365879805629049L, 377028007817395675L, -3104079327043853435L, 658693828336797956L}).toString()), intent.getStringExtra(new ObfuscatedString(new long[]{5401245615810409656L, -6553214313695230325L, 6104712153227961451L, 2396539132719233714L}).toString()), intent);
        }
        return new ScanIntentResult(intent);
    }

    public String getBarcodeImagePath() {
        return this.barcodeImagePath;
    }

    public String getContents() {
        return this.contents;
    }

    public String getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public String getFormatName() {
        return this.formatName;
    }

    public Integer getOrientation() {
        return this.orientation;
    }

    public Intent getOriginalIntent() {
        return this.originalIntent;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public String toString() {
        int length;
        byte[] bArr = this.rawBytes;
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        return new ObfuscatedString(new long[]{8827597532307638725L, -2787661877143232577L}).toString() + this.formatName + '\n' + new ObfuscatedString(new long[]{7263003619781696885L, 1130350199491915004L, 239089386154439466L}).toString() + this.contents + '\n' + new ObfuscatedString(new long[]{8928446604605805919L, 5424382800522852279L, -3142872584779133387L}).toString() + length + new ObfuscatedString(new long[]{-2794473392966554820L, -730988943746285792L, -1947074043849094613L, -4058769610319790589L}).toString() + this.orientation + '\n' + new ObfuscatedString(new long[]{-9176123379282745997L, 8828082677237580022L, -3285827139917898376L}).toString() + this.errorCorrectionLevel + '\n' + new ObfuscatedString(new long[]{-962870549260788380L, 7762399212625807789L, 1513209668130101244L}).toString() + this.barcodeImagePath + '\n' + new ObfuscatedString(new long[]{-2566615505413157146L, 4419565316354327026L, -4849026041290380623L, -8029077958054512337L}).toString() + this.originalIntent + '\n';
    }

    public ScanIntentResult(Intent intent) {
        this(null, null, null, null, null, null, intent);
    }

    public ScanIntentResult(String str, String str2, byte[] bArr, Integer num, String str3, String str4, Intent intent) {
        this.contents = str;
        this.formatName = str2;
        this.rawBytes = bArr;
        this.orientation = num;
        this.errorCorrectionLevel = str3;
        this.barcodeImagePath = str4;
        this.originalIntent = intent;
    }
}
