package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavj;
import com.google.android.gms.internal.ads.zzbfu;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbht;
import com.google.android.gms.internal.ads.zzbxi;
import com.google.android.gms.internal.ads.zzbxr;
import com.google.android.gms.internal.ads.zzccq;
import com.google.android.gms.internal.ads.zzccs;
import com.google.android.gms.internal.ads.zzccx;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzclg;
import com.google.android.gms.internal.ads.zzdaf;
import com.google.android.gms.internal.ads.zzdgm;
import com.google.android.gms.internal.ads.zzdrz;
import com.google.android.gms.internal.ads.zzdwa;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzfhf;
import com.google.android.gms.internal.ads.zzfhl;
import com.google.android.gms.internal.ads.zzfig;
import com.google.android.gms.internal.ads.zzfmn;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzfmz;
import com.google.android.gms.internal.ads.zzfnc;
import com.google.android.gms.internal.ads.zzfny;
import com.google.android.gms.internal.ads.zzfws;
import com.google.android.gms.internal.ads.zzfxt;
import com.google.android.gms.internal.ads.zzgdt;
import com.google.android.gms.internal.ads.zzgdu;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzgen;
import com.google.android.gms.internal.ads.zzgey;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzaa extends zzccs {
    protected static final List zza = new ArrayList(Arrays.asList(new ObfuscatedString(new long[]{-8530562940414428555L, -7332260944276167751L}).toString(), new ObfuscatedString(new long[]{2793262894976963316L, -8107292799630409969L, -2842913139225480487L}).toString(), new ObfuscatedString(new long[]{7277010320777505865L, 3894594486355327845L}).toString()));
    protected static final List zzb = new ArrayList(Arrays.asList(new ObfuscatedString(new long[]{6705988466921630886L, 6375121362832425002L, -4148014839345607156L}).toString(), new ObfuscatedString(new long[]{-3230837683274030095L, -5900877579669354753L, -7652624745971912181L, 4620887662821606624L}).toString()));
    protected static final List zzc = new ArrayList(Arrays.asList(new ObfuscatedString(new long[]{-7029922066961458488L, -6677968614925939109L, 4678967920331764250L}).toString(), new ObfuscatedString(new long[]{4114521632292793203L, -6284052727795815547L, 6645997149752015080L}).toString(), new ObfuscatedString(new long[]{-370348648956862833L, 1547692551013976296L, -6915940198993851070L, -645394166928912479L}).toString(), new ObfuscatedString(new long[]{-229911369577510170L, 3852760654715988063L}).toString()));
    protected static final List zzd = new ArrayList(Arrays.asList(new ObfuscatedString(new long[]{-3088684401501875159L, 3555830465967328475L, -3396292395772285225L}).toString(), new ObfuscatedString(new long[]{3643045285904547252L, -2966152895527706978L, 7633445316554576376L, -7933539979632493468L}).toString(), new ObfuscatedString(new long[]{1189172240017683942L, 3163538089360062405L, 5052383483168065592L, 1830906829418355255L}).toString()));
    public static final /* synthetic */ int zze = 0;
    private final zzcei zzB;
    private String zzC;
    private final List zzE;
    private final List zzF;
    private final List zzG;
    private final List zzH;
    private final zzbhh zzL;
    private final zzclg zzf;
    private Context zzg;
    private final zzavi zzh;
    private final zzfhl zzi;
    private final zzfig zzj;
    private final zzgey zzl;
    private final ScheduledExecutorService zzm;

    @Nullable
    private zzbxr zzn;
    private final zzc zzr;
    private final zzdwk zzs;
    private final zzfny zzt;
    private zzdwa zzk = null;
    private Point zzo = new Point();
    private Point zzp = new Point();
    private final Set zzq = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger zzA = new AtomicInteger(0);
    private final AtomicBoolean zzI = new AtomicBoolean(false);
    private final AtomicBoolean zzJ = new AtomicBoolean(false);
    private final AtomicInteger zzK = new AtomicInteger(0);
    private final boolean zzu = ((Boolean) zzba.zzc().zza(zzbgc.zzhl)).booleanValue();
    private final boolean zzv = ((Boolean) zzba.zzc().zza(zzbgc.zzhk)).booleanValue();
    private final boolean zzw = ((Boolean) zzba.zzc().zza(zzbgc.zzhn)).booleanValue();
    private final boolean zzx = ((Boolean) zzba.zzc().zza(zzbgc.zzhp)).booleanValue();
    private final String zzy = (String) zzba.zzc().zza(zzbgc.zzho);
    private final String zzz = (String) zzba.zzc().zza(zzbgc.zzhq);
    private final String zzD = (String) zzba.zzc().zza(zzbgc.zzhr);

    public zzaa(zzclg zzclgVar, Context context, zzavi zzaviVar, zzfig zzfigVar, zzgey zzgeyVar, ScheduledExecutorService scheduledExecutorService, zzdwk zzdwkVar, zzfny zzfnyVar, zzcei zzceiVar, zzbhh zzbhhVar, zzfhl zzfhlVar) {
        List list;
        this.zzf = zzclgVar;
        this.zzg = context;
        this.zzh = zzaviVar;
        this.zzi = zzfhlVar;
        this.zzj = zzfigVar;
        this.zzl = zzgeyVar;
        this.zzm = scheduledExecutorService;
        this.zzr = zzclgVar.zzn();
        this.zzs = zzdwkVar;
        this.zzt = zzfnyVar;
        this.zzB = zzceiVar;
        this.zzL = zzbhhVar;
        if (((Boolean) zzba.zzc().zza(zzbgc.zzhs)).booleanValue()) {
            this.zzE = zzad((String) zzba.zzc().zza(zzbgc.zzht));
            this.zzF = zzad((String) zzba.zzc().zza(zzbgc.zzhu));
            this.zzG = zzad((String) zzba.zzc().zza(zzbgc.zzhv));
            list = zzad((String) zzba.zzc().zza(zzbgc.zzhw));
        } else {
            this.zzE = zza;
            this.zzF = zzb;
            this.zzG = zzc;
            list = zzd;
        }
        this.zzH = list;
    }

    public static /* bridge */ /* synthetic */ void zzI(zzaa zzaaVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzaaVar.zzR((Uri) it.next())) {
                zzaaVar.zzA.getAndIncrement();
                return;
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zzK(final zzaa zzaaVar, final String str, final String str2, final zzdwa zzdwaVar) {
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzgX)).booleanValue()) {
            return;
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzhd)).booleanValue()) {
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
                @Override // java.lang.Runnable
                public final void run() {
                    zzaa.this.zzM(str, str2, zzdwaVar);
                }
            });
        } else {
            zzaaVar.zzr.zzd(str, str2, zzdwaVar);
        }
    }

    public static final /* synthetic */ Uri zzT(Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            return zzac(uri, new ObfuscatedString(new long[]{1684148635715407280L, 3036585805547476932L}).toString(), str);
        }
        return uri;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final zzh zzU(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        char c;
        zzfhf zzfhfVar = new zzfhf();
        if (new ObfuscatedString(new long[]{8183439320293477226L, -5521576411570264644L}).toString().equals(str2)) {
            zzfhfVar.zzo().zza(2);
        } else if (new ObfuscatedString(new long[]{9221525193045901352L, 2853870988140367650L, -1879115583364726161L, 4287171142464146376L}).toString().equals(str2)) {
            zzfhfVar.zzo().zza(3);
        }
        zzg zzo = this.zzf.zzo();
        zzdaf zzdafVar = new zzdaf();
        zzdafVar.zze(context);
        if (str == null) {
            str = new ObfuscatedString(new long[]{6226556673098854923L, -2705420498528044125L}).toString();
        }
        zzfhfVar.zzs(str);
        if (zzlVar == null) {
            zzlVar = new com.google.android.gms.ads.internal.client.zzm().zza();
        }
        zzfhfVar.zzE(zzlVar);
        if (zzqVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals(new ObfuscatedString(new long[]{-7572909111628136146L, -7787722076524953231L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -428325382:
                    if (str2.equals(new ObfuscatedString(new long[]{2349151891348285595L, 2768277800953765259L, -345250642144690992L}).toString())) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 543046670:
                    if (str2.equals(new ObfuscatedString(new long[]{3995608543713551024L, 303083752202363273L}).toString())) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1854800829:
                    if (str2.equals(new ObfuscatedString(new long[]{-7692627217205538765L, -3278594630480783664L, 7757208707518533120L, 4661385531071720801L}).toString())) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951953708:
                    if (str2.equals(new ObfuscatedString(new long[]{2156793704958254008L, 1234198514771994544L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0) {
                if (c != 1 && c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            zzqVar = new com.google.android.gms.ads.internal.client.zzq();
                        } else {
                            zzqVar = com.google.android.gms.ads.internal.client.zzq.zzb();
                        }
                    } else {
                        zzqVar = com.google.android.gms.ads.internal.client.zzq.zzc();
                    }
                } else {
                    zzqVar = com.google.android.gms.ads.internal.client.zzq.zzd();
                }
            } else {
                zzqVar = new com.google.android.gms.ads.internal.client.zzq(context, AdSize.BANNER);
            }
        }
        zzfhfVar.zzr(zzqVar);
        zzfhfVar.zzx(true);
        zzdafVar.zzi(zzfhfVar.zzG());
        zzo.zza(zzdafVar.zzj());
        zzac zzacVar = new zzac();
        zzacVar.zza(str2);
        zzo.zzb(new zzae(zzacVar, null));
        new zzdgm();
        zzh zzc2 = zzo.zzc();
        this.zzk = zzc2.zza();
        return zzc2;
    }

    private final ListenableFuture zzV(final String str) {
        final zzdrz[] zzdrzVarArr = new zzdrz[1];
        ListenableFuture zzn = zzgen.zzn(this.zzj.zza(), new zzgdu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzaa.this.zzw(zzdrzVarArr, str, (zzdrz) obj);
            }
        }, this.zzl);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            @Override // java.lang.Runnable
            public final void run() {
                zzaa.this.zzL(zzdrzVarArr);
            }
        }, this.zzl);
        return zzgen.zze(zzgen.zzm((zzgee) zzgen.zzo(zzgee.zzu(zzn), ((Integer) zzba.zzc().zza(zzbgc.zzhE)).intValue(), TimeUnit.MILLISECONDS, this.zzm), new zzfws() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzs
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                int i = zzaa.zze;
                return ((JSONObject) obj).optString(new ObfuscatedString(new long[]{-7184295786380946140L, -2186714235554163383L}).toString());
            }
        }, this.zzl), Exception.class, new zzfws() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzt
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                int i = zzaa.zze;
                zzcec.zzh(new ObfuscatedString(new long[]{4710946658901148931L}).toString(), (Exception) obj);
                return null;
            }
        }, this.zzl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzW() {
        ListenableFuture zzc2;
        if (((Boolean) zzba.zzc().zza(zzbgc.zzkB)).booleanValue()) {
            zzc2 = zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                @Override // com.google.android.gms.internal.ads.zzgdt
                public final ListenableFuture zza() {
                    return zzaa.this.zzv();
                }
            }, zzcep.zza);
        } else {
            zzc2 = zzU(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc();
        }
        zzgen.zzr(zzc2, new zzz(this), this.zzf.zzB());
    }

    private final void zzX() {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjp)).booleanValue()) {
            if (!((Boolean) zzba.zzc().zza(zzbgc.zzjs)).booleanValue()) {
                if (!((Boolean) zzba.zzc().zza(zzbgc.zzjw)).booleanValue() || !this.zzI.getAndSet(true)) {
                    zzW();
                }
            }
        }
    }

    private final void zzY(List list, final IObjectWrapper iObjectWrapper, zzbxi zzbxiVar, boolean z) {
        ListenableFuture zzb2;
        int i = 0;
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzhD)).booleanValue()) {
            String obfuscatedString = new ObfuscatedString(new long[]{-4811456595408176035L, 3316348626621408841L, 3209763086188551151L, 4508966307980734065L, 8614235313137066650L, 3632580471964750677L}).toString();
            zzcec.zzj(obfuscatedString);
            try {
                zzbxiVar.zze(obfuscatedString);
                return;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{8226740927084953046L}).toString(), e);
                return;
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzR((Uri) it.next())) {
                i++;
            }
        }
        if (i > 1) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{8103838434274944563L, 3123843765770453417L, 2377856293408208372L, -2127867273268097618L, 2702299661548483626L}), String.valueOf(list));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (!zzR(uri)) {
                zzcec.zzj(new ObfuscatedString(new long[]{-149610651599981887L, -1360234780202735159L, 1305823427663059457L, -325177171316318512L}).toString().concat(String.valueOf(uri)));
                zzb2 = zzgen.zzh(uri);
            } else {
                zzb2 = this.zzl.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzaa.this.zzn(uri, iObjectWrapper);
                    }
                });
                if (zzab()) {
                    zzb2 = zzgen.zzn(zzb2, new zzgdu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzo
                        @Override // com.google.android.gms.internal.ads.zzgdu
                        public final ListenableFuture zza(Object obj) {
                            ListenableFuture zzm;
                            zzm = zzgen.zzm(r0.zzV(new ObfuscatedString(new long[]{8056097638208505419L, 7898158094789229224L, -5312295279879909365L, 8991907776774573730L, -1345525210137616411L, 6778436708856585313L, 3387449334432601010L, 1447650659091023537L, 1688152178018378936L}).toString()), new zzfws() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
                                @Override // com.google.android.gms.internal.ads.zzfws
                                public final Object apply(Object obj2) {
                                    return zzaa.zzT(r2, (String) obj2);
                                }
                            }, zzaa.this.zzl);
                            return zzm;
                        }
                    }, this.zzl);
                } else {
                    zzcec.zzi(new ObfuscatedString(new long[]{5876063816662020812L, -4129174733437709042L, 3532284643171463213L, -6326982433099641697L}).toString());
                }
            }
            arrayList.add(zzb2);
        }
        zzgen.zzr(zzgen.zzd(arrayList), new zzy(this, zzbxiVar, z), this.zzf.zzB());
    }

    private final void zzZ(final List list, final IObjectWrapper iObjectWrapper, zzbxi zzbxiVar, boolean z) {
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzhD)).booleanValue()) {
            try {
                zzbxiVar.zze(new ObfuscatedString(new long[]{-65946245566125877L, 5185031979084025898L, 5077862040473856507L, 8722638309386359094L, -7371761847910229942L, 2395505757946190142L}).toString());
                return;
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-7952025054403331859L}).toString(), e);
                return;
            }
        }
        ListenableFuture zzb2 = this.zzl.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzaa.this.zzD(list, iObjectWrapper);
            }
        });
        if (zzab()) {
            zzb2 = zzgen.zzn(zzb2, new zzgdu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzv
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzaa.this.zzx((ArrayList) obj);
                }
            }, this.zzl);
        } else {
            zzcec.zzi(new ObfuscatedString(new long[]{-323645819759497553L, 1781121592051639471L, 3351639906910161263L, -5966164588757894115L}).toString());
        }
        zzgen.zzr(zzb2, new zzx(this, zzbxiVar, z), this.zzf.zzB());
    }

    private static boolean zzaa(@NonNull Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean zzab() {
        Map map;
        zzbxr zzbxrVar = this.zzn;
        if (zzbxrVar != null && (map = zzbxrVar.zzb) != null && !map.isEmpty()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzac(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf(new ObfuscatedString(new long[]{-730234828174912648L, -3048366510948289013L}).toString());
        if (indexOf == -1) {
            indexOf = uri2.indexOf(new ObfuscatedString(new long[]{1124356138938470973L, 8711589773763980769L}).toString());
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(uri2.substring(0, i) + str + new ObfuscatedString(new long[]{-2468044391957127467L, 8108296250766739626L}).toString() + str2 + new ObfuscatedString(new long[]{-4578522654990079906L, 13309979898638359L}).toString() + uri2.substring(i));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private static final List zzad(String str) {
        String[] split = TextUtils.split(str, new ObfuscatedString(new long[]{-4368804901503596886L, 5509223920726779945L}).toString());
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfxt.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static /* bridge */ /* synthetic */ zzfmz zzs(ListenableFuture listenableFuture, zzccx zzccxVar) {
        String str;
        if (!zzfnc.zza() || !((Boolean) zzbht.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfmz zzb2 = ((zzh) zzgen.zzp(listenableFuture)).zzb();
            zzb2.zzd(new ArrayList(Collections.singletonList(zzccxVar.zzb)));
            com.google.android.gms.ads.internal.client.zzl zzlVar = zzccxVar.zzd;
            if (zzlVar == null) {
                str = new ObfuscatedString(new long[]{51815028596261812L}).toString();
            } else {
                str = zzlVar.zzp;
            }
            zzb2.zzb(str);
            return zzb2;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{444288275829075755L, 542927562112692966L, 6921539308339139065L, -4493890528979522846L, -1086005929507117754L, -5168163301373805400L, 3423440079667431570L, -2185179047960223242L}).toString());
            return null;
        }
    }

    public final /* synthetic */ ArrayList zzC(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzS(uri) && !TextUtils.isEmpty(str)) {
                arrayList.add(zzac(uri, new ObfuscatedString(new long[]{1950302323227861159L, -2276395835895245751L}).toString(), str));
            } else {
                arrayList.add(uri);
            }
        }
        return arrayList;
    }

    public final /* synthetic */ ArrayList zzD(List list, IObjectWrapper iObjectWrapper) {
        this.zzh.zzc();
        String zzh = this.zzh.zzc().zzh(this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        if (!TextUtils.isEmpty(zzh)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri = (Uri) it.next();
                if (!zzS(uri)) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-7946019739238211575L, -8406032610208033708L, 574645601513635553L, -8420911688301511203L}).toString().concat(String.valueOf(uri)));
                    arrayList.add(uri);
                } else {
                    arrayList.add(zzac(uri, new ObfuscatedString(new long[]{-1467910322692767387L, -3486852051351869631L}).toString(), zzh));
                }
            }
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            throw new Exception(new ObfuscatedString(new long[]{3617387753678617257L, -3210781865742137754L, -4697124263976312985L, -6815868069404231686L, 6568700728930433979L}).toString());
        }
        throw new Exception(new ObfuscatedString(new long[]{-4894832228257562473L, -6184028233650905297L, 997635431725724830L, 881302424122910371L, 6063499179309761986L}).toString());
    }

    public final /* synthetic */ void zzL(zzdrz[] zzdrzVarArr) {
        zzdrz zzdrzVar = zzdrzVarArr[0];
        if (zzdrzVar != null) {
            this.zzj.zzb(zzgen.zzh(zzdrzVar));
        }
    }

    public final /* synthetic */ void zzM(String str, String str2, zzdwa zzdwaVar) {
        this.zzr.zzd(str, str2, zzdwaVar);
    }

    @VisibleForTesting
    public final boolean zzR(@NonNull Uri uri) {
        return zzaa(uri, this.zzE, this.zzF);
    }

    @VisibleForTesting
    public final boolean zzS(@NonNull Uri uri) {
        return zzaa(uri, this.zzG, this.zzH);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzjz)).booleanValue()) {
            return ObjectWrapper.wrap(null);
        }
        this.zzL.zzg((Context) ObjectWrapper.unwrap(iObjectWrapper), (CustomTabsClient) ObjectWrapper.unwrap(iObjectWrapper2), str, (CustomTabsCallback) ObjectWrapper.unwrap(iObjectWrapper3));
        return ObjectWrapper.wrap(this.zzL.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzf(IObjectWrapper iObjectWrapper, final zzccx zzccxVar, zzccq zzccqVar) {
        ListenableFuture zzh;
        ListenableFuture zzc2;
        ListenableFuture listenableFuture;
        ListenableFuture listenableFuture2;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        this.zzg = context;
        zzfmo zza2 = zzfmn.zza(context, 22);
        zza2.zzh();
        if (new ObfuscatedString(new long[]{4149283886836095632L, -4133519740877995060L}).toString().equals(zzccxVar.zzb)) {
            List arrayList = new ArrayList();
            zzbfu zzbfuVar = zzbgc.zzhC;
            if (!((String) zzba.zzc().zza(zzbfuVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) zzba.zzc().zza(zzbfuVar)).split(new ObfuscatedString(new long[]{3753185510412299259L, 5139321467399800401L}).toString()));
            }
            if (arrayList.contains(zzf.zzb(zzccxVar.zzd))) {
                ListenableFuture zzg = zzgen.zzg(new IllegalArgumentException(new ObfuscatedString(new long[]{-8351530033530457902L, 846620177848620355L, -1164110486884621238L, 6557009365641734736L, 2994124273255913392L, 3515742747631012673L}).toString()));
                listenableFuture2 = zzgen.zzg(new IllegalArgumentException(new ObfuscatedString(new long[]{4095538958607396807L, 1996243736268629043L, 1469808619724021067L, -8739579092370726214L, 2909433688908315843L, 1439447274536850011L}).toString()));
                listenableFuture = zzg;
                zzgen.zzr(listenableFuture2, new zzw(this, listenableFuture, zzccxVar, zzccqVar, zza2, com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()), this.zzf.zzB());
            }
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzkB)).booleanValue()) {
            zzgey zzgeyVar = zzcep.zza;
            zzh = zzgeyVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzaa.this.zzr(zzccxVar);
                }
            });
            zzc2 = zzgen.zzn(zzh, new zzgdu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzr
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return ((zzh) obj).zzc();
                }
            }, zzgeyVar);
        } else {
            zzh zzU = zzU(this.zzg, zzccxVar.zza, zzccxVar.zzb, zzccxVar.zzc, zzccxVar.zzd);
            zzh = zzgen.zzh(zzU);
            zzc2 = zzU.zzc();
        }
        listenableFuture = zzh;
        listenableFuture2 = zzc2;
        zzgen.zzr(listenableFuture2, new zzw(this, listenableFuture, zzccxVar, zzccqVar, zza2, com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()), this.zzf.zzB());
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzg(zzbxr zzbxrVar) {
        this.zzn = zzbxrVar;
        this.zzj.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        zzY(list, iObjectWrapper, zzbxiVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        zzZ(list, iObjectWrapper, zzbxiVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjo)).booleanValue()) {
            zzbfu zzbfuVar = zzbgc.zzhB;
            if (!((Boolean) zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                zzX();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{-7650117493416010696L, -7072096907714464260L, -3860382086704664236L, 1371587672458857657L, 1304904582136811493L}).toString());
                return;
            }
            if (this.zzq.contains(webView)) {
                zzcec.zzi(new ObfuscatedString(new long[]{5722672593510810861L, 5084020781377716532L, -6672238608042280582L, 2255870838061064878L, 4576974907695351260L, 4769299842532190273L, 1840403804423551734L}).toString());
                return;
            }
            this.zzq.add(webView);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzs, this.zzt, this.zzi), new ObfuscatedString(new long[]{286100391439505364L, 8440149743973111279L}).toString());
            if (((Boolean) zzba.zzc().zza(zzbgc.zzjy)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzo().zzs();
            }
            if (((Boolean) zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                zzX();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzk(IObjectWrapper iObjectWrapper) {
        View view;
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzhD)).booleanValue()) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
        zzbxr zzbxrVar = this.zzn;
        if (zzbxrVar == null) {
            view = null;
        } else {
            view = zzbxrVar.zza;
        }
        this.zzo = zzbz.zza(motionEvent, view);
        if (motionEvent.getAction() == 0) {
            this.zzp = this.zzo;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzo;
        obtain.setLocation(point.x, point.y);
        this.zzh.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        zzY(list, iObjectWrapper, zzbxiVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        zzZ(list, iObjectWrapper, zzbxiVar, false);
    }

    public final /* synthetic */ Uri zzn(Uri uri, IObjectWrapper iObjectWrapper) {
        zzfhl zzfhlVar;
        try {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzlr)).booleanValue() && (zzfhlVar = this.zzi) != null) {
                uri = zzfhlVar.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            } else {
                uri = this.zzh.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
            }
        } catch (zzavj e) {
            zzcec.zzk(new ObfuscatedString(new long[]{8726081180968180465L}).toString(), e);
        }
        if (uri.getQueryParameter(new ObfuscatedString(new long[]{2836135227562825267L, -8212355932943996344L}).toString()) != null) {
            return uri;
        }
        throw new Exception(new ObfuscatedString(new long[]{-3828775660228288012L, 1462188931489110053L, -188954288354194590L, -1134709024870782381L, 319359284228261540L, 4305585196042125795L, -7971988026687606799L}).toString());
    }

    public final /* synthetic */ zzh zzr(zzccx zzccxVar) {
        return zzU(this.zzg, zzccxVar.zza, zzccxVar.zzb, zzccxVar.zzc, zzccxVar.zzd);
    }

    public final /* synthetic */ ListenableFuture zzv() {
        return zzU(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc();
    }

    public final /* synthetic */ ListenableFuture zzw(zzdrz[] zzdrzVarArr, String str, zzdrz zzdrzVar) {
        zzdrzVarArr[0] = zzdrzVar;
        Context context = this.zzg;
        zzbxr zzbxrVar = this.zzn;
        Map map = zzbxrVar.zzb;
        JSONObject zzd2 = zzbz.zzd(context, map, map, zzbxrVar.zza, null);
        JSONObject zzg = zzbz.zzg(this.zzg, this.zzn.zza);
        JSONObject zzf = zzbz.zzf(this.zzn.zza);
        JSONObject zze2 = zzbz.zze(this.zzg, this.zzn.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-5046166686329067763L, -34393685596569031L, 875369244064025207L, 4244482565189700795L}).toString(), zzd2);
        jSONObject.put(new ObfuscatedString(new long[]{-5279166930662602430L, -3621128570608450893L, 5747287377725726956L}).toString(), zzg);
        jSONObject.put(new ObfuscatedString(new long[]{3911356537628747656L, 1894590364338774382L, 588135062884366997L, -393600255175814073L}).toString(), zzf);
        jSONObject.put(new ObfuscatedString(new long[]{7384180294745369155L, -4859582639418050758L, 7479893217527499555L, -4171385834899411149L}).toString(), zze2);
        if (new ObfuscatedString(new long[]{-5326230306219826377L, 7754426153676531998L, 4243168055079691467L, -647365036197654945L, -902558541218797104L, 6433774592326193184L, 355487981715125170L, 7136814738193045004L, -153887696930511257L}).toString().equals(str)) {
            jSONObject.put(new ObfuscatedString(new long[]{-3395420490507168126L, -1402467195728417928L, -541901669492169293L}).toString(), zzbz.zzc(null, this.zzg, this.zzp, this.zzo));
        }
        return zzdrzVar.zzd(str, jSONObject);
    }

    public final /* synthetic */ ListenableFuture zzx(final ArrayList arrayList) {
        return zzgen.zzm(zzV(new ObfuscatedString(new long[]{-6551074519347560720L, -8504435677237649751L, 7292084770917592002L, 3299349551746793061L, -63422422237305556L, 3022986118892073823L, 646360004089923245L, 1773609202425723201L, 7729529065048166259L, 6175792880796054998L}).toString()), new zzfws() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzj
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return zzaa.this.zzC(arrayList, (String) obj);
            }
        }, this.zzl);
    }
}
