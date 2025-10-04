package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzdn;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ResponseInfo {

    @Nullable
    private final zzdn zza;
    private final List zzb = new ArrayList();

    @Nullable
    private AdapterResponseInfo zzc;

    private ResponseInfo(@Nullable zzdn zzdnVar) {
        this.zza = zzdnVar;
        if (zzdnVar != null) {
            try {
                List zzj = zzdnVar.zzj();
                if (zzj != null) {
                    Iterator it = zzj.iterator();
                    while (it.hasNext()) {
                        AdapterResponseInfo zza = AdapterResponseInfo.zza((zzu) it.next());
                        if (zza != null) {
                            this.zzb.add(zza);
                        }
                    }
                }
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{6782673115386647612L, 1840556107822821342L, 2090440996548802538L, 9043474665641074409L, -6972469482141798904L, 3749138387842288885L, 77421346980763244L, -2343312232323158764L, -8647952085616794818L}).toString(), e);
            }
        }
        zzdn zzdnVar2 = this.zza;
        if (zzdnVar2 != null) {
            try {
                zzu zzf = zzdnVar2.zzf();
                if (zzf != null) {
                    this.zzc = AdapterResponseInfo.zza(zzf);
                }
            } catch (RemoteException e2) {
                zzcec.zzh(new ObfuscatedString(new long[]{6880173885900667250L, -6879229656195867648L, -3035554336668025349L, 8123586816136031836L, 2873064990991816309L, -144024052532006360L, -1004767320345811350L, -3205201986486080357L, -379197201061658423L}).toString(), e2);
            }
        }
    }

    @Nullable
    public static ResponseInfo zza(@Nullable zzdn zzdnVar) {
        if (zzdnVar != null) {
            return new ResponseInfo(zzdnVar);
        }
        return null;
    }

    @NonNull
    public static ResponseInfo zzb(@Nullable zzdn zzdnVar) {
        return new ResponseInfo(zzdnVar);
    }

    @NonNull
    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.zzb;
    }

    @Nullable
    public AdapterResponseInfo getLoadedAdapterResponseInfo() {
        return this.zzc;
    }

    @Nullable
    public String getMediationAdapterClassName() {
        try {
            zzdn zzdnVar = this.zza;
            if (zzdnVar != null) {
                return zzdnVar.zzg();
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6515833160892510478L, -3924129477060549963L, -196707998871046499L, -7946568903570538772L, 712316423484900885L, 5636831714276456430L, -3479698654141248318L, -6262389311527750737L, 458379999943364024L}).toString(), e);
            return null;
        }
    }

    @NonNull
    public Bundle getResponseExtras() {
        try {
            zzdn zzdnVar = this.zza;
            if (zzdnVar != null) {
                return zzdnVar.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1147991300031502767L, -5462867819952714242L, 5223810188289003153L, 2403588825209359008L, 3213389271005583458L, 5488730554756798613L, -4479993887843521565L, -4048246132385129548L}).toString(), e);
        }
        return new Bundle();
    }

    @Nullable
    public String getResponseId() {
        try {
            zzdn zzdnVar = this.zza;
            if (zzdnVar != null) {
                return zzdnVar.zzi();
            }
            return null;
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5420301310136120630L, 2241951592093233927L, -4027955160771885111L, 955201116706739065L, 5697189948017887875L, -8404350852528083850L, 5114872760574561629L}).toString(), e);
            return null;
        }
    }

    @NonNull
    public String toString() {
        try {
            return zzd().toString(2);
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{-5785399706305764549L, -6117428927623202494L, 4455967797633313224L, -2140135678688935261L, 7099655189183473369L}).toString();
        }
    }

    @Nullable
    @VisibleForTesting
    public final zzdn zzc() {
        return this.zza;
    }

    @NonNull
    public final JSONObject zzd() {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put(new ObfuscatedString(new long[]{-1289055932495179726L, 8071609589453005144L, -898129723143632632L}).toString(), new ObfuscatedString(new long[]{-4253608437438879389L, 4890914712255654569L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{-4646778932307223340L, 4995075490767187848L, -7753974052767923553L}).toString(), responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put(new ObfuscatedString(new long[]{-7954178008897348545L, 4172571842292675615L, 5688771070102822158L, -1893363233998795326L, -2344467036018081853L}).toString(), new ObfuscatedString(new long[]{1806534004027460175L, -4744051344352599895L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{3753000090287064137L, -1403244834280829925L, 3578251956695117441L, 1517000025598891477L, 1952804573216411754L}).toString(), mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.zzb.iterator();
        while (it.hasNext()) {
            jSONArray.put(((AdapterResponseInfo) it.next()).zzb());
        }
        jSONObject.put(new ObfuscatedString(new long[]{-3406372546478361304L, -1150172013894076234L, 6148656044101498041L, -6126256947483274532L}).toString(), jSONArray);
        AdapterResponseInfo adapterResponseInfo = this.zzc;
        if (adapterResponseInfo != null) {
            jSONObject.put(new ObfuscatedString(new long[]{544148262573030207L, -1346214442590383272L, 6823550002679928755L, 9004755827005190773L}).toString(), adapterResponseInfo.zzb());
        }
        Bundle responseExtras = getResponseExtras();
        if (responseExtras != null) {
            jSONObject.put(new ObfuscatedString(new long[]{2370874877668279674L, 1826852569359885829L, -707905822284571876L}).toString(), zzay.zzb().zzh(responseExtras));
        }
        return jSONObject;
    }
}
