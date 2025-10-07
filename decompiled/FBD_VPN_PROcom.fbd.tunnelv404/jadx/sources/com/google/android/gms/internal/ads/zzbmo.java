package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbmo implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        if (TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{-6835672221396837257L, 4595660766176935977L}).toString()))) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-9200675887842042827L, -3770511859615511220L, -2167043521927212778L, 7226775589696148327L, 500726097888654095L, -4641276801619618782L, 2642539448592379034L, 113958553942468733L}).toString());
            return;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{1359384601475496626L, -5333211925042364789L}).toString();
        zzfvm zzl = zzfvn.zzl();
        zzl.zzb((String) map.get(obfuscatedString));
        zzl.zzh(zzcjkVar.getWidth());
        zzl.zzg(zzcjkVar.zzF().getWindowToken());
        if (map.containsKey(new ObfuscatedString(new long[]{-7093984584845663493L, -3788171989527436132L}).toString()) && map.containsKey(new ObfuscatedString(new long[]{8496950300919115157L, -944091038173474319L}).toString())) {
            zzl.zzd(Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{5068714333570748813L, 806170060402195193L}).toString())) | Integer.parseInt((String) map.get(new ObfuscatedString(new long[]{-328888065916644596L, -647843226495330615L}).toString())));
        } else {
            zzl.zzd(81);
        }
        if (map.containsKey(new ObfuscatedString(new long[]{4891563545753003883L, 2595551201109664471L, -836335772188411692L}).toString())) {
            zzl.zze(Float.parseFloat((String) map.get(new ObfuscatedString(new long[]{-410694236195761106L, -1814757021487793041L, 8827856718342264490L}).toString())));
        } else {
            zzl.zze(0.02f);
        }
        if (map.containsKey(new ObfuscatedString(new long[]{-4322232636633050860L, 1061660713311393696L}).toString())) {
            zzl.zza((String) map.get(new ObfuscatedString(new long[]{-6191528465556578476L, 4148449916438397153L}).toString()));
        }
        try {
            com.google.android.gms.ads.internal.zzt.zzj().zzj(zzcjkVar, zzl.zzi());
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4005584312202207972L, 695543631135782732L, -2826145520353419790L, -9098961751472336052L, -3128372404063978182L, -9029509605476236829L}).toString());
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1285338920941762829L, 7863933103594638892L, 2277412664966193098L, -8015600065941701459L, -1685135296572336845L, -6276270394260583165L, -3448500118657652564L}).toString());
        }
    }
}
