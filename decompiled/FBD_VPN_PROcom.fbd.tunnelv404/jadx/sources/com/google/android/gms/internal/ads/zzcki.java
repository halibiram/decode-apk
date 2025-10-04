package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.CollectionUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcki extends com.google.android.gms.ads.internal.client.zzdp {
    private final zzcgl zza;
    private final boolean zzc;
    private final boolean zzd;
    private int zze;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzdt zzf;
    private boolean zzg;
    private float zzi;
    private float zzj;
    private float zzk;
    private boolean zzl;
    private boolean zzm;
    private zzbku zzn;
    private final Object zzb = new Object();
    private boolean zzh = true;

    public zzcki(zzcgl zzcglVar, float f, boolean z, boolean z2) {
        this.zza = zzcglVar;
        this.zzi = f;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzw(final int i, final int i2, final boolean z, final boolean z2) {
        zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckh
            @Override // java.lang.Runnable
            public final void run() {
                zzcki.this.zzd(i, i2, z, z2);
            }
        });
    }

    private final void zzx(String str, @Nullable Map map) {
        final HashMap hashMap;
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        hashMap.put(new ObfuscatedString(new long[]{-4871406119970997888L, 3144419254683737829L}).toString(), str);
        zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckg
            @Override // java.lang.Runnable
            public final void run() {
                zzcki.this.zzr(hashMap);
            }
        });
    }

    public final void zzc(float f, float f2, int i, boolean z, float f3) {
        boolean z2;
        boolean z3;
        int i2;
        synchronized (this.zzb) {
            try {
                z2 = true;
                if (f2 == this.zzi && f3 == this.zzk) {
                    z2 = false;
                }
                this.zzi = f2;
                this.zzj = f;
                z3 = this.zzh;
                this.zzh = z;
                i2 = this.zze;
                this.zze = i;
                float f4 = this.zzk;
                this.zzk = f3;
                if (Math.abs(f3 - f4) > 1.0E-4f) {
                    this.zza.zzF().invalidate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z2) {
            try {
                zzbku zzbkuVar = this.zzn;
                if (zzbkuVar != null) {
                    zzbkuVar.zze();
                }
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-4573551470086798691L, 4747899520919826927L, -5496985597061602970L, -5590437745288899469L, -2711329183397669350L, 3466769153890040496L}).toString(), e);
            }
        }
        zzw(i2, i, z3, z);
    }

    public final /* synthetic */ void zzd(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        com.google.android.gms.ads.internal.client.zzdt zzdtVar;
        com.google.android.gms.ads.internal.client.zzdt zzdtVar2;
        com.google.android.gms.ads.internal.client.zzdt zzdtVar3;
        synchronized (this.zzb) {
            try {
                boolean z8 = this.zzg;
                boolean z9 = false;
                if (!z8 && i2 == 1) {
                    i2 = 1;
                    i3 = 1;
                    z3 = true;
                } else {
                    i3 = i2;
                    z3 = false;
                }
                if (i != i2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z4 && i3 == 1) {
                    z5 = true;
                    i3 = 1;
                } else {
                    z5 = false;
                }
                if (z4 && i3 == 2) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z4 && i3 == 3) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z8 || z3) {
                    z9 = true;
                }
                this.zzg = z9;
                if (z3) {
                    try {
                        com.google.android.gms.ads.internal.client.zzdt zzdtVar4 = this.zzf;
                        if (zzdtVar4 != null) {
                            zzdtVar4.zzi();
                        }
                    } catch (RemoteException e) {
                        zzcec.zzl(new ObfuscatedString(new long[]{3783306771590037369L, -6156239081666869126L, 6990000812709013253L, 1611203075791214466L, -8023853122576139790L, 3075709994497476266L}).toString(), e);
                    }
                }
                if (z5 && (zzdtVar3 = this.zzf) != null) {
                    zzdtVar3.zzh();
                }
                if (z6 && (zzdtVar2 = this.zzf) != null) {
                    zzdtVar2.zzg();
                }
                if (z7) {
                    com.google.android.gms.ads.internal.client.zzdt zzdtVar5 = this.zzf;
                    if (zzdtVar5 != null) {
                        zzdtVar5.zze();
                    }
                    this.zza.zzw();
                }
                if (z != z2 && (zzdtVar = this.zzf) != null) {
                    zzdtVar.zzf(z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zze() {
        float f;
        synchronized (this.zzb) {
            f = this.zzk;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzf() {
        float f;
        synchronized (this.zzb) {
            f = this.zzj;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final float zzg() {
        float f;
        synchronized (this.zzb) {
            f = this.zzi;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final int zzh() {
        int i;
        synchronized (this.zzb) {
            i = this.zze;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdt zzi() {
        com.google.android.gms.ads.internal.client.zzdt zzdtVar;
        synchronized (this.zzb) {
            zzdtVar = this.zzf;
        }
        return zzdtVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzj(boolean z) {
        ObfuscatedString obfuscatedString;
        if (true != z) {
            obfuscatedString = new ObfuscatedString(new long[]{-4579069466841949478L, 2669290444091142959L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{1079770354925971800L, -734128188998968377L});
        }
        zzx(obfuscatedString.toString(), null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzk() {
        zzx(new ObfuscatedString(new long[]{6762602303701630619L, -2242330313726867706L}).toString(), null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzl() {
        zzx(new ObfuscatedString(new long[]{-1499999659295206510L, -2808250255717723498L}).toString(), null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzm(@Nullable com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        synchronized (this.zzb) {
            this.zzf = zzdtVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zzn() {
        zzx(new ObfuscatedString(new long[]{-279579745465223295L, 2152637392317280687L}).toString(), null);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzo() {
        boolean z;
        Object obj = this.zzb;
        boolean zzp = zzp();
        synchronized (obj) {
            z = false;
            if (!zzp) {
                try {
                    if (this.zzm && this.zzd) {
                        z = true;
                    }
                } finally {
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzp() {
        boolean z;
        synchronized (this.zzb) {
            try {
                z = false;
                if (this.zzc && this.zzl) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final boolean zzq() {
        boolean z;
        synchronized (this.zzb) {
            z = this.zzh;
        }
        return z;
    }

    public final /* synthetic */ void zzr(Map map) {
        this.zza.zzd(new ObfuscatedString(new long[]{-2838755607987719444L, 7625373620788705865L, 3490625534426506187L}).toString(), map);
    }

    public final void zzs(com.google.android.gms.ads.internal.client.zzfk zzfkVar) {
        String obfuscatedString;
        String obfuscatedString2;
        String obfuscatedString3;
        Object obj = this.zzb;
        boolean z = zzfkVar.zza;
        boolean z2 = zzfkVar.zzb;
        boolean z3 = zzfkVar.zzc;
        synchronized (obj) {
            this.zzl = z2;
            this.zzm = z3;
        }
        if (true != z) {
            obfuscatedString = new ObfuscatedString(new long[]{1894838009943888068L, -194040792365463330L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-1770460227380248180L, -3282391318703671669L}).toString();
        }
        String str = obfuscatedString;
        if (true != z2) {
            obfuscatedString2 = new ObfuscatedString(new long[]{419775519684910354L, -8169685270653223174L}).toString();
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{-4641969295679823771L, 8274952928159366954L}).toString();
        }
        String str2 = obfuscatedString2;
        if (true != z3) {
            obfuscatedString3 = new ObfuscatedString(new long[]{-157196059110630204L, 5336082478827634044L}).toString();
        } else {
            obfuscatedString3 = new ObfuscatedString(new long[]{3436317826020879491L, 4100471974613068290L}).toString();
        }
        String str3 = obfuscatedString3;
        String obfuscatedString4 = new ObfuscatedString(new long[]{1612178160884907010L, -2275270746623870785L, 3044424239530276836L, -5687977535147650713L}).toString();
        String obfuscatedString5 = new ObfuscatedString(new long[]{6950554684846755136L, 5082449585569963969L, 603252002034217594L, 3365191126342248421L}).toString();
        zzx(new ObfuscatedString(new long[]{4158755715444703234L, 2185357189248001988L, -1491795795896106208L}).toString(), CollectionUtils.mapOf(new ObfuscatedString(new long[]{-5281765853138702873L, -7892730248849461020L, -895564006661018981L}).toString(), str, obfuscatedString5, str2, obfuscatedString4, str3));
    }

    public final void zzt(float f) {
        synchronized (this.zzb) {
            this.zzj = f;
        }
    }

    public final void zzu() {
        boolean z;
        int i;
        synchronized (this.zzb) {
            z = this.zzh;
            i = this.zze;
            this.zze = 3;
        }
        zzw(i, 3, z, z);
    }

    public final void zzv(zzbku zzbkuVar) {
        synchronized (this.zzb) {
            this.zzn = zzbkuVar;
        }
    }
}
