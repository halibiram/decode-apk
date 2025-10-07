package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmt implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        try {
            String str = (String) map.get(new ObfuscatedString(new long[]{4504881582969253101L, -6600660329904451018L}).toString());
            if (!zzfwk.zzc(new ObfuscatedString(new long[]{-7995636079340843182L, -8661521398851999236L}).toString(), str) && !zzfwk.zzc(new ObfuscatedString(new long[]{6325750444220224628L, -827797730061522840L}).toString(), str)) {
                return;
            }
            zzfuf.zzi(zzcjkVar.getContext()).zzm(Boolean.parseBoolean(str));
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-1396139377567012282L, 7892747762368827418L, 1134531202788721634L, -8489499083898976196L, -413222455306802683L, 1504931373871669847L, -8495374443801638362L, 2065481399142519084L}).toString());
        }
    }
}
