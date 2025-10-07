package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.panda912.muddy.ObfuscatedString;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbhh {
    private final ScheduledExecutorService zza;
    private Runnable zzb;
    private zzbhe zzc;
    private CustomTabsSession zzd;
    private String zze;
    private long zzf = 0;
    private long zzg;
    private JSONArray zzh;
    private Context zzi;

    @VisibleForTesting
    public zzbhh(ScheduledExecutorService scheduledExecutorService) {
        this.zza = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzjB)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj() {
        zzbhe zzbheVar = this.zzc;
        if (zzbheVar == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{-8093768793737611675L, -1925134473718316469L, -5621702675949587707L, -1230212736833340993L, -1052597951267797059L, 4508990721347373053L, 3517187098197602736L, -5166218894530587947L, 3728453218774541396L, -5955056860442340439L}).toString());
            return;
        }
        if (zzbheVar.zza().booleanValue()) {
            return;
        }
        if (this.zze != null && this.zzd != null && this.zza != null) {
            if (this.zzf == 0 || com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() > this.zzf) {
            }
            this.zzd.requestPostMessageChannel(Uri.parse(this.zze));
            this.zza.schedule(this.zzb, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjC)).longValue(), TimeUnit.MILLISECONDS);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1394764116404927753L, 2359673558749933653L, 3705029286364213962L, 5786983550008774864L, 7778669618610367249L, 2020332179948677388L, 1162980921274601523L}).toString());
    }

    private final void zzk(JSONObject jSONObject) {
        try {
            if (this.zzh == null) {
                this.zzh = new JSONArray((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjE));
            }
            jSONObject.put(new ObfuscatedString(new long[]{7299671217584765473L, 3484378264767083561L}).toString(), this.zzh);
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3178293073119008760L, 7515213553680766848L, 4796798826223002177L, -8731085347905179336L, -8806343118554020751L, -3736258711001771739L, -1342646040137255006L}).toString(), e);
        }
    }

    @Nullable
    public final CustomTabsSession zzb() {
        return this.zzd;
    }

    @VisibleForTesting
    public final JSONObject zzc(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-8714607207448005440L, 838576665857092422L}).toString(), str);
        jSONObject.put(new ObfuscatedString(new long[]{-7436235080713233730L, -4646847089702895538L}).toString(), str2);
        zzk(jSONObject);
        return jSONObject;
    }

    @VisibleForTesting
    public final JSONObject zzd(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-8857423917628180170L, 1979027979615615792L}).toString(), str);
        jSONObject.put(new ObfuscatedString(new long[]{5967187235821468211L, -5094488073427438894L}).toString(), str2);
        zzk(jSONObject);
        return jSONObject;
    }

    public final void zzf() {
        this.zzf = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjA)).intValue();
        if (this.zzb == null) {
            this.zzb = new Runnable() { // from class: com.google.android.gms.internal.ads.zzbhf
                @Override // java.lang.Runnable
                public final void run() {
                    zzbhh.this.zzj();
                }
            };
        }
        zzj();
    }

    public final void zzg(@Nonnull Context context, @Nonnull CustomTabsClient customTabsClient, @Nonnull String str, @Nullable CustomTabsCallback customTabsCallback) {
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                if (customTabsClient != null) {
                    this.zzi = context;
                    this.zze = str;
                    zzbhe zzbheVar = new zzbhe(this, customTabsCallback);
                    this.zzc = zzbheVar;
                    CustomTabsSession newSession = customTabsClient.newSession(zzbheVar);
                    this.zzd = newSession;
                    if (newSession == null) {
                        zzcec.zzg(new ObfuscatedString(new long[]{1284899148649368129L, -7003137706997707870L, -3524439782463699044L, -6797488518637527108L, -2050134253513700634L, -8900784265522028996L, 8609553968885897674L}).toString());
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3989742449276022987L, 8201749528776629561L, -3479170057291728368L, 4416780781255681146L, 1148373459959257296L, -1424603194336214677L}).toString());
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8440736744786705418L, -3038020787191704349L, -3508740921406116551L, 7440563240885017537L, 112051861811936556L, -5835135782746820733L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1649221898335129966L, -2216156080724237954L, -5361016194749760024L, 885230549052580681L, -410640605958301849L}).toString());
    }

    public final void zzh(String str) {
        try {
            CustomTabsSession customTabsSession = this.zzd;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(new ObfuscatedString(new long[]{-3713702320729507361L, -5707624157862704038L}).toString(), true);
            jSONObject.put(new ObfuscatedString(new long[]{5550065421068509367L, -1304009534368781948L}).toString(), new Date(this.zzg).toString());
            zzk(jSONObject);
            customTabsSession.postMessage(jSONObject.toString(), null);
            Bundle bundle = new Bundle();
            bundle.putString(new ObfuscatedString(new long[]{2814120543680926502L, 8069429148532243975L, -7553640756597517216L}).toString(), new ObfuscatedString(new long[]{-2708255715726265941L, 2883608491838304445L, 8245127881519277416L}).toString());
            QueryInfo.generate(this.zzi, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), new zzbhg(this, str));
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1854756374492122991L, 3931733698623013712L, -7360589170263061080L, 5015250090527411889L}).toString(), e);
        }
    }

    public final void zzi(long j) {
        this.zzg = j;
    }
}
