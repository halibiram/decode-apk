package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdne extends zzdnf {
    private final JSONObject zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;
    private final boolean zzf;
    private final String zzg;

    @Nullable
    private final JSONObject zzh;

    public zzdne(zzfgm zzfgmVar, JSONObject jSONObject) {
        super(zzfgmVar);
        JSONObject jSONObject2;
        this.zzb = com.google.android.gms.ads.internal.util.zzbw.zzg(jSONObject, new ObfuscatedString(new long[]{447192025190841632L, 7168985861264384363L, -8802869176417599184L, -7587148489001309508L, -7198061078593956472L}).toString(), new ObfuscatedString(new long[]{-3438873187367618450L, 7104980749277125221L, 4971403719487193657L}).toString());
        this.zzc = com.google.android.gms.ads.internal.util.zzbw.zzk(false, jSONObject, new ObfuscatedString(new long[]{1061636280147248145L, 5118766736321176918L, 4670987762945361857L, -1120561956216837742L}).toString());
        this.zzd = com.google.android.gms.ads.internal.util.zzbw.zzk(false, jSONObject, new ObfuscatedString(new long[]{1988853402193808690L, 4775785270550728314L, 9118035633566178980L}).toString(), new ObfuscatedString(new long[]{-6917609441221405767L, -2660692167350895748L, -6527861814108941044L, 4775278686588548849L}).toString());
        this.zze = com.google.android.gms.ads.internal.util.zzbw.zzk(false, jSONObject, new ObfuscatedString(new long[]{9025863012033565762L, 8246857614256343233L, -5677892392684002336L}).toString());
        this.zzg = com.google.android.gms.ads.internal.util.zzbw.zzb(new ObfuscatedString(new long[]{6939716223953682223L}).toString(), jSONObject, new ObfuscatedString(new long[]{8955816340157656937L, -33246614633975961L, 3683289361807067597L, 6349359568405300794L, -1851619361719883047L}).toString());
        this.zzf = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-5193058686391850968L, 4538776822954569482L}).toString()) != null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeY)).booleanValue()) {
            jSONObject2 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-4607103588766078110L, 2457182762730532832L, 690748113359718745L}).toString());
        } else {
            jSONObject2 = null;
        }
        this.zzh = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final zzfhk zza() {
        JSONObject jSONObject = this.zzh;
        if (jSONObject != null) {
            return new zzfhk(jSONObject);
        }
        return this.zza.zzW;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final String zzb() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    @Nullable
    public final JSONObject zzc() {
        JSONObject jSONObject = this.zzb;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.zza.zzA);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final boolean zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final boolean zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final boolean zzf() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdnf
    public final boolean zzg() {
        return this.zzf;
    }
}
