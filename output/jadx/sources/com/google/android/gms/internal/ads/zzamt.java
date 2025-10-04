package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzamt implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzams
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzamt(0)};
        }
    };
    private final zzamu zzb;
    private final zzfp zzc;
    private final zzfp zzd;
    private final zzfo zze;
    private zzacx zzf;
    private long zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;

    public zzamt() {
        this(0);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        zzek.zzb(this.zzf);
        int zza2 = zzacvVar.zza(this.zzc.zzM(), 0, 2048);
        if (!this.zzj) {
            this.zzf.zzO(new zzadt(-9223372036854775807L, 0L));
            this.zzj = true;
        }
        if (zza2 == -1) {
            return -1;
        }
        this.zzc.zzK(0);
        this.zzc.zzJ(zza2);
        if (!this.zzi) {
            this.zzb.zzd(this.zzg, 4);
            this.zzi = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzf = zzacxVar;
        this.zzb.zzb(zzacxVar, new zzaok(Integer.MIN_VALUE, 0, 1));
        zzacxVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzi = false;
        this.zzb.zze();
        this.zzg = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        int i = 0;
        while (true) {
            zzack zzackVar = (zzack) zzacvVar;
            zzackVar.zzm(this.zzd.zzM(), 0, 10, false);
            this.zzd.zzK(0);
            if (this.zzd.zzo() != 4801587) {
                break;
            }
            this.zzd.zzL(3);
            int zzl = this.zzd.zzl();
            i += zzl + 10;
            zzackVar.zzl(zzl, false);
        }
        zzacvVar.zzj();
        zzack zzackVar2 = (zzack) zzacvVar;
        zzackVar2.zzl(i, false);
        if (this.zzh == -1) {
            this.zzh = i;
        }
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        do {
            zzackVar2.zzm(this.zzd.zzM(), 0, 2, false);
            this.zzd.zzK(0);
            if (!zzamu.zzf(this.zzd.zzq())) {
                i2++;
                zzacvVar.zzj();
                zzackVar2.zzl(i2, false);
            } else {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                zzackVar2.zzm(this.zzd.zzM(), 0, 4, false);
                this.zze.zzk(14);
                int zzd = this.zze.zzd(13);
                if (zzd <= 6) {
                    i2++;
                    zzacvVar.zzj();
                    zzackVar2.zzl(i2, false);
                } else {
                    zzackVar2.zzl(zzd - 6, false);
                    i4 += zzd;
                }
            }
            i3 = 0;
            i4 = 0;
        } while (i2 - i < 8192);
        return false;
    }

    public zzamt(int i) {
        this.zzb = new zzamu(true, null);
        this.zzc = new zzfp(2048);
        this.zzh = -1L;
        zzfp zzfpVar = new zzfp(10);
        this.zzd = zzfpVar;
        byte[] zzM = zzfpVar.zzM();
        this.zze = new zzfo(zzM, zzM.length);
    }
}
