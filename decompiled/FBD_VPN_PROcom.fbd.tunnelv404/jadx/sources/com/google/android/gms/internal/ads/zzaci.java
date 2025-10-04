package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzaci implements zzadu {
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;
    private final long zzf;

    public zzaci(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length > 0) {
            int i = length - 1;
            this.zzf = jArr2[i] + jArr3[i];
        } else {
            this.zzf = 0L;
        }
    }

    public final String toString() {
        long[] jArr = this.zzd;
        long[] jArr2 = this.zze;
        long[] jArr3 = this.zzc;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(jArr3);
        String arrays3 = Arrays.toString(jArr2);
        String arrays4 = Arrays.toString(jArr);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4302290066532027705L, -836958145846954299L, 7472708056109677432L, 7047458440189494495L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{6972333090060058134L, 4517979261573848806L}).toString());
        sb.append(arrays);
        sb.append(new ObfuscatedString(new long[]{5573254888441298756L, -1826957117898720362L, 3303914818577962283L}).toString());
        sb.append(arrays2);
        sb.append(new ObfuscatedString(new long[]{-1690956146248977552L, -5204788547926434455L, 506959337622181486L}).toString());
        sb.append(arrays3);
        sb.append(new ObfuscatedString(new long[]{-5825604940131367936L, 7302829281182785187L, 8980193519295153049L}).toString());
        sb.append(arrays4);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8263402639998763932L, 8108572060883632603L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        long[] jArr = this.zze;
        int zzc = zzfy.zzc(jArr, j, true, true);
        zzadv zzadvVar = new zzadv(jArr[zzc], this.zzc[zzc]);
        if (zzadvVar.zzb < j && zzc != this.zza - 1) {
            int i = zzc + 1;
            return new zzads(zzadvVar, new zzadv(this.zze[i], this.zzc[i]));
        }
        return new zzads(zzadvVar, zzadvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return true;
    }
}
