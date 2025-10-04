package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgmu implements zzgfs {
    private static final byte[] zza = zzgxi.zzb(new ObfuscatedString(new long[]{-6508549220237649141L, 7825246294309195200L}).toString());
    private static final byte[] zzb = zzgxi.zzb(new ObfuscatedString(new long[]{6542609864750460423L, 2438696374311296783L, -3069781872670211743L}).toString());
    private static final byte[] zzc = zzgxi.zzb(new ObfuscatedString(new long[]{458843303961963111L, 8293883489840275230L, -6549959850636520653L, -7095818039046271901L, 7476169743169660674L}).toString());
    private static final byte[] zzd = zzgxi.zzb(new ObfuscatedString(new long[]{-8045772910576616654L, 1426869557676136505L, -3638431961167966156L, 4065820756890424210L}).toString());
    private static final byte[] zze = zzgxi.zzb(new ObfuscatedString(new long[]{-7300321163817012792L, 2464590632738619036L, 3670126655798675858L, -8383914416823581149L, -7947570266555928733L, -2389297025892804200L}).toString());
    private static final ThreadLocal zzf = new zzgmt();
    private final SecretKey zzg;
    private final byte[] zzh;

    private zzgmu(byte[] bArr, byte[] bArr2) {
        this.zzh = bArr2;
        zzgxo.zza(bArr.length);
        this.zzg = new SecretKeySpec(bArr, new ObfuscatedString(new long[]{6264956571760569887L, 3138490855970137484L}).toString());
    }

    public static zzgfs zzb(zzgjm zzgjmVar) {
        return new zzgmu(zzgjmVar.zzc().zzd(zzggb.zza()), zzgjmVar.zzb().zzc());
    }

    private static AlgorithmParameterSpec zzd(byte[] bArr, int i, int i2) {
        return new GCMParameterSpec(128, bArr, 0, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zze(Cipher cipher) {
        try {
            byte[] bArr = zzd;
            cipher.init(2, new SecretKeySpec(zzc, new ObfuscatedString(new long[]{6601881189341643529L, 1054204900240526024L}).toString()), zzd(bArr, 0, bArr.length));
            cipher.updateAAD(zzb);
            byte[] bArr2 = zze;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), zza);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    private final byte[] zzf(byte[] bArr, byte[] bArr2) {
        Cipher cipher = (Cipher) zzf.get();
        if (cipher != null) {
            int length = bArr.length;
            if (length >= 28) {
                cipher.init(2, this.zzg, zzd(bArr, 0, 12));
                if (bArr2 != null && bArr2.length != 0) {
                    cipher.updateAAD(bArr2);
                }
                return cipher.doFinal(bArr, 12, length - 12);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1185546913361547343L, 5119239161429229149L, 7620870114129873380L, -3402083701150528285L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7155058347626904044L, -2075300561305863288L, -3644565467285039050L, -5066203628310321316L, -6910063812021078640L, 4522709058810374818L, 4297713994570233803L, 4312489864303118631L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzh;
        if (bArr3.length == 0) {
            return zzf(bArr, bArr2);
        }
        if (zzgpm.zzb(bArr3, bArr)) {
            byte[] bArr4 = this.zzh;
            return zzf(Arrays.copyOfRange(bArr, bArr4.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6127765500224762865L, -3222332109051044090L, 7127181896692643816L, 5337968301008928604L, 7298227078823070122L, -2453663832437003882L, 6382449330872782710L}).toString());
    }
}
