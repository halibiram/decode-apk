package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class zzdso extends zzcwh {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdkw zze;
    private final zzdhy zzf;
    private final zzdbk zzg;
    private final zzdcr zzh;
    private final zzcxc zzi;
    private final zzcak zzj;
    private final zzfrc zzk;
    private final zzfha zzl;
    private boolean zzm;

    public zzdso(zzcwg zzcwgVar, Context context, @Nullable zzcjk zzcjkVar, zzdkw zzdkwVar, zzdhy zzdhyVar, zzdbk zzdbkVar, zzdcr zzdcrVar, zzcxc zzcxcVar, zzfgm zzfgmVar, zzfrc zzfrcVar, zzfha zzfhaVar) {
        super(zzcwgVar);
        String obfuscatedString;
        this.zzm = false;
        this.zzc = context;
        this.zze = zzdkwVar;
        this.zzd = new WeakReference(zzcjkVar);
        this.zzf = zzdhyVar;
        this.zzg = zzdbkVar;
        this.zzh = zzdcrVar;
        this.zzi = zzcxcVar;
        this.zzk = zzfrcVar;
        zzcag zzcagVar = zzfgmVar.zzm;
        if (zzcagVar != null) {
            obfuscatedString = zzcagVar.zza;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-2783198702577910057L}).toString();
        }
        this.zzj = new zzcbe(obfuscatedString, zzcagVar != null ? zzcagVar.zzb : 1);
        this.zzl = zzfhaVar;
    }

    public final void finalize() {
        try {
            final zzcjk zzcjkVar = (zzcjk) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgL)).booleanValue()) {
                if (!this.zzm && zzcjkVar != null) {
                    zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcjk.this.destroy();
                        }
                    });
                }
            } else if (zzcjkVar != null) {
                zzcjkVar.destroy();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
            throw th;
        }
    }

    public final Bundle zza() {
        return this.zzh.zzb();
    }

    public final zzcak zzc() {
        return this.zzj;
    }

    public final zzfha zzd() {
        return this.zzl;
    }

    public final boolean zze() {
        return this.zzi.zzg();
    }

    public final boolean zzf() {
        return this.zzm;
    }

    public final boolean zzg() {
        zzcjk zzcjkVar = (zzcjk) this.zzd.get();
        if (zzcjkVar != null && !zzcjkVar.zzaD()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    public final boolean zzh(boolean z, @Nullable Activity activity) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaB)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzF(this.zzc)) {
                zzcec.zzj(new ObfuscatedString(new long[]{3969854905722404748L, 7667051008033039433L, -4043474516466935891L, 3632135629825218168L, 8351374526106508765L, 4704770306551292706L, 4765602658634592719L, -6118289684189574330L, -7216722022093118517L, -1481369444771372898L, -830170787988811595L, 5731465611153858112L, -889477319333198807L, 798650567873911482L, 3983011565863173304L, 2549352229105520695L, -7717116620543707275L, 9112156610208578694L, 5753403643944117312L, -6326136483303933839L, 7144713747696838507L, -8919704697837372118L, -5532964916853675742L, -2615192627431974159L, -3789332871809690533L, 580482708264345542L, 4905162483351429645L, -7708879945203134846L}).toString());
                this.zzg.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaC)).booleanValue()) {
                    this.zzk.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        if (this.zzm) {
            zzcec.zzj(new ObfuscatedString(new long[]{3578785331842617875L, -9002086393586319891L, -1174760279818231772L, -8790612026198964692L, 8106890217199674943L, 326051481259262296L}).toString());
            this.zzg.zza(zzfij.zzd(10, null, null));
            return false;
        }
        this.zzm = true;
        this.zzf.zzb();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzc;
        }
        try {
            this.zze.zza(z, activity2, this.zzg);
            this.zzf.zza();
            return true;
        } catch (zzdkv e) {
            this.zzg.zzc(e);
            return false;
        }
    }
}
