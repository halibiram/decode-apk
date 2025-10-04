package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcdf {
    private String zzd;
    private String zze;
    private long zzf;
    private JSONObject zzg;
    private boolean zzh;
    private boolean zzj;
    private final List zza = new ArrayList();
    private final List zzb = new ArrayList();
    private final Map zzc = new HashMap();
    private final List zzi = new ArrayList();

    public zzcdf(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.zzd = new ObfuscatedString(new long[]{-6162719277848155723L}).toString();
        this.zzh = false;
        this.zzj = false;
        this.zze = str;
        this.zzf = j;
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zzg = new JSONObject(str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzld)).booleanValue() && zzj()) {
                    return;
                }
                if (this.zzg.optInt(new ObfuscatedString(new long[]{3509828334070333728L, -7161203346566238979L}).toString(), -1) != 1) {
                    this.zzh = false;
                    zzcec.zzj(new ObfuscatedString(new long[]{-2090177590484215785L, -1228954551337097263L, 6344854351784465569L, 311560185251258788L, 1992829299638815503L, -6206041626908895588L, -7449303233146359478L}).toString());
                    return;
                }
                this.zzh = true;
                this.zzd = this.zzg.optString(new ObfuscatedString(new long[]{-2176282061732695722L, -3598065485172975247L}).toString());
                JSONArray optJSONArray2 = this.zzg.optJSONArray(new ObfuscatedString(new long[]{970672411559028652L, -3369009303119022018L, -8276448573539892918L, 3205033635816425121L}).toString());
                if (optJSONArray2 != null) {
                    for (int i = 0; i < optJSONArray2.length(); i++) {
                        JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                        String optString = jSONObject.optString(new ObfuscatedString(new long[]{-8234685244674345959L, 1794144585779007124L}).toString());
                        String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{-7316058313876043396L, -2369436456191813421L, 8779936413428020906L}).toString());
                        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                            if (new ObfuscatedString(new long[]{-7628598767604211949L, -2019369565969564482L, 4017862319309436645L}).toString().equalsIgnoreCase(optString)) {
                                this.zzb.add(optString2);
                            } else if ((new ObfuscatedString(new long[]{-3928265114127177638L, 7493166879783752442L}).toString().equalsIgnoreCase(optString) || new ObfuscatedString(new long[]{754565961491801975L, 5649109446334672908L, -2850609611749203091L, -3421246156949516535L}).toString().equals(optString)) && (optJSONObject3 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{7664185617475111615L, -1660866041144750277L, 5291591414925888771L}).toString())) != null) {
                                this.zzc.put(optString2, new zzbsp(optJSONObject3));
                            }
                        }
                    }
                }
                JSONArray optJSONArray3 = this.zzg.optJSONArray(new ObfuscatedString(new long[]{4286734525191931080L, -2615676445503012231L, -7319426278256073429L, -8045393212949462122L, 5271185824415585694L}).toString());
                if (optJSONArray3 != null) {
                    for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                        this.zza.add(optJSONArray3.optString(i2));
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgU)).booleanValue() && (optJSONObject2 = this.zzg.optJSONObject(new ObfuscatedString(new long[]{3734844902636551058L, 1615678792752002129L, -408634404674929511L}).toString())) != null && (optJSONArray = optJSONObject2.optJSONArray(new ObfuscatedString(new long[]{7829685310042603415L, -7524527518944158750L}).toString())) != null) {
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        this.zzi.add(optJSONArray.get(i3).toString());
                    }
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgp)).booleanValue() && (optJSONObject = this.zzg.optJSONObject(new ObfuscatedString(new long[]{8752544671935329557L, 8814053933186634225L, 4833579703093510640L}).toString())) != null) {
                    this.zzj = optJSONObject.optBoolean(new ObfuscatedString(new long[]{6816705000320985985L, 8372588487821032309L, 2766228113209561594L, -7347417431492632326L}).toString(), false);
                }
            } catch (JSONException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{1384239218826316252L, -831799382270787121L, -188403554964589822L, 5986930043323989721L, 2469521596900578399L, -160948510761030555L, 3327563180260489985L, -6813092325597898052L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{3076501183011256783L, -2945490657025595518L, 8721734918090301330L, -2501863919993433515L, -5809817855151971394L}).toString());
            }
        }
    }

    public final long zza() {
        return this.zzf;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zze;
    }

    public final List zzd() {
        return this.zzi;
    }

    public final Map zze() {
        return this.zzc;
    }

    public final JSONObject zzf() {
        return this.zzg;
    }

    public final void zzg(long j) {
        this.zzf = j;
    }

    public final boolean zzh() {
        return this.zzj;
    }

    public final boolean zzi() {
        return this.zzh;
    }

    public final boolean zzj() {
        if (!TextUtils.isEmpty(this.zze) && this.zzg != null) {
            zzbfu zzbfuVar = zzbgc.zzlg;
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).longValue();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlf)).booleanValue() && !TextUtils.isEmpty(this.zze)) {
                longValue = this.zzg.optLong(new ObfuscatedString(new long[]{-8205147636885444640L, 4477034397820485065L, -2007516552427175434L}).toString(), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).longValue());
            }
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            if (longValue >= 0) {
                long j = this.zzf;
                if (j > currentTimeMillis || TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - j) > longValue) {
                    this.zza.clear();
                    this.zzb.clear();
                    this.zzc.clear();
                    this.zzd = new ObfuscatedString(new long[]{-4185478981918898822L}).toString();
                    this.zze = new ObfuscatedString(new long[]{-4871805568649262464L}).toString();
                    this.zzg = null;
                    this.zzh = false;
                    this.zzi.clear();
                    this.zzj = false;
                    return true;
                }
            }
        }
        return false;
    }
}
