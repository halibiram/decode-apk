package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzekc implements zzein {
    private final Context zza;
    private final zzdko zzb;
    private final Executor zzc;
    private final zzfgl zzd;

    public zzekc(Context context, Executor executor, zzdko zzdkoVar, zzfgl zzfglVar) {
        this.zza = context;
        this.zzb = zzdkoVar;
        this.zzc = executor;
        this.zzd = zzfglVar;
    }

    @Nullable
    private static String zzd(zzfgm zzfgmVar) {
        try {
            return zzfgmVar.zzw.getString(new ObfuscatedString(new long[]{4826652305144441788L, -6493256641955593250L}).toString());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        final Uri uri;
        String zzd = zzd(zzfgmVar);
        if (zzd != null) {
            uri = Uri.parse(zzd);
        } else {
            uri = null;
        }
        return zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeka
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzekc.this.zzc(uri, zzfgyVar, zzfgmVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        Context context = this.zza;
        if ((context instanceof Activity) && zzbhd.zzg(context) && !TextUtils.isEmpty(zzd(zzfgmVar))) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ ListenableFuture zzc(Uri uri, zzfgy zzfgyVar, zzfgm zzfgmVar, Object obj) {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null);
            final zzceu zzceuVar = new zzceu();
            zzdjo zze = this.zzb.zze(new zzcwx(zzfgyVar, zzfgmVar, null), new zzdjr(new zzdkw() { // from class: com.google.android.gms.internal.ads.zzekb
                @Override // com.google.android.gms.internal.ads.zzdkw
                public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
                    zzceu zzceuVar2 = zzceu.this;
                    try {
                        com.google.android.gms.ads.internal.zzt.zzi();
                        com.google.android.gms.ads.internal.overlay.zzn.zza(context, (AdOverlayInfoParcel) zzceuVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }, null));
            zzceuVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zze.zza(), null, new zzcei(0, 0, false, false, false), null, null));
            this.zzd.zza();
            return zzgen.zzh(zze.zzg());
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{6912636716900601645L, 7897234333914237224L, 8911582280512355800L, 5370335279612356106L, -8686092176388095772L}).toString(), th);
            throw th;
        }
    }
}
