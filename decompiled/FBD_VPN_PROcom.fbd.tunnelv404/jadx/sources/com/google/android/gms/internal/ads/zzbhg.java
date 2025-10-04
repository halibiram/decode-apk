package com.google.android.gms.internal.ads;

import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbhg extends QueryInfoGenerationCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbhh zzb;

    public zzbhg(zzbhh zzbhhVar, String str) {
        this.zza = str;
        this.zzb = zzbhhVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        CustomTabsSession customTabsSession;
        zzcec.zzj(new ObfuscatedString(new long[]{-1424402304605400055L, -4781920665946978369L, -7261059780051766311L, 32203432590748103L, -3491933241532261243L, 6531387880139409173L, 8984535799384617625L, 4762996045250395738L}).toString().concat(String.valueOf(str)));
        try {
            zzbhh zzbhhVar = this.zzb;
            customTabsSession = zzbhhVar.zzd;
            customTabsSession.postMessage(zzbhhVar.zzc(this.zza, str).toString(), null);
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4750469179245791848L, -2876245519161567096L, 333587479252568799L, 8422799904719229964L, -1189736292394621783L, -5043799404816688903L, 6849971390268353797L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        CustomTabsSession customTabsSession;
        String query = queryInfo.getQuery();
        try {
            zzbhh zzbhhVar = this.zzb;
            customTabsSession = zzbhhVar.zzd;
            customTabsSession.postMessage(zzbhhVar.zzd(this.zza, query).toString(), null);
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1014638423946500370L, -2388501808407664978L, 8245879705014512052L, -3884414452427124112L, 1568854903002802130L, -8231197110958580405L, 2794113268795628407L}).toString(), e);
        }
    }
}
