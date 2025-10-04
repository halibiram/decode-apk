package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzedn {

    @VisibleForTesting
    public ListenableFuture zza;
    private final zzddq zzb;
    private final zzecv zzc;
    private final zzflm zzd;
    private final zzfhh zze;
    private final zzcei zzf;
    private final zzfnc zzg;
    private final zzfmz zzh;
    private final Context zzi;
    private final zzgey zzj;

    public zzedn(zzddq zzddqVar, zzecv zzecvVar, zzflm zzflmVar, zzfhh zzfhhVar, zzcei zzceiVar, zzfnc zzfncVar, zzfmz zzfmzVar, Context context, zzgey zzgeyVar) {
        this.zzb = zzddqVar;
        this.zzc = zzecvVar;
        this.zzd = zzflmVar;
        this.zze = zzfhhVar;
        this.zzf = zzceiVar;
        this.zzg = zzfncVar;
        this.zzh = zzfmzVar;
        this.zzi = context;
        this.zzj = zzgeyVar;
    }

    public final /* synthetic */ zzbym zza(zzbze zzbzeVar, zzeey zzeeyVar) {
        zzeeyVar.zzc.put(new ObfuscatedString(new long[]{-8780167957590532056L, 941983352165553674L, 591826282520049997L}).toString(), zzeeyVar.zze);
        zzeeyVar.zzc.put(new ObfuscatedString(new long[]{-4229596956979452140L, -8454637577807223752L, -1330329539010559639L}).toString(), com.google.android.gms.ads.internal.zzt.zzp().zzc(this.zzi, zzbzeVar.zzb.zza));
        Bundle bundle = new Bundle();
        for (Map.Entry entry : zzeeyVar.zzc.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        return new zzbym(zzeeyVar.zza, zzeeyVar.zzb, bundle, zzeeyVar.zzd, zzeeyVar.zzf, zzbzeVar.zzd, zzbzeVar.zzh);
    }

    public final ListenableFuture zzc(final zzbze zzbzeVar, final JSONObject jSONObject, final zzbzh zzbzhVar) {
        this.zzb.zzbw(zzbzeVar);
        zzfld zzb = this.zzd.zzb(zzflg.zzj, zzgen.zzm(this.zzd.zzb(zzflg.zzh, zzgen.zzh(new zzefc(jSONObject, zzbzhVar))).zze(new zzefd(zzbzeVar.zzg, this.zzh, zzfmn.zza(this.zzi, 9))).zza(), new zzfws() { // from class: com.google.android.gms.internal.ads.zzedj
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return zzedn.this.zza(zzbzeVar, (zzeey) obj);
            }
        }, this.zzj));
        final zzecv zzecvVar = this.zzc;
        Objects.requireNonNull(zzecvVar);
        zzfkr zza = zzb.zzf(new zzgdu() { // from class: com.google.android.gms.internal.ads.zzedk
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzecv.this.zzc((zzbym) obj);
            }
        }).zza();
        this.zza = zza;
        ListenableFuture zzn = zzgen.zzn(this.zzd.zzb(zzflg.zzk, zza).zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzedi
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                return new zzeel(zzeez.zza(new InputStreamReader((InputStream) obj)), jSONObject, zzbzhVar);
            }
        }).zzf(com.google.android.gms.ads.internal.zzt.zzf().zza(this.zzi, this.zzf, this.zzg).zza(new ObfuscatedString(new long[]{5754636068385507031L, 6968444768687656909L, -2296274453619623699L, -8680181835575389252L, 8592228186148522641L}).toString(), zzeel.zza, zzbru.zzb)).zza(), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzedl
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzedn.this.zzd((InputStream) obj);
            }
        }, this.zzj);
        zzgen.zzr(zzn, new zzedm(this), this.zzj);
        return zzn;
    }

    public final /* synthetic */ ListenableFuture zzd(InputStream inputStream) {
        return zzgen.zzh(new zzfgy(new zzfgv(this.zze), zzfgx.zza(new InputStreamReader(inputStream))));
    }
}
