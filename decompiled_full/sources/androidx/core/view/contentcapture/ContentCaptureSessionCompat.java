package androidx.core.view.contentcapture;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.contentcapture.ContentCaptureSession;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewStructureCompat;
import androidx.core.view.autofill.AutofillIdCompat;
import defpackage.AbstractC0399xb43fcdaa;
import defpackage.AbstractC1040xbbbe0b3f;
import j$.util.Objects;
import java.util.List;

/* loaded from: classes.dex */
public class ContentCaptureSessionCompat {
    private static final String KEY_VIEW_TREE_APPEARED = "TREAT_AS_VIEW_TREE_APPEARED";
    private static final String KEY_VIEW_TREE_APPEARING = "TREAT_AS_VIEW_TREE_APPEARING";
    private final View mView;
    private final Object mWrappedObj;

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static Bundle getExtras(ViewStructure viewStructure) {
            return viewStructure.getExtras();
        }
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static AutofillId newAutofillId(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newAutofillId(autofillId, j);
        }

        public static ViewStructure newViewStructure(ContentCaptureSession contentCaptureSession, View view) {
            return contentCaptureSession.newViewStructure(view);
        }

        public static ViewStructure newVirtualViewStructure(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long j) {
            return contentCaptureSession.newVirtualViewStructure(autofillId, j);
        }

        public static void notifyViewAppeared(ContentCaptureSession contentCaptureSession, ViewStructure viewStructure) {
            contentCaptureSession.notifyViewAppeared(viewStructure);
        }

        public static void notifyViewTextChanged(ContentCaptureSession contentCaptureSession, AutofillId autofillId, CharSequence charSequence) {
            contentCaptureSession.notifyViewTextChanged(autofillId, charSequence);
        }

        public static void notifyViewsDisappeared(ContentCaptureSession contentCaptureSession, AutofillId autofillId, long[] jArr) {
            contentCaptureSession.notifyViewsDisappeared(autofillId, jArr);
        }
    }

    @RequiresApi(34)
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static void notifyViewsAppeared(ContentCaptureSession contentCaptureSession, List<ViewStructure> list) {
            contentCaptureSession.notifyViewsAppeared(list);
        }
    }

    @RequiresApi(29)
    private ContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        this.mWrappedObj = contentCaptureSession;
        this.mView = view;
    }

    @RequiresApi(29)
    public static ContentCaptureSessionCompat toContentCaptureSessionCompat(ContentCaptureSession contentCaptureSession, View view) {
        return new ContentCaptureSessionCompat(contentCaptureSession, view);
    }

    public AutofillId newAutofillId(long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            ContentCaptureSession m2994x3db60231 = AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj);
            AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            return Api29Impl.newAutofillId(m2994x3db60231, autofillId.toAutofillId(), j);
        }
        return null;
    }

    public ViewStructureCompat newVirtualViewStructure(AutofillId autofillId, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            return ViewStructureCompat.toViewStructureCompat(Api29Impl.newVirtualViewStructure(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), autofillId, j));
        }
        return null;
    }

    public void notifyViewTextChanged(AutofillId autofillId, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.notifyViewTextChanged(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), autofillId, charSequence);
        }
    }

    public void notifyViewsAppeared(List<ViewStructure> list) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            Api34Impl.notifyViewsAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), list);
            return;
        }
        if (i >= 29) {
            ViewStructure newViewStructure = Api29Impl.newViewStructure(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), this.mView);
            Api23Impl.getExtras(newViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
            Api29Impl.notifyViewAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), newViewStructure);
            for (int i2 = 0; i2 < list.size(); i2++) {
                Api29Impl.notifyViewAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), AbstractC1040xbbbe0b3f.m3703x9d12c1f4(list.get(i2)));
            }
            ViewStructure newViewStructure2 = Api29Impl.newViewStructure(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), this.mView);
            Api23Impl.getExtras(newViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
            Api29Impl.notifyViewAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), newViewStructure2);
        }
    }

    public void notifyViewsDisappeared(long[] jArr) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            ContentCaptureSession m2994x3db60231 = AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj);
            AutofillIdCompat autofillId = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId);
            Api29Impl.notifyViewsDisappeared(m2994x3db60231, autofillId.toAutofillId(), jArr);
            return;
        }
        if (i >= 29) {
            ViewStructure newViewStructure = Api29Impl.newViewStructure(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), this.mView);
            Api23Impl.getExtras(newViewStructure).putBoolean(KEY_VIEW_TREE_APPEARING, true);
            Api29Impl.notifyViewAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), newViewStructure);
            ContentCaptureSession m2994x3db602312 = AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj);
            AutofillIdCompat autofillId2 = ViewCompat.getAutofillId(this.mView);
            Objects.requireNonNull(autofillId2);
            Api29Impl.notifyViewsDisappeared(m2994x3db602312, autofillId2.toAutofillId(), jArr);
            ViewStructure newViewStructure2 = Api29Impl.newViewStructure(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), this.mView);
            Api23Impl.getExtras(newViewStructure2).putBoolean(KEY_VIEW_TREE_APPEARED, true);
            Api29Impl.notifyViewAppeared(AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj), newViewStructure2);
        }
    }

    @RequiresApi(29)
    public ContentCaptureSession toContentCaptureSession() {
        return AbstractC0399xb43fcdaa.m2994x3db60231(this.mWrappedObj);
    }
}
