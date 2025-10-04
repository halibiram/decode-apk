package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzgyh extends zzgyg {
    protected final byte[] zza;

    public zzgyh(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgyl) || zzd() != ((zzgyl) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (obj instanceof zzgyh) {
            zzgyh zzgyhVar = (zzgyh) obj;
            int zzr = zzr();
            int zzr2 = zzgyhVar.zzr();
            if (zzr != 0 && zzr2 != 0 && zzr != zzr2) {
                return false;
            }
            return zzg(zzgyhVar, 0, zzd());
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zza, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgyg
    public final boolean zzg(zzgyl zzgylVar, int i, int i2) {
        if (i2 <= zzgylVar.zzd()) {
            int i3 = i + i2;
            if (i3 <= zzgylVar.zzd()) {
                if (zzgylVar instanceof zzgyh) {
                    zzgyh zzgyhVar = (zzgyh) zzgylVar;
                    byte[] bArr = this.zza;
                    byte[] bArr2 = zzgyhVar.zza;
                    int zzc = zzc() + i2;
                    int zzc2 = zzc();
                    int zzc3 = zzgyhVar.zzc() + i;
                    while (zzc2 < zzc) {
                        if (bArr[zzc2] != bArr2[zzc3]) {
                            return false;
                        }
                        zzc2++;
                        zzc3++;
                    }
                    return true;
                }
                return zzgylVar.zzk(i, i3).equals(zzk(0, i2));
            }
            int zzd = zzgylVar.zzd();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{212148714193660661L, -6285046342674955198L, 6614974860265166662L, 1858138829080401762L}).toString());
            sb.append(i);
            sb.append(new ObfuscatedString(new long[]{-8094232374430199263L, -6734180055617411612L}).toString());
            sb.append(i2);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3978352141797522171L, 5327598117480824566L}), sb, zzd));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1391429706254364866L, 4840404145766711147L, 192756434601792763L, 3418457696349153800L}).toString() + i2 + zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final int zzi(int i, int i2, int i3) {
        return zzhae.zzb(i, this.zza, zzc() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final int zzj(int i, int i2, int i3) {
        int zzc = zzc() + i2;
        return zzhde.zzf(i, this.zza, zzc, i3 + zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final zzgyl zzk(int i, int i2) {
        int zzq = zzgyl.zzq(i, i2, zzd());
        if (zzq == 0) {
            return zzgyl.zzb;
        }
        return new zzgye(this.zza, zzc() + i, zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final zzgyt zzl() {
        return zzgyt.zzI(this.zza, zzc(), zzd(), true);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final String zzm(Charset charset) {
        return new String(this.zza, zzc(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final ByteBuffer zzn() {
        return ByteBuffer.wrap(this.zza, zzc(), zzd()).asReadOnlyBuffer();
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final void zzo(zzgya zzgyaVar) {
        zzgyaVar.zza(this.zza, zzc(), zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzgyl
    public final boolean zzp() {
        int zzc = zzc();
        return zzhde.zzj(this.zza, zzc, zzd() + zzc);
    }
}
