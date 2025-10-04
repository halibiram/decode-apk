package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdmv extends zzcwh {
    public static final zzgaa zzc = zzgaa.zzq(new ObfuscatedString(new long[]{-4935894554361593901L, 8583564091458159041L}).toString(), new ObfuscatedString(new long[]{5497548891387877796L, -8922972042162586063L}).toString(), new ObfuscatedString(new long[]{1554548300423883091L, -5938932812909566734L}).toString(), new ObfuscatedString(new long[]{8118276845364312110L, -4861129745661612950L}).toString(), new ObfuscatedString(new long[]{6042689069993194457L, 2386764071803222606L}).toString(), new ObfuscatedString(new long[]{-790622858255977592L, -8276375095533110577L}).toString());
    private final zzays zzA;
    private final Executor zzd;
    private final zzdna zze;
    private final zzdni zzf;
    private final zzdoa zzg;
    private final zzdnf zzh;
    private final zzdnl zzi;
    private final zzhgx zzj;
    private final zzhgx zzk;
    private final zzhgx zzl;
    private final zzhgx zzm;
    private final zzhgx zzn;
    private zzdow zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private final zzccd zzs;
    private final zzavi zzt;
    private final zzcei zzu;
    private final Context zzv;
    private final zzdmx zzw;
    private final zzeqh zzx;
    private final Map zzy;
    private final List zzz;

    public zzdmv(zzcwg zzcwgVar, Executor executor, zzdna zzdnaVar, zzdni zzdniVar, zzdoa zzdoaVar, zzdnf zzdnfVar, zzdnl zzdnlVar, zzhgx zzhgxVar, zzhgx zzhgxVar2, zzhgx zzhgxVar3, zzhgx zzhgxVar4, zzhgx zzhgxVar5, zzccd zzccdVar, zzavi zzaviVar, zzcei zzceiVar, Context context, zzdmx zzdmxVar, zzeqh zzeqhVar, zzays zzaysVar) {
        super(zzcwgVar);
        this.zzd = executor;
        this.zze = zzdnaVar;
        this.zzf = zzdniVar;
        this.zzg = zzdoaVar;
        this.zzh = zzdnfVar;
        this.zzi = zzdnlVar;
        this.zzj = zzhgxVar;
        this.zzk = zzhgxVar2;
        this.zzl = zzhgxVar3;
        this.zzm = zzhgxVar4;
        this.zzn = zzhgxVar5;
        this.zzs = zzccdVar;
        this.zzt = zzaviVar;
        this.zzu = zzceiVar;
        this.zzv = context;
        this.zzw = zzdmxVar;
        this.zzx = zzeqhVar;
        this.zzy = new HashMap();
        this.zzz = new ArrayList();
        this.zzA = zzaysVar;
    }

    public static boolean zzW(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzke)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            long zzv = com.google.android.gms.ads.internal.util.zzt.zzv(view);
            if (view.isShown() && view.getGlobalVisibleRect(new Rect(), null)) {
                if (zzv >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkf)).intValue()) {
                    return true;
                }
            }
            return false;
        }
        if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), null)) {
            return false;
        }
        return true;
    }

    @Nullable
    private final synchronized View zzY(Map map) {
        if (map != null) {
            zzgaa zzgaaVar = zzc;
            int size = zzgaaVar.size();
            int i = 0;
            while (i < size) {
                WeakReference weakReference = (WeakReference) map.get((String) zzgaaVar.get(i));
                i++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    @Nullable
    private final synchronized ImageView.ScaleType zzZ() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhQ)).booleanValue()) {
            return null;
        }
        zzdow zzdowVar = this.zzo;
        if (zzdowVar == null) {
            zzcec.zze(new ObfuscatedString(new long[]{304991246002447073L, -8603153891056878072L, 4844525570370970721L, -3372315905020562581L, -1709558674359974715L, 4255545285727345428L, 1560548297031883559L, -7093385822592950449L, -5478953060564729743L, -4123415704689052157L, 3053659028499376019L}).toString());
            return null;
        }
        IObjectWrapper zzj = zzdowVar.zzj();
        if (zzj != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(zzj);
        }
        return zzdoa.zza;
    }

    private final void zzaa(String str, boolean z) {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfa)).booleanValue();
        String obfuscatedString = new ObfuscatedString(new long[]{-7626713039687836698L, 8182132324100052389L}).toString();
        if (booleanValue) {
            ListenableFuture zzw = this.zze.zzw();
            if (zzw == null) {
                return;
            }
            zzgen.zzr(zzw, new zzdmt(this, obfuscatedString, true), this.zzd);
            return;
        }
        zzf(obfuscatedString, true);
    }

    private final synchronized void zzab(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzq(view, map, map2, zzZ());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzac(View view, @Nullable zzfod zzfodVar) {
        zzcjk zzr = this.zze.zzr();
        if (this.zzh.zzd() && zzfodVar != null && zzr != null && view != null) {
            com.google.android.gms.ads.internal.zzt.zzA().zzh(zzfodVar, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzad, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzy(zzdow zzdowVar) {
        Iterator<String> keys;
        View view;
        try {
            if (!this.zzp) {
                this.zzo = zzdowVar;
                this.zzg.zze(zzdowVar);
                this.zzf.zzy(zzdowVar.zzf(), zzdowVar.zzm(), zzdowVar.zzn(), zzdowVar, zzdowVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcv)).booleanValue()) {
                    this.zzt.zzc().zzo(zzdowVar.zzf());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbK)).booleanValue()) {
                    zzfgm zzfgmVar = this.zzb;
                    if (zzfgmVar.zzal && (keys = zzfgmVar.zzak.keys()) != null) {
                        while (keys.hasNext()) {
                            String next = keys.next();
                            WeakReference weakReference = (WeakReference) this.zzo.zzl().get(next);
                            this.zzy.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                zzayr zzayrVar = new zzayr(this.zzv, view);
                                this.zzz.add(zzayrVar);
                                zzayrVar.zzc(new zzdms(this, next));
                            }
                        }
                    }
                }
                if (zzdowVar.zzi() != null) {
                    zzdowVar.zzi().zzc(this.zzs);
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public final void zzz(zzdow zzdowVar) {
        this.zzf.zzz(zzdowVar.zzf(), zzdowVar.zzl());
        if (zzdowVar.zzh() != null) {
            zzdowVar.zzh().setClickable(false);
            zzdowVar.zzh().removeAllViews();
        }
        if (zzdowVar.zzi() != null) {
            zzdowVar.zzi().zze(this.zzs);
        }
        this.zzo = null;
    }

    public static /* synthetic */ void zzr(zzdmv zzdmvVar) {
        try {
            zzdna zzdnaVar = zzdmvVar.zze;
            int zzc2 = zzdnaVar.zzc();
            if (zzc2 != 1) {
                if (zzc2 != 2) {
                    if (zzc2 != 3) {
                        if (zzc2 != 6) {
                            if (zzc2 != 7) {
                                zzcec.zzg(new ObfuscatedString(new long[]{8477861916327165962L, 8392074734793702947L, -5323917445603687550L, -170208811851714168L, 7155734128824969630L}).toString());
                                return;
                            }
                            zzdnl zzdnlVar = zzdmvVar.zzi;
                            if (zzdnlVar.zzg() != null) {
                                zzdnlVar.zzg().zzg((zzbps) zzdmvVar.zzm.zzb());
                                return;
                            }
                            return;
                        }
                        if (zzdmvVar.zzi.zzf() != null) {
                            zzdmvVar.zzaa(new ObfuscatedString(new long[]{-6708765378933573438L, 9053896966655634243L}).toString(), true);
                            zzdmvVar.zzi.zzf().zze((zzblj) zzdmvVar.zzl.zzb());
                            return;
                        }
                        return;
                    }
                    if (zzdmvVar.zzi.zzd(zzdnaVar.zzA()) != null) {
                        if (zzdmvVar.zze.zzs() != null) {
                            zzdmvVar.zzf(new ObfuscatedString(new long[]{-9107657052674245088L, -5275756073751189139L}).toString(), true);
                        }
                        zzdmvVar.zzi.zzd(zzdmvVar.zze.zzA()).zze((zzbkg) zzdmvVar.zzn.zzb());
                        return;
                    }
                    return;
                }
                if (zzdmvVar.zzi.zza() != null) {
                    zzdmvVar.zzaa(new ObfuscatedString(new long[]{5112729226703775873L, 823084731581533401L}).toString(), true);
                    zzdmvVar.zzi.zza().zze((zzbkb) zzdmvVar.zzk.zzb());
                    return;
                }
                return;
            }
            if (zzdmvVar.zzi.zzb() != null) {
                zzdmvVar.zzaa(new ObfuscatedString(new long[]{-3701184627486245717L, 951147354750283034L}).toString(), true);
                zzdmvVar.zzi.zzb().zze((zzbkd) zzdmvVar.zzj.zzb());
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5800014923842547748L, 2299690238028525045L, -2848662881431911545L, 197005307471382486L, 2772071153116391118L, 1004140472158714632L, -5147004486262963685L}).toString(), e);
        }
    }

    public final synchronized void zzA(View view, Map map, Map map2, boolean z) {
        try {
            if (!this.zzq) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbK)).booleanValue() && this.zzb.zzal) {
                    Iterator it = this.zzy.keySet().iterator();
                    while (it.hasNext()) {
                        if (!((Boolean) this.zzy.get((String) it.next())).booleanValue()) {
                            break;
                        }
                    }
                }
                if (!z) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdL)).booleanValue() && map != null) {
                        Iterator it2 = map.entrySet().iterator();
                        while (it2.hasNext()) {
                            View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                            if (view2 != null && zzW(view2)) {
                                zzab(view, map, map2);
                                return;
                            }
                        }
                    }
                } else {
                    View zzY = zzY(map);
                    if (zzY == null) {
                        zzab(view, map, map2);
                        return;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdM)).booleanValue()) {
                        if (zzW(zzY)) {
                            zzab(view, map, map2);
                        }
                    } else {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdN)).booleanValue()) {
                            Rect rect = new Rect();
                            if (zzY.getGlobalVisibleRect(rect, null) && zzY.getHeight() == rect.height() && zzY.getWidth() == rect.width()) {
                                zzab(view, map, map2);
                            }
                        } else {
                            zzab(view, map, map2);
                        }
                    }
                }
            }
        } finally {
        }
    }

    public final synchronized void zzB(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.zzf.zzj(zzcwVar);
    }

    public final synchronized void zzC(View view, View view2, Map map, Map map2, boolean z) {
        this.zzg.zzc(this.zzo);
        this.zzf.zzk(view, view2, map, map2, z, zzZ());
        if (this.zzr) {
            zzdna zzdnaVar = this.zze;
            if (zzdnaVar.zzs() != null) {
                zzdnaVar.zzs().zzd(new ObfuscatedString(new long[]{-3039135935841896073L, -3420090475892477386L, 148393738909306434L, 8348822651108317827L, -4984443993555186701L}).toString(), new ArrayMap());
            }
        }
    }

    public final synchronized void zzD(@Nullable final View view, final int i) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue()) {
            return;
        }
        zzdow zzdowVar = this.zzo;
        if (zzdowVar == null) {
            zzcec.zze(new ObfuscatedString(new long[]{-6045495449311165756L, 1341048295981889988L, 7015136999348109863L, 6859887165896670295L, 865494577149608456L, -2082614749436061452L, -4097726944070763566L, 6541280157889908363L, 1297760319376916896L, -4947763071663332175L, 2054934958163941343L, -427055357139540617L}).toString());
        } else {
            final boolean z = zzdowVar instanceof zzdnu;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmp
                @Override // java.lang.Runnable
                public final void run() {
                    zzdmv.this.zzw(view, z, i);
                }
            });
        }
    }

    public final synchronized void zzE(String str) {
        this.zzf.zzl(str);
    }

    public final synchronized void zzF(Bundle bundle) {
        this.zzf.zzm(bundle);
    }

    public final synchronized void zzG() {
        zzdow zzdowVar = this.zzo;
        if (zzdowVar == null) {
            zzcec.zze(new ObfuscatedString(new long[]{-6545316696122853533L, -2142175986915575891L, -3953890963835139597L, -6056464646355308964L, 7127304802719718120L, -4389968750325466490L, 1547898874226879204L, 3356183481185527031L, 2252170274779974881L, 4392325302686829369L, -7675449234240301043L, 2609527100351638065L}).toString());
        } else {
            final boolean z = zzdowVar instanceof zzdnu;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmr
                @Override // java.lang.Runnable
                public final void run() {
                    zzdmv.this.zzx(z);
                }
            });
        }
    }

    public final synchronized void zzH() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzr();
    }

    public final void zzI(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfa)).booleanValue()) {
            zzceu zzp = this.zze.zzp();
            if (zzp == null) {
                return;
            }
            zzgen.zzr(zzp, new zzdmu(this, view), this.zzd);
            return;
        }
        zzac(view, this.zze.zzu());
    }

    public final synchronized void zzJ(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzs(view, motionEvent, view2);
    }

    public final synchronized void zzK(Bundle bundle) {
        this.zzf.zzt(bundle);
    }

    public final synchronized void zzL(View view) {
        this.zzf.zzu(view);
    }

    public final synchronized void zzM() {
        this.zzf.zzv();
    }

    public final synchronized void zzN(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzf.zzw(zzcsVar);
    }

    public final synchronized void zzO(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        this.zzx.zza(zzdgVar);
    }

    public final synchronized void zzP(zzblg zzblgVar) {
        this.zzf.zzx(zzblgVar);
    }

    public final synchronized void zzQ(final zzdow zzdowVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbI)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdml
                @Override // java.lang.Runnable
                public final void run() {
                    zzdmv.this.zzy(zzdowVar);
                }
            });
        } else {
            zzy(zzdowVar);
        }
    }

    public final synchronized void zzR(final zzdow zzdowVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbI)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmm
                @Override // java.lang.Runnable
                public final void run() {
                    zzdmv.this.zzz(zzdowVar);
                }
            });
        } else {
            zzz(zzdowVar);
        }
    }

    public final boolean zzS() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzT() {
        return this.zzf.zzA();
    }

    public final synchronized boolean zzU() {
        return this.zzf.zzB();
    }

    public final boolean zzV() {
        return this.zzh.zzd();
    }

    public final synchronized boolean zzX(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzC = this.zzf.zzC(bundle);
        this.zzq = zzC;
        return zzC;
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcwh
    public final synchronized void zzb() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmq
            @Override // java.lang.Runnable
            public final void run() {
                zzdmv.this.zzv();
            }
        });
        super.zzb();
    }

    public final zzdmx zzc() {
        return this.zzw;
    }

    @Nullable
    public final zzfod zzf(String str, boolean z) {
        boolean z2;
        boolean z3;
        String obfuscatedString;
        zzeii zzeiiVar;
        zzeii zzeiiVar2;
        zzeih zzeihVar;
        ObfuscatedString obfuscatedString2;
        String obfuscatedString3;
        if (!this.zzh.zzd() || TextUtils.isEmpty(str)) {
            return null;
        }
        zzdna zzdnaVar = this.zze;
        zzcjk zzr = zzdnaVar.zzr();
        zzcjk zzs = zzdnaVar.zzs();
        if (zzr == null && zzs == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{4226312197619137811L, -6549481989226598884L, 1061225289123083104L, -4845793498599061053L, -3688340643850103532L, -588897511177015541L, 6473121009971802644L, -3585198703526364108L, 3524116328437261365L, -5201024364465793744L}).toString());
            return null;
        }
        if (zzr != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (zzs != null) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeY)).booleanValue()) {
            this.zzh.zza();
            int zzb = this.zzh.zza().zzb();
            int i = zzb - 1;
            if (i != 0) {
                if (i != 1) {
                    if (zzb != 1) {
                        if (zzb != 2) {
                            obfuscatedString3 = new ObfuscatedString(new long[]{-4118060288300189070L, -2425304380625256495L}).toString();
                            zzcec.zzj(new ObfuscatedString(new long[]{2709439566811544897L, -8392707337115640118L, -6439915746958561117L, 8851744949384839595L, 5904780939185427678L}).toString() + obfuscatedString3 + new ObfuscatedString(new long[]{4119299528467444840L, 1479115191062543331L, -669795894721492413L, 6666053481581598490L}).toString());
                            return null;
                        }
                        obfuscatedString2 = new ObfuscatedString(new long[]{9206527118911779777L, 8269626999456087741L});
                    } else {
                        obfuscatedString2 = new ObfuscatedString(new long[]{-2316637171587284801L, -4865770364078129231L});
                    }
                    obfuscatedString3 = obfuscatedString2.toString();
                    zzcec.zzj(new ObfuscatedString(new long[]{2709439566811544897L, -8392707337115640118L, -6439915746958561117L, 8851744949384839595L, 5904780939185427678L}).toString() + obfuscatedString3 + new ObfuscatedString(new long[]{4119299528467444840L, 1479115191062543331L, -669795894721492413L, 6666053481581598490L}).toString());
                    return null;
                }
                if (zzr != null) {
                    z2 = true;
                    z3 = false;
                } else {
                    zzcec.zzj(new ObfuscatedString(new long[]{8745122208608644609L, 169039817933330122L, 1177854299201252265L, 5647462621283776965L, 6134550434935241370L, -6426261600919734011L, 1830856401181664228L, 8029333229959424848L, -6938899782552957183L}).toString());
                    return null;
                }
            } else if (zzs != null) {
                z2 = false;
                z3 = true;
            } else {
                zzcec.zzj(new ObfuscatedString(new long[]{-3731589706178275940L, 7318321630588604247L, 3846893465008370957L, 4001790167588102540L, 33735355967423445L, -267303528928874858L, -8462771537851291108L, 1026684601026295456L, 7471794124989675637L}).toString());
                return null;
            }
        }
        if (z2) {
            obfuscatedString = null;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-8493143371394383113L, -4639189482584624838L, -6498917722752760352L}).toString();
            zzr = zzs;
        }
        zzr.zzG();
        if (!com.google.android.gms.ads.internal.zzt.zzA().zzj(this.zzv)) {
            zzcec.zzj(new ObfuscatedString(new long[]{6363969461118343404L, 3192917807991552828L, -6134499877518273124L, 1032271733155759638L, 5702831556126904590L, -2252446220134893292L, -5476666661646001558L}).toString());
            return null;
        }
        zzcei zzceiVar = this.zzu;
        String m3333x1db10c9d = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4343697719685995712L, -4020599771657692327L}), AbstractC0749x8313616e.m3340x952a0a9e(zzceiVar.zzb), zzceiVar.zzc);
        if (z3) {
            zzeihVar = zzeih.zzc;
            zzeiiVar2 = zzeii.zzb;
        } else {
            zzdna zzdnaVar2 = this.zze;
            zzeih zzeihVar2 = zzeih.zzb;
            if (zzdnaVar2.zzc() == 3) {
                zzeiiVar = zzeii.zzd;
            } else {
                zzeiiVar = zzeii.zzc;
            }
            zzeiiVar2 = zzeiiVar;
            zzeihVar = zzeihVar2;
        }
        zzfod zzb2 = com.google.android.gms.ads.internal.zzt.zzA().zzb(m3333x1db10c9d, zzr.zzG(), new ObfuscatedString(new long[]{5715803629018424794L}).toString(), new ObfuscatedString(new long[]{8275756685440179583L, -4458409695970407717L, -6483602374707119999L}).toString(), obfuscatedString, str, zzeiiVar2, zzeihVar, this.zzb.zzam);
        if (zzb2 == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{5671024892999893383L, -3127835649392646394L, 753009186478455247L, -1673996811797763247L, -1021948508271803862L, 146220149662840555L, -2952294235311340067L, -1522447704580301559L}).toString());
            return null;
        }
        this.zze.zzW(zzb2);
        zzr.zzaq(zzb2);
        if (z3) {
            com.google.android.gms.ads.internal.zzt.zzA().zzh(zzb2, zzs.zzF());
            this.zzr = true;
        }
        if (z) {
            com.google.android.gms.ads.internal.zzt.zzA().zzi(zzb2);
            zzr.zzd(new ObfuscatedString(new long[]{7182151323745668189L, -60041124985291348L, 2132770349639772053L}).toString(), new ArrayMap());
        }
        return zzb2;
    }

    public final String zzg() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.zzf.zze(view, map, map2, zzZ());
    }

    @Override // com.google.android.gms.internal.ads.zzcwh
    @AnyThread
    public final void zzj() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmn
            @Override // java.lang.Runnable
            public final void run() {
                zzdmv.zzr(zzdmv.this);
            }
        });
        if (this.zze.zzc() != 7) {
            Executor executor = this.zzd;
            final zzdni zzdniVar = this.zzf;
            Objects.requireNonNull(zzdniVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmo
                @Override // java.lang.Runnable
                public final void run() {
                    zzdni.this.zzp();
                }
            });
        }
        super.zzj();
    }

    public final synchronized JSONObject zzk(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzZ());
    }

    public final void zzt(View view) {
        zzfod zzu = this.zze.zzu();
        if (this.zzh.zzd() && zzu != null && view != null) {
            com.google.android.gms.ads.internal.zzt.zzA().zzf(zzu, view);
        }
    }

    public final synchronized void zzu() {
        this.zzf.zzh();
    }

    public final /* synthetic */ void zzv() {
        this.zzf.zzi();
        this.zze.zzI();
    }

    public final /* synthetic */ void zzw(View view, boolean z, int i) {
        this.zzf.zzo(view, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzZ(), i);
    }

    public final /* synthetic */ void zzx(boolean z) {
        this.zzf.zzo(null, this.zzo.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzZ(), 0);
    }
}
