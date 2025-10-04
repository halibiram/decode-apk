package com.v2ray.ang.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.EncodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.RGBLuminanceSource;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GlobalHistogramBinarizer;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.QRCodeWriter;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0961xbc4021d9;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0010\u001a\u00020\fJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\fH\u0002R\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/v2ray/ang/util/QRCodeDecoder;", "", "<init>", "()V", "HINTS", "", "Lcom/google/zxing/DecodeHintType;", "getHINTS", "()Ljava/util/Map;", "createQRCode", "Landroid/graphics/Bitmap;", "text", "", "size", "", "syncDecodeQRCode", "picturePath", "bitmap", "getDecodeAbleBitmap", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class QRCodeDecoder {

    @NotNull
    private static final Map<DecodeHintType, Object> HINTS;

    @NotNull
    public static final QRCodeDecoder INSTANCE = new QRCodeDecoder();

    static {
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        HINTS = enumMap;
        BarcodeFormat barcodeFormat = BarcodeFormat.QR_CODE;
        ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(BarcodeFormat.AZTEC, BarcodeFormat.CODABAR, BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.DATA_MATRIX, BarcodeFormat.EAN_8, BarcodeFormat.EAN_13, BarcodeFormat.ITF, BarcodeFormat.MAXICODE, BarcodeFormat.PDF_417, barcodeFormat, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED, BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.UPC_EAN_EXTENSION);
        enumMap.put((EnumMap) DecodeHintType.TRY_HARDER, (DecodeHintType) barcodeFormat);
        enumMap.put((EnumMap) DecodeHintType.POSSIBLE_FORMATS, (DecodeHintType) arrayListOf);
        enumMap.put((EnumMap) DecodeHintType.CHARACTER_SET, (DecodeHintType) Charsets.UTF_8);
    }

    private QRCodeDecoder() {
    }

    public static /* synthetic */ Bitmap createQRCode$default(QRCodeDecoder qRCodeDecoder, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 800;
        }
        return qRCodeDecoder.createQRCode(str, i);
    }

    private final Bitmap getDecodeAbleBitmap(String picturePath) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(picturePath, options);
            int i2 = options.outHeight / HttpStatusCodesKt.HTTP_BAD_REQUEST;
            if (i2 > 0) {
                i = i2;
            }
            options.inSampleSize = i;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(picturePath, options);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    public final Bitmap createQRCode(@NotNull String text, int size) {
        Object m1764constructorimpl;
        int i;
        Intrinsics.checkNotNullParameter(text, new ObfuscatedString(new long[]{-3042373067169804012L, -6741064739409029361L}).toString());
        try {
            Result.Companion companion = Result.INSTANCE;
            BitMatrix encode = new QRCodeWriter().encode(text, BarcodeFormat.QR_CODE, size, size, AbstractC0961xbc4021d9.mapOf(TuplesKt.to(EncodeHintType.CHARACTER_SET, Charsets.UTF_8)));
            int i2 = size * size;
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                if (encode.get(i3 % size, i3 / size)) {
                    i = ViewCompat.MEASURED_STATE_MASK;
                } else {
                    i = -1;
                }
                iArr[i3] = i;
            }
            Bitmap createBitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
            createBitmap.setPixels(iArr, 0, size, 0, 0, size, size);
            m1764constructorimpl = Result.m1764constructorimpl(createBitmap);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1769isFailureimpl(m1764constructorimpl)) {
            m1764constructorimpl = null;
        }
        return (Bitmap) m1764constructorimpl;
    }

    @NotNull
    public final Map<DecodeHintType, Object> getHINTS() {
        return HINTS;
    }

    @Nullable
    public final String syncDecodeQRCode(@NotNull String picturePath) {
        Intrinsics.checkNotNullParameter(picturePath, new ObfuscatedString(new long[]{5125276217831183443L, -5252913981228265623L, 631420811138716543L}).toString());
        return syncDecodeQRCode(getDecodeAbleBitmap(picturePath));
    }

    @Nullable
    public final String syncDecodeQRCode(@Nullable Bitmap bitmap) {
        Object m1764constructorimpl;
        String text;
        if (bitmap == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            RGBLuminanceSource rGBLuminanceSource = new RGBLuminanceSource(bitmap.getWidth(), bitmap.getHeight(), iArr);
            QRCodeReader qRCodeReader = new QRCodeReader();
            try {
                text = qRCodeReader.decode(new BinaryBitmap(new GlobalHistogramBinarizer(rGBLuminanceSource)), AbstractC0961xbc4021d9.mapOf(TuplesKt.to(DecodeHintType.TRY_HARDER, Boolean.TRUE))).getText();
            } catch (NotFoundException unused) {
                text = qRCodeReader.decode(new BinaryBitmap(new GlobalHistogramBinarizer(rGBLuminanceSource.invert())), AbstractC0961xbc4021d9.mapOf(TuplesKt.to(DecodeHintType.TRY_HARDER, Boolean.TRUE))).getText();
            }
            m1764constructorimpl = Result.m1764constructorimpl(text);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m1769isFailureimpl(m1764constructorimpl) ? null : m1764constructorimpl);
    }
}
