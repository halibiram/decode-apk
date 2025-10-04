package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgwn implements zzgfs {
    private static final ThreadLocal zza = new zzgwl();
    private static final ThreadLocal zzb = new zzgwm();
    private final byte[] zzc;
    private final byte[] zzd;
    private final byte[] zze;
    private final SecretKeySpec zzf;
    private final int zzg;

    private zzgwn(byte[] bArr, int i, byte[] bArr2) {
        if (zzgmv.zza(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7352762975150403621L, 3140110668606673119L, 6737594953847945421L, -3972413952229910358L, -6424344557410861129L, 3890204013838202429L}).toString());
            }
            this.zzg = i;
            zzgxo.zza(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, new ObfuscatedString(new long[]{3652823184888549L, -2547909737560860991L}).toString());
            this.zzf = secretKeySpec;
            Cipher cipher = (Cipher) zza.get();
            cipher.init(1, secretKeySpec);
            byte[] zzc = zzc(cipher.doFinal(new byte[16]));
            this.zzc = zzc;
            this.zzd = zzc(zzc);
            this.zze = bArr2;
            return;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{7724769131059400305L, 2697573293953553822L, 5923942078960305858L, -2614557269210702234L, 1922000143214079482L, 3628467004959124170L}).toString());
    }

    public static zzgfs zzb(zzgii zzgiiVar) {
        if (zzgmv.zza(1)) {
            zzgiiVar.zza();
            return new zzgwn(zzgiiVar.zzc().zzd(zzggb.zza()), zzgiiVar.zza().zzb(), zzgiiVar.zzb().zzc());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{6061595478547639302L, -1045137523019931244L, 3936367601415979300L, 8992740192556442540L, 613518669388215947L, 7523759820219323811L}).toString());
    }

    private static byte[] zzc(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (i < 15) {
            byte b = bArr[i];
            int i2 = i + 1;
            bArr2[i] = (byte) (((b + b) ^ ((bArr[i2] & 255) >>> 7)) & 255);
            i = i2;
        }
        byte b2 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b2 + b2));
        return bArr2;
    }

    private final byte[] zzd(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        int length;
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(zzf(bArr3, this.zzc));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        int i4 = 0;
        int i5 = 0;
        while (i3 - i5 > 16) {
            for (int i6 = 0; i6 < 16; i6++) {
                doFinal[i6] = (byte) (bArr[(i2 + i5) + i6] ^ doFinal[i6]);
            }
            doFinal = cipher.doFinal(doFinal);
            i5 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i5 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            bArr2 = zzf(copyOfRange, this.zzc);
        } else {
            byte[] copyOf = Arrays.copyOf(this.zzd, 16);
            while (true) {
                length = copyOfRange.length;
                if (i4 >= length) {
                    break;
                }
                copyOf[i4] = (byte) (copyOf[i4] ^ copyOfRange[i4]);
                i4++;
            }
            copyOf[length] = (byte) (copyOf[length] ^ 128);
            bArr2 = copyOf;
        }
        return cipher.doFinal(zzf(doFinal, bArr2));
    }

    private final byte[] zze(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = (length - this.zzg) - 16;
        if (i >= 0) {
            Cipher cipher = (Cipher) zza.get();
            cipher.init(1, this.zzf);
            byte[] zzd = zzd(cipher, 0, bArr, 0, this.zzg);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            byte[] bArr3 = bArr2;
            byte[] zzd2 = zzd(cipher, 1, bArr3, 0, bArr3.length);
            byte[] zzd3 = zzd(cipher, 2, bArr, this.zzg, i);
            int i2 = length - 16;
            byte b = 0;
            for (int i3 = 0; i3 < 16; i3++) {
                b = (byte) (b | (((bArr[i2 + i3] ^ zzd2[i3]) ^ zzd[i3]) ^ zzd3[i3]));
            }
            if (b == 0) {
                Cipher cipher2 = (Cipher) zzb.get();
                cipher2.init(1, this.zzf, new IvParameterSpec(zzd));
                return cipher2.doFinal(bArr, this.zzg, i);
            }
            throw new AEADBadTagException(new ObfuscatedString(new long[]{4611918514006479283L, 7213214346627703454L, -7917114252058870770L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2557820877462501518L, -599229658280681051L, 3890734127030073363L, 7929323426658349246L}).toString());
    }

    private static byte[] zzf(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zze;
        if (bArr3.length == 0) {
            return zze(bArr, bArr2);
        }
        if (zzgpm.zzb(bArr3, bArr)) {
            byte[] bArr4 = this.zze;
            return zze(Arrays.copyOfRange(bArr, bArr4.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{7871885050900524316L, -6181270723934329195L, -2203930036868606076L, 7472966586479713183L, -8941566282084107769L, -9125491749798835584L, 6390935168223385042L}).toString());
    }
}
