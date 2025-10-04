package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzaov {
    public static Pair zza(zzacv zzacvVar) {
        zzacvVar.zzj();
        zzaou zzd = zzd(1684108385, zzacvVar, new zzfp(8));
        ((zzack) zzacvVar).zzo(8, false);
        return Pair.create(Long.valueOf(zzacvVar.zzf()), Long.valueOf(zzd.zzb));
    }

    public static zzaot zzb(zzacv zzacvVar) {
        boolean z;
        byte[] bArr;
        zzfp zzfpVar = new zzfp(16);
        zzaou zzd = zzd(1718449184, zzacvVar, zzfpVar);
        if (zzd.zzb >= 16) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        zzack zzackVar = (zzack) zzacvVar;
        zzackVar.zzm(zzfpVar.zzM(), 0, 16, false);
        zzfpVar.zzK(0);
        int zzk = zzfpVar.zzk();
        int zzk2 = zzfpVar.zzk();
        int zzj = zzfpVar.zzj();
        int zzj2 = zzfpVar.zzj();
        int zzk3 = zzfpVar.zzk();
        int zzk4 = zzfpVar.zzk();
        int i = ((int) zzd.zzb) - 16;
        if (i > 0) {
            bArr = new byte[i];
            zzackVar.zzm(bArr, 0, i, false);
        } else {
            bArr = zzfy.zzf;
        }
        byte[] bArr2 = bArr;
        ((zzack) zzacvVar).zzo((int) (zzacvVar.zze() - zzacvVar.zzf()), false);
        return new zzaot(zzk, zzk2, zzj, zzj2, zzk3, zzk4, bArr2);
    }

    public static boolean zzc(zzacv zzacvVar) {
        zzfp zzfpVar = new zzfp(8);
        int i = zzaou.zza(zzacvVar, zzfpVar).zza;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        ((zzack) zzacvVar).zzm(zzfpVar.zzM(), 0, 4, false);
        zzfpVar.zzK(0);
        int zzg = zzfpVar.zzg();
        if (zzg != 1463899717) {
            zzff.zzc(new ObfuscatedString(new long[]{-4634416442277015625L, -2523092151268301884L, 4735209184905727142L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6220133365395246658L, 6978487948394798965L, 5916850632503923549L, -1912639784241150395L}), new StringBuilder(), zzg));
            return false;
        }
        return true;
    }

    private static zzaou zzd(int i, zzacv zzacvVar, zzfp zzfpVar) {
        zzaou zza = zzaou.zza(zzacvVar, zzfpVar);
        while (true) {
            int i2 = zza.zza;
            if (i2 != i) {
                zzff.zzf(new ObfuscatedString(new long[]{2686121200247925669L, -9026844122737939930L, 2462680557656447801L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2143888950329148201L, 1905933046827298031L, -6842181165130137797L, 5477400871385661341L, 1359171095288168645L}), new StringBuilder(), i2));
                long j = zza.zzb + 8;
                if (j <= 2147483647L) {
                    ((zzack) zzacvVar).zzo((int) j, false);
                    zza = zzaou.zza(zzacvVar, zzfpVar);
                } else {
                    throw zzcc.zzc(new ObfuscatedString(new long[]{-6748223717245240875L, -8397462454935757386L, 4990160769831542559L, -3240153972474760658L, 223749138343416401L, 8505798979903466754L}).toString() + zza.zza);
                }
            } else {
                return zza;
            }
        }
    }
}
