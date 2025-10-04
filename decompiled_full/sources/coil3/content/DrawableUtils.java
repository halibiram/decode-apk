package coil3.content;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.WorkerThread;
import coil3.decode.DecodeUtils;
import coil3.size.Scale;
import coil3.size.Size;
import defpackage.AbstractC0975x7c3950e5;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001J7\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcoil3/util/DrawableUtils;", "", "Landroid/graphics/drawable/Drawable;", "drawable", "Landroid/graphics/Bitmap$Config;", "config", "Lcoil3/size/Size;", "size", "Lcoil3/size/Scale;", "scale", "", "allowInexactSize", "Landroid/graphics/Bitmap;", "convertToBitmap", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil3/size/Size;Lcoil3/size/Scale;Z)Landroid/graphics/Bitmap;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDrawableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableUtils.kt\ncoil3/util/DrawableUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 collections.kt\ncoil3/util/CollectionsKt\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,110:1\n1#2:111\n23#3,3:112\n23#3,3:147\n89#4:115\n37#5,31:116\n*S KotlinDebug\n*F\n+ 1 DrawableUtils.kt\ncoil3/util/DrawableUtils\n*L\n51#1:112,3\n93#1:147,3\n68#1:115\n70#1:116,31\n*E\n"})
/* loaded from: classes.dex */
public final class DrawableUtils {

    @NotNull
    public static final DrawableUtils INSTANCE = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003e, code lost:
    
        if (coil3.decode.DecodeUtils.computeSizeMultiplier(r0.getWidth(), r0.getHeight(), coil3.content.IntPair.m976getFirstimpl(r1), coil3.content.IntPair.m977getSecondimpl(r1), r9) == 1.0d) goto L10;
     */
    @WorkerThread
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bitmap convertToBitmap(@NotNull Drawable drawable, @NotNull Bitmap.Config config2, @NotNull Size size, @NotNull Scale scale, boolean allowInexactSize) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap.getConfig() == BitmapsKt.toSoftware(config2)) {
                if (!allowInexactSize) {
                    long m929computeDstSizesEdh43o = DecodeUtils.m929computeDstSizesEdh43o(bitmap.getWidth(), bitmap.getHeight(), size, scale, Size.ORIGINAL);
                }
                return bitmap;
            }
        }
        Drawable mutate = drawable.mutate();
        int width = Utils_androidKt.getWidth(mutate);
        int i = 512;
        if (width <= 0) {
            width = 512;
        }
        int height = Utils_androidKt.getHeight(mutate);
        if (height > 0) {
            i = height;
        }
        long m929computeDstSizesEdh43o2 = DecodeUtils.m929computeDstSizesEdh43o(width, i, size, scale, Size.ORIGINAL);
        double computeSizeMultiplier = DecodeUtils.computeSizeMultiplier(width, i, IntPair.m976getFirstimpl(m929computeDstSizesEdh43o2), IntPair.m977getSecondimpl(m929computeDstSizesEdh43o2), scale);
        int roundToInt = AbstractC0975x7c3950e5.roundToInt(width * computeSizeMultiplier);
        int roundToInt2 = AbstractC0975x7c3950e5.roundToInt(computeSizeMultiplier * i);
        Bitmap createBitmap = Bitmap.createBitmap(roundToInt, roundToInt2, BitmapsKt.toSoftware(config2));
        Rect bounds = mutate.getBounds();
        int i2 = bounds.left;
        int i3 = bounds.top;
        int i4 = bounds.right;
        int i5 = bounds.bottom;
        mutate.setBounds(0, 0, roundToInt, roundToInt2);
        mutate.draw(new Canvas(createBitmap));
        mutate.setBounds(i2, i3, i4, i5);
        return createBitmap;
    }
}
