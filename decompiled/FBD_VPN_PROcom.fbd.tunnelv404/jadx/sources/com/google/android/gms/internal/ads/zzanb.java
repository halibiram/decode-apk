package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzanb {
    private static final byte[] zzd = {0, 0, 1};
    public int zza;
    public int zzb;
    public byte[] zzc = new byte[128];
    private boolean zze;
    private int zzf;

    public zzanb(int i) {
    }

    public final void zza(byte[] bArr, int i, int i2) {
        if (!this.zze) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.zzc;
        int length = bArr2.length;
        int i4 = this.zza + i3;
        if (length < i4) {
            this.zzc = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.zzc, this.zza, i3);
        this.zza += i3;
    }

    public final void zzb() {
        this.zze = false;
        this.zza = 0;
        this.zzf = 0;
    }

    public final boolean zzc(int i, int i2) {
        int i3 = this.zzf;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i == 179 || i == 181) {
                            this.zza -= i2;
                            this.zze = false;
                            return true;
                        }
                    } else if ((i & 240) != 32) {
                        zzff.zzf(new ObfuscatedString(new long[]{-2322246270871425971L, 4426309529631088552L, -3869057146225518857L}).toString(), new ObfuscatedString(new long[]{8253322096611329557L, 1328406059116961505L, -2181317975322649084L, 3007995335222347014L, -2945039759311303201L}).toString());
                        zzb();
                    } else {
                        this.zzb = this.zza;
                        this.zzf = 4;
                    }
                } else if (i > 31) {
                    zzff.zzf(new ObfuscatedString(new long[]{697017025117781493L, -8499922708678341752L, -1889336328705373210L}).toString(), new ObfuscatedString(new long[]{-2004291219212887261L, -4326066113101688306L, 3572498165489862775L, 2124948464643757090L, -8677547861912653155L}).toString());
                    zzb();
                } else {
                    this.zzf = 3;
                }
            } else if (i != 181) {
                zzff.zzf(new ObfuscatedString(new long[]{644862758520011224L, -6024385009438331564L, 4856987939275107264L}).toString(), new ObfuscatedString(new long[]{8561601509347724934L, 6935581276821124225L, 8116922797981157717L, -7653411449081131644L, 8769469729255818647L}).toString());
                zzb();
            } else {
                this.zzf = 2;
            }
        } else if (i == 176) {
            this.zzf = 1;
            this.zze = true;
        }
        zza(zzd, 0, 3);
        return false;
    }
}
