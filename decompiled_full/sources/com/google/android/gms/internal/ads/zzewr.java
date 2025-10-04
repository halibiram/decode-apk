package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzewr implements zzexq {
    final String zza;
    private final zzgey zzb;
    private final ScheduledExecutorService zzc;
    private final zzepa zzd;
    private final Context zze;
    private final zzfhh zzf;
    private final zzeow zzg;
    private final zzdua zzh;
    private final zzdyk zzi;

    public zzewr(zzgey zzgeyVar, ScheduledExecutorService scheduledExecutorService, String str, zzepa zzepaVar, Context context, zzfhh zzfhhVar, zzeow zzeowVar, zzdua zzduaVar, zzdyk zzdykVar) {
        this.zzb = zzgeyVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = zzepaVar;
        this.zze = context;
        this.zzf = zzfhhVar;
        this.zzg = zzeowVar;
        this.zzh = zzduaVar;
        this.zzi = zzdykVar;
    }

    public static /* synthetic */ ListenableFuture zzc(zzewr zzewrVar) {
        String str;
        final Bundle bundle;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkr)).booleanValue()) {
            str = zzewrVar.zzf.zzf.toLowerCase(Locale.ROOT);
        } else {
            str = zzewrVar.zzf.zzf;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbD)).booleanValue()) {
            bundle = zzewrVar.zzi.zzg();
        } else {
            bundle = new Bundle();
        }
        final ArrayList arrayList = new ArrayList();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbM)).booleanValue()) {
            for (Map.Entry entry : ((zzgad) zzewrVar.zzd.zzb(zzewrVar.zza, str)).entrySet()) {
                String str2 = (String) entry.getKey();
                arrayList.add(zzewrVar.zzg(str2, (List) entry.getValue(), zzewrVar.zzf(str2), true, true));
            }
            zzewrVar.zzi(arrayList, zzewrVar.zzd.zzc());
        } else {
            zzewrVar.zzi(arrayList, zzewrVar.zzd.zza(zzewrVar.zza, str));
        }
        return zzgen.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzewm
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                JSONArray jSONArray = new JSONArray();
                for (ListenableFuture listenableFuture : arrayList) {
                    if (((JSONObject) listenableFuture.get()) != null) {
                        jSONArray.put(listenableFuture.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzews(jSONArray.toString(), bundle);
            }
        }, zzewrVar.zzb);
    }

    @Nullable
    private final Bundle zzf(String str) {
        Bundle bundle = this.zzf.zzd.zzm;
        if (bundle != null) {
            return bundle.getBundle(str);
        }
        return null;
    }

    private final zzgee zzg(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgee zzu = zzgee.zzu(zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.internal.ads.zzewo
            @Override // com.google.android.gms.internal.ads.zzgdt
            public final ListenableFuture zza() {
                return zzewr.this.zzd(str, list, bundle, z, z2);
            }
        }, this.zzb));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbz)).booleanValue()) {
            zzu = (zzgee) zzgen.zzo(zzu, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbs)).longValue(), TimeUnit.MILLISECONDS, this.zzc);
        }
        return (zzgee) zzgen.zze(zzu, Throwable.class, new zzfws() { // from class: com.google.android.gms.internal.ads.zzewp
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                zzcec.zzg(new ObfuscatedString(new long[]{-2806910021442907200L, -5762249270338470981L, 7687487155702351009L, -8781302953353197777L}).toString().concat(String.valueOf(str)));
                return null;
            }
        }, this.zzb);
    }

    private final void zzh(zzbus zzbusVar, Bundle bundle, @NonNull List list, zzepd zzepdVar) {
        zzbusVar.zzh(ObjectWrapper.wrap(this.zze), this.zza, bundle, (Bundle) list.get(0), this.zzf.zze, zzepdVar);
    }

    private final void zzi(List list, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzepe zzepeVar = (zzepe) ((Map.Entry) it.next()).getValue();
            String str = zzepeVar.zza;
            list.add(zzg(str, Collections.singletonList(zzepeVar.zze), zzf(str), zzepeVar.zzb, zzepeVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        zzfhh zzfhhVar = this.zzf;
        if (zzfhhVar.zzq) {
            if (!Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbF)).split(new ObfuscatedString(new long[]{-3290290589631160625L, -6584228325079135008L}).toString())).contains(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zza(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(zzfhhVar.zzd)))) {
                return zzgen.zzh(new zzews(new JSONArray().toString(), new Bundle()));
            }
        }
        return zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.internal.ads.zzewl
            @Override // com.google.android.gms.internal.ads.zzgdt
            public final ListenableFuture zza() {
                return zzewr.zzc(zzewr.this);
            }
        }, this.zzb);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:1|(2:3|(3:5|(2:7|(1:9)(1:12))(3:13|(1:15)|(2:17|(1:19)(1:20))(1:21))|10))|22|23|(0)(0)|10) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002d, code lost:
    
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x002e, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-7238397177157204296L, 691224491430381898L, 8267792979553050760L, 1305441084027409380L, -8695270733828370634L}).toString(), r13);
        r13 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ ListenableFuture zzd(String str, final List list, final Bundle bundle, boolean z, boolean z2) {
        zzbus zzbusVar;
        final zzceu zzceuVar = new zzceu();
        if (z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbE)).booleanValue()) {
                this.zzg.zzb(str);
                zzbusVar = this.zzg.zza(str);
                if (zzbusVar != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbu)).booleanValue()) {
                        zzepd.zzb(str, zzceuVar);
                    } else {
                        throw null;
                    }
                } else {
                    final zzepd zzepdVar = new zzepd(str, zzbusVar, zzceuVar, com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime());
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbz)).booleanValue()) {
                        this.zzc.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewq
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzepd.this.zzc();
                            }
                        }, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbs)).longValue(), TimeUnit.MILLISECONDS);
                    }
                    if (z) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbG)).booleanValue()) {
                            final zzbus zzbusVar2 = zzbusVar;
                            this.zzb.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewn
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzewr.this.zze(zzbusVar2, bundle, list, zzepdVar, zzceuVar);
                                }
                            });
                        } else {
                            zzh(zzbusVar, bundle, list, zzepdVar);
                        }
                    } else {
                        zzepdVar.zzd();
                    }
                }
                return zzceuVar;
            }
        }
        zzbusVar = this.zzh.zzb(str);
        if (zzbusVar != null) {
        }
        return zzceuVar;
    }

    public final /* synthetic */ void zze(zzbus zzbusVar, Bundle bundle, List list, zzepd zzepdVar, zzceu zzceuVar) {
        try {
            zzh(zzbusVar, bundle, list, zzepdVar);
        } catch (RemoteException e) {
            zzceuVar.zzd(e);
        }
    }
}
