package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzeem extends zzbyp {
    private final Context zza;
    private final zzgey zzb;
    private final zzefe zzc;
    private final zzcqs zzd;
    private final ArrayDeque zze;
    private final zzfnc zzf;
    private final zzbzq zzg;
    private final zzefb zzh;

    public zzeem(Context context, zzgey zzgeyVar, zzbzq zzbzqVar, zzcqs zzcqsVar, zzefe zzefeVar, ArrayDeque arrayDeque, zzefb zzefbVar, zzfnc zzfncVar) {
        zzbgc.zza(context);
        this.zza = context;
        this.zzb = zzgeyVar;
        this.zzg = zzbzqVar;
        this.zzc = zzefeVar;
        this.zzd = zzcqsVar;
        this.zze = arrayDeque;
        this.zzh = zzefbVar;
        this.zzf = zzfncVar;
    }

    @Nullable
    private final synchronized zzeej zzk(String str) {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            zzeej zzeejVar = (zzeej) it.next();
            if (zzeejVar.zzc.equals(str)) {
                it.remove();
                return zzeejVar;
            }
        }
        return null;
    }

    private static ListenableFuture zzl(ListenableFuture listenableFuture, zzflm zzflmVar, zzbrx zzbrxVar, zzfmz zzfmzVar, zzfmo zzfmoVar) {
        zzbrn zza = zzbrxVar.zza(new ObfuscatedString(new long[]{-5894183665250174455L, -4330290554718984850L, 5028959391780373983L, 2125196818417986913L}).toString(), zzbru.zza, new zzbrp() { // from class: com.google.android.gms.internal.ads.zzeef
            @Override // com.google.android.gms.internal.ads.zzbrp
            public final Object zza(JSONObject jSONObject) {
                return new zzbzh(jSONObject);
            }
        });
        zzfmy.zzd(listenableFuture, zzfmoVar);
        zzfkr zza2 = zzflmVar.zzb(zzflg.zzg, listenableFuture).zzf(zza).zza();
        zzfmy.zzc(zza2, zzfmzVar, zzfmoVar);
        return zza2;
    }

    private static ListenableFuture zzm(zzbze zzbzeVar, zzflm zzflmVar, final zzeyo zzeyoVar) {
        zzgdu zzgduVar = new zzgdu() { // from class: com.google.android.gms.internal.ads.zzedz
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzeyo.this.zzb().zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzh((Bundle) obj));
            }
        };
        return zzflmVar.zzb(zzflg.zze, zzgen.zzh(zzbzeVar.zza)).zzf(zzgduVar).zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzeea
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-6649323958062559889L, 297448620005940713L, 4090951975464649083L, -6745337393436664399L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    private final synchronized void zzn(zzeej zzeejVar) {
        zzo();
        this.zze.addLast(zzeejVar);
    }

    private final synchronized void zzo() {
        int intValue = ((Long) zzbih.zzc.zze()).intValue();
        while (this.zze.size() >= intValue) {
            this.zze.removeFirst();
        }
    }

    private final void zzp(ListenableFuture listenableFuture, zzbza zzbzaVar) {
        zzgen.zzr(zzgen.zzn(listenableFuture, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzedx
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(zzfii.zza((InputStream) obj));
            }
        }, zzcep.zza), new zzeei(this, zzbzaVar), zzcep.zzf);
    }

    public final ListenableFuture zzb(final zzbze zzbzeVar, int i) {
        if (!((Boolean) zzbih.zza.zze()).booleanValue()) {
            return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-4885857255728780409L, 6416595777761329687L, -6047584099196263080L, 1767348651202435264L, 2647240041805291464L}).toString()));
        }
        zzfjc zzfjcVar = zzbzeVar.zzi;
        if (zzfjcVar == null) {
            return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-1315179881601383402L, -3229746684323512440L, -4568167775642344676L, -5298823879722506479L, -1337869750825073222L, -5786457429044211584L}).toString()));
        }
        if (zzfjcVar.zzc != 0 && zzfjcVar.zzd != 0) {
            zzbrx zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcei.zza(), this.zzf);
            zzeyo zzq = this.zzd.zzq(zzbzeVar, i);
            zzflm zzc = zzq.zzc();
            final ListenableFuture zzm = zzm(zzbzeVar, zzc, zzq);
            zzfmz zzd = zzq.zzd();
            final zzfmo zza = zzfmn.zza(this.zza, 9);
            final ListenableFuture zzl = zzl(zzm, zzc, zzb, zzd, zza);
            return zzc.zza(zzflg.zzz, zzm, zzl).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeed
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzeem.this.zzj(zzl, zzm, zzbzeVar, zza);
                }
            }).zza();
        }
        return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-5992505121127401925L, -1393738945773972013L, -6648274206135091625L, 3895216910225039811L}).toString()));
    }

    public final ListenableFuture zzc(zzbze zzbzeVar, int i) {
        zzeej zzk;
        zzfmo zzfmoVar;
        zzfkr zza;
        zzbrx zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcei.zza(), this.zzf);
        zzeyo zzq = this.zzd.zzq(zzbzeVar, i);
        zzbrn zza2 = zzb.zza(new ObfuscatedString(new long[]{8306266825871409054L, 1209858278496283828L, -2928181659621959505L, 8678348526979019394L, 295134305471156985L}).toString(), zzeel.zza, zzbru.zzb);
        if (!((Boolean) zzbih.zza.zze()).booleanValue()) {
            String str = zzbzeVar.zzj;
            zzk = null;
            if (str != null && !str.isEmpty()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3805515016650023563L, 1456191306525941560L, 1256466286816195483L, 2537660407455002362L, 6252830143866725653L, -1606588905924424828L, -4556302265004129735L, 4366549331656214997L, -714228221210900838L}).toString());
            }
        } else {
            zzk = zzk(zzbzeVar.zzh);
            if (zzk == null) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7518587972900632063L, -7418666701902326407L, -1664351322647884039L, -7941101100727018852L, 5815535222489237825L, -5880045229636952971L, -5658079489091563485L, -5692271195522418850L, 5810171905969003785L, 8199185081999834124L}).toString());
            }
        }
        if (zzk == null) {
            zzfmoVar = zzfmn.zza(this.zza, 9);
        } else {
            zzfmoVar = zzk.zze;
        }
        zzfmz zzd = zzq.zzd();
        zzd.zzd(zzbzeVar.zza.getStringArrayList(new ObfuscatedString(new long[]{-6510464231005445183L, -317921448430298266L}).toString()));
        zzefd zzefdVar = new zzefd(zzbzeVar.zzg, zzd, zzfmoVar);
        zzefa zzefaVar = new zzefa(this.zza, zzbzeVar.zzb.zza, this.zzg, i);
        zzflm zzc = zzq.zzc();
        zzfmo zza3 = zzfmn.zza(this.zza, 11);
        if (zzk == null) {
            final ListenableFuture zzm = zzm(zzbzeVar, zzc, zzq);
            final ListenableFuture zzl = zzl(zzm, zzc, zzb, zzd, zzfmoVar);
            zzfmo zza4 = zzfmn.zza(this.zza, 10);
            final zzfkr zza5 = zzc.zza(zzflg.zzi, zzl, zzm).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeeb
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzefc((JSONObject) ListenableFuture.this.get(), (zzbzh) zzl.get());
                }
            }).zze(zzefdVar).zze(new zzfmu(zza4)).zze(zzefaVar).zza();
            zzfmy.zza(zza5, zzd, zza4);
            zzfmy.zzd(zza5, zza3);
            zza = zzc.zza(zzflg.zzk, zzm, zzl, zza5).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeec
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzeel((zzeez) ListenableFuture.this.get(), (JSONObject) zzm.get(), (zzbzh) zzl.get());
                }
            }).zzf(zza2).zza();
        } else {
            zzefc zzefcVar = new zzefc(zzk.zzb, zzk.zza);
            zzfmo zza6 = zzfmn.zza(this.zza, 10);
            final zzfkr zza7 = zzc.zzb(zzflg.zzi, zzgen.zzh(zzefcVar)).zze(zzefdVar).zze(new zzfmu(zza6)).zze(zzefaVar).zza();
            zzfmy.zza(zza7, zzd, zza6);
            final ListenableFuture zzh = zzgen.zzh(zzk);
            zzfmy.zzd(zza7, zza3);
            zza = zzc.zza(zzflg.zzk, zza7, zzh).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzedy
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzeez zzeezVar = (zzeez) ListenableFuture.this.get();
                    ListenableFuture listenableFuture = zzh;
                    return new zzeel(zzeezVar, ((zzeej) listenableFuture.get()).zzb, ((zzeej) listenableFuture.get()).zza);
                }
            }).zzf(zza2).zza();
        }
        zzfmy.zza(zza, zzd, zza3);
        return zza;
    }

    public final ListenableFuture zzd(zzbze zzbzeVar, int i) {
        zzbrx zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(this.zza, zzcei.zza(), this.zzf);
        if (!((Boolean) zzbim.zza.zze()).booleanValue()) {
            return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-7983042682287430536L, 1976756762801498387L, 6409205496832380260L, 3095536829411955393L, 6904304305808204097L}).toString()));
        }
        zzeyo zzq = this.zzd.zzq(zzbzeVar, i);
        final zzext zza = zzq.zza();
        zzbrn zza2 = zzb.zza(new ObfuscatedString(new long[]{6132222351155894424L, 5918698997351015201L, -8181133273963670965L, -96147286189636620L, -2253058720108212756L}).toString(), zzbru.zza, zzbru.zzb);
        zzfmo zza3 = zzfmn.zza(this.zza, 22);
        zzfkr zza4 = zzq.zzc().zzb(zzflg.zzl, zzgen.zzh(zzbzeVar.zza)).zze(new zzfmu(zza3)).zzf(new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeeg
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzext.this.zza(com.google.android.gms.ads.internal.client.zzay.zzb().zzh((Bundle) obj));
            }
        }).zzb(zzflg.zzm).zzf(zza2).zza();
        zzfmz zzd = zzq.zzd();
        zzd.zzd(zzbzeVar.zza.getStringArrayList(new ObfuscatedString(new long[]{7182196457612486527L, 342025865931690447L}).toString()));
        zzfmy.zzb(zza4, zzd, zza3);
        if (((Boolean) zzbia.zze.zze()).booleanValue()) {
            zzefe zzefeVar = this.zzc;
            Objects.requireNonNull(zzefeVar);
            zza4.addListener(new zzeee(zzefeVar), this.zzb);
        }
        return zza4;
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zze(zzbze zzbzeVar, zzbza zzbzaVar) {
        zzp(zzb(zzbzeVar, Binder.getCallingUid()), zzbzaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzf(zzbze zzbzeVar, zzbza zzbzaVar) {
        zzp(zzd(zzbzeVar, Binder.getCallingUid()), zzbzaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzg(zzbze zzbzeVar, zzbza zzbzaVar) {
        ListenableFuture zzc = zzc(zzbzeVar, Binder.getCallingUid());
        zzp(zzc, zzbzaVar);
        if (((Boolean) zzbia.zzc.zze()).booleanValue()) {
            zzefe zzefeVar = this.zzc;
            Objects.requireNonNull(zzefeVar);
            zzc.addListener(new zzeee(zzefeVar), this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzh(String str, zzbza zzbzaVar) {
        zzp(zzi(str), zzbzaVar);
    }

    public final ListenableFuture zzi(String str) {
        if (!((Boolean) zzbih.zza.zze()).booleanValue()) {
            return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{5263881885381549732L, 1094891219696459987L, -6969806109748629453L, -8492781262471570194L, -4569893161067012325L}).toString()));
        }
        zzeeh zzeehVar = new zzeeh(this);
        if (zzk(str) == null) {
            return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-7218924503426996845L, 4509706850175086668L, -3915411716060395937L, 6421976765270845042L, 5723572329370435915L, -8274833340274737723L, -2667121415389364678L}).toString().concat(String.valueOf(str))));
        }
        return zzgen.zzh(zzeehVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ InputStream zzj(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, zzbze zzbzeVar, zzfmo zzfmoVar) {
        String zzc = ((zzbzh) listenableFuture.get()).zzc();
        zzn(new zzeej((zzbzh) listenableFuture.get(), (JSONObject) listenableFuture2.get(), zzbzeVar.zzh, zzc, zzfmoVar));
        return new ByteArrayInputStream(zzc.getBytes(zzfwq.zzc));
    }
}
