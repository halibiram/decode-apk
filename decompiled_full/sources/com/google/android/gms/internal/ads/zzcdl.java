package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcdl {
    private final Object zza = new Object();
    private final com.google.android.gms.ads.internal.util.zzj zzb;
    private final zzcdp zzc;
    private boolean zzd;
    private Context zze;
    private zzcei zzf;
    private String zzg;

    @Nullable
    private zzbgk zzh;

    @Nullable
    private Boolean zzi;
    private final AtomicInteger zzj;
    private final AtomicInteger zzk;
    private final zzcdk zzl;
    private final Object zzm;

    @GuardedBy("grantedPermissionLock")
    private ListenableFuture zzn;
    private final AtomicBoolean zzo;

    public zzcdl() {
        com.google.android.gms.ads.internal.util.zzj zzjVar = new com.google.android.gms.ads.internal.util.zzj();
        this.zzb = zzjVar;
        this.zzc = new zzcdp(com.google.android.gms.ads.internal.client.zzay.zzd(), zzjVar);
        this.zzd = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = new AtomicInteger(0);
        this.zzk = new AtomicInteger(0);
        this.zzl = new zzcdk(null);
        this.zzm = new Object();
        this.zzo = new AtomicBoolean();
    }

    public final int zza() {
        return this.zzk.get();
    }

    public final int zzb() {
        return this.zzj.get();
    }

    @Nullable
    public final Context zzd() {
        return this.zze;
    }

    @Nullable
    public final Resources zze() {
        if (this.zzf.zzd) {
            return this.zze.getResources();
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkq)).booleanValue()) {
                return zzceg.zza(this.zze).getResources();
            }
            zzceg.zza(this.zze).getResources();
            return null;
        } catch (zzcef e) {
            zzcec.zzk(new ObfuscatedString(new long[]{7935879923881133437L, 3131098708266519143L, -6654223672477058485L, 8952428196815103062L, 1506719911634140829L, -2465147987739349984L, -7574242040513483086L, 7061766311834446261L}).toString(), e);
            return null;
        }
    }

    @Nullable
    public final zzbgk zzg() {
        zzbgk zzbgkVar;
        synchronized (this.zza) {
            zzbgkVar = this.zzh;
        }
        return zzbgkVar;
    }

    public final zzcdp zzh() {
        return this.zzc;
    }

    public final com.google.android.gms.ads.internal.util.zzg zzi() {
        com.google.android.gms.ads.internal.util.zzj zzjVar;
        synchronized (this.zza) {
            zzjVar = this.zzb;
        }
        return zzjVar;
    }

    public final ListenableFuture zzk() {
        if (this.zze != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcB)).booleanValue()) {
                synchronized (this.zzm) {
                    try {
                        ListenableFuture listenableFuture = this.zzn;
                        if (listenableFuture != null) {
                            return listenableFuture;
                        }
                        ListenableFuture zzb = zzcep.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcdg
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return zzcdl.this.zzo();
                            }
                        });
                        this.zzn = zzb;
                        return zzb;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return zzgen.zzh(new ArrayList());
    }

    public final Boolean zzl() {
        Boolean bool;
        synchronized (this.zza) {
            bool = this.zzi;
        }
        return bool;
    }

    public final String zzn() {
        return this.zzg;
    }

    public final /* synthetic */ ArrayList zzo() {
        Context zza = zzbzs.zza(this.zze);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = Wrappers.packageManager(zza).getPackageInfo(zza.getApplicationInfo().packageName, 4096);
            if (packageInfo.requestedPermissions != null && packageInfo.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = packageInfo.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final void zzq() {
        this.zzl.zza();
    }

    public final void zzr() {
        this.zzj.decrementAndGet();
    }

    public final void zzs() {
        this.zzk.incrementAndGet();
    }

    public final void zzt() {
        this.zzj.incrementAndGet();
    }

    @TargetApi(23)
    public final void zzu(Context context, zzcei zzceiVar) {
        zzbgk zzbgkVar;
        synchronized (this.zza) {
            try {
                if (!this.zzd) {
                    this.zze = context.getApplicationContext();
                    this.zzf = zzceiVar;
                    com.google.android.gms.ads.internal.zzt.zzb().zzc(this.zzc);
                    this.zzb.zzr(this.zze);
                    zzbxw.zzb(this.zze, this.zzf);
                    com.google.android.gms.ads.internal.zzt.zze();
                    if (!((Boolean) zzbhu.zzc.zze()).booleanValue()) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7025919590917046704L, 5967678067375785807L, -1516654252667178133L, -2004041722421672998L, -8314504928539655471L, -3728010985610175151L, 3592307978119605585L, 4230086915333314703L, 3638388757706109487L}).toString());
                        zzbgkVar = null;
                    } else {
                        zzbgkVar = new zzbgk();
                    }
                    this.zzh = zzbgkVar;
                    if (zzbgkVar != null) {
                        zzces.zza(new zzcdh(this).zzb(), new ObfuscatedString(new long[]{3431366205070289847L, -3185914925954779717L, 9117519530259136249L, 7083155782690852315L, 7243659786616180001L}).toString());
                    }
                    if (PlatformVersion.isAtLeastO()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzim)).booleanValue()) {
                            ((ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{7391623423471667143L, 2095776837486104563L, 8201213226973289187L}).toString())).registerDefaultNetworkCallback(new zzcdi(this));
                        }
                    }
                    this.zzd = true;
                    zzk();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.zzt.zzp().zzc(context, zzceiVar.zza);
    }

    public final void zzv(Throwable th, String str) {
        zzbxw.zzb(this.zze, this.zzf).zzh(th, str, ((Double) zzbij.zzg.zze()).floatValue());
    }

    public final void zzw(Throwable th, String str) {
        zzbxw.zzb(this.zze, this.zzf).zzg(th, str);
    }

    public final void zzx(Boolean bool) {
        synchronized (this.zza) {
            this.zzi = bool;
        }
    }

    public final void zzy(String str) {
        this.zzg = str;
    }

    public final boolean zzz(Context context) {
        if (PlatformVersion.isAtLeastO()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzim)).booleanValue()) {
                return this.zzo.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{-4945869612561867629L, -3354366207180812302L, 4466266841421478319L}).toString())).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }
}
