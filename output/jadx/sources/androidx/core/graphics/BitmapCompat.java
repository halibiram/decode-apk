package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.ReplaceWith;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
public final class BitmapCompat {

    @RequiresApi(27)
    /* loaded from: classes.dex */
    public static class Api27Impl {
        private Api27Impl() {
        }

        public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config2 = Api31Impl.getHardwareBitmapConfig(bitmap);
                }
                return bitmap.copy(config2, true);
            }
            return bitmap;
        }

        public static Bitmap createBitmapWithSourceColorspace(int i, int i2, Bitmap bitmap, boolean z) {
            Bitmap.Config config2 = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z && !bitmap.getColorSpace().equals(colorSpace2)) {
                config2 = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config2 = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config2 = Api31Impl.getHardwareBitmapConfig(bitmap);
                }
            }
            return Bitmap.createBitmap(i, i2, config2, bitmap.hasAlpha(), colorSpace);
        }

        public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            ColorSpace colorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(colorSpace)) {
                return true;
            }
            return false;
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void setPaintBlendMode(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static class Api31Impl {
        private Api31Impl() {
        }

        public static Bitmap.Config getHardwareBitmapConfig(Bitmap bitmap) {
            if (bitmap.getHardwareBuffer().getFormat() == 22) {
                return Bitmap.Config.RGBA_F16;
            }
            return Bitmap.Config.ARGB_8888;
        }
    }

    private BitmapCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a9, code lost:
    
        if (androidx.core.graphics.BitmapCompat.Api27Impl.isAlreadyF16AndLinear(r11) == false) goto L124;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap createScaledBitmap(Bitmap bitmap, int i, int i2, Rect rect, boolean z) {
        Bitmap bitmap2;
        int width;
        int height;
        int i3;
        int i4;
        Paint paint;
        double floor;
        double floor2;
        Paint paint2;
        Bitmap bitmap3;
        int i5;
        boolean z2;
        boolean z3;
        Rect rect2;
        Bitmap bitmap4;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        if (i > 0 && i2 > 0) {
            if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
                throw new IllegalArgumentException("srcRect must be contained by srcBm!");
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 27) {
                bitmap2 = Api27Impl.copyBitmapIfHardware(bitmap);
            } else {
                bitmap2 = bitmap;
            }
            if (rect != null) {
                width = rect.width();
            } else {
                width = bitmap.getWidth();
            }
            if (rect != null) {
                height = rect.height();
            } else {
                height = bitmap.getHeight();
            }
            float f = i / width;
            float f2 = i2 / height;
            if (rect != null) {
                i3 = rect.left;
            } else {
                i3 = 0;
            }
            if (rect != null) {
                i4 = rect.top;
            } else {
                i4 = 0;
            }
            if (i3 == 0 && i4 == 0 && i == bitmap.getWidth() && i2 == bitmap.getHeight()) {
                if (bitmap.isMutable() && bitmap == bitmap2) {
                    return bitmap.copy(bitmap.getConfig(), true);
                }
                return bitmap2;
            }
            Paint paint3 = new Paint(1);
            paint3.setFilterBitmap(true);
            if (i10 >= 29) {
                Api29Impl.setPaintBlendMode(paint3);
            } else {
                paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
            }
            if (width == i && height == i2) {
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, bitmap2.getConfig());
                new Canvas(createBitmap).drawBitmap(bitmap2, -i3, -i4, paint3);
                return createBitmap;
            }
            double log = Math.log(2.0d);
            if (f > 1.0f) {
                paint = paint3;
                floor = Math.ceil(Math.log(f) / log);
            } else {
                paint = paint3;
                floor = Math.floor(Math.log(f) / log);
            }
            int i11 = (int) floor;
            if (f2 > 1.0f) {
                floor2 = Math.ceil(Math.log(f2) / log);
            } else {
                floor2 = Math.floor(Math.log(f2) / log);
            }
            int i12 = (int) floor2;
            if (z && i10 >= 27 && !Api27Impl.isAlreadyF16AndLinear(bitmap)) {
                if (i11 > 0) {
                    i8 = sizeAtStep(width, i, 1, i11);
                } else {
                    i8 = width;
                }
                if (i12 > 0) {
                    i9 = sizeAtStep(height, i2, 1, i12);
                } else {
                    i9 = height;
                }
                Bitmap createBitmapWithSourceColorspace = Api27Impl.createBitmapWithSourceColorspace(i8, i9, bitmap, true);
                paint2 = paint;
                new Canvas(createBitmapWithSourceColorspace).drawBitmap(bitmap2, -i3, -i4, paint2);
                i4 = 0;
                i3 = 0;
                i5 = 1;
                bitmap3 = bitmap2;
                bitmap2 = createBitmapWithSourceColorspace;
            } else {
                paint2 = paint;
                bitmap3 = null;
                i5 = 0;
            }
            Rect rect3 = new Rect(i3, i4, width, height);
            Rect rect4 = new Rect();
            int i13 = i11;
            int i14 = i12;
            while (true) {
                if (i13 == 0 && i14 == 0) {
                    break;
                }
                if (i13 < 0) {
                    i13++;
                } else if (i13 > 0) {
                    i13--;
                }
                if (i14 < 0) {
                    i14++;
                } else if (i14 > 0) {
                    i14--;
                }
                int i15 = i14;
                Paint paint4 = paint2;
                Rect rect5 = rect3;
                rect4.set(0, 0, sizeAtStep(width, i, i13, i11), sizeAtStep(height, i2, i15, i12));
                if (i13 == 0 && i15 == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (bitmap3 != null && bitmap3.getWidth() == i && bitmap3.getHeight() == i2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (bitmap3 != null && bitmap3 != bitmap) {
                    if (z) {
                        rect2 = rect4;
                        if (Build.VERSION.SDK_INT >= 27) {
                        }
                    } else {
                        rect2 = rect4;
                    }
                    if (!z2 || (z3 && i5 == 0)) {
                        bitmap4 = bitmap3;
                        Rect rect6 = rect2;
                        new Canvas(bitmap4).drawBitmap(bitmap2, rect5, rect6, paint4);
                        rect5.set(rect6);
                        i14 = i15;
                        Bitmap bitmap5 = bitmap2;
                        bitmap2 = bitmap4;
                        rect4 = rect6;
                        rect3 = rect5;
                        paint2 = paint4;
                        bitmap3 = bitmap5;
                    }
                } else {
                    rect2 = rect4;
                }
                if (bitmap3 != bitmap && bitmap3 != null) {
                    bitmap3.recycle();
                }
                if (i13 > 0) {
                    i6 = i5;
                } else {
                    i6 = i13;
                }
                int sizeAtStep = sizeAtStep(width, i, i6, i11);
                if (i15 > 0) {
                    i7 = i5;
                } else {
                    i7 = i15;
                }
                int sizeAtStep2 = sizeAtStep(height, i2, i7, i12);
                if (Build.VERSION.SDK_INT >= 27) {
                    if (z && !z2) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    bitmap4 = Api27Impl.createBitmapWithSourceColorspace(sizeAtStep, sizeAtStep2, bitmap, z4);
                } else {
                    bitmap4 = Bitmap.createBitmap(sizeAtStep, sizeAtStep2, bitmap2.getConfig());
                }
                Rect rect62 = rect2;
                new Canvas(bitmap4).drawBitmap(bitmap2, rect5, rect62, paint4);
                rect5.set(rect62);
                i14 = i15;
                Bitmap bitmap52 = bitmap2;
                bitmap2 = bitmap4;
                rect4 = rect62;
                rect3 = rect5;
                paint2 = paint4;
                bitmap3 = bitmap52;
            }
            if (bitmap3 != bitmap && bitmap3 != null) {
                bitmap3.recycle();
            }
            return bitmap2;
        }
        throw new IllegalArgumentException("dstW and dstH must be > 0!");
    }

    @ReplaceWith(expression = "bitmap.getAllocationByteCount()")
    @Deprecated
    public static int getAllocationByteCount(Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    @ReplaceWith(expression = "bitmap.hasMipMap()")
    @Deprecated
    public static boolean hasMipMap(Bitmap bitmap) {
        return bitmap.hasMipMap();
    }

    @ReplaceWith(expression = "bitmap.setHasMipMap(hasMipMap)")
    @Deprecated
    public static void setHasMipMap(Bitmap bitmap, boolean z) {
        bitmap.setHasMipMap(z);
    }

    @VisibleForTesting
    public static int sizeAtStep(int i, int i2, int i3, int i4) {
        return i3 == 0 ? i2 : i3 > 0 ? i * (1 << (i4 - i3)) : i2 << ((-i3) - 1);
    }
}
