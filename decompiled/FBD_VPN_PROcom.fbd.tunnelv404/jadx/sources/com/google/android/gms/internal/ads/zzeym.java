package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzeym implements zzexp {

    @Nullable
    private final AdvertisingIdClient.Info zza;

    @Nullable
    private final String zzb;
    private final zzfub zzc;

    public zzeym(@Nullable AdvertisingIdClient.Info info, @Nullable String str, zzfub zzfubVar) {
        this.zza = info;
        this.zzb = str;
        this.zzc = zzfubVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            JSONObject zzf = com.google.android.gms.ads.internal.util.zzbw.zzf((JSONObject) obj, new ObfuscatedString(new long[]{996521177962495745L, -7370517131535531665L}).toString());
            AdvertisingIdClient.Info info = this.zza;
            if (info != null && !TextUtils.isEmpty(info.getId())) {
                zzf.put(new ObfuscatedString(new long[]{2105959215980974356L, 2256551896074003436L}).toString(), this.zza.getId());
                zzf.put(new ObfuscatedString(new long[]{-4474442973176612214L, -5234264969307724648L}).toString(), this.zza.isLimitAdTrackingEnabled());
                zzf.put(new ObfuscatedString(new long[]{8326844002079901979L, -2478946723305895365L}).toString(), new ObfuscatedString(new long[]{-5973914025587899548L, -5474465495289876689L}).toString());
                zzfub zzfubVar = this.zzc;
                if (zzfubVar.zzc()) {
                    zzf.put(new ObfuscatedString(new long[]{3947667610462345241L, -2405114430768138212L, -3833434883913110774L, 5592549916696400919L}).toString(), zzfubVar.zzb());
                    zzf.put(new ObfuscatedString(new long[]{-868688299206724524L, -2060250037339735177L, -164749339749518471L, 5707208313248745642L, -1234108077437137289L}).toString(), this.zzc.zza());
                    return;
                }
                return;
            }
            String str = this.zzb;
            if (str != null) {
                zzf.put(new ObfuscatedString(new long[]{-6991251960871589555L, 2027034105392590429L}).toString(), str);
                zzf.put(new ObfuscatedString(new long[]{3134378607702030649L, -7886859667955062101L}).toString(), new ObfuscatedString(new long[]{862400674715965386L, 6290231666761860298L}).toString());
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-8520640165879305343L, 551060936165818341L, 4409947667367828075L, 606601268572746330L}).toString(), e);
        }
    }
}
