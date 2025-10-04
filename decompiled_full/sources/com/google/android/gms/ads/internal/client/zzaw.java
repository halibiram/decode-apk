package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbjq;
import com.google.android.gms.internal.ads.zzbjw;
import com.google.android.gms.internal.ads.zzbll;
import com.google.android.gms.internal.ads.zzblm;
import com.google.android.gms.internal.ads.zzboh;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbwm;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcan;
import com.google.android.gms.internal.ads.zzcaz;
import com.google.android.gms.internal.ads.zzcct;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzaw {
    private final zzk zza;
    private final zzi zzb;
    private final zzeq zzc;
    private final zzbll zzd;
    private final zzcaz zze;
    private final zzbwq zzf;
    private final zzblm zzg;
    private zzbxy zzh;

    public zzaw(zzk zzkVar, zzi zziVar, zzeq zzeqVar, zzbll zzbllVar, zzcaz zzcazVar, zzbwq zzbwqVar, zzblm zzblmVar) {
        this.zza = zzkVar;
        this.zzb = zziVar;
        this.zzc = zzeqVar;
        this.zzd = zzbllVar;
        this.zze = zzcazVar;
        this.zzf = zzbwqVar;
        this.zzg = zzblmVar;
    }

    public static /* bridge */ /* synthetic */ void zzt(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{4811821743031753580L, 3131550182067244838L}).toString(), new ObfuscatedString(new long[]{4501158791568329348L, 3241788439730906307L, 4948333940219220773L}).toString());
        bundle.putString(new ObfuscatedString(new long[]{6090795270324965989L, -3934323649911433253L}).toString(), str);
        zzay.zzb().zzn(context, zzay.zzc().zza, new ObfuscatedString(new long[]{5161998366994629889L, -6955942315328408561L, -6067806810768534781L}).toString(), bundle, true);
    }

    public final zzbq zzc(Context context, String str, zzbsv zzbsvVar) {
        return (zzbq) new zzao(this, context, str, zzbsvVar).zzd(context, false);
    }

    public final zzbu zzd(Context context, zzq zzqVar, String str, zzbsv zzbsvVar) {
        return (zzbu) new zzak(this, context, zzqVar, str, zzbsvVar).zzd(context, false);
    }

    public final zzbu zze(Context context, zzq zzqVar, String str, zzbsv zzbsvVar) {
        return (zzbu) new zzam(this, context, zzqVar, str, zzbsvVar).zzd(context, false);
    }

    @Nullable
    public final zzdj zzf(Context context, zzbsv zzbsvVar) {
        return (zzdj) new zzac(this, context, zzbsvVar).zzd(context, false);
    }

    public final zzbjq zzh(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbjq) new zzas(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzbjw zzi(View view, HashMap hashMap, HashMap hashMap2) {
        return (zzbjw) new zzau(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    @RequiresApi(api = 21)
    public final zzboh zzl(Context context, zzbsv zzbsvVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzboh) new zzai(this, context, zzbsvVar, onH5AdsEventListener).zzd(context, false);
    }

    @Nullable
    public final zzbwm zzm(Context context, zzbsv zzbsvVar) {
        return (zzbwm) new zzag(this, context, zzbsvVar).zzd(context, false);
    }

    @Nullable
    public final zzbwt zzo(Activity activity) {
        zzaa zzaaVar = new zzaa(this, activity);
        Intent intent = activity.getIntent();
        String obfuscatedString = new ObfuscatedString(new long[]{-4532653748961274754L, -6666246456648886416L, -3104487530591849241L, 6939216174625538079L, 4143023324378638132L, -6073359840453732892L, -8333475361538394838L, 5935914558873933307L}).toString();
        boolean z = false;
        if (!intent.hasExtra(obfuscatedString)) {
            zzcec.zzg(new ObfuscatedString(new long[]{8610264101438898324L, -4232739550369779135L, -8939716585138052166L, -3673596200176877068L, -2306695310060647125L, -3136973143301583226L, -1127572142312550520L, 4918367900448137294L}).toString());
        } else {
            z = intent.getBooleanExtra(obfuscatedString, false);
        }
        return (zzbwt) zzaaVar.zzd(activity, z);
    }

    public final zzcan zzq(Context context, String str, zzbsv zzbsvVar) {
        return (zzcan) new zzav(this, context, str, zzbsvVar).zzd(context, false);
    }

    @Nullable
    public final zzcct zzr(Context context, zzbsv zzbsvVar) {
        return (zzcct) new zzae(this, context, zzbsvVar).zzd(context, false);
    }
}
