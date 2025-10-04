package com.google.android.gms.internal.ads;

import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzcre implements zzcqv {
    private final zzeil zza;

    public zzcre(zzeil zzeilVar) {
        this.zza = zzeilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue()) {
            return;
        }
        zzgen.zzf(zzgee.zzu(this.zza.zza(true)), Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcrd
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                String obfuscatedString = new ObfuscatedString(new long[]{5274252484687238141L, -5204435626042505064L, 6616423343413326209L, -4543250861373493810L, -2585719233329915288L, -4388626498861588739L, -4452387103377801582L}).toString();
                com.google.android.gms.ads.internal.zzt.zzo().zzw((Throwable) obj, obfuscatedString);
                return zzgen.zzh(new GetTopicsResponse(zzgaa.zzl()));
            }
        }, zzcep.zza);
    }
}
