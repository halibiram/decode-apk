package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzenz implements zzein {
    private final zzeip zza;
    private final zzeit zzb;
    private final zzflm zzc;
    private final zzgey zzd;

    public zzenz(zzflm zzflmVar, zzgey zzgeyVar, zzeip zzeipVar, zzeit zzeitVar) {
        this.zzc = zzflmVar;
        this.zzd = zzgeyVar;
        this.zzb = zzeitVar;
        this.zza = zzeipVar;
    }

    @VisibleForTesting
    public static final String zze(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-902803379235396098L, -6518111299790275704L, 280804401195962153L}).toString());
        sb.append(str);
        return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3247948957703463618L, -4053094900470778967L}), sb, i);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        final zzeiq zzeiqVar;
        Iterator it = zzfgmVar.zzu.iterator();
        while (true) {
            if (it.hasNext()) {
                try {
                    zzeiqVar = this.zza.zza((String) it.next(), zzfgmVar.zzw);
                    break;
                } catch (zzfho unused) {
                }
            } else {
                zzeiqVar = null;
                break;
            }
        }
        if (zzeiqVar == null) {
            return zzgen.zzg(new zzelp(new ObfuscatedString(new long[]{1663770103293023931L, -1428143042286042478L, 4650782854061525077L, -1276371959208673643L, 2149574990328380478L, -1895935638183359959L, 4940612616537816815L}).toString()));
        }
        zzceu zzceuVar = new zzceu();
        zzeiqVar.zzc.zza(new zzeny(this, zzeiqVar, zzceuVar));
        if (zzfgmVar.zzN) {
            Bundle bundle = zzfgyVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean(new ObfuscatedString(new long[]{2388899915665749911L, -4809602395130886812L, 3029298040529614556L, 2524671745740707871L}).toString(), true);
        }
        zzflm zzflmVar = this.zzc;
        return zzfkw.zzd(new zzfkq() { // from class: com.google.android.gms.internal.ads.zzenw
            @Override // com.google.android.gms.internal.ads.zzfkq
            public final void zza() {
                zzenz.this.zzd(zzfgyVar, zzfgmVar, zzeiqVar);
            }
        }, this.zzd, zzflg.zzq, zzflmVar).zzb(zzflg.zzr).zzd(zzceuVar).zzb(zzflg.zzs).zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzenx
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                return zzenz.this.zzc(zzfgyVar, zzfgmVar, zzeiqVar, (Void) obj);
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        if (!zzfgmVar.zzu.isEmpty()) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ Object zzc(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar, Void r4) {
        return this.zzb.zza(zzfgyVar, zzfgmVar, zzeiqVar);
    }

    public final /* synthetic */ void zzd(zzfgy zzfgyVar, zzfgm zzfgmVar, zzeiq zzeiqVar) {
        this.zzb.zzb(zzfgyVar, zzfgmVar, zzeiqVar);
    }
}
