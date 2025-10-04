package com.google.android.gms.internal.measurement;

import androidx.work.WorkInfo;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzjg extends zzjj {
    private final byte[] zzb;
    private final int zzc;
    private int zzd;

    public zzjg(byte[] bArr, int i, int i2) {
        super(null);
        if (bArr != null) {
            int length = bArr.length;
            if (((length - i2) | i2) >= 0) {
                this.zzb = bArr;
                this.zzd = 0;
                this.zzc = i2;
                return;
            }
            throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{-4537048635552933019L, -7960974960546403670L, -8380344884151833477L, -6123834308778266680L, -5451289113456744285L, 8602917343586914703L, -1810268117330021641L, -3763632409195677794L, 5878267718986800846L}).toString(), Integer.valueOf(length), 0, Integer.valueOf(i2)));
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{311047876082254500L, 6548233831702040575L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final int zza() {
        return this.zzc - this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzb(byte b) {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            this.zzd = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzjh(String.format(new ObfuscatedString(new long[]{-8046735745729309266L, -1721825761742166703L, -4185689309761305502L, 8900582976985447943L, 5330124422237617127L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    public final void zzc(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, 0, this.zzb, this.zzd, i2);
            this.zzd += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzjh(String.format(new ObfuscatedString(new long[]{-5541897270744095543L, -7063217595743468768L, 772225944808972931L, -5683619740447888990L, 4928027192346673278L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), Integer.valueOf(i2)), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzd(int i, boolean z) {
        zzq(i << 3);
        zzb(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zze(int i, zzjb zzjbVar) {
        zzq((i << 3) | 2);
        zzq(zzjbVar.zzd());
        zzjbVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzf(int i, int i2) {
        zzq((i << 3) | 5);
        zzg(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzg(int i) {
        try {
            byte[] bArr = this.zzb;
            int i2 = this.zzd;
            int i3 = i2 + 1;
            this.zzd = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.zzd = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.zzd = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zzd = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzjh(String.format(new ObfuscatedString(new long[]{1141351869311150893L, -5431287733050403697L, 388034614372354872L, -4158983802331472092L, 7328534892216224223L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzh(int i, long j) {
        zzq((i << 3) | 1);
        zzi(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzi(long j) {
        try {
            byte[] bArr = this.zzb;
            int i = this.zzd;
            int i2 = i + 1;
            this.zzd = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i + 2;
            this.zzd = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i + 3;
            this.zzd = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i + 4;
            this.zzd = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i + 5;
            this.zzd = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.zzd = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.zzd = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zzd = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzjh(String.format(new ObfuscatedString(new long[]{4323077551270473485L, -8006810551587288045L, -251829791176527655L, -5306914638842574277L, -2851797467448273596L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzj(int i, int i2) {
        zzq(i << 3);
        zzk(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzk(int i) {
        if (i >= 0) {
            zzq(i);
        } else {
            zzs(i);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzl(byte[] bArr, int i, int i2) {
        zzc(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzm(int i, String str) {
        zzq((i << 3) | 2);
        zzn(str);
    }

    public final void zzn(String str) {
        int i = this.zzd;
        try {
            int zzA = zzjj.zzA(str.length() * 3);
            int zzA2 = zzjj.zzA(str.length());
            if (zzA2 == zzA) {
                int i2 = i + zzA2;
                this.zzd = i2;
                int zzb = zzna.zzb(str, this.zzb, i2, this.zzc - i2);
                this.zzd = i;
                zzq((zzb - i) - zzA2);
                this.zzd = zzb;
                return;
            }
            zzq(zzna.zzc(str));
            byte[] bArr = this.zzb;
            int i3 = this.zzd;
            this.zzd = zzna.zzb(str, bArr, i3, this.zzc - i3);
        } catch (zzmz e) {
            this.zzd = i;
            zzE(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzjh(e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzo(int i, int i2) {
        zzq((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzp(int i, int i2) {
        zzq(i << 3);
        zzq(i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzq(int i) {
        while ((i & WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) != 0) {
            try {
                byte[] bArr = this.zzb;
                int i2 = this.zzd;
                this.zzd = i2 + 1;
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzjh(String.format(new ObfuscatedString(new long[]{5197312038126111099L, 4708820768160393950L, -7861443392478291645L, 7886296196461270932L, 2520696881286321840L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
            }
        }
        byte[] bArr2 = this.zzb;
        int i3 = this.zzd;
        this.zzd = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzr(int i, long j) {
        zzq(i << 3);
        zzs(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final void zzs(long j) {
        boolean z;
        z = zzjj.zzc;
        if (z && this.zzc - this.zzd >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.zzb;
                int i = this.zzd;
                this.zzd = i + 1;
                zzmv.zzn(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.zzb;
            int i2 = this.zzd;
            this.zzd = 1 + i2;
            zzmv.zzn(bArr2, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                byte[] bArr3 = this.zzb;
                int i3 = this.zzd;
                this.zzd = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzjh(String.format(new ObfuscatedString(new long[]{5545765977541709263L, 5929251643384112288L, -2750437214621806821L, 8807998095360211361L, -7332654045288500134L}).toString(), Integer.valueOf(this.zzd), Integer.valueOf(this.zzc), 1), e);
            }
        }
        byte[] bArr4 = this.zzb;
        int i4 = this.zzd;
        this.zzd = i4 + 1;
        bArr4[i4] = (byte) j;
    }
}
