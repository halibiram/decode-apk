package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnl implements zzbng {
    private final Context zza;

    public zzbnl(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        char c;
        if (!com.google.android.gms.ads.internal.zzt.zzn().zzp(this.zza)) {
            return;
        }
        String str = (String) map.get(new ObfuscatedString(new long[]{-6734197616230132469L, 1637405322428342052L, -6808821797496445144L}).toString());
        String str2 = (String) map.get(new ObfuscatedString(new long[]{-3950801601630822718L, -3219046157332821613L}).toString());
        int hashCode = str.hashCode();
        if (hashCode != 94399) {
            if (hashCode != 94401) {
                if (hashCode == 94407 && str.equals(new ObfuscatedString(new long[]{2061395228199670591L, -4710012352676725299L}).toString())) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals(new ObfuscatedString(new long[]{3027369094648216L, -248985981692888520L}).toString())) {
                    c = 0;
                }
                c = 65535;
            }
        } else {
            if (str.equals(new ObfuscatedString(new long[]{4639420359746079259L, -5848036213976199655L}).toString())) {
                c = 2;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    zzcec.zzg(new ObfuscatedString(new long[]{-5409027014342899420L, -221167701904317827L, 5847736200126090284L, 6530278217150012024L, -4714347122164689664L, -2197033213402703680L, 2981811849368744160L, -5636254647978068137L}).toString());
                    return;
                } else {
                    com.google.android.gms.ads.internal.zzt.zzn().zzh(this.zza, str2);
                    return;
                }
            }
            com.google.android.gms.ads.internal.zzt.zzn().zzk(this.zza, str2);
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzn().zzj(this.zza, str2);
    }
}
