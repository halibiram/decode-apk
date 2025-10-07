package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.Topic;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzeyf implements zzexq {
    private final com.google.android.gms.ads.internal.util.zzg zza;
    private final Context zzb;
    private final zzgey zzc;
    private final ScheduledExecutorService zzd;
    private final zzeil zze;
    private final zzfhh zzf;

    public zzeyf(com.google.android.gms.ads.internal.util.zzg zzgVar, Context context, zzgey zzgeyVar, ScheduledExecutorService scheduledExecutorService, zzeil zzeilVar, zzfhh zzfhhVar) {
        this.zza = zzgVar;
        this.zzb = context;
        this.zzc = zzgeyVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzeilVar;
        this.zzf = zzfhhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0039, code lost:
    
        if (r6.zzf.zzd.zzy != com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) goto L10;
     */
    @Override // com.google.android.gms.internal.ads.zzexq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue() && this.zza.zzR()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjX)).booleanValue()) {
            }
            return zzgen.zzf(zzgen.zzn(zzgee.zzu(zzgen.zzo(this.zze.zza(false), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjV)).intValue(), TimeUnit.MILLISECONDS, this.zzd)), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeyd
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    zzhdn zza2 = zzhdo.zza();
                    for (Topic topic : ((GetTopicsResponse) obj).getTopics()) {
                        zzhdl zza3 = zzhdm.zza();
                        zza3.zzc(topic.getTopicId());
                        zza3.zza(topic.getModelVersion());
                        zza3.zzb(topic.getTaxonomyVersion());
                        zza2.zza((zzhdm) zza3.zzal());
                    }
                    return zzgen.zzh(new zzeyh(Base64.encodeToString(((zzhdo) zza2.zzal()).zzax(), 1), 1, null));
                }
            }, this.zzc), Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeye
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzeyf.this.zzc((Throwable) obj);
                }
            }, this.zzc);
        }
        return zzgen.zzh(new zzeyh(new ObfuscatedString(new long[]{2161960250225771680L}).toString(), -1, null));
    }

    public final /* synthetic */ ListenableFuture zzc(Throwable th) {
        zzeyh zzeyhVar;
        zzbxw.zza(this.zzb).zzg(th, new ObfuscatedString(new long[]{8722649917720268093L, 8102156814181151785L, -5820118830710155577L, 5949644731674692560L, -6727159618593698286L}).toString());
        if (th instanceof SecurityException) {
            zzeyhVar = new zzeyh(new ObfuscatedString(new long[]{5959761948759296107L}).toString(), 2, null);
        } else if (th instanceof IllegalStateException) {
            zzeyhVar = new zzeyh(new ObfuscatedString(new long[]{3171899462441040384L}).toString(), 3, null);
        } else if (th instanceof IllegalArgumentException) {
            zzeyhVar = new zzeyh(new ObfuscatedString(new long[]{-6239948188095496794L}).toString(), 4, null);
        } else if (th instanceof TimeoutException) {
            zzeyhVar = new zzeyh(new ObfuscatedString(new long[]{3339982912255020869L}).toString(), 5, null);
        } else {
            zzeyhVar = new zzeyh(new ObfuscatedString(new long[]{-4499254538107256037L}).toString(), 0, null);
        }
        return zzgen.zzh(zzeyhVar);
    }
}
