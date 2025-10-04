package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzelh implements zzelb {
    private final zzdlk zza;
    private final zzgey zzb;
    private final zzdpq zzc;
    private final zzfig zzd;
    private final zzdsf zze;

    public zzelh(zzdlk zzdlkVar, zzgey zzgeyVar, zzdpq zzdpqVar, zzfig zzfigVar, zzdsf zzdsfVar) {
        this.zza = zzdlkVar;
        this.zzb = zzgeyVar;
        this.zzc = zzdpqVar;
        this.zzd = zzfigVar;
        this.zze = zzdsfVar;
    }

    private final ListenableFuture zzg(final zzfgy zzfgyVar, final zzfgm zzfgmVar, final JSONObject jSONObject) {
        zzdpq zzdpqVar = this.zzc;
        final ListenableFuture zza = this.zzd.zza();
        final ListenableFuture zza2 = zzdpqVar.zza(zzfgyVar, zzfgmVar, jSONObject);
        return zzgen.zzc(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzelc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzelh.this.zzc(zza2, zza, zzfgyVar, zzfgmVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        return zzgen.zzn(zzgen.zzn(this.zzd.zza(), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzele
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzelh.this.zze(zzfgmVar, (zzdrz) obj);
            }
        }, this.zzb), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzelf
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzelh.this.zzf(zzfgyVar, zzfgmVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzfgr zzfgrVar = zzfgmVar.zzt;
        if (zzfgrVar != null && zzfgrVar.zzc != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ zzdmv zzc(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzfgy zzfgyVar, zzfgm zzfgmVar, JSONObject jSONObject) {
        zzdna zzdnaVar = (zzdna) listenableFuture.get();
        zzdrz zzdrzVar = (zzdrz) listenableFuture2.get();
        zzdnb zzd = this.zza.zzd(new zzcwx(zzfgyVar, zzfgmVar, null), new zzdnm(zzdnaVar), new zzdlz(jSONObject, zzdrzVar));
        zzd.zzh().zzb();
        zzd.zzk().zza(zzdrzVar);
        zzd.zzg().zza(zzdnaVar.zzs());
        zzd.zzl().zza(this.zze);
        return zzd.zza();
    }

    public final /* synthetic */ ListenableFuture zzd(zzdrz zzdrzVar, JSONObject jSONObject) {
        this.zzd.zzb(zzgen.zzh(zzdrzVar));
        if (jSONObject.optBoolean(new ObfuscatedString(new long[]{3004603851060237969L, 4677941209242209728L}).toString())) {
            return zzgen.zzh(jSONObject.getJSONObject(new ObfuscatedString(new long[]{-3068162735152788237L, -3385844375313246203L}).toString()).getJSONArray(new ObfuscatedString(new long[]{-7670593077648222985L, 5228070838590156461L}).toString()));
        }
        throw new zzbrm(new ObfuscatedString(new long[]{2783454290307341845L, 7784831227728145744L, -5841538812539236659L, -5117232100790510249L}).toString());
    }

    public final /* synthetic */ ListenableFuture zze(zzfgm zzfgmVar, final zzdrz zzdrzVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-8403886847199176473L, 7632716088939729029L, 5105060326923507989L}).toString(), true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziw)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put(new ObfuscatedString(new long[]{6105008648717151225L, -680306675065900716L, 3255213247765314621L, 6724655920073670408L}).toString(), true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(new ObfuscatedString(new long[]{2609120637191840251L, -4393599190552881009L}).toString(), zzfgmVar.zzt.zzc);
        jSONObject2.put(new ObfuscatedString(new long[]{404784660343679958L, -441876861549447228L, -212018381564635464L}).toString(), jSONObject);
        return zzgen.zzn(zzdrzVar.zzd(new ObfuscatedString(new long[]{4430272032560136563L, 119885886047896618L, 8096673924301565782L, 6108250047992031111L, 6823891437510142499L, 4245381596468948641L}).toString(), jSONObject2), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeld
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzelh.this.zzd(zzdrzVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ ListenableFuture zzf(zzfgy zzfgyVar, zzfgm zzfgmVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzgen.zzg(new zzead(3));
        }
        if (zzfgyVar.zza.zza.zzk > 1) {
            int length = jSONArray.length();
            this.zzd.zzc(Math.min(length, zzfgyVar.zza.zza.zzk));
            ArrayList arrayList = new ArrayList(zzfgyVar.zza.zza.zzk);
            for (int i = 0; i < zzfgyVar.zza.zza.zzk; i++) {
                if (i < length) {
                    arrayList.add(zzg(zzfgyVar, zzfgmVar, jSONArray.getJSONObject(i)));
                } else {
                    arrayList.add(zzgen.zzg(new zzead(3)));
                }
            }
            return zzgen.zzh(arrayList);
        }
        return zzgen.zzm(zzg(zzfgyVar, zzfgmVar, jSONArray.getJSONObject(0)), new zzfws() { // from class: com.google.android.gms.internal.ads.zzelg
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return Collections.singletonList(zzgen.zzh((zzdmv) obj));
            }
        }, this.zzb);
    }
}
