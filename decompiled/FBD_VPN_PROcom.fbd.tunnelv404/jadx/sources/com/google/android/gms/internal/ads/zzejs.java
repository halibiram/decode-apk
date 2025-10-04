package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzejs implements zzeit {
    private final Context zza;
    private final zzcvc zzb;
    private final Executor zzc;

    public zzejs(Context context, zzcvc zzcvcVar, Executor executor) {
        this.zza = context;
        this.zzb = zzcvcVar;
        this.zzc = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeit
    public final /* bridge */ /* synthetic */ Object zza(zzfgy zzfgyVar, final zzfgm zzfgmVar, zzeiq zzeiqVar) {
        final View zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhI)).booleanValue() && zzfgmVar.zzah) {
            zzbte zzc = ((zzfif) zzeiqVar.zzb).zzc();
            if (zzc != null) {
                try {
                    zza = (View) ObjectWrapper.unwrap(zzc.zze());
                    boolean zzf = zzc.zzf();
                    if (zza != null) {
                        if (zzf) {
                            try {
                                zza = (View) zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzejq
                                    @Override // com.google.android.gms.internal.ads.zzgdu
                                    public final ListenableFuture zza(Object obj) {
                                        return zzejs.this.zzc(zza, zzfgmVar, obj);
                                    }
                                }, zzcep.zze).get();
                            } catch (InterruptedException | ExecutionException e) {
                                throw new zzfho(e);
                            }
                        }
                    } else {
                        throw new zzfho(new Exception(new ObfuscatedString(new long[]{-8572068967437043444L, 1097698299379766105L, 6187708517383852631L, -4829331143879859922L, -7253233871424206763L, 1127217947974435164L, 1640166715925392374L, 920715779247190559L, -8589909703828433081L}).toString()));
                    }
                } catch (RemoteException e2) {
                    throw new zzfho(e2);
                }
            } else {
                String obfuscatedString = new ObfuscatedString(new long[]{-7234556905359311003L, -1021534896618727296L, -3743540991488117870L, 9110310339216448747L, 8303947577248325183L, -7765470218910271598L, 5889830497936053867L, 2591669845742524898L, 1277674722664614396L, 3153474950549273002L, 4632737995103181007L}).toString();
                zzcec.zzg(obfuscatedString);
                throw new zzfho(new Exception(obfuscatedString));
            }
        } else {
            zza = ((zzfif) zzeiqVar.zzb).zza();
        }
        zzcvc zzcvcVar = this.zzb;
        zzcwx zzcwxVar = new zzcwx(zzfgyVar, zzfgmVar, zzeiqVar.zza);
        final zzfif zzfifVar = (zzfif) zzeiqVar.zzb;
        Objects.requireNonNull(zzfifVar);
        zzcug zza2 = zzcvcVar.zza(zzcwxVar, new zzcum(zza, null, new zzcwf() { // from class: com.google.android.gms.internal.ads.zzejr
            @Override // com.google.android.gms.internal.ads.zzcwf
            public final com.google.android.gms.ads.internal.client.zzdq zza() {
                return zzfif.this.zzb();
            }
        }, (zzfgn) zzfgmVar.zzv.get(0)));
        zza2.zzg().zza(zza);
        zza2.zzd().zzo(new zzcrv((zzfif) zzeiqVar.zzb), this.zzc);
        ((zzekj) zzeiqVar.zzc).zzc(zza2.zzj());
        return zza2.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeit
    public final void zzb(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        com.google.android.gms.ads.internal.client.zzq zza;
        com.google.android.gms.ads.internal.client.zzq zzqVar = zzfgyVar.zza.zza.zze;
        if (zzqVar.zzn) {
            zza = new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zzd(zzqVar.zze, zzqVar.zzb));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhI)).booleanValue() && zzfgmVar.zzah) {
                zza = new com.google.android.gms.ads.internal.client.zzq(this.zza, com.google.android.gms.ads.zzb.zze(zzqVar.zze, zzqVar.zzb));
            } else {
                zza = zzfhn.zza(this.zza, zzfgmVar.zzv);
            }
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar2 = zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhI)).booleanValue() && zzfgmVar.zzah) {
            Object obj = zzeiqVar.zzb;
            Context context = this.zza;
            zzfhh zzfhhVar = zzfgyVar.zza.zza;
            ((zzfif) obj).zzn(context, zzqVar2, zzfhhVar.zzd, zzfgmVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfgmVar.zzt), (zzbtb) zzeiqVar.zzc);
            return;
        }
        Object obj2 = zzeiqVar.zzb;
        Context context2 = this.zza;
        zzfhh zzfhhVar2 = zzfgyVar.zza.zza;
        ((zzfif) obj2).zzm(context2, zzqVar2, zzfhhVar2.zzd, zzfgmVar.zzw.toString(), com.google.android.gms.ads.internal.util.zzbw.zzl(zzfgmVar.zzt), (zzbtb) zzeiqVar.zzc);
    }

    public final /* synthetic */ ListenableFuture zzc(View view, zzfgm zzfgmVar, Object obj) {
        return zzgen.zzh(zzcvt.zza(this.zza, view, zzfgmVar));
    }
}
