package com.google.android.gms.ads.nonagon.signalgeneration;

import android.webkit.WebView;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzar extends QueryInfoGenerationCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ TaggingLibraryJsInterface zzb;

    public zzar(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.zza = str;
        this.zzb = taggingLibraryJsInterface;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        WebView webView;
        zzcec.zzj(new ObfuscatedString(new long[]{319384265075701661L, -1295759181765449797L, -1778469485318859638L, -7694650721212963918L, 9062607813179738620L, -3979059463612366675L, 3407568276365424319L, -3959627103429025009L, -871707639275809778L}).toString().concat(String.valueOf(str)));
        String format = String.format(new ObfuscatedString(new long[]{829847907459231561L, -1797212315009349195L, -610540776497047644L, 7525578500713825886L, 4723163643476395225L, -8938990233070450092L, -7688394734394667231L, -6394775605665207213L, -8815296940401682120L}).toString(), this.zza, str);
        webView = this.zzb.zzb;
        webView.evaluateJavascript(format, null);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String format;
        WebView webView;
        String query = queryInfo.getQuery();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(new ObfuscatedString(new long[]{-5965619483758197691L, 4397353238835811808L}).toString(), this.zza);
            jSONObject.put(new ObfuscatedString(new long[]{-1814068776946756794L, -8288705773305089917L}).toString(), query);
            format = String.format(new ObfuscatedString(new long[]{-8849344416662197920L, -5180761696768278959L, -228893499376192944L, 2926736954953995223L, 8900270688025993302L}).toString(), jSONObject);
        } catch (JSONException unused) {
            format = String.format(new ObfuscatedString(new long[]{4831780178096031754L, -3596484558883430964L, 1185765479283230963L, 1132174182515741527L, -11772009173016491L, 3928333081745641729L, -2467246002388524799L, 7988576800331732597L, 8805628661764803458L}).toString(), this.zza, queryInfo.getQuery());
        }
        webView = this.zzb.zzb;
        webView.evaluateJavascript(format, null);
    }
}
