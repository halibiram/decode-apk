package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzov implements zzoz {
    public static final zzfxu zza = new zzfxu() { // from class: com.google.android.gms.internal.ads.zzot
        @Override // com.google.android.gms.internal.ads.zzfxu
        public final Object zza() {
            String zzn;
            zzn = zzov.zzn();
            return zzn;
        }
    };
    private static final Random zzb = new Random();
    private final zzcw zzc;
    private final zzcu zzd;
    private final HashMap zze;
    private final zzfxu zzf;
    private zzoy zzg;
    private zzcx zzh;

    @Nullable
    private String zzi;
    private long zzj;

    public zzov() {
        throw null;
    }

    public final long zzl() {
        long j;
        long j2;
        zzou zzouVar = (zzou) this.zze.get(this.zzi);
        if (zzouVar != null) {
            j = zzouVar.zzd;
            if (j != -1) {
                j2 = zzouVar.zzd;
                return j2;
            }
        }
        return this.zzj + 1;
    }

    private final zzou zzm(int i, @Nullable zzur zzurVar) {
        long j;
        zzur zzurVar2;
        zzur zzurVar3;
        long j2 = Long.MAX_VALUE;
        zzou zzouVar = null;
        for (zzou zzouVar2 : this.zze.values()) {
            zzouVar2.zzg(i, zzurVar);
            if (zzouVar2.zzj(i, zzurVar)) {
                j = zzouVar2.zzd;
                if (j != -1 && j >= j2) {
                    if (j == j2) {
                        int i2 = zzfy.zza;
                        zzurVar2 = zzouVar.zze;
                        if (zzurVar2 != null) {
                            zzurVar3 = zzouVar2.zze;
                            if (zzurVar3 != null) {
                                zzouVar = zzouVar2;
                            }
                        }
                    }
                } else {
                    zzouVar = zzouVar2;
                    j2 = j;
                }
            }
        }
        if (zzouVar == null) {
            String zzn = zzn();
            zzou zzouVar3 = new zzou(this, zzn, i, zzurVar);
            this.zze.put(zzn, zzouVar3);
            return zzouVar3;
        }
        return zzouVar;
    }

    public static String zzn() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    private final void zzo(zzou zzouVar) {
        long j;
        long j2;
        j = zzouVar.zzd;
        if (j != -1) {
            j2 = zzouVar.zzd;
            this.zzj = j2;
        }
        this.zzi = null;
    }

    @RequiresNonNull({"listener"})
    private final void zzp(zzmq zzmqVar) {
        String str;
        long j;
        zzur zzurVar;
        zzur zzurVar2;
        zzur zzurVar3;
        String unused;
        String unused2;
        if (zzmqVar.zzb.zzo()) {
            String str2 = this.zzi;
            if (str2 != null) {
                zzou zzouVar = (zzou) this.zze.get(str2);
                zzouVar.getClass();
                zzo(zzouVar);
                return;
            }
            return;
        }
        zzou zzouVar2 = (zzou) this.zze.get(this.zzi);
        zzou zzm = zzm(zzmqVar.zzc, zzmqVar.zzd);
        str = zzm.zzb;
        this.zzi = str;
        zzi(zzmqVar);
        zzur zzurVar4 = zzmqVar.zzd;
        if (zzurVar4 != null && zzurVar4.zzb()) {
            if (zzouVar2 != null) {
                long j2 = zzurVar4.zzd;
                j = zzouVar2.zzd;
                if (j == j2) {
                    zzurVar = zzouVar2.zze;
                    if (zzurVar != null) {
                        zzurVar2 = zzouVar2.zze;
                        if (zzurVar2.zzb == zzmqVar.zzd.zzb) {
                            zzurVar3 = zzouVar2.zze;
                            if (zzurVar3.zzc == zzmqVar.zzd.zzc) {
                                return;
                            }
                        }
                    }
                }
            }
            zzur zzurVar5 = zzmqVar.zzd;
            unused = zzm(zzmqVar.zzc, new zzur(zzurVar5.zza, zzurVar5.zzd)).zzb;
            unused2 = zzm.zzb;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    @Nullable
    public final synchronized String zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final synchronized String zzf(zzcx zzcxVar, zzur zzurVar) {
        String str;
        str = zzm(zzcxVar.zzn(zzurVar.zza, this.zzd).zzd, zzurVar).zzb;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final synchronized void zzg(zzmq zzmqVar) {
        boolean z;
        zzoy zzoyVar;
        String str;
        try {
            String str2 = this.zzi;
            if (str2 != null) {
                zzou zzouVar = (zzou) this.zze.get(str2);
                if (zzouVar != null) {
                    zzo(zzouVar);
                } else {
                    throw null;
                }
            }
            Iterator it = this.zze.values().iterator();
            while (it.hasNext()) {
                zzou zzouVar2 = (zzou) it.next();
                it.remove();
                z = zzouVar2.zzf;
                if (z && (zzoyVar = this.zzg) != null) {
                    str = zzouVar2.zzb;
                    zzoyVar.zzd(zzmqVar, str, false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final void zzh(zzoy zzoyVar) {
        this.zzg = zzoyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final synchronized void zzi(zzmq zzmqVar) {
        boolean z;
        String str;
        boolean z2;
        String str2;
        boolean z3;
        String str3;
        long j;
        int i;
        String unused;
        String unused2;
        try {
            if (this.zzg != null) {
                if (!zzmqVar.zzb.zzo()) {
                    zzur zzurVar = zzmqVar.zzd;
                    if (zzurVar != null) {
                        if (zzurVar.zzd >= zzl()) {
                            zzou zzouVar = (zzou) this.zze.get(this.zzi);
                            if (zzouVar != null) {
                                j = zzouVar.zzd;
                                if (j == -1) {
                                    i = zzouVar.zzc;
                                    if (i == zzmqVar.zzc) {
                                    }
                                }
                            }
                        }
                    }
                    zzou zzm = zzm(zzmqVar.zzc, zzmqVar.zzd);
                    if (this.zzi == null) {
                        str3 = zzm.zzb;
                        this.zzi = str3;
                    }
                    zzur zzurVar2 = zzmqVar.zzd;
                    if (zzurVar2 != null && zzurVar2.zzb()) {
                        zzou zzm2 = zzm(zzmqVar.zzc, new zzur(zzurVar2.zza, zzurVar2.zzd, zzurVar2.zzb));
                        z3 = zzm2.zzf;
                        if (!z3) {
                            zzm2.zzf = true;
                            zzcx zzcxVar = zzmqVar.zzb;
                            zzur zzurVar3 = zzmqVar.zzd;
                            zzcxVar.zzn(zzurVar3.zza, this.zzd);
                            this.zzd.zzi(zzmqVar.zzd.zzb);
                            Math.max(0L, zzfy.zzt(0L) + zzfy.zzt(0L));
                            unused = zzm2.zzb;
                        }
                    }
                    z = zzm.zzf;
                    if (!z) {
                        zzm.zzf = true;
                        unused2 = zzm.zzb;
                    }
                    str = zzm.zzb;
                    if (str.equals(this.zzi)) {
                        z2 = zzm.zzg;
                        if (!z2) {
                            zzm.zzg = true;
                            zzoy zzoyVar = this.zzg;
                            str2 = zzm.zzb;
                            zzoyVar.zzc(zzmqVar, str2);
                            return;
                        }
                    }
                }
                return;
            }
            throw null;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final synchronized void zzj(zzmq zzmqVar, int i) {
        boolean z;
        String str;
        String str2;
        boolean z2;
        try {
            if (this.zzg != null) {
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzou zzouVar = (zzou) it.next();
                    if (zzouVar.zzk(zzmqVar)) {
                        it.remove();
                        z = zzouVar.zzf;
                        if (z) {
                            str = zzouVar.zzb;
                            boolean equals = str.equals(this.zzi);
                            boolean z3 = false;
                            if (i == 0 && equals) {
                                z2 = zzouVar.zzg;
                                if (z2) {
                                    z3 = true;
                                }
                            }
                            if (equals) {
                                zzo(zzouVar);
                            }
                            zzoy zzoyVar = this.zzg;
                            str2 = zzouVar.zzb;
                            zzoyVar.zzd(zzmqVar, str2, z3);
                        }
                    }
                }
                zzp(zzmqVar);
            } else {
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final synchronized void zzk(zzmq zzmqVar) {
        boolean z;
        String str;
        String str2;
        try {
            if (this.zzg != null) {
                zzcx zzcxVar = this.zzh;
                this.zzh = zzmqVar.zzb;
                Iterator it = this.zze.values().iterator();
                while (it.hasNext()) {
                    zzou zzouVar = (zzou) it.next();
                    if (zzouVar.zzl(zzcxVar, this.zzh) && !zzouVar.zzk(zzmqVar)) {
                    }
                    it.remove();
                    z = zzouVar.zzf;
                    if (z) {
                        str = zzouVar.zzb;
                        if (str.equals(this.zzi)) {
                            zzo(zzouVar);
                        }
                        zzoy zzoyVar = this.zzg;
                        str2 = zzouVar.zzb;
                        zzoyVar.zzd(zzmqVar, str2, false);
                    }
                }
                zzp(zzmqVar);
            } else {
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public zzov(zzfxu zzfxuVar) {
        this.zzf = zzfxuVar;
        this.zzc = new zzcw();
        this.zzd = new zzcu();
        this.zze = new HashMap();
        this.zzh = zzcx.zza;
        this.zzj = -1L;
    }
}
