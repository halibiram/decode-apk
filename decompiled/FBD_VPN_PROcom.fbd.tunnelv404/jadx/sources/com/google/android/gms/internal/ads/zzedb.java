package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzedb {
    private final zzgey zza;
    private final zzgey zzb;
    private final zzedt zzc;

    public zzedb(zzgey zzgeyVar, zzgey zzgeyVar2, zzedt zzedtVar) {
        this.zza = zzgeyVar;
        this.zzb = zzgeyVar2;
        this.zzc = zzedtVar;
    }

    public final /* synthetic */ ListenableFuture zza(zzbyi zzbyiVar) {
        return this.zzc.zza(zzbyiVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkW)).longValue());
    }

    public final ListenableFuture zzb(final zzbyi zzbyiVar) {
        ListenableFuture zzf;
        String str = zzbyiVar.zzb;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            zzf = zzgen.zzg(new zzecf(1, new ObfuscatedString(new long[]{-2499036688160989138L, 2268912599373263920L, -1445872551690897105L, 6032213509599613891L, 3863877046817014048L}).toString()));
        } else {
            zzf = zzgen.zzf(zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.internal.ads.zzecx
                @Override // com.google.android.gms.internal.ads.zzgdt
                public final ListenableFuture zza() {
                    return zzedb.this.zza(zzbyiVar);
                }
            }, this.zza), ExecutionException.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzecy
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    Throwable th = (ExecutionException) obj;
                    if (th.getCause() != null) {
                        th = th.getCause();
                    }
                    return zzgen.zzg(th);
                }
            }, this.zzb);
        }
        return zzgen.zzn(zzgen.zzf(zzgee.zzu(zzf), zzecf.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzecz
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(null);
            }
        }, this.zzb), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeda
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return zzgen.zzh(jSONObject);
                }
                try {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    jSONObject = new JSONObject(com.google.android.gms.ads.internal.util.zzt.zzM(new InputStreamReader(inputStream)));
                } catch (IOException | JSONException e) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-5041440667619500006L, -1043395054679648056L, 4179751004813545140L, 5771475295774690521L, -1244417124715413256L, 121732230023871087L, -6120784524604050427L}).toString());
                }
                return zzgen.zzh(jSONObject);
            }
        }, this.zzb);
    }
}
