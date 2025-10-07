package com.google.android.gms.internal.ads;

import androidx.lifecycle.CoroutineLiveDataKt;
import com.android.volley.DefaultRetryPolicy;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zziv implements zzlc {
    private final zzyx zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long zzf;
    private final long zzg;
    private int zzh;
    private boolean zzi;

    public zziv() {
        zzyx zzyxVar = new zzyx(true, 65536);
        zzj(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 0, new ObfuscatedString(new long[]{7280653407853014454L, 5287867526384944391L, 4505767990873131961L, 355545649545731989L}).toString(), new ObfuscatedString(new long[]{6983430280741153140L, -7205708083551654509L}).toString());
        zzj(5000, 0, new ObfuscatedString(new long[]{-166957155951535599L, 7219227979626802623L, -8291385213295308515L, 2366907711973570809L, 1594567804617906533L}).toString(), new ObfuscatedString(new long[]{-2846482787848229201L, -3891957080050946897L}).toString());
        zzj(50000, DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, new ObfuscatedString(new long[]{168063761284449012L, -1750531795743470390L, -3234008667709713793L}).toString(), new ObfuscatedString(new long[]{7712391612537749504L, 7559523635399566278L, 2927126900554052822L, 5206443191408080193L}).toString());
        zzj(50000, 5000, new ObfuscatedString(new long[]{9182805585733882943L, 7167128789909189309L, 8404189816631736659L}).toString(), new ObfuscatedString(new long[]{-4778195776731272222L, 3930360842161101588L, 2470833359601471281L, 8994403088501265991L, -8299229249522174573L}).toString());
        zzj(50000, 50000, new ObfuscatedString(new long[]{3969788817188061826L, 3412425068672914388L, 708918889396425898L}).toString(), new ObfuscatedString(new long[]{2333811963548157515L, 8064618891447937576L, 4913273933548826955L}).toString());
        zzj(0, 0, new ObfuscatedString(new long[]{-5627357958332306308L, -6846437036872549908L, -3227308018254509819L, -1443409823316816169L}).toString(), new ObfuscatedString(new long[]{-463906982782654135L, 5152968421244136427L}).toString());
        this.zzb = zzyxVar;
        this.zzc = zzfy.zzq(50000L);
        this.zzd = zzfy.zzq(50000L);
        this.zze = zzfy.zzq(2500L);
        this.zzf = zzfy.zzq(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        this.zzh = 13107200;
        this.zzg = zzfy.zzq(0L);
    }

    private static void zzj(int i, int i2, String str, String str2) {
        boolean z;
        String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8408629539069935685L, -8649590604274362659L, -8159661418012846720L, -4750374271763812529L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2);
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        zzek.zze(z, m3336x1aebc6d9);
    }

    private final void zzk(boolean z) {
        this.zzh = 13107200;
        this.zzi = false;
        if (z) {
            this.zzb.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final long zza() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final void zzb() {
        zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final void zzc() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final void zzd() {
        zzk(true);
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final void zze(zzcx zzcxVar, zzur zzurVar, zzmf[] zzmfVarArr, zzws zzwsVar, zzyi[] zzyiVarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int length = zzmfVarArr.length;
            int i3 = 13107200;
            if (i < 2) {
                if (zzyiVarArr[i] != null) {
                    if (zzmfVarArr[i].zzbj() != 1) {
                        i3 = 131072000;
                    }
                    i2 += i3;
                }
                i++;
            } else {
                int max = Math.max(13107200, i2);
                this.zzh = max;
                this.zzb.zzf(max);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final boolean zzg(long j, long j2, float f) {
        int zza = this.zzb.zza();
        int i = this.zzh;
        long j3 = this.zzc;
        if (f > 1.0f) {
            j3 = Math.min(zzfy.zzo(j3, f), this.zzd);
        }
        boolean z = false;
        if (j2 < Math.max(j3, 500000L)) {
            if (zza < i) {
                z = true;
            }
            this.zzi = z;
            if (!z && j2 < 500000) {
                zzff.zzf(new ObfuscatedString(new long[]{7115668591376361811L, -3251575253480689075L, 1667704730445451721L, 2258300072466583605L}).toString(), new ObfuscatedString(new long[]{8674367315642782087L, -3277928528884208021L, 4543628178269955752L, -994934518498107093L, 1883072537239634106L, -916084629010757904L, -6536218436618336386L, 5017738435130045776L, -8054505176768049838L, -7657614438754552461L}).toString());
            }
        } else if (j2 >= this.zzd || zza >= i) {
            this.zzi = false;
        }
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final boolean zzh(zzcx zzcxVar, zzur zzurVar, long j, float f, boolean z, long j2) {
        long j3;
        long zzp = zzfy.zzp(j, f);
        if (z) {
            j3 = this.zzf;
        } else {
            j3 = this.zze;
        }
        if (j2 != -9223372036854775807L) {
            j3 = Math.min(j2 / 2, j3);
        }
        if (j3 > 0 && zzp < j3 && this.zzb.zza() < this.zzh) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final zzyx zzi() {
        return this.zzb;
    }
}
