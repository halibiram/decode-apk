package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfaj implements zzexp {
    private final List zza;

    public zzfaj(List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put(new ObfuscatedString(new long[]{-49739849940446886L, 8396094706028739558L}).toString(), TextUtils.join(new ObfuscatedString(new long[]{-7919145356789557620L, -3298400600243915175L}).toString(), this.zza));
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1690149600820614519L, -4619551681944289387L, -861884049812234758L, 7179242337511479884L, -8224725250683476157L}).toString());
        }
    }
}
