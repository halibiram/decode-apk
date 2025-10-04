package androidx.core.graphics;

import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public final class Insets {
    public static final Insets NONE = new Insets(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;
    public final int top;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static android.graphics.Insets of(int i, int i2, int i3, int i4) {
            return android.graphics.Insets.of(i, i2, i3, i4);
        }
    }

    private Insets(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    public static Insets add(Insets insets, Insets insets2) {
        return of(insets.left + insets2.left, insets.top + insets2.top, insets.right + insets2.right, insets.bottom + insets2.bottom);
    }

    public static Insets max(Insets insets, Insets insets2) {
        return of(Math.max(insets.left, insets2.left), Math.max(insets.top, insets2.top), Math.max(insets.right, insets2.right), Math.max(insets.bottom, insets2.bottom));
    }

    public static Insets min(Insets insets, Insets insets2) {
        return of(Math.min(insets.left, insets2.left), Math.min(insets.top, insets2.top), Math.min(insets.right, insets2.right), Math.min(insets.bottom, insets2.bottom));
    }

    public static Insets of(int i, int i2, int i3, int i4) {
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return NONE;
        }
        return new Insets(i, i2, i3, i4);
    }

    public static Insets subtract(Insets insets, Insets insets2) {
        return of(insets.left - insets2.left, insets.top - insets2.top, insets.right - insets2.right, insets.bottom - insets2.bottom);
    }

    @RequiresApi(api = 29)
    public static Insets toCompatInsets(android.graphics.Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return of(i, i2, i3, i4);
    }

    @RequiresApi(api = 29)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Insets wrap(android.graphics.Insets insets) {
        return toCompatInsets(insets);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Insets.class != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        if (this.bottom == insets.bottom && this.left == insets.left && this.right == insets.right && this.top == insets.top) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    @RequiresApi(29)
    public android.graphics.Insets toPlatformInsets() {
        return Api29Impl.of(this.left, this.top, this.right, this.bottom);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.left);
        sb.append(", top=");
        sb.append(this.top);
        sb.append(", right=");
        sb.append(this.right);
        sb.append(", bottom=");
        return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.bottom, '}');
    }

    public static Insets of(Rect rect) {
        return of(rect.left, rect.top, rect.right, rect.bottom);
    }
}
