package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbsj implements zzgdu {
    private final zzbrp zza;
    private final zzbrq zzb;
    private final String zzc = new ObfuscatedString(new long[]{513065487354443116L, 5627817651581398971L, 3145936733438810608L, 1294601260010621448L, -847165745284404813L, 1227078282661966926L}).toString();
    private final ListenableFuture zzd;

    public zzbsj(ListenableFuture listenableFuture, String str, zzbrq zzbrqVar, zzbrp zzbrpVar) {
        this.zzd = listenableFuture;
        this.zzb = zzbrqVar;
        this.zza = zzbrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdu
    public final ListenableFuture zza(Object obj) {
        return zzb(obj);
    }

    public final ListenableFuture zzb(final Object obj) {
        return zzgen.zzn(this.zzd, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzbsh
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj2) {
                return zzbsj.this.zzc(obj, (zzbrk) obj2);
            }
        }, zzcep.zzf);
    }

    public final /* synthetic */ ListenableFuture zzc(Object obj, zzbrk zzbrkVar) {
        zzceu zzceuVar = new zzceu();
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzbnf.zzo.zzc(uuid, new zzbsi(this, zzceuVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{5055784880398087713L, -6707728434711002004L}).toString(), uuid);
        jSONObject.put(new ObfuscatedString(new long[]{-2757460652092483733L, -3663258718945817306L}).toString(), (JSONObject) obj);
        zzbrkVar.zzl(this.zzc, jSONObject);
        return zzceuVar;
    }
}
