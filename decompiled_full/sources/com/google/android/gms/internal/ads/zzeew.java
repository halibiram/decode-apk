package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzeew extends zzbyt {
    private final Context zza;
    private final zzeze zzb;
    private final zzezc zzc;
    private final zzefe zzd;
    private final zzgey zze;
    private final zzefb zzf;
    private final zzbzq zzg;

    public zzeew(Context context, zzeze zzezeVar, zzezc zzezcVar, zzefb zzefbVar, zzefe zzefeVar, zzgey zzgeyVar, zzbzq zzbzqVar) {
        this.zza = context;
        this.zzb = zzezeVar;
        this.zzc = zzezcVar;
        this.zzf = zzefbVar;
        this.zzd = zzefeVar;
        this.zze = zzgeyVar;
        this.zzg = zzbzqVar;
    }

    private final void zzc(ListenableFuture listenableFuture, zzbyx zzbyxVar) {
        zzgen.zzr(zzgen.zzn(zzgee.zzu(listenableFuture), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeet
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(zzfii.zza((InputStream) obj));
            }
        }, zzcep.zza), new zzeev(this, zzbyxVar), zzcep.zzf);
    }

    public final ListenableFuture zzb(zzbym zzbymVar, int i) {
        ListenableFuture zzh;
        HashMap hashMap = new HashMap();
        Bundle bundle = zzbymVar.zzc;
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (string != null) {
                    hashMap.put(str, string);
                }
            }
        }
        final zzeey zzeeyVar = new zzeey(zzbymVar.zza, zzbymVar.zzb, hashMap, zzbymVar.zzd, new ObfuscatedString(new long[]{2534161301800171486L}).toString(), zzbymVar.zze);
        zzezc zzezcVar = this.zzc;
        zzezcVar.zza(new zzfak(zzbymVar));
        boolean z = zzeeyVar.zzf;
        zzezd zzb = zzezcVar.zzb();
        if (z) {
            String str2 = zzbymVar.zza;
            String str3 = (String) zzbih.zzb.zze();
            if (!TextUtils.isEmpty(str3)) {
                String host = Uri.parse(str2).getHost();
                if (!TextUtils.isEmpty(host)) {
                    Iterator it = zzfxr.zzc(zzfwp.zzc(';')).zzd(str3).iterator();
                    while (it.hasNext()) {
                        if (host.endsWith((String) it.next())) {
                            zzh = zzgen.zzm(zzb.zza().zza(new JSONObject()), new zzfws() { // from class: com.google.android.gms.internal.ads.zzeeo
                                @Override // com.google.android.gms.internal.ads.zzfws
                                public final Object apply(Object obj) {
                                    zzeey zzeeyVar2 = zzeey.this;
                                    zzefe.zza(zzeeyVar2.zzc, (JSONObject) obj);
                                    return zzeeyVar2;
                                }
                            }, this.zze);
                            break;
                        }
                    }
                }
            }
        }
        zzh = zzgen.zzh(zzeeyVar);
        return zzgen.zzn(zzb.zzb().zzb(zzflg.zzi, zzh).zze(new zzefa(this.zza, new ObfuscatedString(new long[]{8156091155117997852L}).toString(), this.zzg, i)).zza(), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeep
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                zzeez zzeezVar = (zzeez) obj;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(new ObfuscatedString(new long[]{4357697758320844897L, -4517568983754285888L}).toString(), zzeezVar.zza);
                    JSONObject jSONObject2 = new JSONObject();
                    for (String str4 : zzeezVar.zzb.keySet()) {
                        if (str4 != null) {
                            List<String> list = (List) zzeezVar.zzb.get(str4);
                            JSONArray jSONArray = new JSONArray();
                            for (String str5 : list) {
                                if (str5 != null) {
                                    jSONArray.put(str5);
                                }
                            }
                            jSONObject2.put(str4, jSONArray);
                        }
                    }
                    jSONObject.put(new ObfuscatedString(new long[]{-1945544588640228863L, 5074987676955854641L}).toString(), jSONObject2);
                    Object obj2 = zzeezVar.zzc;
                    if (obj2 != null) {
                        jSONObject.put(new ObfuscatedString(new long[]{7211752886376072894L, -4491063523308589276L}).toString(), obj2);
                    }
                    jSONObject.put(new ObfuscatedString(new long[]{3593697587055259426L, -4950352660132507810L}).toString(), zzeezVar.zzd);
                    return zzgen.zzh(new ByteArrayInputStream(jSONObject.toString().getBytes(StandardCharsets.UTF_8)));
                } catch (JSONException e) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-719849830209253631L, 8016668320034280774L, -1053064033659714040L, 6037617563530008332L, -1854208213364622321L, 5751845107683239489L, 2022418433264583562L}).toString().concat(String.valueOf(e.getMessage())));
                    throw new JSONException(new ObfuscatedString(new long[]{-5605534857412513589L, 7303261221201467213L, -5048356727244872787L, -1351916373712163739L}).toString().concat(String.valueOf(e.getCause())));
                }
            }
        }, this.zze);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zze(zzbym zzbymVar, zzbyx zzbyxVar) {
        zzc(zzb(zzbymVar, Binder.getCallingUid()), zzbyxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzf(zzbyi zzbyiVar, zzbyx zzbyxVar) {
        zzeyt zzeytVar = new zzeyt(zzbyiVar, Binder.getCallingUid());
        zzeze zzezeVar = this.zzb;
        zzezeVar.zza(zzeytVar);
        final zzezf zzb = zzezeVar.zzb();
        zzflm zzb2 = zzb.zzb();
        zzfkr zza = zzb2.zzb(zzflg.zze, zzgen.zzi()).zzf(new zzgdu() { // from class: com.google.android.gms.internal.ads.zzees
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzezf.this.zza().zza(new JSONObject());
            }
        }).zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzeer
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3349204579763410857L, 5788771964594205200L, 8806403634697508674L, 7744279108675029680L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zzf(new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeeq
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            }
        }).zza();
        zzc(zza, zzbyxVar);
        if (((Boolean) zzbia.zzd.zze()).booleanValue()) {
            final zzefe zzefeVar = this.zzd;
            Objects.requireNonNull(zzefeVar);
            zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeeu
                @Override // java.lang.Runnable
                public final void run() {
                    zzefe.this.zzb();
                }
            }, this.zze);
        }
    }
}
