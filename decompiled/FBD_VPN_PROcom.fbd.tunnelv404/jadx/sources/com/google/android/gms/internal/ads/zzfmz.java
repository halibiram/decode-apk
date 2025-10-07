package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzfmz implements Runnable {
    private final zzfnc zzb;
    private String zzc;
    private String zzd;
    private zzfgx zze;
    private com.google.android.gms.ads.internal.client.zze zzf;
    private Future zzg;
    private final List zza = new ArrayList();
    private int zzh = 2;

    public zzfmz(zzfnc zzfncVar) {
        this.zzb = zzfncVar;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        zzg();
    }

    public final synchronized zzfmz zza(zzfmo zzfmoVar) {
        try {
            if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
                List list = this.zza;
                zzfmoVar.zzi();
                list.add(zzfmoVar);
                Future future = this.zzg;
                if (future != null) {
                    future.cancel(false);
                }
                this.zzg = zzcep.zzd.schedule(this, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziG)).intValue(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfmz zzb(String str) {
        if (((Boolean) zzbht.zzc.zze()).booleanValue() && zzfmy.zze(str)) {
            this.zzc = str;
        }
        return this;
    }

    public final synchronized zzfmz zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            this.zzf = zzeVar;
        }
        return this;
    }

    public final synchronized zzfmz zzd(ArrayList arrayList) {
        try {
            if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
                if (!arrayList.contains(new ObfuscatedString(new long[]{4037633738397877406L, -1683998664272988417L}).toString()) && !arrayList.contains(AdFormat.BANNER.name())) {
                    if (!arrayList.contains(new ObfuscatedString(new long[]{-888565778609225031L, -330729864877600129L, 6611614206289557510L}).toString()) && !arrayList.contains(AdFormat.INTERSTITIAL.name())) {
                        if (!arrayList.contains(new ObfuscatedString(new long[]{-4886202861866540415L, -7713353167439303769L}).toString()) && !arrayList.contains(AdFormat.NATIVE.name())) {
                            if (!arrayList.contains(new ObfuscatedString(new long[]{-6552297732232390175L, -5631894133915390835L}).toString()) && !arrayList.contains(AdFormat.REWARDED.name())) {
                                if (arrayList.contains(new ObfuscatedString(new long[]{2634646392679113689L, -7159360574082257702L, -7085844991841306363L}).toString())) {
                                    this.zzh = 7;
                                } else if (arrayList.contains(new ObfuscatedString(new long[]{-4638639386025881143L, -8232690636303918253L, 6841721982802165175L, -1841162482293866293L}).toString()) || arrayList.contains(AdFormat.REWARDED_INTERSTITIAL.name())) {
                                    this.zzh = 6;
                                }
                            }
                            this.zzh = 5;
                        }
                        this.zzh = 8;
                    }
                    this.zzh = 4;
                }
                this.zzh = 3;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfmz zze(String str) {
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            this.zzd = str;
        }
        return this;
    }

    public final synchronized zzfmz zzf(zzfgx zzfgxVar) {
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            this.zze = zzfgxVar;
        }
        return this;
    }

    public final synchronized void zzg() {
        try {
            if (!((Boolean) zzbht.zzc.zze()).booleanValue()) {
                return;
            }
            Future future = this.zzg;
            if (future != null) {
                future.cancel(false);
            }
            for (zzfmo zzfmoVar : this.zza) {
                int i = this.zzh;
                if (i != 2) {
                    zzfmoVar.zzm(i);
                }
                if (!TextUtils.isEmpty(this.zzc)) {
                    zzfmoVar.zze(this.zzc);
                }
                if (!TextUtils.isEmpty(this.zzd) && !zzfmoVar.zzk()) {
                    zzfmoVar.zzd(this.zzd);
                }
                zzfgx zzfgxVar = this.zze;
                if (zzfgxVar != null) {
                    zzfmoVar.zzb(zzfgxVar);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = this.zzf;
                    if (zzeVar != null) {
                        zzfmoVar.zza(zzeVar);
                    }
                }
                this.zzb.zzb(zzfmoVar.zzl());
            }
            this.zza.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized zzfmz zzh(int i) {
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            this.zzh = i;
        }
        return this;
    }
}
