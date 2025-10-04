package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.List;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfxh implements Serializable, zzfxf {
    private final List zza;

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzfxh) {
            return this.zza.equals(((zzfxh) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-7682737842384006547L, -6393831967335576843L, -8137180553069253976L}).toString());
        sb.append(new ObfuscatedString(new long[]{-6362058778284686798L, -8905130547292897860L}).toString());
        boolean z = true;
        for (Object obj : this.zza) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfxf
    public final boolean zza(Object obj) {
        for (int i = 0; i < this.zza.size(); i++) {
            if (!((zzfxf) this.zza.get(i)).zza(obj)) {
                return false;
            }
        }
        return true;
    }
}
