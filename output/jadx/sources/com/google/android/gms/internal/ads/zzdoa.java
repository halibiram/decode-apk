package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdoa {
    static final ImageView.ScaleType zza = ImageView.ScaleType.CENTER_INSIDE;
    private final com.google.android.gms.ads.internal.util.zzg zzb;
    private final zzfhh zzc;
    private final zzdnf zzd;
    private final zzdna zze;

    @Nullable
    private final zzdom zzf;

    @Nullable
    private final zzdou zzg;
    private final Executor zzh;
    private final Executor zzi;
    private final zzbjb zzj;
    private final zzdmx zzk;

    public zzdoa(com.google.android.gms.ads.internal.util.zzg zzgVar, zzfhh zzfhhVar, zzdnf zzdnfVar, zzdna zzdnaVar, @Nullable zzdom zzdomVar, @Nullable zzdou zzdouVar, Executor executor, Executor executor2, zzdmx zzdmxVar) {
        this.zzb = zzgVar;
        this.zzc = zzfhhVar;
        this.zzj = zzfhhVar.zzi;
        this.zzd = zzdnfVar;
        this.zze = zzdnaVar;
        this.zzf = zzdomVar;
        this.zzg = zzdouVar;
        this.zzh = executor;
        this.zzi = executor2;
        this.zzk = zzdmxVar;
    }

    private static void zzh(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 3) {
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    return;
                } else {
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    return;
                }
            }
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            return;
        }
        layoutParams.addRule(10);
        layoutParams.addRule(9);
    }

    private final boolean zzi(@NonNull ViewGroup viewGroup, boolean z) {
        View zzg;
        FrameLayout.LayoutParams layoutParams;
        if (z) {
            zzg = this.zze.zzf();
        } else {
            zzg = this.zze.zzg();
        }
        if (zzg == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzg.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzg.getParent()).removeView(zzg);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdJ)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzg, layoutParams);
        return true;
    }

    public final /* synthetic */ void zza(ViewGroup viewGroup) {
        boolean z;
        zzdna zzdnaVar = this.zze;
        if (zzdnaVar.zzf() != null) {
            if (viewGroup != null) {
                z = true;
            } else {
                z = false;
            }
            if (zzdnaVar.zzc() != 2 && zzdnaVar.zzc() != 1) {
                if (zzdnaVar.zzc() == 6) {
                    this.zzb.zzJ(this.zzc.zzf, new ObfuscatedString(new long[]{-4827554358702338228L, 1164907280475062666L}).toString(), z);
                    this.zzb.zzJ(this.zzc.zzf, new ObfuscatedString(new long[]{-559794936254618893L, 9206720946396839530L}).toString(), z);
                    return;
                }
                return;
            }
            com.google.android.gms.ads.internal.util.zzg zzgVar = this.zzb;
            zzfhh zzfhhVar = this.zzc;
            zzgVar.zzJ(zzfhhVar.zzf, String.valueOf(zzdnaVar.zzc()), z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzb(zzdow zzdowVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        zzbjj zza2;
        Drawable drawable;
        Context context = null;
        if (this.zzd.zzf() || this.zzd.zze()) {
            String[] strArr = {new ObfuscatedString(new long[]{-4043887393487587366L, 2674108358582105038L}).toString(), new ObfuscatedString(new long[]{328840609899698040L, -25885409742282893L}).toString()};
            for (int i = 0; i < 2; i++) {
                View zzg = zzdowVar.zzg(strArr[i]);
                if (zzg != null && (zzg instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context2 = zzdowVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        zzdna zzdnaVar = this.zze;
        if (zzdnaVar.zze() != null) {
            zzbjb zzbjbVar = this.zzj;
            view = zzdnaVar.zze();
            if (zzbjbVar != null && viewGroup == null) {
                zzh(layoutParams, zzbjbVar.zze);
                view.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (!(zzdnaVar.zzl() instanceof zzbiw)) {
            view = null;
        } else {
            zzbiw zzbiwVar = (zzbiw) zzdnaVar.zzl();
            if (viewGroup == null) {
                zzh(layoutParams, zzbiwVar.zzc());
                viewGroup = null;
            }
            View zzbixVar = new zzbix(context2, zzbiwVar, layoutParams);
            zzbixVar.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdH));
            view = zzbixVar;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(zzdowVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(view);
                FrameLayout zzh = zzdowVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdowVar.zzq(zzdowVar.zzk(), view, true);
        }
        zzgaa zzgaaVar = zzdnw.zza;
        int size = zzgaaVar.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                View zzg2 = zzdowVar.zzg((String) zzgaaVar.get(i2));
                i2++;
                if (zzg2 instanceof ViewGroup) {
                    viewGroup2 = (ViewGroup) zzg2;
                    break;
                }
            } else {
                viewGroup2 = null;
                break;
            }
        }
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnx
            @Override // java.lang.Runnable
            public final void run() {
                zzdoa.this.zza(viewGroup2);
            }
        });
        if (viewGroup2 != null) {
            if (zzi(viewGroup2, true)) {
                zzdna zzdnaVar2 = this.zze;
                if (zzdnaVar2.zzs() != null) {
                    zzdnaVar2.zzs().zzap(new zzdnz(zzdowVar, viewGroup2));
                    return;
                }
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjK)).booleanValue() && zzi(viewGroup2, false)) {
                zzdna zzdnaVar3 = this.zze;
                if (zzdnaVar3.zzq() != null) {
                    zzdnaVar3.zzq().zzap(new zzdnz(zzdowVar, viewGroup2));
                    return;
                }
                return;
            }
            viewGroup2.removeAllViews();
            View zzf = zzdowVar.zzf();
            if (zzf != null) {
                context = zzf.getContext();
            }
            if (context != null && (zza2 = this.zzk.zza()) != null) {
                try {
                    IObjectWrapper zzi = zza2.zzi();
                    if (zzi != null && (drawable = (Drawable) ObjectWrapper.unwrap(zzi)) != null) {
                        ImageView imageView = new ImageView(context);
                        imageView.setImageDrawable(drawable);
                        IObjectWrapper zzj = zzdowVar.zzj();
                        if (zzj != null) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgi)).booleanValue()) {
                                imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzj));
                                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                viewGroup2.addView(imageView);
                            }
                        }
                        imageView.setScaleType(zza);
                        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        viewGroup2.addView(imageView);
                    }
                } catch (RemoteException unused) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-6041378797349119740L, 3301781364410330696L, -3609754801236879463L, -2756947043680428796L, 1842885537849583859L, 641011928623184508L}).toString());
                }
            }
        }
    }

    public final void zzc(@Nullable zzdow zzdowVar) {
        if (zzdowVar != null && this.zzf != null && zzdowVar.zzh() != null && this.zzd.zzg()) {
            try {
                zzdowVar.zzh().addView(this.zzf.zza());
            } catch (zzcjw e) {
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-5510974300032814341L, 2771017293530881625L, -6822966526766276122L, 3067766944898759646L, 7921433917106772933L}).toString(), e);
            }
        }
    }

    public final void zzd(@Nullable zzdow zzdowVar) {
        if (zzdowVar != null) {
            Context context = zzdowVar.zzf().getContext();
            if (com.google.android.gms.ads.internal.util.zzbz.zzh(context, this.zzd.zza)) {
                if (!(context instanceof Activity)) {
                    zzcec.zze(new ObfuscatedString(new long[]{-3184179079025048688L, 5829558527463282685L, 8791891833075700427L, 5111801133512543349L, 2280312613762893749L, 7629577166584884879L, -2501310949778417293L}).toString());
                    return;
                }
                if (this.zzg != null && zzdowVar.zzh() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-3433784681799117960L, -626311878144369732L}).toString());
                        windowManager.addView(this.zzg.zza(zzdowVar.zzh(), windowManager), com.google.android.gms.ads.internal.util.zzbz.zzb());
                    } catch (zzcjw e) {
                        com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-5381554943252620469L, 2856581831673694012L, 2589681215314227216L, 2043086781528257578L, 7295045128223866143L}).toString(), e);
                    }
                }
            }
        }
    }

    public final void zze(final zzdow zzdowVar) {
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdny
            @Override // java.lang.Runnable
            public final void run() {
                zzdoa.this.zzb(zzdowVar);
            }
        });
    }

    public final boolean zzf(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, false);
    }

    public final boolean zzg(@NonNull ViewGroup viewGroup) {
        return zzi(viewGroup, true);
    }
}
