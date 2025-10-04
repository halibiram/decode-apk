package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgxp implements zzgfs {
    private final zzgmm zza;
    private final byte[] zzb;

    private zzgxp(byte[] bArr, byte[] bArr2) {
        this.zza = new zzgmm(bArr);
        this.zzb = bArr2;
    }

    public static zzgfs zzb(zzgls zzglsVar) {
        return new zzgxp(zzglsVar.zzd().zzd(zzggb.zza()), zzglsVar.zzc().zzc());
    }

    private final byte[] zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length >= 40) {
            return this.zza.zzb(ByteBuffer.wrap(bArr, 24, length - 24), Arrays.copyOf(bArr, 24), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{8219658696219471203L, 2861700851750472328L, -4853285717726193533L, 3566848531624955261L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return zzc(bArr, bArr2);
        }
        if (zzgpm.zzb(bArr3, bArr)) {
            byte[] bArr4 = this.zzb;
            return zzc(Arrays.copyOfRange(bArr, bArr4.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5888443556326062939L, -6540394604441252845L, -8956973555835761931L, 7868205000111443997L, -8817047368934246511L, -4175948636380347577L, -8325038196496341170L}).toString());
    }
}
