package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\b\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0087\b\u001a&\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\b\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0086\b\u001a'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n¨\u0006\u001c"}, d2 = {"createBitmap", "Landroid/graphics/Bitmap;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "contains", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "get", "x", "y", "scale", "filter", "set", TypedValues.Custom.S_COLOR, "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BitmapKt {
    @NotNull
    public static final Bitmap applyCanvas(@NotNull Bitmap bitmap, @NotNull Function1<? super Canvas, Unit> function1) {
        function1.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(@NotNull Bitmap bitmap, @NotNull Point point) {
        int i;
        int width = bitmap.getWidth();
        int i2 = point.x;
        return i2 >= 0 && i2 < width && (i = point.y) >= 0 && i < bitmap.getHeight();
    }

    @NotNull
    public static final Bitmap createBitmap(int i, int i2, @NotNull Bitmap.Config config2) {
        return Bitmap.createBitmap(i, i2, config2);
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        return Bitmap.createBitmap(i, i2, config2);
    }

    public static final int get(@NotNull Bitmap bitmap, int i, int i2) {
        return bitmap.getPixel(i, i2);
    }

    @NotNull
    public static final Bitmap scale(@NotNull Bitmap bitmap, int i, int i2, boolean z) {
        return Bitmap.createScaledBitmap(bitmap, i, i2, z);
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            z = true;
        }
        return Bitmap.createScaledBitmap(bitmap, i, i2, z);
    }

    public static final void set(@NotNull Bitmap bitmap, int i, int i2, @ColorInt int i3) {
        bitmap.setPixel(i, i2, i3);
    }

    public static final boolean contains(@NotNull Bitmap bitmap, @NotNull PointF pointF) {
        float f = pointF.x;
        if (f >= 0.0f && f < bitmap.getWidth()) {
            float f2 = pointF.y;
            if (f2 >= 0.0f && f2 < bitmap.getHeight()) {
                return true;
            }
        }
        return false;
    }

    @RequiresApi(26)
    @NotNull
    public static final Bitmap createBitmap(int i, int i2, @NotNull Bitmap.Config config2, boolean z, @NotNull ColorSpace colorSpace) {
        Bitmap createBitmap;
        createBitmap = Bitmap.createBitmap(i, i2, config2, z, colorSpace);
        return createBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i, int i2, Bitmap.Config config2, boolean z, ColorSpace colorSpace, int i3, Object obj) {
        Bitmap createBitmap;
        ColorSpace.Named named;
        if ((i3 & 4) != 0) {
            config2 = Bitmap.Config.ARGB_8888;
        }
        if ((i3 & 8) != 0) {
            z = true;
        }
        if ((i3 & 16) != 0) {
            named = ColorSpace.Named.SRGB;
            colorSpace = ColorSpace.get(named);
        }
        createBitmap = Bitmap.createBitmap(i, i2, config2, z, colorSpace);
        return createBitmap;
    }
}
