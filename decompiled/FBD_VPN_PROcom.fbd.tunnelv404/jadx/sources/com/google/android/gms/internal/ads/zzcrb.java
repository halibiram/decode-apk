package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcrb implements zzcqv {
    private final zzdzd zza;

    public zzcrb(zzdzd zzdzdVar) {
        this.zza = zzdzdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        char c;
        String str = (String) map.get(new ObfuscatedString(new long[]{-4572706630594843563L, 1245377223539706674L}).toString());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals(new ObfuscatedString(new long[]{-8878762118079718749L, -2693292868963746240L}).toString())) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(new ObfuscatedString(new long[]{8070621908497518411L, -2221966190375619642L}).toString())) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                this.zza.zzl(zzdyz.zza);
                return;
            } else {
                this.zza.zzl(zzdyz.zzc);
                return;
            }
        }
        this.zza.zzl(zzdyz.zzb);
    }
}
