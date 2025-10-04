package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgwr implements zzgfs {
    private final zzgxj zza;
    private final zzggp zzb;
    private final int zzc;
    private final byte[] zzd;

    private zzgwr(zzgxj zzgxjVar, zzggp zzggpVar, int i, byte[] bArr) {
        this.zza = zzgxjVar;
        this.zzb = zzggpVar;
        this.zzc = i;
        this.zzd = bArr;
    }

    public static zzgfs zzb(zzghp zzghpVar) {
        zzgwk zzgwkVar = new zzgwk(zzghpVar.zzc().zzd(zzggb.zza()), zzghpVar.zza().zzd());
        String valueOf = String.valueOf(zzghpVar.zza().zzf());
        return new zzgwr(zzgwkVar, new zzgxn(new zzgxm(new ObfuscatedString(new long[]{-4534314939726130344L, 1564737500509148662L}).toString().concat(valueOf), new SecretKeySpec(zzghpVar.zzd().zzd(zzggb.zza()), new ObfuscatedString(new long[]{5235156694585767833L, -3635845506718894282L}).toString())), zzghpVar.zza().zze()), zzghpVar.zza().zze(), zzghpVar.zzb().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzd;
        int i = this.zzc;
        int length = bArr3.length;
        int length2 = bArr.length;
        if (length2 >= i + length) {
            if (zzgpm.zzb(bArr3, bArr)) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, this.zzd.length, length2 - this.zzc);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, length2 - this.zzc, length2);
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                if (MessageDigest.isEqual(((zzgxn) this.zzb).zzc(zzgwp.zzb(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))), copyOfRange2)) {
                    return this.zza.zza(copyOfRange);
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{350469391980576989L, 4837406575227352102L, -4541595913724177256L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7201384417422248463L, -1099709992524605583L, 3226946970173960619L, -1606900229619610415L, 8187231700689617730L, 5970958112248219194L, -8364833464357558939L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{3550627344780120237L, -4859354548872192124L, 2963262929037699081L, 2412162988936858385L, -732458654310585979L, 8766555821290450614L, 7161116323664917227L}).toString());
    }
}
