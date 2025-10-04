package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzebb;
import com.google.android.gms.internal.ads.zzgdu;
import com.google.android.gms.internal.ads.zzgen;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzak implements zzgdu {
    private final Executor zza;
    private final zzebb zzb;

    public zzak(Executor executor, zzebb zzebbVar) {
        this.zza = executor;
        this.zzb = zzebbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdu
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) {
        final zzbze zzbzeVar = (zzbze) obj;
        return zzgen.zzn(this.zzb.zzb(zzbzeVar), new zzgdu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj2) {
                zzam zzamVar = new zzam(new JsonReader(new InputStreamReader((InputStream) obj2)));
                try {
                    zzamVar.zzb = zzay.zzb().zzh(zzbze.this.zza).toString();
                } catch (JSONException unused) {
                    zzamVar.zzb = new ObfuscatedString(new long[]{3603728289925485190L, -4400257245157348221L}).toString();
                }
                return zzgen.zzh(zzamVar);
            }
        }, this.zza);
    }
}
