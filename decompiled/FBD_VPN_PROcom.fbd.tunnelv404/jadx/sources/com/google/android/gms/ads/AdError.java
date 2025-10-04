package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class AdError {

    @NonNull
    public static final String UNDEFINED_DOMAIN = new ObfuscatedString(new long[]{895507814137572410L, 2569343857484627901L, -1084770320367553867L}).toString();
    private final int zza;

    @NonNull
    private final String zzb;

    @NonNull
    private final String zzc;

    @Nullable
    private final AdError zzd;

    public AdError(int i, @NonNull String str, @NonNull String str2, @Nullable AdError adError) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = adError;
    }

    @Nullable
    public AdError getCause() {
        return this.zzd;
    }

    public int getCode() {
        return this.zza;
    }

    @NonNull
    public String getDomain() {
        return this.zzc;
    }

    @NonNull
    public String getMessage() {
        return this.zzb;
    }

    @NonNull
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{-3105080936444148208L, -8499606567214977343L, -4019068921939306905L, -4564370231342447727L, 5137793917667562644L}).toString();
        }
    }

    @NonNull
    public final com.google.android.gms.ads.internal.client.zze zza() {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        AdError adError = this.zzd;
        if (adError == null) {
            zzeVar = null;
        } else {
            String str = adError.zzc;
            zzeVar = new com.google.android.gms.ads.internal.client.zze(adError.zza, adError.zzb, str, null, null);
        }
        return new com.google.android.gms.ads.internal.client.zze(this.zza, this.zzb, this.zzc, zzeVar, null);
    }

    @NonNull
    public JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-7621699754867172836L, -2957866906480420217L}).toString(), this.zza);
        jSONObject.put(new ObfuscatedString(new long[]{7938364066187590797L, -6446534163183570541L}).toString(), this.zzb);
        jSONObject.put(new ObfuscatedString(new long[]{9084778784418825508L, -5581049671884772955L}).toString(), this.zzc);
        AdError adError = this.zzd;
        if (adError == null) {
            jSONObject.put(new ObfuscatedString(new long[]{8489737682175195835L, -1659322229062164871L}).toString(), new ObfuscatedString(new long[]{1381914879002832252L, -8154777551146190683L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{8688028677065661756L, -7908302415531032007L}).toString(), adError.zzb());
        }
        return jSONObject;
    }

    public AdError(int i, @NonNull String str, @NonNull String str2) {
        this(i, str, str2, null);
    }
}
