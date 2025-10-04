package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzep;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbjq;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class NativeAdView extends FrameLayout {

    @NotOnlyInitialized
    private final FrameLayout zza;

    @Nullable
    @NotOnlyInitialized
    private final zzbjq zzb;

    public NativeAdView(@NonNull Context context) {
        super(context);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    @Nullable
    @RequiresNonNull({"overlayFrame"})
    private final zzbjq zze() {
        if (isInEditMode()) {
            return null;
        }
        FrameLayout frameLayout = this.zza;
        return zzay.zza().zzh(frameLayout.getContext(), this, frameLayout);
    }

    private final void zzf(String str, @Nullable View view) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == null) {
            return;
        }
        try {
            zzbjqVar.zzbE(str, ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2946052488268173271L, -7008598646508551044L, 8972566018606150350L, 7311101759232559633L, 7593314061989560259L, 7140990071631194025L}).toString(), e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@NonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zza;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == null) {
            return;
        }
        try {
            zzbjqVar.zzc();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1172700627071520025L, -2708207019002998566L, -1293839438272722221L, -2491324201113477227L, -2276761129510273354L}).toString(), e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@NonNull MotionEvent motionEvent) {
        if (this.zzb != null) {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzkU)).booleanValue()) {
                try {
                    this.zzb.zzd(ObjectWrapper.wrap(motionEvent));
                } catch (RemoteException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{725834815048232484L, 7711638034848489804L, -6421002918805790764L, 7540892672327953811L, 3151894570759659194L, -9064913055997679821L, -5858429634585750025L}).toString(), e);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public AdChoicesView getAdChoicesView() {
        View zza = zza(new ObfuscatedString(new long[]{879170786509460590L, -3509764016303956874L}).toString());
        if (zza instanceof AdChoicesView) {
            return (AdChoicesView) zza;
        }
        return null;
    }

    @Nullable
    public final View getAdvertiserView() {
        return zza(new ObfuscatedString(new long[]{-2389987071027686747L, 184945150536361082L}).toString());
    }

    @Nullable
    public final View getBodyView() {
        return zza(new ObfuscatedString(new long[]{3054820458218031545L, -431964920117084801L}).toString());
    }

    @Nullable
    public final View getCallToActionView() {
        return zza(new ObfuscatedString(new long[]{2651169916574414647L, -8172473412084718131L}).toString());
    }

    @Nullable
    public final View getHeadlineView() {
        return zza(new ObfuscatedString(new long[]{8842203976595152919L, 8248346125968925823L}).toString());
    }

    @Nullable
    public final View getIconView() {
        return zza(new ObfuscatedString(new long[]{-6331058347575723191L, -6025207061014690303L}).toString());
    }

    @Nullable
    public final View getImageView() {
        return zza(new ObfuscatedString(new long[]{8265474633045179638L, -4555283503544102027L}).toString());
    }

    @Nullable
    public final MediaView getMediaView() {
        View zza = zza(new ObfuscatedString(new long[]{-7319838580202559869L, 472567537421710043L}).toString());
        if (zza instanceof MediaView) {
            return (MediaView) zza;
        }
        if (zza != null) {
            zzcec.zze(new ObfuscatedString(new long[]{2723698548330472750L, -8569250625424157928L, 5763010644061103925L, 3062393499820293599L, -421603089554558378L, 4246395656813534621L}).toString());
            return null;
        }
        return null;
    }

    @Nullable
    public final View getPriceView() {
        return zza(new ObfuscatedString(new long[]{-968621158071197305L, -1430799267507264261L}).toString());
    }

    @Nullable
    public final View getStarRatingView() {
        return zza(new ObfuscatedString(new long[]{-7506409051109250087L, -4467377858564449367L}).toString());
    }

    @Nullable
    public final View getStoreView() {
        return zza(new ObfuscatedString(new long[]{-3515255676512374816L, 823002735568558281L}).toString());
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == null) {
            return;
        }
        try {
            zzbjqVar.zze(ObjectWrapper.wrap(view), i);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3732736940498019834L, 710317716381344630L, -2465542633841480751L, -4764316625150811028L, 4720727730523165488L, -1828911577735839054L, 6530086171653770986L}).toString(), e);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@NonNull View view) {
        if (this.zza == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(@Nullable AdChoicesView adChoicesView) {
        zzf(new ObfuscatedString(new long[]{-3968782331202072571L, 2188455233586572567L}).toString(), adChoicesView);
    }

    public final void setAdvertiserView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-7250205980725957687L, -1613069180827196417L}).toString(), view);
    }

    public final void setBodyView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-2291222626039308990L, -7781461995261675149L}).toString(), view);
    }

    public final void setCallToActionView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-5190602505918726906L, -1284298073850697129L}).toString(), view);
    }

    public final void setClickConfirmingView(@Nullable View view) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == null) {
            return;
        }
        try {
            zzbjqVar.zzbF(ObjectWrapper.wrap(view));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2246439349349351436L, -3986827386256337105L, -8208349014193750505L, 4575935071013688378L, 7081828503743667200L, -2739928086307306558L, -1975338772436478398L, -1794955186692463658L}).toString(), e);
        }
    }

    public final void setHeadlineView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-4502145835261084592L, -8044927839935611016L}).toString(), view);
    }

    public final void setIconView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{5417542757317904152L, 378842315590520759L}).toString(), view);
    }

    public final void setImageView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{5059889766256862414L, 7420303644376603367L}).toString(), view);
    }

    public final void setMediaView(@Nullable MediaView mediaView) {
        zzf(new ObfuscatedString(new long[]{-5321363374469366473L, -1870076250273556583L}).toString(), mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.zza(new zzb(this));
        mediaView.zzb(new zzc(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.dynamic.IObjectWrapper, java.lang.Object] */
    public void setNativeAd(@NonNull NativeAd nativeAd) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == 0) {
            return;
        }
        try {
            zzbjqVar.zzbI(nativeAd.zza());
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7655070924464783133L, -1594756813953280917L, -8242883856778743088L, 3220154179197706997L, 3304699129648590883L, -8769494279816612742L}).toString(), e);
        }
    }

    public final void setPriceView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{6523817731745461696L, 6598404607881744377L}).toString(), view);
    }

    public final void setStarRatingView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-491965663123547907L, -549094011071157118L}).toString(), view);
    }

    public final void setStoreView(@Nullable View view) {
        zzf(new ObfuscatedString(new long[]{-4742672767890189316L, 5435894565266223830L}).toString(), view);
    }

    @Nullable
    public final View zza(@NonNull String str) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar != null) {
            try {
                IObjectWrapper zzb = zzbjqVar.zzb(str);
                if (zzb != null) {
                    return (View) ObjectWrapper.unwrap(zzb);
                }
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{7342372670839188859L, -6349725155079703503L, -8543513098902783478L, -7740781253267914046L, 8076113076698440830L, 2383311639549392471L}).toString(), e);
            }
        }
        return null;
    }

    public final /* synthetic */ void zzb(MediaContent mediaContent) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzep) {
                zzbjqVar.zzbG(((zzep) mediaContent).zzc());
            } else if (mediaContent == null) {
                zzbjqVar.zzbG(null);
            } else {
                zzcec.zze(new ObfuscatedString(new long[]{-1723340730703576730L, 670819571800767456L, 7325244570335410714L, 3540930835039420654L, 1432066975722357978L, -6810690195889101045L, 7717115956835496690L, -7675713071278911040L}).toString());
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5225083792469282841L, 2131715294968593131L, -8086024677549943239L, 2395763450125891680L, -9116264834169783791L, -3318090329682749470L, -3383245856237630792L}).toString(), e);
        }
    }

    public final /* synthetic */ void zzc(ImageView.ScaleType scaleType) {
        zzbjq zzbjqVar = this.zzb;
        if (zzbjqVar != null && scaleType != null) {
            try {
                zzbjqVar.zzbH(ObjectWrapper.wrap(scaleType));
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{2404311816470010369L, 3702199842255303792L, 476062088926167050L, 4906654675248536621L, -1468729086696603685L, 4616098204626880323L, 1218447881541631483L, 8818286200897051513L}).toString(), e);
            }
        }
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    @TargetApi(21)
    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zza = zzd(context);
        this.zzb = zze();
    }
}
