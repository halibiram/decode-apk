package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzblz implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        String str = (String) map.get(new ObfuscatedString(new long[]{4678840694517515486L, -1259684879026984025L}).toString());
        if (new ObfuscatedString(new long[]{-3153966588731921464L, -412708294786698151L}).toString().equals(str)) {
            String str2 = (String) map.get(new ObfuscatedString(new long[]{629688171981458168L, -8986993965458214038L}).toString());
            String str3 = (String) map.get(new ObfuscatedString(new long[]{-8147784305012039611L, -885680180565780670L, 7800238343142649045L}).toString());
            String str4 = (String) map.get(new ObfuscatedString(new long[]{1806847237138509609L, -4862382576883794085L, 5039927482262257619L}).toString());
            if (TextUtils.isEmpty(str2)) {
                zzcec.zzj(new ObfuscatedString(new long[]{6360251601686755092L, -1682131588662629510L, -5987688035343631162L, -940108058669850354L, -4620399338366738380L}).toString());
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-8302453611909938635L, -8884768962316396701L, 43878477468827851L, -6250731916478020577L, -6751137272705952238L}).toString());
                return;
            }
            try {
                long parseLong = (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()) + com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                if (true == TextUtils.isEmpty(str3)) {
                    str3 = new ObfuscatedString(new long[]{1897601591702514011L, 8853851922400948218L, 8550829832275585043L}).toString();
                }
                zzcjkVar.zzm().zzc(str2, str3, parseLong);
                return;
            } catch (NumberFormatException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-3503894446106115320L, 1863862455119963215L, -1640015362978319039L, -6580267303496055168L, 2401529077751228708L, 5499838774797088441L}).toString(), e);
                return;
            }
        }
        if (new ObfuscatedString(new long[]{-5684885291572124020L, 4425514450032752212L, -6838045159152803373L}).toString().equals(str)) {
            String str5 = (String) map.get(new ObfuscatedString(new long[]{-8540590912140135473L, -4169817431089929816L}).toString());
            if (TextUtils.isEmpty(str5)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-6602120534499276868L, 2612040394978747698L, 3450250112018976454L, -6875749614310658593L, 5570123208963576212L, -424930973287977351L}).toString());
                return;
            } else {
                zzcjkVar.zzm().zza().zzd(new ObfuscatedString(new long[]{5501579358035301792L, -4690324569181705952L}).toString(), str5);
                return;
            }
        }
        if (new ObfuscatedString(new long[]{6099876668997171180L, -1570595923783630519L}).toString().equals(str)) {
            String str6 = (String) map.get(new ObfuscatedString(new long[]{2845816637334397257L, -6608900466803287406L}).toString());
            String str7 = (String) map.get(new ObfuscatedString(new long[]{5579954036258349609L, -8513275215203091687L}).toString());
            if (TextUtils.isEmpty(str7)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-6081101899054423935L, 8775191123873051520L, -8358993854746027885L, -3828692801399567760L, -4859173478706264480L}).toString());
            } else if (TextUtils.isEmpty(str6)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-3510619528488108027L, -8839900178119441283L, 9096645010431973162L, -7196509953661487509L, 226444259304013372L}).toString());
            } else {
                zzcjkVar.zzm().zza().zzd(str6, str7);
            }
        }
    }
}
