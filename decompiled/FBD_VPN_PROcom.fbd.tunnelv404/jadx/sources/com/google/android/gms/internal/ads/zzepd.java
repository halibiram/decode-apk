package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzepd extends zzbuu {
    private final String zza;
    private final zzbus zzb;
    private final zzceu zzc;
    private final JSONObject zzd;
    private final long zze;
    private boolean zzf;

    public zzepd(String str, zzbus zzbusVar, zzceu zzceuVar, long j) {
        JSONObject jSONObject = new JSONObject();
        this.zzd = jSONObject;
        this.zzf = false;
        this.zzc = zzceuVar;
        this.zza = str;
        this.zzb = zzbusVar;
        this.zze = j;
        try {
            jSONObject.put(new ObfuscatedString(new long[]{123142264168559865L, -7358887882044179186L, 9005437361277819587L}).toString(), zzbusVar.zzf().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-8567334544352025695L, -189573196046016281L, -1723037952860728612L}).toString(), zzbusVar.zzg().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-3563587581781489785L, -130848236390385597L}).toString(), str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    public static synchronized void zzb(String str, zzceu zzceuVar) {
        synchronized (zzepd.class) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(new ObfuscatedString(new long[]{-4205499695181374033L, 5651434014744505833L}).toString(), str);
                    jSONObject.put(new ObfuscatedString(new long[]{-4551338223895193731L, 6944237004240687746L, 2766856697250237691L}).toString(), new ObfuscatedString(new long[]{-4319438890773189169L, 8118897197410823166L, -4239932962622824096L, -6185407938885043077L, 8072225665367765676L}).toString());
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbA)).booleanValue()) {
                        jSONObject.put(new ObfuscatedString(new long[]{-2924464743440201088L, 4527213477098252199L, 5983782886232706728L, -5681605676461903361L}).toString(), 1);
                    }
                    zzceuVar.zzc(jSONObject);
                } catch (JSONException unused) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final synchronized void zzh(String str, int i) {
        try {
            if (this.zzf) {
                return;
            }
            try {
                this.zzd.put(new ObfuscatedString(new long[]{-3737702687900375121L, 4775676856747207987L, -720734836167789711L}).toString(), str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbB)).booleanValue()) {
                    this.zzd.put(new ObfuscatedString(new long[]{9056425573725212376L, -4639384469378493826L}).toString(), com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zze);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbA)).booleanValue()) {
                    this.zzd.put(new ObfuscatedString(new long[]{7618275824772741483L, -6600914020083176660L, 6084548855993559702L, 3205030415246862314L}).toString(), i);
                }
            } catch (JSONException unused) {
            }
            this.zzc.zzc(this.zzd);
            this.zzf = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc() {
        zzh(new ObfuscatedString(new long[]{3475303392922528634L, -2105389961348100278L, 4861588394591212715L, 4522886660114996327L, 7729793284165006028L}).toString(), 3);
    }

    public final synchronized void zzd() {
        if (this.zzf) {
            return;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbA)).booleanValue()) {
                this.zzd.put(new ObfuscatedString(new long[]{-2674532964805373363L, 717141971230568768L, -6626191407437772362L, -8074896856814614997L}).toString(), 0);
            }
        } catch (JSONException unused) {
        }
        this.zzc.zzc(this.zzd);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final synchronized void zze(String str) {
        if (this.zzf) {
            return;
        }
        if (str == null) {
            zzf(new ObfuscatedString(new long[]{6465817175433995152L, 7643761933752679741L, 2382653002159102808L, -2700257223916489589L, -7666279267087534093L}).toString());
            return;
        }
        try {
            this.zzd.put(new ObfuscatedString(new long[]{-1676168189815681098L, -4897808497718331675L}).toString(), str);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbB)).booleanValue()) {
                this.zzd.put(new ObfuscatedString(new long[]{-4189419087129269199L, 9162414018533077803L}).toString(), com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zze);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbA)).booleanValue()) {
                this.zzd.put(new ObfuscatedString(new long[]{8592688653741105387L, -1133357433628730425L, 8542361322859329751L, -2774474107950488151L}).toString(), 0);
            }
        } catch (JSONException unused) {
        }
        this.zzc.zzc(this.zzd);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final synchronized void zzf(String str) {
        zzh(str, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final synchronized void zzg(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzh(zzeVar.zzb, 2);
    }
}
