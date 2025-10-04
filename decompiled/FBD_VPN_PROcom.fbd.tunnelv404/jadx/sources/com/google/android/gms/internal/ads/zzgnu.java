package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgnu {
    private static final zzgnu zza = new zzgnu();
    private final Map zzb = new HashMap();

    public static zzgnu zzb() {
        return zza;
    }

    private final synchronized zzggc zzd(zzggq zzggqVar, @Nullable Integer num) {
        zzgnt zzgntVar;
        zzgntVar = (zzgnt) this.zzb.get(zzggqVar.getClass());
        if (zzgntVar != null) {
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8871968361490587791L, 365100056662069426L, -6110707951560242523L, 8666209787207710472L, 2541077132822375914L, 7034448614413179843L}).toString() + String.valueOf(zzggqVar) + new ObfuscatedString(new long[]{7865700917709720024L, -5701620418231535674L, -5060712715235424079L, -518815658519839608L, -1266192007683835889L, 6716480122089840268L, -7379496277537011325L}).toString());
        }
        return zzgntVar.zza(zzggqVar, null);
    }

    public final zzggc zza(zzggq zzggqVar, @Nullable Integer num) {
        return zzd(zzggqVar, null);
    }

    public final synchronized void zzc(zzgnt zzgntVar, Class cls) {
        try {
            zzgnt zzgntVar2 = (zzgnt) this.zzb.get(cls);
            if (zzgntVar2 != null && !zzgntVar2.equals(zzgntVar)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{3398705594020352198L, -4514401604229267126L, -7238437067999630723L, 9060981503445761772L, 2833398370936387562L, -152893727941003769L, -1844519170083245776L}).toString() + cls.toString() + new ObfuscatedString(new long[]{7661080605626977348L, -3775047106047703417L, 892666076582698803L, 7274061293841625905L}).toString());
            }
            this.zzb.put(cls, zzgntVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
