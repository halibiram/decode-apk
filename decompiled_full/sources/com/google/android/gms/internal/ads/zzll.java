package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzll {
    private final zzcu zza = new zzcu();
    private final zzcw zzb = new zzcw();
    private final zzmp zzc;
    private final zzew zzd;
    private long zze;
    private int zzf;
    private boolean zzg;

    @Nullable
    private zzli zzh;

    @Nullable
    private zzli zzi;

    @Nullable
    private zzli zzj;
    private int zzk;

    @Nullable
    private Object zzl;
    private long zzm;
    private final zzkr zzn;

    public zzll(zzmp zzmpVar, zzew zzewVar, zzkr zzkrVar) {
        this.zzc = zzmpVar;
        this.zzd = zzewVar;
        this.zzn = zzkrVar;
    }

    private final boolean zzA(zzcx zzcxVar, zzur zzurVar) {
        if (!zzC(zzurVar)) {
            return false;
        }
        int i = zzcxVar.zzn(zzurVar.zza, this.zza).zzd;
        if (zzcxVar.zze(i, this.zzb, 0L).zzq != zzcxVar.zza(zzurVar.zza)) {
            return false;
        }
        return true;
    }

    private final boolean zzB(zzcx zzcxVar) {
        zzli zzliVar = this.zzh;
        if (zzliVar == null) {
            return true;
        }
        int zza = zzcxVar.zza(zzliVar.zzb);
        while (true) {
            zza = zzcxVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (true) {
                zzliVar.getClass();
                if (zzliVar.zzg() == null || zzliVar.zzf.zzg) {
                    break;
                }
                zzliVar = zzliVar.zzg();
            }
            zzli zzg = zzliVar.zzg();
            if (zza == -1 || zzg == null || zzcxVar.zza(zzg.zzb) != zza) {
                break;
            }
            zzliVar = zzg;
        }
        boolean zzn = zzn(zzliVar);
        zzliVar.zzf = zzh(zzcxVar, zzliVar.zzf);
        if (!zzn) {
            return true;
        }
        return false;
    }

    private static final boolean zzC(zzur zzurVar) {
        return !zzurVar.zzb() && zzurVar.zze == -1;
    }

    private final long zzs(zzcx zzcxVar, Object obj, int i) {
        zzcxVar.zzn(obj, this.zza);
        this.zza.zzi(i);
        this.zza.zzk(i);
        return 0L;
    }

    @Nullable
    private final zzlj zzt(zzcx zzcxVar, zzli zzliVar, long j) {
        long j2;
        zzlj zzljVar = zzliVar.zzf;
        long zze = (zzliVar.zze() + zzljVar.zze) - j;
        if (zzljVar.zzg) {
            long j3 = 0;
            int zzi = zzcxVar.zzi(zzcxVar.zza(zzljVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
            if (zzi != -1) {
                int i = zzcxVar.zzd(zzi, this.zza, true).zzd;
                Object obj = this.zza.zzc;
                obj.getClass();
                long j4 = zzljVar.zza.zzd;
                if (zzcxVar.zze(i, this.zzb, 0L).zzp == zzi) {
                    Pair zzm = zzcxVar.zzm(this.zzb, this.zza, i, -9223372036854775807L, Math.max(0L, zze));
                    if (zzm != null) {
                        obj = zzm.first;
                        long longValue = ((Long) zzm.second).longValue();
                        zzli zzg = zzliVar.zzg();
                        if (zzg != null && zzg.zzb.equals(obj)) {
                            j4 = zzg.zzf.zza.zzd;
                        } else {
                            j4 = this.zze;
                            this.zze = 1 + j4;
                        }
                        j2 = longValue;
                        j3 = -9223372036854775807L;
                    }
                } else {
                    j2 = 0;
                }
                zzur zzx = zzx(zzcxVar, obj, j2, j4, this.zzb, this.zza);
                if (j3 != -9223372036854775807L && zzljVar.zzc != -9223372036854775807L) {
                    zzcxVar.zzn(zzljVar.zza.zza, this.zza).zzb();
                    this.zza.zzg();
                }
                return zzu(zzcxVar, zzx, j3, j2);
            }
        } else {
            zzur zzurVar = zzljVar.zza;
            zzcxVar.zzn(zzurVar.zza, this.zza);
            if (zzurVar.zzb()) {
                int i2 = zzurVar.zzb;
                if (this.zza.zza(i2) != -1) {
                    int zzf = this.zza.zzf(i2, zzurVar.zzc);
                    if (zzf < 0) {
                        return zzv(zzcxVar, zzurVar.zza, i2, zzf, zzljVar.zzc, zzurVar.zzd);
                    }
                    long j5 = zzljVar.zzc;
                    if (j5 == -9223372036854775807L) {
                        zzcw zzcwVar = this.zzb;
                        zzcu zzcuVar = this.zza;
                        Pair zzm2 = zzcxVar.zzm(zzcwVar, zzcuVar, zzcuVar.zzd, -9223372036854775807L, Math.max(0L, zze));
                        if (zzm2 != null) {
                            j5 = ((Long) zzm2.second).longValue();
                        }
                    }
                    zzs(zzcxVar, zzurVar.zza, zzurVar.zzb);
                    return zzw(zzcxVar, zzurVar.zza, Math.max(0L, j5), zzljVar.zzc, zzurVar.zzd);
                }
            } else {
                int i3 = zzurVar.zze;
                if (i3 != -1) {
                    this.zza.zzm(i3);
                }
                zzcu zzcuVar2 = this.zza;
                int i4 = zzurVar.zze;
                int zze2 = zzcuVar2.zze(i4);
                zzcuVar2.zzn(i4);
                if (zze2 != this.zza.zza(zzurVar.zze)) {
                    return zzv(zzcxVar, zzurVar.zza, zzurVar.zze, zze2, zzljVar.zze, zzurVar.zzd);
                }
                zzs(zzcxVar, zzurVar.zza, zzurVar.zze);
                return zzw(zzcxVar, zzurVar.zza, 0L, zzljVar.zze, zzurVar.zzd);
            }
        }
        return null;
    }

    @Nullable
    private final zzlj zzu(zzcx zzcxVar, zzur zzurVar, long j, long j2) {
        zzcxVar.zzn(zzurVar.zza, this.zza);
        if (zzurVar.zzb()) {
            return zzv(zzcxVar, zzurVar.zza, zzurVar.zzb, zzurVar.zzc, j, zzurVar.zzd);
        }
        return zzw(zzcxVar, zzurVar.zza, j2, j, zzurVar.zzd);
    }

    private final zzlj zzv(zzcx zzcxVar, Object obj, int i, int i2, long j, long j2) {
        zzur zzurVar = new zzur(obj, i, i2, j2);
        Object obj2 = zzurVar.zza;
        long zzh = zzcxVar.zzn(obj2, this.zza).zzh(zzurVar.zzb, zzurVar.zzc);
        if (i2 == this.zza.zze(i)) {
            this.zza.zzj();
        }
        this.zza.zzn(zzurVar.zzb);
        long j3 = 0;
        if (zzh != -9223372036854775807L && zzh <= 0) {
            j3 = Math.max(0L, (-1) + zzh);
        }
        return new zzlj(zzurVar, j3, j, -9223372036854775807L, zzh, false, false, false, false);
    }

    private final zzlj zzw(zzcx zzcxVar, Object obj, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        long j7 = j;
        zzcxVar.zzn(obj, this.zza);
        int zzc = this.zza.zzc(j7);
        if (zzc != -1) {
            this.zza.zzm(zzc);
        }
        if (zzc == -1) {
            this.zza.zzb();
        } else {
            this.zza.zzn(zzc);
        }
        zzur zzurVar = new zzur(obj, j3, zzc);
        boolean zzC = zzC(zzurVar);
        boolean zzA = zzA(zzcxVar, zzurVar);
        boolean zzz = zzz(zzcxVar, zzurVar, zzC);
        if (zzc != -1) {
            this.zza.zzn(zzc);
        }
        if (zzc != -1) {
            this.zza.zzi(zzc);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        if (j4 != -9223372036854775807L) {
            j5 = 0;
            j6 = 0;
        } else {
            j5 = j4;
            j6 = this.zza.zze;
        }
        if (j6 != -9223372036854775807L && j7 >= j6) {
            j7 = Math.max(0L, j6 - 1);
        }
        return new zzlj(zzurVar, j7, j2, j5, j6, false, zzC, zzA, zzz);
    }

    private static zzur zzx(zzcx zzcxVar, Object obj, long j, long j2, zzcw zzcwVar, zzcu zzcuVar) {
        zzcxVar.zzn(obj, zzcuVar);
        zzcxVar.zze(zzcuVar.zzd, zzcwVar, 0L);
        zzcxVar.zza(obj);
        zzcuVar.zzb();
        zzcxVar.zzn(obj, zzcuVar);
        int zzd = zzcuVar.zzd(j);
        if (zzd == -1) {
            return new zzur(obj, j2, zzcuVar.zzc(j));
        }
        return new zzur(obj, zzd, zzcuVar.zze(zzd), j2);
    }

    private final void zzy() {
        final zzur zzurVar;
        final zzfzx zzfzxVar = new zzfzx();
        for (zzli zzliVar = this.zzh; zzliVar != null; zzliVar = zzliVar.zzg()) {
            zzfzxVar.zzf(zzliVar.zzf.zza);
        }
        zzli zzliVar2 = this.zzi;
        if (zzliVar2 == null) {
            zzurVar = null;
        } else {
            zzurVar = zzliVar2.zzf.zza;
        }
        this.zzd.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlk
            @Override // java.lang.Runnable
            public final void run() {
                zzll.this.zzk(zzfzxVar, zzurVar);
            }
        });
    }

    private final boolean zzz(zzcx zzcxVar, zzur zzurVar, boolean z) {
        int zza = zzcxVar.zza(zzurVar.zza);
        if (zzcxVar.zze(zzcxVar.zzd(zza, this.zza, false).zzd, this.zzb, 0L).zzj || zzcxVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg) != -1 || !z) {
            return false;
        }
        return true;
    }

    @Nullable
    public final zzli zza() {
        zzli zzliVar = this.zzh;
        if (zzliVar == null) {
            return null;
        }
        if (zzliVar == this.zzi) {
            this.zzi = zzliVar.zzg();
        }
        zzliVar.zzn();
        int i = this.zzk - 1;
        this.zzk = i;
        if (i == 0) {
            this.zzj = null;
            zzli zzliVar2 = this.zzh;
            this.zzl = zzliVar2.zzb;
            this.zzm = zzliVar2.zzf.zza.zzd;
        }
        this.zzh = this.zzh.zzg();
        zzy();
        return this.zzh;
    }

    public final zzli zzb() {
        zzli zzliVar = this.zzi;
        zzek.zzb(zzliVar);
        this.zzi = zzliVar.zzg();
        zzy();
        zzli zzliVar2 = this.zzi;
        zzek.zzb(zzliVar2);
        return zzliVar2;
    }

    public final zzli zzc(zzlj zzljVar) {
        long zze;
        zzli zzliVar = this.zzj;
        if (zzliVar == null) {
            zze = 1000000000000L;
        } else {
            zze = (zzliVar.zze() + zzliVar.zzf.zze) - zzljVar.zzb;
        }
        zzli zzd = zzkz.zzd(this.zzn.zza, zzljVar, zze);
        zzli zzliVar2 = this.zzj;
        if (zzliVar2 != null) {
            zzliVar2.zzo(zzd);
        } else {
            this.zzh = zzd;
            this.zzi = zzd;
        }
        this.zzl = null;
        this.zzj = zzd;
        this.zzk++;
        zzy();
        return zzd;
    }

    @Nullable
    public final zzli zzd() {
        return this.zzj;
    }

    @Nullable
    public final zzli zze() {
        return this.zzh;
    }

    @Nullable
    public final zzli zzf() {
        return this.zzi;
    }

    @Nullable
    public final zzlj zzg(long j, zzly zzlyVar) {
        zzli zzliVar = this.zzj;
        if (zzliVar == null) {
            return zzu(zzlyVar.zza, zzlyVar.zzb, zzlyVar.zzc, zzlyVar.zzr);
        }
        return zzt(zzlyVar.zza, zzliVar, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzlj zzh(zzcx zzcxVar, zzlj zzljVar) {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        zzur zzurVar = zzljVar.zza;
        boolean zzC = zzC(zzurVar);
        boolean zzA = zzA(zzcxVar, zzurVar);
        boolean zzz = zzz(zzcxVar, zzurVar, zzC);
        zzcxVar.zzn(zzljVar.zza.zza, this.zza);
        if (zzurVar.zzb() || (i = zzurVar.zze) == -1) {
            j = -9223372036854775807L;
        } else {
            this.zza.zzi(i);
            j = 0;
        }
        if (zzurVar.zzb()) {
            j2 = this.zza.zzh(zzurVar.zzb, zzurVar.zzc);
        } else {
            if (j != -9223372036854775807L) {
                j3 = 0;
                j4 = 0;
                if (!zzurVar.zzb()) {
                    this.zza.zzn(zzurVar.zzb);
                } else {
                    int i2 = zzurVar.zze;
                    if (i2 != -1) {
                        this.zza.zzn(i2);
                    }
                }
                return new zzlj(zzurVar, zzljVar.zzb, zzljVar.zzc, j3, j4, false, zzC, zzA, zzz);
            }
            j2 = this.zza.zze;
        }
        j3 = j;
        j4 = j2;
        if (!zzurVar.zzb()) {
        }
        return new zzlj(zzurVar, zzljVar.zzb, zzljVar.zzc, j3, j4, false, zzC, zzA, zzz);
    }

    public final zzur zzi(zzcx zzcxVar, Object obj, long j) {
        long j2;
        int zza;
        int i = zzcxVar.zzn(obj, this.zza).zzd;
        Object obj2 = this.zzl;
        if (obj2 != null && (zza = zzcxVar.zza(obj2)) != -1 && zzcxVar.zzd(zza, this.zza, false).zzd == i) {
            j2 = this.zzm;
        } else {
            zzli zzliVar = this.zzh;
            while (true) {
                if (zzliVar != null) {
                    if (zzliVar.zzb.equals(obj)) {
                        j2 = zzliVar.zzf.zza.zzd;
                        break;
                    }
                    zzliVar = zzliVar.zzg();
                } else {
                    zzli zzliVar2 = this.zzh;
                    while (true) {
                        if (zzliVar2 != null) {
                            int zza2 = zzcxVar.zza(zzliVar2.zzb);
                            if (zza2 != -1 && zzcxVar.zzd(zza2, this.zza, false).zzd == i) {
                                j2 = zzliVar2.zzf.zza.zzd;
                                break;
                            }
                            zzliVar2 = zzliVar2.zzg();
                        } else {
                            j2 = this.zze;
                            this.zze = 1 + j2;
                            if (this.zzh == null) {
                                this.zzl = obj;
                                this.zzm = j2;
                            }
                        }
                    }
                }
            }
        }
        long j3 = j2;
        zzcxVar.zzn(obj, this.zza);
        zzcxVar.zze(this.zza.zzd, this.zzb, 0L);
        int zza3 = zzcxVar.zza(obj);
        Object obj3 = obj;
        while (true) {
            zzcw zzcwVar = this.zzb;
            if (zza3 >= zzcwVar.zzp) {
                zzcxVar.zzd(zza3, this.zza, true);
                this.zza.zzb();
                zzcu zzcuVar = this.zza;
                if (zzcuVar.zzd(zzcuVar.zze) != -1) {
                    obj3 = this.zza.zzc;
                    obj3.getClass();
                }
                zza3--;
            } else {
                return zzx(zzcxVar, obj3, j, j3, zzcwVar, this.zza);
            }
        }
    }

    public final void zzj() {
        if (this.zzk == 0) {
            return;
        }
        zzli zzliVar = this.zzh;
        zzek.zzb(zzliVar);
        this.zzl = zzliVar.zzb;
        this.zzm = zzliVar.zzf.zza.zzd;
        while (zzliVar != null) {
            zzliVar.zzn();
            zzliVar = zzliVar.zzg();
        }
        this.zzh = null;
        this.zzj = null;
        this.zzi = null;
        this.zzk = 0;
        zzy();
    }

    public final /* synthetic */ void zzk(zzfzx zzfzxVar, zzur zzurVar) {
        this.zzc.zzS(zzfzxVar.zzi(), zzurVar);
    }

    public final void zzl(long j) {
        zzli zzliVar = this.zzj;
        if (zzliVar != null) {
            zzliVar.zzm(j);
        }
    }

    public final boolean zzm(zzup zzupVar) {
        zzli zzliVar = this.zzj;
        return zzliVar != null && zzliVar.zza == zzupVar;
    }

    public final boolean zzn(zzli zzliVar) {
        zzek.zzb(zzliVar);
        boolean z = false;
        if (zzliVar.equals(this.zzj)) {
            return false;
        }
        this.zzj = zzliVar;
        while (zzliVar.zzg() != null) {
            zzliVar = zzliVar.zzg();
            zzliVar.getClass();
            if (zzliVar == this.zzi) {
                this.zzi = this.zzh;
                z = true;
            }
            zzliVar.zzn();
            this.zzk--;
        }
        zzli zzliVar2 = this.zzj;
        zzliVar2.getClass();
        zzliVar2.zzo(null);
        zzy();
        return z;
    }

    public final boolean zzo() {
        zzli zzliVar = this.zzj;
        if (zzliVar == null) {
            return true;
        }
        if (!zzliVar.zzf.zzi && zzliVar.zzr() && this.zzj.zzf.zze != -9223372036854775807L && this.zzk < 100) {
            return true;
        }
        return false;
    }

    public final boolean zzp(zzcx zzcxVar, long j, long j2) {
        zzlj zzljVar;
        long zze;
        boolean z;
        zzli zzliVar = null;
        for (zzli zzliVar2 = this.zzh; zzliVar2 != null; zzliVar2 = zzliVar2.zzg()) {
            zzlj zzljVar2 = zzliVar2.zzf;
            if (zzliVar == null) {
                zzljVar = zzh(zzcxVar, zzljVar2);
            } else {
                zzlj zzt = zzt(zzcxVar, zzliVar, j);
                if (zzt == null) {
                    if (!zzn(zzliVar)) {
                        return true;
                    }
                    return false;
                }
                if (zzljVar2.zzb == zzt.zzb && zzljVar2.zza.equals(zzt.zza)) {
                    zzljVar = zzt;
                } else {
                    if (!zzn(zzliVar)) {
                        return true;
                    }
                    return false;
                }
            }
            zzliVar2.zzf = zzljVar.zza(zzljVar2.zzc);
            long j3 = zzljVar2.zze;
            long j4 = zzljVar.zze;
            if (j3 != -9223372036854775807L && j3 != j4) {
                zzliVar2.zzq();
                long j5 = zzljVar.zze;
                if (j5 == -9223372036854775807L) {
                    zze = Long.MAX_VALUE;
                } else {
                    zze = j5 + zzliVar2.zze();
                }
                if (zzliVar2 == this.zzi) {
                    boolean z2 = zzliVar2.zzf.zzf;
                    if (j2 == Long.MIN_VALUE || j2 >= zze) {
                        z = true;
                        if (zzn(zzliVar2) && !z) {
                            return true;
                        }
                        return false;
                    }
                }
                z = false;
                if (zzn(zzliVar2)) {
                }
                return false;
            }
            zzliVar = zzliVar2;
        }
        return true;
    }

    public final boolean zzq(zzcx zzcxVar, int i) {
        this.zzf = i;
        return zzB(zzcxVar);
    }

    public final boolean zzr(zzcx zzcxVar, boolean z) {
        this.zzg = z;
        return zzB(zzcxVar);
    }
}
