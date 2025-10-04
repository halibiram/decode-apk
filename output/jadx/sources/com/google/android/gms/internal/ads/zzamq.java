package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzamq implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzamp
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzamq()};
        }
    };
    private final zzamr zzb = new zzamr(null);
    private final zzfp zzc = new zzfp(16384);
    private boolean zzd;

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        int zza2 = zzacvVar.zza(this.zzc.zzM(), 0, 16384);
        if (zza2 == -1) {
            return -1;
        }
        this.zzc.zzK(0);
        this.zzc.zzJ(zza2);
        if (!this.zzd) {
            this.zzb.zzd(0L, 4);
            this.zzd = true;
        }
        this.zzb.zza(this.zzc);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzb.zzb(zzacxVar, new zzaok(Integer.MIN_VALUE, 0, 1));
        zzacxVar.zzD();
        zzacxVar.zzO(new zzadt(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzd = false;
        this.zzb.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
    
        r16.zzj();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
    
        if ((r5 - r3) >= 8192) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zze(zzacv zzacvVar) {
        int i;
        zzfp zzfpVar = new zzfp(10);
        int i2 = 0;
        while (true) {
            zzack zzackVar = (zzack) zzacvVar;
            zzackVar.zzm(zzfpVar.zzM(), 0, 10, false);
            zzfpVar.zzK(0);
            if (zzfpVar.zzo() != 4801587) {
                break;
            }
            zzfpVar.zzL(3);
            int zzl = zzfpVar.zzl();
            i2 += zzl + 10;
            zzackVar.zzl(zzl, false);
        }
        zzacvVar.zzj();
        zzack zzackVar2 = (zzack) zzacvVar;
        zzackVar2.zzl(i2, false);
        int i3 = i2;
        while (true) {
            int i4 = 0;
            while (true) {
                int i5 = 7;
                zzackVar2.zzm(zzfpVar.zzM(), 0, 7, false);
                zzfpVar.zzK(0);
                int zzq = zzfpVar.zzq();
                if (zzq != 44096 && zzq != 44097) {
                    break;
                }
                i4++;
                if (i4 >= 4) {
                    return true;
                }
                byte[] zzM = zzfpVar.zzM();
                if (zzM.length < 7) {
                    i = -1;
                } else {
                    int i6 = ((zzM[2] & 255) << 8) | (zzM[3] & 255);
                    if (i6 == 65535) {
                        i6 = ((zzM[4] & 255) << 16) | ((zzM[5] & 255) << 8) | (zzM[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (zzq == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    return false;
                }
                zzackVar2.zzl(i - 7, false);
            }
            zzackVar2.zzl(i3, false);
        }
    }
}
