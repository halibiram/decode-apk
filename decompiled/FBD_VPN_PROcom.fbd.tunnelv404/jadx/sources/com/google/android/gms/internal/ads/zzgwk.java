package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgwk implements zzgxj {
    private static final ThreadLocal zza = new zzgwj();
    private final SecretKeySpec zzb;
    private final int zzc;
    private final int zzd;

    public zzgwk(byte[] bArr, int i) {
        if (zzgmv.zza(2)) {
            zzgxo.zza(bArr.length);
            this.zzb = new SecretKeySpec(bArr, new ObfuscatedString(new long[]{-5631742151102291348L, -1096750135141987041L}).toString());
            int blockSize = ((Cipher) zza.get()).getBlockSize();
            this.zzd = blockSize;
            if (i <= blockSize) {
                this.zzc = i;
                return;
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-821496250383057433L, -6842219639947443160L, -4869687822969162864L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7383862254789151657L, -4591690330065481358L, -5373709710136885660L, 6941759894027770322L, 5683051497780786156L, 8378503308934634279L, -6422960862874220588L, 6096029213215328661L, 7023347860838438702L, 2412305614286686244L, 4117242007572407754L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgxj
    public final byte[] zza(byte[] bArr) {
        int length = bArr.length;
        int i = this.zzc;
        if (length >= i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            int i2 = this.zzc;
            int i3 = length - i2;
            byte[] bArr3 = new byte[i3];
            Cipher cipher = (Cipher) zza.get();
            byte[] bArr4 = new byte[this.zzd];
            System.arraycopy(bArr2, 0, bArr4, 0, this.zzc);
            cipher.init(2, this.zzb, new IvParameterSpec(bArr4));
            if (cipher.doFinal(bArr, i2, i3, bArr3, 0) == i3) {
                return bArr3;
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{2265068075014428839L, -2496734736524879851L, 5876340518956844259L, 7504732225927594855L, 6684606013261467654L, -1448406405104386446L, -1142339248055659725L, 9058233897583732817L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7879183324430306838L, 1988215805167613362L, -8182563622986128161L, -2953820503069860443L}).toString());
    }
}
