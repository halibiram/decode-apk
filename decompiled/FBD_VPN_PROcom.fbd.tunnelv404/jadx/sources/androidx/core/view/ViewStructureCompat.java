package androidx.core.view;

import android.os.Build;
import android.view.ViewStructure;
import androidx.annotation.RequiresApi;
import defpackage.AbstractC1040xbbbe0b3f;

/* loaded from: classes.dex */
public class ViewStructureCompat {
    private final Object mWrappedObj;

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void setClassName(ViewStructure viewStructure, String str) {
            viewStructure.setClassName(str);
        }

        public static void setContentDescription(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setContentDescription(charSequence);
        }

        public static void setDimens(ViewStructure viewStructure, int i, int i2, int i3, int i4, int i5, int i6) {
            viewStructure.setDimens(i, i2, i3, i4, i5, i6);
        }

        public static void setText(ViewStructure viewStructure, CharSequence charSequence) {
            viewStructure.setText(charSequence);
        }
    }

    private ViewStructureCompat(ViewStructure viewStructure) {
        this.mWrappedObj = viewStructure;
    }

    @RequiresApi(23)
    public static ViewStructureCompat toViewStructureCompat(ViewStructure viewStructure) {
        return new ViewStructureCompat(viewStructure);
    }

    public void setClassName(String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setClassName(AbstractC1040xbbbe0b3f.m3703x9d12c1f4(this.mWrappedObj), str);
        }
    }

    public void setContentDescription(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setContentDescription(AbstractC1040xbbbe0b3f.m3703x9d12c1f4(this.mWrappedObj), charSequence);
        }
    }

    public void setDimens(int i, int i2, int i3, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setDimens(AbstractC1040xbbbe0b3f.m3703x9d12c1f4(this.mWrappedObj), i, i2, i3, i4, i5, i6);
        }
    }

    public void setText(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.setText(AbstractC1040xbbbe0b3f.m3703x9d12c1f4(this.mWrappedObj), charSequence);
        }
    }

    @RequiresApi(23)
    public ViewStructure toViewStructure() {
        return AbstractC1040xbbbe0b3f.m3703x9d12c1f4(this.mWrappedObj);
    }
}
