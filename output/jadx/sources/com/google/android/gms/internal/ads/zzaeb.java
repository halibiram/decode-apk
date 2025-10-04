package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaeb {
    private final byte[] zza = new byte[10];
    private boolean zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private int zzf;
    private int zzg;

    public final void zza(zzaea zzaeaVar, @Nullable zzadz zzadzVar) {
        if (this.zzc > 0) {
            zzaeaVar.zzt(this.zzd, this.zze, this.zzf, this.zzg, zzadzVar);
            this.zzc = 0;
        }
    }

    public final void zzb() {
        this.zzb = false;
        this.zzc = 0;
    }

    public final void zzc(zzaea zzaeaVar, long j, int i, int i2, int i3, @Nullable zzadz zzadzVar) {
        if (this.zzg <= i2 + i3) {
            if (this.zzb) {
                int i4 = this.zzc;
                int i5 = i4 + 1;
                this.zzc = i5;
                if (i4 == 0) {
                    this.zzd = j;
                    this.zze = i;
                    this.zzf = 0;
                }
                this.zzf += i2;
                this.zzg = i3;
                if (i5 >= 16) {
                    zza(zzaeaVar, zzadzVar);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3580343629347094250L, -2935767181483299674L, -5177497754880868231L, 8823289416491934776L, -2304858099236142116L, -6993110642795001875L, 4427625327034251255L, -7404213535998844336L, 2120490016490816495L}).toString());
    }

    public final void zzd(zzacv zzacvVar) {
        if (!this.zzb) {
            zzacvVar.zzh(this.zza, 0, 10);
            zzacvVar.zzj();
            byte[] bArr = this.zza;
            if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
                this.zzb = true;
            }
        }
    }
}
