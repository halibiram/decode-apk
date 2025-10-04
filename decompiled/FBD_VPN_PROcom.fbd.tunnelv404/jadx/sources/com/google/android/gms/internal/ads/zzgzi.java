package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzgzi {
    private static final zzgzg zza = new zzgzh();
    private static final zzgzg zzb;

    static {
        zzgzg zzgzgVar = null;
        try {
            zzgzgVar = (zzgzg) Class.forName(new ObfuscatedString(new long[]{-7587678468830544641L, -330717801822698022L, -6827452081172798705L, 3861708550162489862L, 5398455093894147672L, -7035235069716712740L}).toString()).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zzb = zzgzgVar;
    }

    public static zzgzg zza() {
        zzgzg zzgzgVar = zzb;
        if (zzgzgVar != null) {
            return zzgzgVar;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2371438781038919266L, -7222032443189481796L, 4777095174952732459L, 4731534599282877436L, 2947245981395987677L, 8402593008152399216L, 7471110251439200721L}).toString());
    }

    public static zzgzg zzb() {
        return zza;
    }
}
