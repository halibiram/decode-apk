package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnx implements zzbng {
    private final zzbnw zza;

    public zzbnx(zzbnw zzbnwVar) {
        this.zza = zzbnwVar;
    }

    public static void zzb(zzcjk zzcjkVar, zzbnw zzbnwVar) {
        zzcjkVar.zzae(new ObfuscatedString(new long[]{1412612339361539034L, 1345358081617050476L}).toString(), new zzbnx(zzbnwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{-4067910117053248984L, 5314025143635188265L}).toString());
        if (new ObfuscatedString(new long[]{2877611365579995842L, -5714332901344015804L}).toString().equals(str)) {
            zzcag zzcagVar = null;
            try {
                int parseInt = Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{-802167305513127934L, 3148730915713401894L}).toString()));
                String str2 = (String) map.get(new ObfuscatedString(new long[]{4337835406771044265L, -3679411050979744245L}).toString());
                if (!TextUtils.isEmpty(str2)) {
                    zzcagVar = new zzcag(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-1449697422232001234L, 5163682869517258975L, -1305938778271055874L, 4208096062139094784L, 3812278132430335998L}).toString(), e);
            }
            this.zza.zza(zzcagVar);
            return;
        }
        if (new ObfuscatedString(new long[]{2710039989558838867L, 1342534458399590428L, 6944796428247510177L}).toString().equals(str)) {
            this.zza.zzc();
        } else if (new ObfuscatedString(new long[]{5953967300549521027L, 3316679609539765970L, -8710051827398977291L}).toString().equals(str)) {
            this.zza.zzb();
        }
    }
}
