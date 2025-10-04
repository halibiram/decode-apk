package io.github.g00fy2.quickie.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.github.g00fy2.quickie.R;

/* loaded from: classes3.dex */
public final class QuickieOverlayViewBinding implements ViewBinding {

    @NonNull
    public final AppCompatImageView closeImageView;

    @NonNull
    public final AppCompatImageView galleryImageView;

    @NonNull
    public final LinearLayout progressView;

    @NonNull
    public final AppCompatTextView titleTextView;

    @NonNull
    public final AppCompatImageView torchImageView;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final View f1138xfbe0c504;

    public QuickieOverlayViewBinding(View view, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView3) {
        this.f1138xfbe0c504 = view;
        this.closeImageView = appCompatImageView;
        this.galleryImageView = appCompatImageView2;
        this.progressView = linearLayout;
        this.titleTextView = appCompatTextView;
        this.torchImageView = appCompatImageView3;
    }

    @NonNull
    public static QuickieOverlayViewBinding bind(@NonNull View view) {
        int i = R.id.close_image_view;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
        if (appCompatImageView != null) {
            i = R.id.gallery_image_view;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
            if (appCompatImageView2 != null) {
                i = R.id.progress_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.title_text_view;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = R.id.torch_image_view;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                        if (appCompatImageView3 != null) {
                            return new QuickieOverlayViewBinding(view, appCompatImageView, appCompatImageView2, linearLayout, appCompatTextView, appCompatImageView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static QuickieOverlayViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup != null) {
            layoutInflater.inflate(R.layout.quickie_overlay_view, viewGroup);
            return bind(viewGroup);
        }
        throw new NullPointerException("parent");
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f1138xfbe0c504;
    }
}
