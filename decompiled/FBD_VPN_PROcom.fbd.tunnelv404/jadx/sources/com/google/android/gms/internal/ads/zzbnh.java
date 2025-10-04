package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnh implements zzbng {
    private final zzbni zza;

    public zzbnh(zzbni zzbniVar) {
        this.zza = zzbniVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        boolean equals = new ObfuscatedString(new long[]{7502593378977332281L, 5348848211678739623L}).toString().equals(map.get(new ObfuscatedString(new long[]{-6623011027635357363L, 610105042665763800L, 5732962096833116498L, 8603830488489543904L}).toString()));
        boolean equals2 = new ObfuscatedString(new long[]{-6180949197528012798L, 1237057454015050326L}).toString().equals(map.get(new ObfuscatedString(new long[]{5815372357401903053L, 1908136854033144182L}).toString()));
        float f = 0.0f;
        try {
            if (map.get(new ObfuscatedString(new long[]{789248884473227690L, -9184690334697748190L, -5979851082047634190L}).toString()) != null) {
                f = Float.parseFloat((String) map.get(new ObfuscatedString(new long[]{2749309485508816201L, 4561640216961362061L, -5950483515122546668L}).toString()));
            }
        } catch (NumberFormatException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7835397298126006276L, -5790995660915970105L, -2330299996090179218L, -433369313416678104L}).toString(), e);
        }
        this.zza.zzc(equals);
        this.zza.zzb(equals2, f);
        zzcjkVar.zzav(equals);
    }
}
