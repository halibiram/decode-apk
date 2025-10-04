package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzesd implements zzexq {
    private final zzgey zza;
    private final zzdua zzb;
    private final zzdyi zzc;
    private final zzesf zzd;

    public zzesd(zzgey zzgeyVar, zzdua zzduaVar, zzdyi zzdyiVar, zzesf zzesfVar) {
        this.zza = zzgeyVar;
        this.zzb = zzduaVar;
        this.zzc = zzdyiVar;
        this.zzd = zzesfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        zzbfu zzbfuVar = zzbgc.zzlc;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue() && this.zzd.zza() != null) {
            zzese zza = this.zzd.zza();
            zza.getClass();
            return zzgen.zzh(zza);
        }
        if (!zzfxt.zzd((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbr)) && (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue() || (!this.zzd.zzd() && this.zzc.zzt()))) {
            this.zzd.zzc(true);
            return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesc
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzesd.this.zzc();
                }
            });
        }
        return zzgen.zzh(new zzese(new Bundle()));
    }

    public final /* synthetic */ zzese zzc() {
        List<String> asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbr)).split(new ObfuscatedString(new long[]{8941526005541722570L, 7226150944913974515L}).toString()));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zzfif zzc = this.zzb.zzc(str, new JSONObject());
                zzc.zzC();
                boolean zzt = this.zzc.zzt();
                Bundle bundle2 = new Bundle();
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlc)).booleanValue() || zzt) {
                    try {
                        zzbvg zzf = zzc.zzf();
                        if (zzf != null) {
                            bundle2.putString(new ObfuscatedString(new long[]{6584663916634404497L, 7848900405851472537L, -2077585942656573453L}).toString(), zzf.toString());
                        }
                    } catch (zzfho unused) {
                    }
                }
                try {
                    zzbvg zze = zzc.zze();
                    if (zze != null) {
                        bundle2.putString(new ObfuscatedString(new long[]{7160266686748833830L, 5069576140849659647L, -7193479238613157731L}).toString(), zze.toString());
                    }
                } catch (zzfho unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfho unused3) {
            }
        }
        zzese zzeseVar = new zzese(bundle);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlc)).booleanValue()) {
            this.zzd.zzb(zzeseVar);
        }
        return zzeseVar;
    }
}
