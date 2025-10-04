package com.google.android.gms.internal.ads;

import androidx.work.WorkInfo;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgyw extends zzgza {
    private final byte[] zza;
    private final int zzb;
    private int zzc;

    public zzgyw(byte[] bArr, int i, int i2) {
        super(null);
        int length = bArr.length;
        if (((length - i2) | i2) >= 0) {
            this.zza = bArr;
            this.zzc = 0;
            this.zzb = i2;
            return;
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-3399191199267691791L, 6680973232493464229L, 8288878985510776903L, 301354937594939919L, 769908972428386961L, 1521309567684394844L, -5294442499144908883L, -2909605485331699573L, 8138297283836313869L}).toString(), Integer.valueOf(length), 0, Integer.valueOf(i2)));
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzH() {
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzI(byte b) {
        try {
            byte[] bArr = this.zza;
            int i = this.zzc;
            this.zzc = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgyx(String.format(new ObfuscatedString(new long[]{-4256310881841381136L, -7435420246641608943L, 725694238715830991L, -3972113501046388571L, 6739736683098490304L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzJ(int i, boolean z) {
        zzs(i << 3);
        zzI(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzK(int i, zzgyl zzgylVar) {
        zzs((i << 3) | 2);
        zzs(zzgylVar.zzd());
        zzgylVar.zzo(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgza, com.google.android.gms.internal.ads.zzgya
    public final void zza(byte[] bArr, int i, int i2) {
        zze(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final int zzb() {
        return this.zzb - this.zzc;
    }

    public final void zze(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.zza, this.zzc, i2);
            this.zzc += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzgyx(String.format(new ObfuscatedString(new long[]{-4605157175143819974L, 6034582352372422349L, 4066738616936798256L, 546366108588834126L, -9016304532521288406L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), Integer.valueOf(i2)), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzh(int i, int i2) {
        zzs((i << 3) | 5);
        zzi(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzi(int i) {
        try {
            byte[] bArr = this.zza;
            int i2 = this.zzc;
            int i3 = i2 + 1;
            this.zzc = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.zzc = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.zzc = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zzc = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgyx(String.format(new ObfuscatedString(new long[]{1686665845555234456L, 1486014149919785653L, 3964808311603171352L, -1474036031794263028L, -3194425754377010978L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzj(int i, long j) {
        zzs((i << 3) | 1);
        zzk(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzk(long j) {
        try {
            byte[] bArr = this.zza;
            int i = this.zzc;
            int i2 = i + 1;
            this.zzc = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i + 2;
            this.zzc = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i + 3;
            this.zzc = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i + 4;
            this.zzc = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i + 5;
            this.zzc = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.zzc = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.zzc = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zzc = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgyx(String.format(new ObfuscatedString(new long[]{-7885859861994789090L, 7986552235024663825L, -9080186321882499003L, 3905920732658136498L, 8759528485821241599L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzl(int i, int i2) {
        zzs(i << 3);
        zzm(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzm(int i) {
        if (i >= 0) {
            zzs(i);
        } else {
            zzu(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzn(int i, zzhbe zzhbeVar, zzhby zzhbyVar) {
        zzs((i << 3) | 2);
        zzs(((zzgxt) zzhbeVar).zzat(zzhbyVar));
        zzhbyVar.zzm(zzhbeVar, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzo(int i, String str) {
        zzs((i << 3) | 2);
        zzp(str);
    }

    public final void zzp(String str) {
        int i = this.zzc;
        try {
            int zzz = zzgza.zzz(str.length() * 3);
            int zzz2 = zzgza.zzz(str.length());
            if (zzz2 == zzz) {
                int i2 = i + zzz2;
                this.zzc = i2;
                int zzd = zzhde.zzd(str, this.zza, i2, this.zzb - i2);
                this.zzc = i;
                zzs((zzd - i) - zzz2);
                this.zzc = zzd;
                return;
            }
            zzs(zzhde.zze(str));
            byte[] bArr = this.zza;
            int i3 = this.zzc;
            this.zzc = zzhde.zzd(str, bArr, i3, this.zzb - i3);
        } catch (zzhdd e) {
            this.zzc = i;
            zzD(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgyx(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzq(int i, int i2) {
        zzs((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzr(int i, int i2) {
        zzs(i << 3);
        zzs(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzs(int i) {
        while ((i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) != 0) {
            try {
                byte[] bArr = this.zza;
                int i2 = this.zzc;
                this.zzc = i2 + 1;
                bArr[i2] = (byte) ((i | 128) & 255);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzgyx(String.format(new ObfuscatedString(new long[]{6083306421265951669L, -6495186920669823054L, -1343792471942121492L, -4493992153984538020L, 5339940426212917841L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
            }
        }
        byte[] bArr2 = this.zza;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzt(int i, long j) {
        zzs(i << 3);
        zzu(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgza
    public final void zzu(long j) {
        boolean z;
        z = zzgza.zzb;
        if (!z || this.zzb - this.zzc < 10) {
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr = this.zza;
                    int i = this.zzc;
                    this.zzc = i + 1;
                    bArr[i] = (byte) ((((int) j) | 128) & 255);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzgyx(String.format(new ObfuscatedString(new long[]{3482640044624789253L, 5496253092821584322L, 4351762693956240405L, 8463891713601392950L, -4015585128038563637L}).toString(), Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
                }
            }
            byte[] bArr2 = this.zza;
            int i2 = this.zzc;
            this.zzc = i2 + 1;
            bArr2[i2] = (byte) j;
            return;
        }
        while (true) {
            int i3 = (int) j;
            if ((j & (-128)) == 0) {
                byte[] bArr3 = this.zza;
                int i4 = this.zzc;
                this.zzc = 1 + i4;
                zzhcz.zzq(bArr3, i4, (byte) i3);
                return;
            }
            byte[] bArr4 = this.zza;
            int i5 = this.zzc;
            this.zzc = i5 + 1;
            zzhcz.zzq(bArr4, i5, (byte) ((i3 | 128) & 255));
            j >>>= 7;
        }
    }
}
