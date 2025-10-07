package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzfww {
    private final String zza;
    private final zzfwu zzb;
    private zzfwu zzc;

    public /* synthetic */ zzfww(String str, zzfwv zzfwvVar) {
        zzfwu zzfwuVar = new zzfwu();
        this.zzb = zzfwuVar;
        this.zzc = zzfwuVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzfwu zzfwuVar = this.zzb.zzb;
        String obfuscatedString = new ObfuscatedString(new long[]{4693154281977858415L}).toString();
        while (zzfwuVar != null) {
            Object obj = zzfwuVar.zza;
            sb.append(obfuscatedString);
            if (obj != null && obj.getClass().isArray()) {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r2.length() - 1);
            } else {
                sb.append(obj);
            }
            zzfwuVar = zzfwuVar.zzb;
            obfuscatedString = new ObfuscatedString(new long[]{-8361246623787871445L, -1448549112545072190L}).toString();
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzfww zza(@CheckForNull Object obj) {
        zzfwu zzfwuVar = new zzfwu();
        this.zzc.zzb = zzfwuVar;
        this.zzc = zzfwuVar;
        zzfwuVar.zza = obj;
        return this;
    }
}
