package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdyi {
    private final Context zzf;
    private final WeakReference zzg;
    private final zzdua zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdwp zzl;
    private final zzcei zzm;
    private final zzdht zzo;
    private final zzfnc zzp;
    private boolean zza = false;
    private boolean zzb = false;

    @GuardedBy("this")
    private boolean zzc = false;
    private final zzceu zze = new zzceu();
    private final Map zzn = new ConcurrentHashMap();
    private boolean zzq = true;
    private final long zzd = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();

    public zzdyi(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdua zzduaVar, ScheduledExecutorService scheduledExecutorService, zzdwp zzdwpVar, zzcei zzceiVar, zzdht zzdhtVar, zzfnc zzfncVar) {
        this.zzh = zzduaVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdwpVar;
        this.zzm = zzceiVar;
        this.zzo = zzdhtVar;
        this.zzp = zzfncVar;
        zzv(new ObfuscatedString(new long[]{5798257602059895572L, -8313985545780309832L, -6289958364085191292L, -637238632884008342L, 7646882915033708168L, -5217287554235012726L}).toString(), false, new ObfuscatedString(new long[]{2060128579194899909L}).toString(), 0);
    }

    public static /* bridge */ /* synthetic */ void zzj(final zzdyi zzdyiVar, String str) {
        final zzfmo zzfmoVar;
        zzfmo zzfmoVar2;
        int i = 2;
        int i2 = 5;
        zzfmo zza = zzfmn.zza(zzdyiVar.zzf, 5);
        zza.zzh();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject(new ObfuscatedString(new long[]{3650956770196272133L, -754079414461269726L, -4220639624214357484L, -4577654003933315340L}).toString()).getJSONObject(new ObfuscatedString(new long[]{-856267800521362547L, -8540379419865228973L}).toString());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    final String next = keys.next();
                    final zzfmo zza2 = zzfmn.zza(zzdyiVar.zzf, i2);
                    zza2.zzh();
                    zza2.zzd(next);
                    final Object obj = new Object();
                    final zzceu zzceuVar = new zzceu();
                    ListenableFuture zzo = zzgen.zzo(zzceuVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbO)).longValue(), TimeUnit.SECONDS, zzdyiVar.zzk);
                    zzdyiVar.zzl.zzc(next);
                    zzdyiVar.zzo.zzc(next);
                    final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                    ArrayList arrayList2 = arrayList;
                    JSONObject jSONObject2 = jSONObject;
                    zzfmoVar2 = zza;
                    try {
                        zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxz
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdyi.this.zzq(obj, zzceuVar, next, elapsedRealtime, zza2);
                            }
                        }, zzdyiVar.zzi);
                        arrayList2.add(zzo);
                        final zzdyh zzdyhVar = new zzdyh(zzdyiVar, obj, next, elapsedRealtime, zza2, zzceuVar);
                        JSONObject optJSONObject = jSONObject2.optJSONObject(next);
                        final ArrayList arrayList3 = new ArrayList();
                        if (optJSONObject != null) {
                            try {
                                long[] jArr = new long[i];
                                // fill-array-data instruction
                                jArr[0] = -4395999881407422883L;
                                jArr[1] = -6698141887566231062L;
                                JSONArray jSONArray = optJSONObject.getJSONArray(new ObfuscatedString(jArr).toString());
                                int i3 = 0;
                                while (i3 < jSONArray.length()) {
                                    JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                                    long[] jArr2 = new long[i];
                                    // fill-array-data instruction
                                    jArr2[0] = 7057464738856202497L;
                                    jArr2[1] = -8923825736667801410L;
                                    String optString = jSONObject3.optString(new ObfuscatedString(jArr2).toString(), new ObfuscatedString(new long[]{4096967693198300125L}).toString());
                                    long[] jArr3 = new long[i];
                                    // fill-array-data instruction
                                    jArr3[0] = -1345969514599833419L;
                                    jArr3[1] = 193249445377746564L;
                                    JSONObject optJSONObject2 = jSONObject3.optJSONObject(new ObfuscatedString(jArr3).toString());
                                    Bundle bundle = new Bundle();
                                    if (optJSONObject2 != null) {
                                        Iterator<String> keys2 = optJSONObject2.keys();
                                        while (keys2.hasNext()) {
                                            String next2 = keys2.next();
                                            bundle.putString(next2, optJSONObject2.optString(next2, new ObfuscatedString(new long[]{-2085289535716844518L}).toString()));
                                        }
                                    }
                                    arrayList3.add(new zzbpn(optString, bundle));
                                    i3++;
                                    i = 2;
                                }
                            } catch (JSONException unused) {
                            }
                        }
                        zzdyiVar.zzv(next, false, new ObfuscatedString(new long[]{-1436341955357859294L}).toString(), 0);
                        try {
                            try {
                                final zzfif zzc = zzdyiVar.zzh.zzc(next, new JSONObject());
                                zzdyiVar.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyd
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzdyi.this.zzn(next, zzdyhVar, zzc, arrayList3);
                                    }
                                });
                            } catch (RemoteException e) {
                                e = e;
                                zzcec.zzh(new ObfuscatedString(new long[]{2028729770973128581L}).toString(), e);
                                jSONObject = jSONObject2;
                                arrayList = arrayList2;
                                zza = zzfmoVar2;
                                i = 2;
                                i2 = 5;
                            }
                        } catch (zzfho unused2) {
                            try {
                                zzdyhVar.zze(new ObfuscatedString(new long[]{4495331682286329542L, 6492284148582073446L, 3541662828902197475L, 8843888020068934534L, -8063468105611821115L}).toString());
                            } catch (RemoteException e2) {
                                e = e2;
                                zzcec.zzh(new ObfuscatedString(new long[]{2028729770973128581L}).toString(), e);
                                jSONObject = jSONObject2;
                                arrayList = arrayList2;
                                zza = zzfmoVar2;
                                i = 2;
                                i2 = 5;
                            }
                        }
                        jSONObject = jSONObject2;
                        arrayList = arrayList2;
                        zza = zzfmoVar2;
                        i = 2;
                        i2 = 5;
                    } catch (JSONException e3) {
                        e = e3;
                        zzfmoVar = zzfmoVar2;
                        com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-207857621445122243L, 4840524023025452787L, 3411526690208067288L, -6323412985175491404L}).toString(), e);
                        zzdyiVar.zzo.zza(new ObfuscatedString(new long[]{-6188438080580118397L, 7057461899340620005L, 8557852150686850988L}).toString());
                        zzdyiVar.zzl.zza(new ObfuscatedString(new long[]{-2769691396657720944L, -6001119790669905025L, -7629288167537084291L}).toString());
                        zzdyiVar.zze.zzd(e);
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-1024453446131666773L, -758481040322123673L, -8871772454748315279L, -2130053772730940053L, -1096474929564498249L, -6516506357321091225L}).toString());
                        zzfnc zzfncVar = zzdyiVar.zzp;
                        zzfmoVar.zzg(e);
                        zzfmoVar.zzf(false);
                        zzfncVar.zzb(zzfmoVar.zzl());
                    }
                } catch (JSONException e4) {
                    e = e4;
                    zzfmoVar2 = zza;
                    zzfmoVar = zzfmoVar2;
                    com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-207857621445122243L, 4840524023025452787L, 3411526690208067288L, -6323412985175491404L}).toString(), e);
                    zzdyiVar.zzo.zza(new ObfuscatedString(new long[]{-6188438080580118397L, 7057461899340620005L, 8557852150686850988L}).toString());
                    zzdyiVar.zzl.zza(new ObfuscatedString(new long[]{-2769691396657720944L, -6001119790669905025L, -7629288167537084291L}).toString());
                    zzdyiVar.zze.zzd(e);
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-1024453446131666773L, -758481040322123673L, -8871772454748315279L, -2130053772730940053L, -1096474929564498249L, -6516506357321091225L}).toString());
                    zzfnc zzfncVar2 = zzdyiVar.zzp;
                    zzfmoVar.zzg(e);
                    zzfmoVar.zzf(false);
                    zzfncVar2.zzb(zzfmoVar.zzl());
                }
            }
            zzfmoVar2 = zza;
            zzfmoVar = zzfmoVar2;
            try {
                zzgen.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdya
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzdyi.this.zzf(zzfmoVar);
                        return null;
                    }
                }, zzdyiVar.zzi);
            } catch (JSONException e5) {
                e = e5;
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-207857621445122243L, 4840524023025452787L, 3411526690208067288L, -6323412985175491404L}).toString(), e);
                zzdyiVar.zzo.zza(new ObfuscatedString(new long[]{-6188438080580118397L, 7057461899340620005L, 8557852150686850988L}).toString());
                zzdyiVar.zzl.zza(new ObfuscatedString(new long[]{-2769691396657720944L, -6001119790669905025L, -7629288167537084291L}).toString());
                zzdyiVar.zze.zzd(e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-1024453446131666773L, -758481040322123673L, -8871772454748315279L, -2130053772730940053L, -1096474929564498249L, -6516506357321091225L}).toString());
                zzfnc zzfncVar22 = zzdyiVar.zzp;
                zzfmoVar.zzg(e);
                zzfmoVar.zzf(false);
                zzfncVar22.zzb(zzfmoVar.zzl());
            }
        } catch (JSONException e6) {
            e = e6;
            zzfmoVar = zza;
        }
    }

    private final synchronized ListenableFuture zzu() {
        String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc();
        if (!TextUtils.isEmpty(zzc)) {
            return zzgen.zzh(zzc);
        }
        final zzceu zzceuVar = new zzceu();
        com.google.android.gms.ads.internal.zzt.zzo().zzi().zzq(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyb
            @Override // java.lang.Runnable
            public final void run() {
                zzdyi.this.zzo(zzceuVar);
            }
        });
        return zzceuVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbpd(str, z, i, str2));
    }

    public final /* synthetic */ Object zzf(zzfmo zzfmoVar) {
        this.zze.zzc(Boolean.TRUE);
        zzfmoVar.zzf(true);
        this.zzp.zzb(zzfmoVar.zzl());
        return null;
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbpd zzbpdVar = (zzbpd) this.zzn.get(str);
            arrayList.add(new zzbpd(str, zzbpdVar.zzb, zzbpdVar.zzc, zzbpdVar.zzd));
        }
        return arrayList;
    }

    public final void zzl() {
        this.zzq = false;
    }

    public final /* synthetic */ void zzm() {
        synchronized (this) {
            try {
                if (this.zzc) {
                    return;
                }
                zzv(new ObfuscatedString(new long[]{7086713168669671321L, -2266230613508719052L, -7129318525249910925L, 6390593593450047422L, 2541592241966394276L, 4528926139128902930L}).toString(), false, new ObfuscatedString(new long[]{984231533400109482L, 3954592682631720329L}).toString(), (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzd));
                this.zzl.zzb(new ObfuscatedString(new long[]{6943863888141127867L, 1630844219898787388L, 6465895315740428102L, -6640145651413344726L, -4802603839269810233L, -3054814343258186548L}).toString(), new ObfuscatedString(new long[]{-7767475807776950334L, 2687355899170645587L}).toString());
                this.zzo.zzb(new ObfuscatedString(new long[]{4676677563981975565L, 8397800204017002224L, -5988162009835507555L, -572720100456383116L, -3222583634737278817L, 4761860101907530270L}).toString(), new ObfuscatedString(new long[]{-1736907627027875394L, -4367239006824231739L}).toString());
                this.zze.zzd(new Exception());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzn(String str, zzbph zzbphVar, zzfif zzfifVar, List list) {
        try {
            try {
                if (Objects.equals(str, new ObfuscatedString(new long[]{8978065254743837564L, 3297410961165873186L, 7705830340838225785L, -4645749695417400784L, 8787840860367463889L, 9044102288667594979L, -831828800130434107L}).toString())) {
                    zzbphVar.zzf();
                    return;
                }
                Context context = (Context) this.zzg.get();
                if (context == null) {
                    context = this.zzf;
                }
                zzfifVar.zzi(context, zzbphVar, list);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-5598627096957343979L}).toString(), e);
            }
        } catch (RemoteException e2) {
            throw new zzfxz(e2);
        } catch (zzfho unused) {
            zzbphVar.zze(new ObfuscatedString(new long[]{-5723974274002320021L, -7732898208249818323L, 4997425467557209282L, 5738403992986392729L, 7427584918870942776L}).toString() + str + new ObfuscatedString(new long[]{-6455268631183941064L, -5273905059066055548L, -5344990957192938584L, -6771907323590623577L, -9721793151548456L, -5758426143136590893L, 7061980681347923568L}).toString());
        }
    }

    public final /* synthetic */ void zzo(final zzceu zzceuVar) {
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxy
            @Override // java.lang.Runnable
            public final void run() {
                String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc();
                boolean isEmpty = TextUtils.isEmpty(zzc);
                zzceu zzceuVar2 = zzceuVar;
                if (!isEmpty) {
                    zzceuVar2.zzc(zzc);
                } else {
                    zzceuVar2.zzd(new Exception());
                }
            }
        });
    }

    public final /* synthetic */ void zzp() {
        this.zzl.zze();
        this.zzo.zze();
        this.zzb = true;
    }

    public final /* synthetic */ void zzq(Object obj, zzceu zzceuVar, String str, long j, zzfmo zzfmoVar) {
        synchronized (obj) {
            try {
                if (!zzceuVar.isDone()) {
                    zzv(str, false, new ObfuscatedString(new long[]{8565382030007318958L, -7172297788915820293L}).toString(), (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j));
                    this.zzl.zzb(str, new ObfuscatedString(new long[]{3232987146649160484L, 3408273148608807926L}).toString());
                    this.zzo.zzb(str, new ObfuscatedString(new long[]{-500701590517048136L, 6881754042606919787L}).toString());
                    zzfnc zzfncVar = this.zzp;
                    zzfmoVar.zzc(new ObfuscatedString(new long[]{9221179695638311331L, -5917779052133154283L}).toString());
                    zzfmoVar.zzf(false);
                    zzfncVar.zzb(zzfmoVar.zzl());
                    zzceuVar.zzc(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzr() {
        if (!((Boolean) zzbig.zza.zze()).booleanValue() && this.zzm.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbN)).intValue() && this.zzq) {
            if (!this.zza) {
                synchronized (this) {
                    try {
                        if (this.zza) {
                            return;
                        }
                        this.zzl.zzf();
                        this.zzo.zzf();
                        this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdye
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdyi.this.zzp();
                            }
                        }, this.zzi);
                        this.zza = true;
                        ListenableFuture zzu = zzu();
                        this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxx
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdyi.this.zzm();
                            }
                        }, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbP)).longValue(), TimeUnit.SECONDS);
                        zzgen.zzr(zzu, new zzdyg(this), this.zzi);
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return;
        }
        if (!this.zza) {
            zzv(new ObfuscatedString(new long[]{-5919568243825089947L, 7428265143943400532L, -3359537376445530845L, 2178325971344836805L, -3609697505175159229L, 2341623267427256078L}).toString(), true, new ObfuscatedString(new long[]{-4736379681571721743L}).toString(), 0);
            this.zze.zzc(Boolean.FALSE);
            this.zza = true;
            this.zzb = true;
        }
    }

    public final void zzs(final zzbpk zzbpkVar) {
        this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdyc
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    zzbpkVar.zzb(zzdyi.this.zzg());
                } catch (RemoteException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{4180894246091209015L}).toString(), e);
                }
            }
        }, this.zzj);
    }

    public final boolean zzt() {
        return this.zzb;
    }
}
