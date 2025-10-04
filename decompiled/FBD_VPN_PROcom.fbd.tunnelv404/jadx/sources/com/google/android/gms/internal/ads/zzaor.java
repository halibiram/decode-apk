package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
final class zzaor implements zzaoq {
    private final zzacx zza;
    private final zzaea zzb;
    private final zzaot zzc;
    private final zzam zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzaor(zzacx zzacxVar, zzaea zzaeaVar, zzaot zzaotVar, String str, int i) {
        this.zza = zzacxVar;
        this.zzb = zzaeaVar;
        this.zzc = zzaotVar;
        int i2 = zzaotVar.zzb * zzaotVar.zze;
        int i3 = zzaotVar.zzd;
        int i4 = i2 / 8;
        if (i3 == i4) {
            int i5 = zzaotVar.zzc * i4;
            int i6 = i5 * 8;
            int max = Math.max(i4, i5 / 10);
            this.zze = max;
            zzak zzakVar = new zzak();
            zzakVar.zzW(str);
            zzakVar.zzx(i6);
            zzakVar.zzR(i6);
            zzakVar.zzO(max);
            zzakVar.zzy(zzaotVar.zzb);
            zzakVar.zzX(zzaotVar.zzc);
            zzakVar.zzQ(i);
            this.zzd = zzakVar.zzac();
            return;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{3500965750307182320L, -6678810078363011589L, 850949553660165512L, 7836050918681050328L}).toString() + i4 + new ObfuscatedString(new long[]{2898839550170818010L, 1262913535551633795L}).toString() + i3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zza(int i, long j) {
        this.zza.zzO(new zzaow(this.zzc, 1, i, j));
        this.zzb.zzl(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final void zzb(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaoq
    public final boolean zzc(zzacv zzacvVar, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.zzg) < (i2 = this.zze)) {
            int zza = zzady.zza(this.zzb, zzacvVar, (int) Math.min(i2 - i, j2), true);
            if (zza == -1) {
                j2 = 0;
            } else {
                this.zzg += zza;
                j2 -= zza;
            }
        }
        zzaot zzaotVar = this.zzc;
        int i3 = this.zzg;
        int i4 = zzaotVar.zzd;
        int i5 = i3 / i4;
        if (i5 > 0) {
            long zzs = this.zzf + zzfy.zzs(this.zzh, 1000000L, zzaotVar.zzc, RoundingMode.FLOOR);
            int i6 = i5 * i4;
            int i7 = this.zzg - i6;
            this.zzb.zzt(zzs, 1, i6, i7, null);
            this.zzh += i5;
            this.zzg = i7;
        }
        if (j2 <= 0) {
            return true;
        }
        return false;
    }
}
