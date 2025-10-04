package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public interface zzht extends zzgw {
    public static final zzfxf zza = new zzfxf() { // from class: com.google.android.gms.internal.ads.zzhn
        @Override // com.google.android.gms.internal.ads.zzfxf
        public final boolean zza(Object obj) {
            String str = (String) obj;
            if (str != null) {
                String zza2 = zzfwk.zza(str);
                if (!TextUtils.isEmpty(zza2)) {
                    if ((!zza2.contains(new ObfuscatedString(new long[]{-562489098220794684L, -5313684919869588643L}).toString()) || zza2.contains(new ObfuscatedString(new long[]{-1674334210842241014L, 5746256260417736949L}).toString())) && !zza2.contains(new ObfuscatedString(new long[]{-7709210897777129391L, 1063309141968803009L}).toString()) && !zza2.contains(new ObfuscatedString(new long[]{5321238661934717207L, -6405319551359118535L}).toString())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    };

    @Override // com.google.android.gms.internal.ads.zzgw
    Map zze();
}
