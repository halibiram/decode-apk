package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblx implements zzbng {
    private final zzbly zza;

    public zzblx(zzbly zzblyVar) {
        this.zza = zzblyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{-6633545999256335556L, -482027384548403013L}).toString());
        if (str == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-4709786402400617791L, 3756223724103946164L, -224969152089082575L, 1080109342437526531L, 225912782587585761L, -623379716426953774L}).toString());
        } else {
            this.zza.zzb(str, (String) map.get(new ObfuscatedString(new long[]{-8861441161608059427L, -3771728957953742548L}).toString()));
        }
    }
}
