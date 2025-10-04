package coil3.decode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.exifinterface.media.ExifInterface;
import coil3.content.BitmapsKt;
import defpackage.C0722x7db4e0a0;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcoil3/decode/ExifUtils;", "", "", "mimeType", "Lokio/BufferedSource;", "source", "Lcoil3/decode/ExifOrientationStrategy;", "strategy", "Lcoil3/decode/ExifData;", "getExifData", "(Ljava/lang/String;Lokio/BufferedSource;Lcoil3/decode/ExifOrientationStrategy;)Lcoil3/decode/ExifData;", "Landroid/graphics/Bitmap;", "inBitmap", "exifData", "reverseTransformations", "(Landroid/graphics/Bitmap;Lcoil3/decode/ExifData;)Landroid/graphics/Bitmap;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExifUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExifUtils.kt\ncoil3/decode/ExifUtils\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,114:1\n89#2:115\n89#2:116\n42#2,3:117\n*S KotlinDebug\n*F\n+ 1 ExifUtils.kt\ncoil3/decode/ExifUtils\n*L\n60#1:115\n62#1:116\n65#1:117,3\n*E\n"})
/* loaded from: classes.dex */
public final class ExifUtils {

    @NotNull
    public static final ExifUtils INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Paint f518xfbe0c504 = new Paint(3);

    @NotNull
    public final ExifData getExifData(@Nullable String mimeType, @NotNull BufferedSource source, @NotNull ExifOrientationStrategy strategy) {
        if (strategy.supports(mimeType, source)) {
            ExifInterface exifInterface = new ExifInterface(new C0722x7db4e0a0(source.peek().inputStream()));
            return new ExifData(exifInterface.isFlipped(), exifInterface.getRotationDegrees());
        }
        return ExifData.NONE;
    }

    @NotNull
    public final Bitmap reverseTransformations(@NotNull Bitmap inBitmap, @NotNull ExifData exifData) {
        Bitmap createBitmap;
        if (!exifData.getIsFlipped() && !ExifUtilsKt.isRotated(exifData)) {
            return inBitmap;
        }
        Matrix matrix = new Matrix();
        float width = inBitmap.getWidth() / 2.0f;
        float height = inBitmap.getHeight() / 2.0f;
        if (exifData.getIsFlipped()) {
            matrix.postScale(-1.0f, 1.0f, width, height);
        }
        if (ExifUtilsKt.isRotated(exifData)) {
            matrix.postRotate(exifData.getRotationDegrees(), width, height);
        }
        RectF rectF = new RectF(0.0f, 0.0f, inBitmap.getWidth(), inBitmap.getHeight());
        matrix.mapRect(rectF);
        float f = rectF.left;
        if (f != 0.0f || rectF.top != 0.0f) {
            matrix.postTranslate(-f, -rectF.top);
        }
        if (ExifUtilsKt.isSwapped(exifData)) {
            createBitmap = Bitmap.createBitmap(inBitmap.getHeight(), inBitmap.getWidth(), BitmapsKt.getSafeConfig(inBitmap));
        } else {
            createBitmap = Bitmap.createBitmap(inBitmap.getWidth(), inBitmap.getHeight(), BitmapsKt.getSafeConfig(inBitmap));
        }
        new Canvas(createBitmap).drawBitmap(inBitmap, matrix, f518xfbe0c504);
        inBitmap.recycle();
        return createBitmap;
    }
}
