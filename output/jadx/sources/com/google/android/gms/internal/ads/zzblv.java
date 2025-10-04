package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzblv implements zzbng {
    private final zzblw zza;

    public zzblv(zzblw zzblwVar) {
        this.zza = zzblwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        if (this.zza == null) {
            return;
        }
        String str = (String) map.get(new ObfuscatedString(new long[]{8941738810900464713L, -2449869941422851394L}).toString());
        if (str == null) {
            zzcec.zzi(new ObfuscatedString(new long[]{725693721406685491L, 6944294563247257892L, 8782774080330278277L, 8826940543135020512L, -8148575876424407750L, -6717589894393055898L}).toString());
            str = new ObfuscatedString(new long[]{7382531408766019799L}).toString();
        }
        Bundle bundle = null;
        if (map.containsKey(new ObfuscatedString(new long[]{-7390470699197960297L, -8093107207909673572L}).toString())) {
            try {
                bundle = com.google.android.gms.ads.internal.util.zzbw.zza(new JSONObject((String) map.get(new ObfuscatedString(new long[]{1195700016785362470L, -907325249506677885L}).toString())));
            } catch (JSONException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-1927853560100853023L, 6050854014613877374L, 3172574786040679678L, 375321259590010107L, 3915241580865610255L, -2001819775468243259L}).toString(), e);
            }
        }
        if (bundle == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{-7868940605633869643L, -6074820153422714350L, 8420847161814257230L, 5115191276873538719L, 4579172294003158361L, -6844279103353103615L}).toString());
        } else {
            this.zza.zza(str, bundle);
        }
    }
}
