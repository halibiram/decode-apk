package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzanc {
    private final zzaea zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private int zze;
    private int zzf;
    private long zzg;
    private long zzh;

    public zzanc(zzaea zzaeaVar) {
        this.zza = zzaeaVar;
    }

    public final void zza(byte[] bArr, int i, int i2) {
        boolean z;
        if (this.zzc) {
            int i3 = this.zzf;
            int i4 = (i + 1) - i3;
            if (i4 < i2) {
                if (((bArr[i4] & 192) >> 6) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.zzd = z;
                this.zzc = false;
                return;
            }
            this.zzf = (i2 - i) + i3;
        }
    }

    public final void zzb(long j, int i, boolean z) {
        boolean z2;
        if (this.zzh != -9223372036854775807L) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzek.zzf(z2);
        if (this.zze == 182 && z && this.zzb) {
            long j2 = j - this.zzg;
            this.zza.zzt(this.zzh, this.zzd ? 1 : 0, (int) j2, i, null);
        }
        if (this.zze != 179) {
            this.zzg = j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzc(int i, long j) {
        boolean z;
        this.zze = i;
        this.zzd = false;
        if (i != 182) {
            if (i != 179) {
                z = false;
                this.zzb = z;
                this.zzc = i == 182;
                this.zzf = 0;
                this.zzh = j;
            }
            i = 179;
        }
        z = true;
        this.zzb = z;
        this.zzc = i == 182;
        this.zzf = 0;
        this.zzh = j;
    }

    public final void zzd() {
        this.zzb = false;
        this.zzc = false;
        this.zzd = false;
        this.zze = -1;
    }
}
