package com.google.android.gms.ads;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzu;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class AdapterResponseInfo {
    private final zzu zza;

    @Nullable
    private final AdError zzb;

    private AdapterResponseInfo(zzu zzuVar) {
        this.zza = zzuVar;
        com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.zzc;
        this.zzb = zzeVar == null ? null : zzeVar.zza();
    }

    @Nullable
    public static AdapterResponseInfo zza(@Nullable zzu zzuVar) {
        if (zzuVar != null) {
            return new AdapterResponseInfo(zzuVar);
        }
        return null;
    }

    @Nullable
    public AdError getAdError() {
        return this.zzb;
    }

    @NonNull
    public String getAdSourceId() {
        return this.zza.zzf;
    }

    @NonNull
    public String getAdSourceInstanceId() {
        return this.zza.zzh;
    }

    @NonNull
    public String getAdSourceInstanceName() {
        return this.zza.zzg;
    }

    @NonNull
    public String getAdSourceName() {
        return this.zza.zze;
    }

    @NonNull
    public String getAdapterClassName() {
        return this.zza.zza;
    }

    @NonNull
    public Bundle getCredentials() {
        return this.zza.zzd;
    }

    public long getLatencyMillis() {
        return this.zza.zzb;
    }

    @NonNull
    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{6055788670632129644L, 6424091170293142460L, -5432512704564501342L, -3481083535241363870L, -9212865043463165867L}).toString();
        }
    }

    @NonNull
    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-935935845622188328L, -5791404106027331281L}).toString(), this.zza.zza);
        jSONObject.put(new ObfuscatedString(new long[]{5918718435363018677L, -6374873229049095897L}).toString(), this.zza.zzb);
        String adSourceName = getAdSourceName();
        if (adSourceName == null) {
            jSONObject.put(new ObfuscatedString(new long[]{6721242277949758359L, 7838309974052229866L, -2448537984428376696L}).toString(), new ObfuscatedString(new long[]{-3058153577883689279L, 2911554423858903011L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{6276726372257114750L, -2784864034596931387L, 5465356812143478702L}).toString(), adSourceName);
        }
        String adSourceId = getAdSourceId();
        if (adSourceId == null) {
            jSONObject.put(new ObfuscatedString(new long[]{2195372988884999887L, -509658228134561228L, 6818272874094456518L}).toString(), new ObfuscatedString(new long[]{-8314810321065267985L, 3118182599261047555L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{8531358766850843673L, -3349507756364173968L, -8107808369457685992L}).toString(), adSourceId);
        }
        String adSourceInstanceName = getAdSourceInstanceName();
        if (adSourceInstanceName == null) {
            jSONObject.put(new ObfuscatedString(new long[]{461213583748550149L, -5760590306519057143L, -7088131637138811543L, -2290615893225025014L}).toString(), new ObfuscatedString(new long[]{-8239532628661302675L, -2696762708577950041L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{3617169810195291960L, 8453535792856570931L, 2010722616475285701L, 3774035078719205356L}).toString(), adSourceInstanceName);
        }
        String adSourceInstanceId = getAdSourceInstanceId();
        if (adSourceInstanceId == null) {
            jSONObject.put(new ObfuscatedString(new long[]{-8756091964580145992L, -4194177966561029390L, 8876606522098326604L, 148738910527922367L}).toString(), new ObfuscatedString(new long[]{8139119291204061837L, -4023969081376690130L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{4776274799191028241L, 8701017423737570120L, -6561198907362498625L, 7664570792250649280L}).toString(), adSourceInstanceId);
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.zza.zzd.keySet()) {
            jSONObject2.put(str, this.zza.zzd.get(str));
        }
        jSONObject.put(new ObfuscatedString(new long[]{355240643420570978L, 2884926173144793803L, -4915019474121206714L}).toString(), jSONObject2);
        AdError adError = this.zzb;
        if (adError == null) {
            jSONObject.put(new ObfuscatedString(new long[]{5922687900102131281L, 1977548934484932752L}).toString(), new ObfuscatedString(new long[]{5251095244463018375L, -9073272278039480126L}).toString());
        } else {
            jSONObject.put(new ObfuscatedString(new long[]{-7436620647133352240L, 7205430212797863882L}).toString(), adError.zzb());
        }
        return jSONObject;
    }
}
