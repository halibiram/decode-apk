package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzfmq implements zzfmo {
    private final Context zza;
    private final int zzo;
    private long zzb = 0;
    private long zzc = -1;
    private boolean zzd = false;
    private int zzp = 2;
    private int zzq = 2;
    private int zze = 0;
    private String zzf = new ObfuscatedString(new long[]{1478875136110952457L}).toString();
    private String zzg = new ObfuscatedString(new long[]{8904625220720013909L}).toString();
    private String zzh = new ObfuscatedString(new long[]{3994620146178392223L}).toString();
    private String zzi = new ObfuscatedString(new long[]{-2462986853020231677L}).toString();
    private String zzj = new ObfuscatedString(new long[]{-7442034157635266665L}).toString();
    private String zzk = new ObfuscatedString(new long[]{-5790480247997371644L}).toString();
    private String zzl = new ObfuscatedString(new long[]{4405640210121899875L}).toString();
    private boolean zzm = false;
    private boolean zzn = false;

    public zzfmq(Context context, int i) {
        this.zza = context;
        this.zzo = i;
    }

    public final synchronized zzfmq zzH(int i) {
        this.zzp = i;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzq(zzeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzb(zzfgx zzfgxVar) {
        zzr(zzfgxVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzc(String str) {
        zzs(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzd(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zze(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzf(boolean z) {
        zzv(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzg(Throwable th) {
        zzw(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzh() {
        zzx();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzi() {
        zzy();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final synchronized boolean zzj() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final boolean zzk() {
        if (!TextUtils.isEmpty(this.zzh)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    @Nullable
    public final synchronized zzfms zzl() {
        try {
            if (this.zzm) {
                return null;
            }
            this.zzm = true;
            if (!this.zzn) {
                zzx();
            }
            if (this.zzc < 0) {
                zzy();
            }
            return new zzfms(this, null);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final /* bridge */ /* synthetic */ zzfmo zzm(int i) {
        zzH(i);
        return this;
    }

    public final synchronized zzfmq zzq(com.google.android.gms.ads.internal.client.zze zzeVar) {
        try {
            IBinder iBinder = zzeVar.zze;
            if (iBinder != null) {
                zzdaq zzdaqVar = (zzdaq) iBinder;
                String zzk = zzdaqVar.zzk();
                if (!TextUtils.isEmpty(zzk)) {
                    this.zzf = zzk;
                }
                String zzi = zzdaqVar.zzi();
                if (!TextUtils.isEmpty(zzi)) {
                    this.zzg = zzi;
                }
            }
        } finally {
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        r2.zzg = r0.zzac;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized zzfmq zzr(zzfgx zzfgxVar) {
        try {
            if (!TextUtils.isEmpty(zzfgxVar.zzb.zzb)) {
                this.zzf = zzfgxVar.zzb.zzb;
            }
            Iterator it = zzfgxVar.zza.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                zzfgm zzfgmVar = (zzfgm) it.next();
                if (!TextUtils.isEmpty(zzfgmVar.zzac)) {
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfmq zzs(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziI)).booleanValue()) {
            this.zzl = str;
        }
        return this;
    }

    public final synchronized zzfmq zzt(String str) {
        this.zzh = str;
        return this;
    }

    public final synchronized zzfmq zzu(String str) {
        this.zzi = str;
        return this;
    }

    public final synchronized zzfmq zzv(boolean z) {
        this.zzd = z;
        return this;
    }

    public final synchronized zzfmq zzw(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziI)).booleanValue()) {
            this.zzk = zzbxw.zze(th);
            this.zzj = (String) zzfxr.zzc(zzfwp.zzc('\n')).zzd(zzbxw.zzd(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfmq zzx() {
        Configuration configuration;
        this.zze = com.google.android.gms.ads.internal.zzt.zzq().zzm(this.zza);
        Resources resources = this.zza.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.zzq = i;
        this.zzb = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        this.zzn = true;
        return this;
    }

    public final synchronized zzfmq zzy() {
        this.zzc = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        return this;
    }
}
