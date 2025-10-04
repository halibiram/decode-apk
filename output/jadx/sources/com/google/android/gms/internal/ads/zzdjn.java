package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdjn extends zzcwh {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdhy zze;
    private final zzdkw zzf;
    private final zzcxc zzg;
    private final zzfrc zzh;
    private final zzdbk zzi;
    private final zzcdp zzj;
    private boolean zzk;

    public zzdjn(zzcwg zzcwgVar, Context context, @Nullable zzcjk zzcjkVar, zzdhy zzdhyVar, zzdkw zzdkwVar, zzcxc zzcxcVar, zzfrc zzfrcVar, zzdbk zzdbkVar, zzcdp zzcdpVar) {
        super(zzcwgVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcjkVar);
        this.zze = zzdhyVar;
        this.zzf = zzdkwVar;
        this.zzg = zzcxcVar;
        this.zzh = zzfrcVar;
        this.zzi = zzdbkVar;
        this.zzj = zzcdpVar;
    }

    public final void finalize() {
        try {
            final zzcjk zzcjkVar = (zzcjk) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgL)).booleanValue()) {
                if (!this.zzk && zzcjkVar != null) {
                    zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdjm
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

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [android.content.Context] */
    public final boolean zzc(boolean z, @Nullable Activity activity) {
        zzfgm zzD;
        this.zze.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaB)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzF(this.zzc)) {
                zzcec.zzj(new ObfuscatedString(new long[]{1838429900940379618L, 2822372195451112165L, -849893389478895917L, 333907607198068893L, -2649048022580066544L, 2155904189581335779L, -987431262105092376L, 8502685751945500287L, -5752966086516849326L, 3532197073872755035L, -907287442938263401L, -790438486140904463L, 359924330799605075L, 8800775255741235551L, 4218628956577175777L, -413413576928997914L, -3717382160456121656L, 2747295717200757155L, -7255016464541294399L, -8615286424643655604L, 3399814965747569651L, -606350373365585237L, 5553838768320205634L, -6600881442221073830L, -9080963106404654182L, -1679742562175892176L, -7809586549062414124L, 3211111808485215163L}).toString());
                this.zzi.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaC)).booleanValue()) {
                    this.zzh.zza(this.zza.zzb.zzb.zzb);
                }
                return false;
            }
        }
        zzcjk zzcjkVar = (zzcjk) this.zzd.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzll)).booleanValue() && zzcjkVar != null && (zzD = zzcjkVar.zzD()) != null && zzD.zzar && zzD.zzas != this.zzj.zzb()) {
            zzcec.zzj(new ObfuscatedString(new long[]{6960796038186234162L, -2022161061397682762L, 5262427889957676278L, 1763013171328212654L, 6308858847409862354L, 1593050764593364503L, -1800246164817086735L}).toString());
            this.zzi.zza(zzfij.zzd(12, new ObfuscatedString(new long[]{-156650005632633954L, -2579414781758167347L, 2690041572654331953L, -3414063828851685108L, 1945016635643906538L, -7828102333698078907L}).toString(), null));
        } else {
            if (this.zzk) {
                zzcec.zzj(new ObfuscatedString(new long[]{-6310127640643752445L, 4144598511899734034L, -8761811271640389266L, 38999055565001530L, 516991799324009819L, -4127826064362494958L}).toString());
                this.zzi.zza(zzfij.zzd(10, null, null));
            }
            Activity activity2 = activity;
            if (!this.zzk) {
                if (activity == null) {
                    activity2 = this.zzc;
                }
                try {
                    this.zzf.zza(z, activity2, this.zzi);
                    this.zze.zza();
                    this.zzk = true;
                    return true;
                } catch (zzdkv e) {
                    this.zzi.zzc(e);
                }
            }
        }
        return false;
    }
}
