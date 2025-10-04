package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbns implements zzbng {
    private final zzdzx zza;

    public zzbns(zzdzx zzdzxVar) {
        this.zza = zzdzxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
            String str = (String) map.get(new ObfuscatedString(new long[]{4452571985237782283L, -4335618542290737897L}).toString());
            String str2 = (String) map.get(new ObfuscatedString(new long[]{-2507506310855719307L, -3939238725596010726L}).toString());
            String str3 = (String) map.get(new ObfuscatedString(new long[]{-7116113046583646718L, 8793262138590579987L, 1309712807208881404L}).toString());
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                String str4 = (String) map.get(new ObfuscatedString(new long[]{-2938398093438753380L, -5778779213356155391L}).toString());
                if (str.equals(new ObfuscatedString(new long[]{-569230160280812971L, -3850015089662188029L}).toString()) && !TextUtils.isEmpty(str4)) {
                    this.zza.zzh(str2, str4, str3);
                } else if (str.equals(new ObfuscatedString(new long[]{-1735271046173780876L, 7822538065021962932L}).toString())) {
                    this.zza.zzi(str2, str3);
                }
            }
        }
    }
}
