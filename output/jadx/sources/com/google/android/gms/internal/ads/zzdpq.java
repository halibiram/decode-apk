package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdpq {
    private final zzgey zza;
    private final zzdqd zzb;
    private final zzdqi zzc;

    public zzdpq(zzgey zzgeyVar, zzdqd zzdqdVar, zzdqi zzdqiVar) {
        this.zza = zzgeyVar;
        this.zzb = zzdqdVar;
        this.zzc = zzdqiVar;
    }

    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar, final JSONObject jSONObject) {
        ListenableFuture zzn;
        final ListenableFuture zzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdpo
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                zzdna zzdnaVar = new zzdna();
                JSONObject jSONObject2 = jSONObject;
                zzdnaVar.zzaa(jSONObject2.optInt(new ObfuscatedString(new long[]{-6807478719410017027L, -5308615068572508181L, 1301434463831718731L}).toString(), -1));
                zzdnaVar.zzK(jSONObject2.optString(new ObfuscatedString(new long[]{8502021520284656507L, -7775164971106581357L, -2633961690364948303L, -4717503169178211833L}).toString()));
                JSONObject optJSONObject = jSONObject2.optJSONObject(new ObfuscatedString(new long[]{7875604770888486019L, -5290634276531018270L, -891190231446308936L}).toString());
                if (optJSONObject != null) {
                    str = optJSONObject.optString(new ObfuscatedString(new long[]{-2381593217103008533L, -463825388285948852L, -3487192236938945787L, 4624209645180383411L}).toString());
                } else {
                    str = null;
                }
                zzfgy zzfgyVar2 = zzfgyVar;
                zzdnaVar.zzV(str);
                zzfhh zzfhhVar = zzfgyVar2.zza.zza;
                if (zzfhhVar.zzg.contains(Integer.toString(zzdnaVar.zzc()))) {
                    if (zzdnaVar.zzc() == 3) {
                        if (zzdnaVar.zzA() != null) {
                            if (!zzfhhVar.zzh.contains(zzdnaVar.zzA())) {
                                throw new zzeml(1, new ObfuscatedString(new long[]{1943618496628288052L, -4857444585842418893L, -3925953025981901162L, 5100065412694980142L, 7946205611761722829L, -978564579104428774L, -5291322615219279951L}).toString());
                            }
                        } else {
                            throw new zzeml(1, new ObfuscatedString(new long[]{-4462635701916391626L, 3385893809547009412L, 8260606536730656187L, -1013429875305429075L, -9172083534299093024L, -95247024040740892L, -601912908012033844L, 7731025923820219252L}).toString());
                        }
                    }
                    zzfgm zzfgmVar2 = zzfgmVar;
                    zzdnaVar.zzY(jSONObject2.optDouble(new ObfuscatedString(new long[]{144019293135056757L, -3918325991599901713L}).toString(), -1.0d));
                    String optString = jSONObject2.optString(new ObfuscatedString(new long[]{6932509716422807303L, 6771410409814760256L}).toString(), null);
                    if (zzfgmVar2.zzN) {
                        com.google.android.gms.ads.internal.zzt.zzp();
                        optString = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{1993643429696775978L, -5759374166171796981L}), AbstractC0749x8313616e.m3341xc20437a5(com.google.android.gms.ads.internal.util.zzt.zzx()), optString);
                    }
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{4598469718449923019L, 2126195642922488092L}).toString(), optString);
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{-1358161528910201198L, -7725012953008215578L}).toString(), jSONObject2.optString(new ObfuscatedString(new long[]{-8142969362720981943L, -4639707310540720900L}).toString(), null));
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{3971041434613934930L, -4891435086426238978L, -7584276280595414684L}).toString(), jSONObject2.optString(new ObfuscatedString(new long[]{-3594816239477710603L, -5887505557035724146L, 6541883612660799313L}).toString(), null));
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{-6099544577355754493L, 6431047146981808169L}).toString(), jSONObject2.optString(new ObfuscatedString(new long[]{3417243476690213625L, -210541586746783608L}).toString(), null));
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{-2263801620543825855L, 9156748839333183863L}).toString(), jSONObject2.optString(new ObfuscatedString(new long[]{6207024964623004230L, 2188836234925864816L}).toString(), null));
                    zzdnaVar.zzZ(new ObfuscatedString(new long[]{6256278723733106245L, 3777221276153628926L, 7994111301641814931L}).toString(), jSONObject2.optString(new ObfuscatedString(new long[]{8882027376022832369L, 2900408154846481397L, 3238969546604637305L}).toString(), null));
                    return zzdnaVar;
                }
                throw new zzeml(1, AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1782085307178038076L, -1562027814410406398L, -2372430017632691099L, -3646845965219951225L}), new StringBuilder(), zzdnaVar.zzc()));
            }
        });
        final ListenableFuture zzf = this.zzb.zzf(jSONObject, new ObfuscatedString(new long[]{565348747414225304L, -6118395318183030075L}).toString());
        zzfgp zzfgpVar = zzfgyVar.zzb.zzb;
        String obfuscatedString = new ObfuscatedString(new long[]{2318434469906429807L, 7292784607291065093L}).toString();
        zzdqd zzdqdVar = this.zzb;
        final ListenableFuture zzg = zzdqdVar.zzg(jSONObject, obfuscatedString, zzfgmVar, zzfgpVar);
        final ListenableFuture zze = zzdqdVar.zze(jSONObject, new ObfuscatedString(new long[]{2134753728999340499L, -925685164127986522L, 5585860730754351608L}).toString());
        final ListenableFuture zze2 = zzdqdVar.zze(jSONObject, new ObfuscatedString(new long[]{-2820257735974131785L, 3197786759202904330L}).toString());
        final ListenableFuture zzd = zzdqdVar.zzd(jSONObject, new ObfuscatedString(new long[]{-6788913436776797449L, -3327762839638838106L, -2791782485400756903L}).toString());
        final ListenableFuture zzh = this.zzb.zzh(jSONObject, zzfgmVar, zzfgyVar.zzb.zzb);
        final ListenableFuture zza = this.zzc.zza(jSONObject, new ObfuscatedString(new long[]{-3111172410630149035L, -127762328623236861L, -3870147833644202421L}).toString());
        if (!jSONObject.optBoolean(new ObfuscatedString(new long[]{-4598093071265128046L, -5776708235410721272L, 3267264087422130234L}).toString())) {
            zzn = zzgen.zzh(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{8906001825087209592L, -182621800807417396L, -2048504187618693054L}).toString());
            if (optJSONObject == null) {
                zzn = zzgen.zzh(null);
            } else {
                final String optString = optJSONObject.optString(new ObfuscatedString(new long[]{-4709814660501214624L, -105110055604481453L, 2144255958042014079L}).toString());
                if (TextUtils.isEmpty(optString)) {
                    zzn = zzgen.zzh(null);
                } else {
                    final zzdqd zzdqdVar2 = this.zzb;
                    zzn = zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdps
                        @Override // com.google.android.gms.internal.ads.zzgdu
                        public final ListenableFuture zza(Object obj) {
                            return zzdqd.this.zzc(optString, obj);
                        }
                    }, zzcep.zze);
                }
            }
        }
        final ListenableFuture listenableFuture = zzn;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzb);
        arrayList.add(zzf);
        arrayList.add(zzg);
        arrayList.add(zze);
        arrayList.add(zze2);
        arrayList.add(zzd);
        arrayList.add(zzh);
        arrayList.add(zza);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfa)).booleanValue()) {
            arrayList.add(listenableFuture);
        }
        return zzgen.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdpp
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdna zzdnaVar = (zzdna) zzb.get();
                zzdnaVar.zzP((List) zzf.get());
                zzdnaVar.zzM((zzbjm) zze2.get());
                zzdnaVar.zzQ((zzbjm) zze.get());
                zzdnaVar.zzJ((zzbjf) zzd.get());
                JSONObject jSONObject2 = jSONObject;
                zzdnaVar.zzS(zzdqd.zzj(jSONObject2));
                zzdnaVar.zzL(zzdqd.zzi(jSONObject2));
                zzcjk zzcjkVar = (zzcjk) zzh.get();
                if (zzcjkVar != null) {
                    zzdnaVar.zzad(zzcjkVar);
                    zzdnaVar.zzac(zzcjkVar.zzF());
                    zzdnaVar.zzab(zzcjkVar.zzq());
                }
                zzcjk zzcjkVar2 = (zzcjk) zzg.get();
                if (zzcjkVar2 != null) {
                    zzdnaVar.zzO(zzcjkVar2);
                    zzdnaVar.zzae(zzcjkVar2.zzF());
                }
                ListenableFuture listenableFuture2 = listenableFuture;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfa)).booleanValue()) {
                    zzdnaVar.zzU(listenableFuture2);
                    zzdnaVar.zzX(new zzceu());
                } else {
                    zzcjk zzcjkVar3 = (zzcjk) listenableFuture2.get();
                    if (zzcjkVar3 != null) {
                        zzdnaVar.zzT(zzcjkVar3);
                    }
                }
                for (zzdqh zzdqhVar : (List) zza.get()) {
                    if (zzdqhVar.zza != 1) {
                        zzdnaVar.zzN(zzdqhVar.zzb, zzdqhVar.zzd);
                    } else {
                        zzdnaVar.zzZ(zzdqhVar.zzb, zzdqhVar.zzc);
                    }
                }
                return zzdnaVar;
            }
        }, this.zza);
    }
}
