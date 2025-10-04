package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzgbs extends zzgbj implements Serializable {
    final zzgbj zza;

    public zzgbs(zzgbj zzgbjVar) {
        this.zza = zzgbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgbj, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.zza.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgbs) {
            return this.zza.equals(((zzgbs) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return -this.zza.hashCode();
    }

    public final String toString() {
        return this.zza.toString().concat(new ObfuscatedString(new long[]{1457136482782874382L, 2315295048768452428L, -1544785266986292339L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final zzgbj zza() {
        return this.zza;
    }
}
