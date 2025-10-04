package coil3.content;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import coil3.annotation.InternalCoilApi;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0080\b\u001a\u000e\u0010\u0018\u001a\u00020\u0002*\u0004\u0018\u00010\u0002H\u0007\" \u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028@X\u0080\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0018\u0010\u0007\u001a\u00020\u0001*\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\"\u0018\u0010\u000b\u001a\u00020\f*\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\r\"\u001e\u0010\u000e\u001a\u00020\f*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u000e\u0010\u0010\"\u0018\u0010\u0011\u001a\u00020\u0002*\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"bytesPerPixel", "", "Landroid/graphics/Bitmap$Config;", "getBytesPerPixel$annotations", "(Landroid/graphics/Bitmap$Config;)V", "getBytesPerPixel", "(Landroid/graphics/Bitmap$Config;)I", "allocationByteCountCompat", "Landroid/graphics/Bitmap;", "getAllocationByteCountCompat", "(Landroid/graphics/Bitmap;)I", "isImmutable", "", "(Landroid/graphics/Bitmap;)Z", "isHardware", "isHardware$annotations", "(Landroid/graphics/Bitmap$Config;)Z", "safeConfig", "getSafeConfig", "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;", "toDrawable", "Landroid/graphics/drawable/BitmapDrawable;", "context", "Landroid/content/Context;", "toSoftware", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nbitmaps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 bitmaps.kt\ncoil3/util/BitmapsKt\n+ 2 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,58:1\n27#2:59\n*S KotlinDebug\n*F\n+ 1 bitmaps.kt\ncoil3/util/BitmapsKt\n*L\n51#1:59\n*E\n"})
/* loaded from: classes.dex */
public final class BitmapsKt {
    public static final int getAllocationByteCountCompat(@NotNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                return getBytesPerPixel(bitmap.getConfig()) * bitmap.getHeight() * bitmap.getWidth();
            }
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    public static final int getBytesPerPixel(@Nullable Bitmap.Config config2) {
        Bitmap.Config config3;
        if (config2 == Bitmap.Config.ALPHA_8) {
            return 1;
        }
        if (config2 == Bitmap.Config.RGB_565 || config2 == Bitmap.Config.ARGB_4444) {
            return 2;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            config3 = Bitmap.Config.RGBA_F16;
            if (config2 == config3) {
                return 8;
            }
        }
        return 4;
    }

    public static /* synthetic */ void getBytesPerPixel$annotations(Bitmap.Config config2) {
    }

    @NotNull
    public static final Bitmap.Config getSafeConfig(@NotNull Bitmap bitmap) {
        Bitmap.Config config2 = bitmap.getConfig();
        if (config2 == null) {
            return Bitmap.Config.ARGB_8888;
        }
        return config2;
    }

    public static final boolean isHardware(@NotNull Bitmap.Config config2) {
        Bitmap.Config config3;
        if (Build.VERSION.SDK_INT >= 26) {
            config3 = Bitmap.Config.HARDWARE;
            if (config2 == config3) {
                return true;
            }
        }
        return false;
    }

    @InternalCoilApi
    public static /* synthetic */ void isHardware$annotations(Bitmap.Config config2) {
    }

    public static final boolean isImmutable(@NotNull Bitmap bitmap) {
        return !bitmap.isMutable();
    }

    @NotNull
    public static final BitmapDrawable toDrawable(@NotNull Bitmap bitmap, @NotNull Context context) {
        return new BitmapDrawable(context.getResources(), bitmap);
    }

    @InternalCoilApi
    @NotNull
    public static final Bitmap.Config toSoftware(@Nullable Bitmap.Config config2) {
        if (config2 == null || isHardware(config2)) {
            return Bitmap.Config.ARGB_8888;
        }
        return config2;
    }
}
