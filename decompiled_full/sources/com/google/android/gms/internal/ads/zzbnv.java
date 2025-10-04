package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbnv implements zzbng {
    private final Object zza = new Object();
    private final Map zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        String concat;
        String str = (String) map.get(new ObfuscatedString(new long[]{-7210195671465081391L, -338155912799718271L}).toString());
        String str2 = (String) map.get(new ObfuscatedString(new long[]{1396649889120545481L, 283705133304198465L}).toString());
        String str3 = (String) map.get(new ObfuscatedString(new long[]{-187760453711946063L, 5081931042879688364L, 4321712110699643743L}).toString());
        String str4 = (String) map.get(new ObfuscatedString(new long[]{-2482588648089083051L, 6256536889401216587L, -1539761920583437309L}).toString());
        String str5 = (String) map.get(new ObfuscatedString(new long[]{3433908983682494589L, -5007425797145284997L}).toString());
        if (true == TextUtils.isEmpty(str4)) {
            str3 = new ObfuscatedString(new long[]{-6477276444400886335L, -5605263771070252044L, -976832732793818827L, -7231841444329140494L}).toString();
        }
        if (TextUtils.isEmpty(str4)) {
            concat = new ObfuscatedString(new long[]{5052002158437080476L}).toString();
        } else {
            concat = new ObfuscatedString(new long[]{-2801778321797924316L, -2250879834244231971L}).toString().concat(String.valueOf(str4));
        }
        synchronized (this.zza) {
            try {
                zzbnu zzbnuVar = (zzbnu) this.zzb.remove(str);
                if (zzbnuVar == null) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-8750142597542736853L, -8830111310923369563L, -7222343986639141902L, 3788135349045053606L, -4383004103127360969L, -7131770075021553616L, 5866494960618714233L, 507574098884132453L}).toString() + str);
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    zzbnuVar.zza(str3 + concat);
                    return;
                }
                if (str5 == null) {
                    zzbnuVar.zzb(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{213422688214010112L, 6448410462447980087L, -6103703727317001681L}).toString() + jSONObject.toString(2));
                    }
                    zzbnuVar.zzb(jSONObject);
                } catch (JSONException e) {
                    zzbnuVar.zza(e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zzb(zzbqn zzbqnVar, String str, JSONObject jSONObject) {
        zzceu zzceuVar = new zzceu();
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzc(uuid, new zzbnt(this, zzceuVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(new ObfuscatedString(new long[]{-7414474434878141549L, 4930635511640587448L}).toString(), uuid);
            jSONObject2.put(new ObfuscatedString(new long[]{-2317950440762330446L, -567818889934216518L}).toString(), jSONObject);
            zzbqnVar.zzl(str, jSONObject2);
        } catch (Exception e) {
            zzceuVar.zzd(e);
        }
        return zzceuVar;
    }

    public final void zzc(String str, zzbnu zzbnuVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbnuVar);
        }
    }
}
