package io.github.g00fy2.quickie.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.view.PreviewView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.github.g00fy2.quickie.QROverlayView;
import io.github.g00fy2.quickie.R;

/* loaded from: classes3.dex */
public final class QuickieScannerActivityBinding implements ViewBinding {

    @NonNull
    public final QROverlayView overlayView;

    @NonNull
    public final PreviewView previewView;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final FrameLayout f1139xfbe0c504;

    public QuickieScannerActivityBinding(FrameLayout frameLayout, QROverlayView qROverlayView, PreviewView previewView) {
        this.f1139xfbe0c504 = frameLayout;
        this.overlayView = qROverlayView;
        this.previewView = previewView;
    }

    @NonNull
    public static QuickieScannerActivityBinding bind(@NonNull View view) {
        int i = R.id.overlay_view;
        QROverlayView qROverlayView = (QROverlayView) ViewBindings.findChildViewById(view, i);
        if (qROverlayView != null) {
            i = R.id.preview_view;
            PreviewView previewView = (PreviewView) ViewBindings.findChildViewById(view, i);
            if (previewView != null) {
                return new QuickieScannerActivityBinding((FrameLayout) view, qROverlayView, previewView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static QuickieScannerActivityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static QuickieScannerActivityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.quickie_scanner_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f1139xfbe0c504;
    }
}
