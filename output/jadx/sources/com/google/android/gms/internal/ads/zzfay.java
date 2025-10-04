package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final /* synthetic */ class zzfay implements zzexq {
    public static final /* synthetic */ zzfay zza = new zzfay();

    private /* synthetic */ zzfay() {
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final /* synthetic */ int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zzh(new zzexp() { // from class: com.google.android.gms.internal.ads.zzfaz
            @Override // com.google.android.gms.internal.ads.zzexp
            public final void zzj(Object obj) {
                try {
                    ((JSONObject) obj).getJSONObject(new ObfuscatedString(new long[]{-3032883356031994466L, -5714149016639810260L}).toString()).put(new ObfuscatedString(new long[]{6194893825044066819L, -6938371364018612101L, 784709067786251804L, 2683695829593470193L}).toString(), 12451000);
                } catch (JSONException unused) {
                }
            }
        });
    }
}
