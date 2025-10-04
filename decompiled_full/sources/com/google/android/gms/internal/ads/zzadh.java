package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzadh {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;

    @Nullable
    public final zzadg zzk;

    @Nullable
    private final zzby zzl;

    private zzadh(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, @Nullable zzadg zzadgVar, @Nullable zzby zzbyVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzi(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzh(i7);
        this.zzj = j;
        this.zzk = zzadgVar;
        this.zzl = zzbyVar;
    }

    private static int zzh(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    private static int zzi(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long zza() {
        long j = this.zzj;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.zze;
    }

    public final long zzb(long j) {
        return Math.max(0L, Math.min((j * this.zze) / 1000000, this.zzj - 1));
    }

    public final zzam zzc(byte[] bArr, @Nullable zzby zzbyVar) {
        bArr[4] = Byte.MIN_VALUE;
        zzby zzd = zzd(zzbyVar);
        zzak zzakVar = new zzak();
        zzakVar.zzW(new ObfuscatedString(new long[]{1121250993443518178L, -2768429158408945569L, -5601614311782093783L}).toString());
        int i = this.zzd;
        if (i <= 0) {
            i = -1;
        }
        zzakVar.zzO(i);
        zzakVar.zzy(this.zzg);
        zzakVar.zzX(this.zze);
        zzakVar.zzQ(zzfy.zzk(this.zzh));
        zzakVar.zzL(Collections.singletonList(bArr));
        zzakVar.zzP(zzd);
        return zzakVar.zzac();
    }

    @Nullable
    public final zzby zzd(@Nullable zzby zzbyVar) {
        zzby zzbyVar2 = this.zzl;
        if (zzbyVar2 == null) {
            return zzbyVar;
        }
        return zzbyVar2.zzd(zzbyVar);
    }

    public final zzadh zze(List list) {
        return new zzadh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(new zzby(list)));
    }

    public final zzadh zzf(@Nullable zzadg zzadgVar) {
        return new zzadh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzadgVar, this.zzl);
    }

    public final zzadh zzg(List list) {
        return new zzadh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzaeg.zzb(list)));
    }

    public zzadh(byte[] bArr, int i) {
        zzfo zzfoVar = new zzfo(bArr, bArr.length);
        zzfoVar.zzk(i * 8);
        this.zza = zzfoVar.zzd(16);
        this.zzb = zzfoVar.zzd(16);
        this.zzc = zzfoVar.zzd(24);
        this.zzd = zzfoVar.zzd(24);
        int zzd = zzfoVar.zzd(20);
        this.zze = zzd;
        this.zzf = zzi(zzd);
        this.zzg = zzfoVar.zzd(3) + 1;
        int zzd2 = zzfoVar.zzd(5) + 1;
        this.zzh = zzd2;
        this.zzi = zzh(zzd2);
        int zzd3 = zzfoVar.zzd(4);
        int zzd4 = zzfoVar.zzd(32);
        int i2 = zzfy.zza;
        this.zzj = ((zzd3 & 4294967295L) << 32) | (zzd4 & 4294967295L);
        this.zzk = null;
        this.zzl = null;
    }
}
