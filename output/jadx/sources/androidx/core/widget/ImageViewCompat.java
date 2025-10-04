package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class ImageViewCompat {

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static ColorStateList getImageTintList(ImageView imageView) {
            return imageView.getImageTintList();
        }

        public static PorterDuff.Mode getImageTintMode(ImageView imageView) {
            return imageView.getImageTintMode();
        }

        public static void setImageTintList(ImageView imageView, ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
        }

        public static void setImageTintMode(ImageView imageView, PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
        }
    }

    private ImageViewCompat() {
    }

    public static ColorStateList getImageTintList(ImageView imageView) {
        return Api21Impl.getImageTintList(imageView);
    }

    public static PorterDuff.Mode getImageTintMode(ImageView imageView) {
        return Api21Impl.getImageTintMode(imageView);
    }

    public static void setImageTintList(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        Api21Impl.setImageTintList(imageView, colorStateList);
        if (i == 21 && (drawable = imageView.getDrawable()) != null && Api21Impl.getImageTintList(imageView) != null) {
            if (drawable.isStateful()) {
                drawable.setState(imageView.getDrawableState());
            }
            imageView.setImageDrawable(drawable);
        }
    }

    public static void setImageTintMode(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        Api21Impl.setImageTintMode(imageView, mode);
        if (i == 21 && (drawable = imageView.getDrawable()) != null && Api21Impl.getImageTintList(imageView) != null) {
            if (drawable.isStateful()) {
                drawable.setState(imageView.getDrawableState());
            }
            imageView.setImageDrawable(drawable);
        }
    }
}
