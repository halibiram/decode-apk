package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import androidx.core.graphics.BitmapCompat;
import androidx.core.view.GravityCompat;
import j$.util.Objects;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class RoundedBitmapDrawableFactory {
    private static final String TAG = "RoundedBitmapDrawableFa";

    /* loaded from: classes.dex */
    public static class DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
        public DefaultRoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public void gravityCompatApply(int i, int i2, int i3, Rect rect, Rect rect2) {
            GravityCompat.apply(i, i2, i3, rect, rect2, 0);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public boolean hasMipMap() {
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null && BitmapCompat.hasMipMap(bitmap)) {
                return true;
            }
            return false;
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public void setMipMap(boolean z) {
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null) {
                BitmapCompat.setHasMipMap(bitmap, z);
                invalidateSelf();
            }
        }
    }

    private RoundedBitmapDrawableFactory() {
    }

    public static RoundedBitmapDrawable create(Resources resources, Bitmap bitmap) {
        return new RoundedBitmapDrawable21(resources, bitmap);
    }

    public static RoundedBitmapDrawable create(Resources resources, String str) {
        RoundedBitmapDrawable create = create(resources, BitmapFactory.decodeFile(str));
        create.getBitmap();
        return create;
    }

    public static RoundedBitmapDrawable create(Resources resources, InputStream inputStream) {
        RoundedBitmapDrawable create = create(resources, BitmapFactory.decodeStream(inputStream));
        if (create.getBitmap() == null) {
            Objects.toString(inputStream);
        }
        return create;
    }
}
