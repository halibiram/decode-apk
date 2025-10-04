package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzfnc implements Runnable {

    @GuardedBy("enabledLock")
    @VisibleForTesting
    public static Boolean zzb;
    private final Context zze;
    private final zzcei zzf;
    private int zzi;
    private final zzdtx zzj;
    private final List zzk;
    private final zzefb zzm;
    private final zzbzq zzn;

    @VisibleForTesting
    public static final Object zza = new Object();
    private static final Object zzc = new Object();
    private static final Object zzd = new Object();

    @GuardedBy("protoLock")
    private final zzfnh zzg = zzfnk.zzc();
    private String zzh = new ObfuscatedString(new long[]{5694362000676878217L}).toString();

    @GuardedBy("initLock")
    private boolean zzl = false;

    public zzfnc(Context context, zzcei zzceiVar, zzdtx zzdtxVar, zzefb zzefbVar, zzbzq zzbzqVar) {
        this.zze = context;
        this.zzf = zzceiVar;
        this.zzj = zzdtxVar;
        this.zzm = zzefbVar;
        this.zzn = zzbzqVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziJ)).booleanValue()) {
            this.zzk = com.google.android.gms.ads.internal.util.zzt.zzd();
        } else {
            this.zzk = zzgaa.zzl();
        }
    }

    public static boolean zza() {
        boolean booleanValue;
        boolean z;
        synchronized (zza) {
            try {
                if (zzb == null) {
                    if (!((Boolean) zzbht.zzb.zze()).booleanValue()) {
                        zzb = Boolean.FALSE;
                    } else {
                        if (Math.random() < ((Double) zzbht.zza.zze()).doubleValue()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zzb = Boolean.valueOf(z);
                    }
                }
                booleanValue = zzb.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] zzax;
        if (zza()) {
            Object obj = zzc;
            synchronized (obj) {
                try {
                    if (this.zzg.zza() == 0) {
                        return;
                    }
                    try {
                        synchronized (obj) {
                            zzax = ((zzfnk) this.zzg.zzal()).zzax();
                            this.zzg.zzc();
                        }
                        new zzefa(this.zze, this.zzf.zza, this.zzn, Binder.getCallingUid()).zza(new zzeey((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziD), 60000, new HashMap(), zzax, new ObfuscatedString(new long[]{-104263268174213458L, -7219079331079995139L, 4816969874499652072L, 7538101250095369895L}).toString(), false));
                    } catch (Exception e) {
                        if ((e instanceof zzead) && ((zzead) e).zza() == 3) {
                            return;
                        }
                        com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{719089548538289083L, -2055892366721530387L, 4220717749994281217L, -2090201449872873540L}).toString());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void zzb(@Nullable final zzfms zzfmsVar) {
        zzcep.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfnb
            @Override // java.lang.Runnable
            public final void run() {
                zzfnc.this.zzc(zzfmsVar);
            }
        });
    }

    public final /* synthetic */ void zzc(zzfms zzfmsVar) {
        synchronized (zzd) {
            try {
                if (!this.zzl) {
                    this.zzl = true;
                    if (zza()) {
                        try {
                            com.google.android.gms.ads.internal.zzt.zzp();
                            this.zzh = com.google.android.gms.ads.internal.util.zzt.zzp(this.zze);
                        } catch (RemoteException e) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4266004302664876247L, 8164490777932067245L, 3803348244724945513L, -5089859305599357669L, 1417185339472428797L, 8251992428851749033L}).toString());
                        }
                        this.zzi = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zze);
                        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziE)).intValue();
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlk)).booleanValue()) {
                            long j = intValue;
                            zzcep.zzd.scheduleWithFixedDelay(this, j, j, TimeUnit.MILLISECONDS);
                        } else {
                            long j2 = intValue;
                            zzcep.zzd.scheduleAtFixedRate(this, j2, j2, TimeUnit.MILLISECONDS);
                        }
                    }
                }
            } finally {
            }
        }
        if (zza() && zzfmsVar != null) {
            synchronized (zzc) {
                try {
                    if (this.zzg.zza() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziF)).intValue()) {
                        return;
                    }
                    zzfne zza2 = zzfnf.zza();
                    zza2.zzt(zzfmsVar.zzl());
                    zza2.zzp(zzfmsVar.zzk());
                    zza2.zzg(zzfmsVar.zzb());
                    zza2.zzv(3);
                    zza2.zzm(this.zzf.zza);
                    zza2.zzb(this.zzh);
                    zza2.zzk(Build.VERSION.RELEASE);
                    zza2.zzq(Build.VERSION.SDK_INT);
                    zza2.zzu(zzfmsVar.zzn());
                    zza2.zzj(zzfmsVar.zza());
                    zza2.zze(this.zzi);
                    zza2.zzs(zzfmsVar.zzm());
                    zza2.zzc(zzfmsVar.zzd());
                    zza2.zzf(zzfmsVar.zzf());
                    zza2.zzh(zzfmsVar.zzg());
                    zza2.zzi(this.zzj.zzc(zzfmsVar.zzg()));
                    zza2.zzl(zzfmsVar.zzh());
                    zza2.zzd(zzfmsVar.zze());
                    zza2.zzr(zzfmsVar.zzj());
                    zza2.zzn(zzfmsVar.zzi());
                    zza2.zzo(zzfmsVar.zzc());
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziJ)).booleanValue()) {
                        zza2.zza(this.zzk);
                    }
                    zzfnh zzfnhVar = this.zzg;
                    zzfni zza3 = zzfnj.zza();
                    zza3.zza(zza2);
                    zzfnhVar.zzb(zza3);
                } finally {
                }
            }
        }
    }
}
