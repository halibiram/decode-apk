package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzcrp implements zzcqw {
    private final zzcbx zza;

    public zzcrp(zzcbx zzcbxVar) {
        this.zza = zzcbxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzcbx] */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // com.google.android.gms.internal.ads.zzcqw
    public final void zza(JSONObject jSONObject) {
        ?? r5;
        String obfuscatedString = new ObfuscatedString(new long[]{2245785680169505155L, -7291013024810492043L, -1378296055972636353L}).toString();
        long optLong = jSONObject.optLong(new ObfuscatedString(new long[]{-9019283860311221243L, -2559081681883319322L, -1557234845112590499L}).toString());
        if (jSONObject.optBoolean(obfuscatedString)) {
            r5 = -1;
        } else {
            r5 = jSONObject.optBoolean(new ObfuscatedString(new long[]{-4673571190139561934L, 7091000594233016020L}).toString());
        }
        this.zza.zzb(r5, optLong);
    }
}
