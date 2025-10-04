package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdqd {
    private final Context zza;
    private final zzdpm zzb;
    private final zzavi zzc;
    private final zzcei zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbbp zzf;
    private final Executor zzg;
    private final zzbjb zzh;
    private final zzdqv zzi;
    private final zzdtk zzj;
    private final ScheduledExecutorService zzk;
    private final zzdsf zzl;
    private final zzdwf zzm;
    private final zzflw zzn;
    private final zzfny zzo;
    private final zzehh zzp;
    private final zzehs zzq;
    private final zzfhl zzr;

    public zzdqd(Context context, zzdpm zzdpmVar, zzavi zzaviVar, zzcei zzceiVar, com.google.android.gms.ads.internal.zza zzaVar, zzbbp zzbbpVar, Executor executor, zzfhh zzfhhVar, zzdqv zzdqvVar, zzdtk zzdtkVar, ScheduledExecutorService scheduledExecutorService, zzdwf zzdwfVar, zzflw zzflwVar, zzfny zzfnyVar, zzehh zzehhVar, zzdsf zzdsfVar, zzehs zzehsVar, zzfhl zzfhlVar) {
        this.zza = context;
        this.zzb = zzdpmVar;
        this.zzc = zzaviVar;
        this.zzd = zzceiVar;
        this.zze = zzaVar;
        this.zzf = zzbbpVar;
        this.zzg = executor;
        this.zzh = zzfhhVar.zzi;
        this.zzi = zzdqvVar;
        this.zzj = zzdtkVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzdwfVar;
        this.zzn = zzflwVar;
        this.zzo = zzfnyVar;
        this.zzp = zzehhVar;
        this.zzl = zzdsfVar;
        this.zzq = zzehsVar;
        this.zzr = zzfhlVar;
    }

    @Nullable
    public static final com.google.android.gms.ads.internal.client.zzel zzi(JSONObject jSONObject) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{311697663436957052L, -8425735833333408861L}).toString());
        if (optJSONObject2 != null && (optJSONObject = optJSONObject2.optJSONObject(new ObfuscatedString(new long[]{189467549716468053L, -5815053240092850727L, -704273080623499880L}).toString())) != null) {
            return zzr(optJSONObject);
        }
        return null;
    }

    public static final List zzj(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-3941467507235877764L, 7786847916311547729L}).toString());
        if (optJSONObject == null) {
            return zzgaa.zzl();
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray(new ObfuscatedString(new long[]{3555138520521918730L, 7906035001713919845L}).toString());
        if (optJSONArray != null && optJSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                com.google.android.gms.ads.internal.client.zzel zzr = zzr(optJSONArray.optJSONObject(i));
                if (zzr != null) {
                    arrayList.add(zzr);
                }
            }
            return zzgaa.zzj(arrayList);
        }
        return zzgaa.zzl();
    }

    private final com.google.android.gms.ads.internal.client.zzq zzk(int i, int i2) {
        if (i == 0) {
            if (i2 != 0) {
                i = 0;
            } else {
                return com.google.android.gms.ads.internal.client.zzq.zzc();
            }
        }
        return new com.google.android.gms.ads.internal.client.zzq(this.zza, new AdSize(i, i2));
    }

    private static ListenableFuture zzl(ListenableFuture listenableFuture, Object obj) {
        final Object obj2 = null;
        return zzgen.zzf(listenableFuture, Exception.class, new zzgdu(obj2) { // from class: com.google.android.gms.internal.ads.zzdqb
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj3) {
                com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{3725460861904343952L, 2606357897693521517L, -3750370659527908180L, -2748721720467997674L, 1017275936764180030L}).toString(), (Exception) obj3);
                return zzgen.zzh(null);
            }
        }, zzcep.zzf);
    }

    private static ListenableFuture zzm(boolean z, final ListenableFuture listenableFuture, Object obj) {
        if (z) {
            return zzgen.zzn(listenableFuture, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdqc
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj2) {
                    if (obj2 != null) {
                        return ListenableFuture.this;
                    }
                    return zzgen.zzg(new zzeml(1, new ObfuscatedString(new long[]{6874629332762837756L, -3082754788347971128L, -8080398514793795328L, 2060326409201984418L, 5202661714904627511L, 5228736369561602176L, 8250278008127614547L, 3275777633643630552L}).toString()));
                }
            }, zzcep.zzf);
        }
        return zzl(listenableFuture, null);
    }

    private final ListenableFuture zzn(@Nullable JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return zzgen.zzh(null);
        }
        final String optString = jSONObject.optString(new ObfuscatedString(new long[]{-8277325616222668051L, -179948996935429624L}).toString());
        if (TextUtils.isEmpty(optString)) {
            return zzgen.zzh(null);
        }
        final double optDouble = jSONObject.optDouble(new ObfuscatedString(new long[]{6396836879198391568L, -7179677020055623511L}).toString(), 1.0d);
        boolean optBoolean = jSONObject.optBoolean(new ObfuscatedString(new long[]{3726791072951510462L, 4370763845304851654L, -472741635923281196L}).toString(), true);
        final int optInt = jSONObject.optInt(new ObfuscatedString(new long[]{551608296460430254L, 8031051405199542270L}).toString(), -1);
        final int optInt2 = jSONObject.optInt(new ObfuscatedString(new long[]{4231912421824512373L, -3279248794290477767L}).toString(), -1);
        if (z) {
            return zzgen.zzh(new zzbiz(null, Uri.parse(optString), optDouble, optInt, optInt2));
        }
        return zzm(jSONObject.optBoolean(new ObfuscatedString(new long[]{-5734363644583658434L, -4909816558076907355L}).toString()), zzgen.zzm(this.zzb.zzb(optString, optDouble, optBoolean), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdpt
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return new zzbiz(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(optString), optDouble, optInt, optInt2);
            }
        }, this.zzg), null);
    }

    private final ListenableFuture zzo(@Nullable JSONArray jSONArray, boolean z, boolean z2) {
        int i;
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            if (z2) {
                i = jSONArray.length();
            } else {
                i = 1;
            }
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(zzn(jSONArray.optJSONObject(i2), z));
            }
            return zzgen.zzm(zzgen.zzd(arrayList), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdpy
                @Override // com.google.android.gms.internal.ads.zzfws
                public final Object apply(Object obj) {
                    ArrayList arrayList2 = new ArrayList();
                    for (zzbiz zzbizVar : (List) obj) {
                        if (zzbizVar != null) {
                            arrayList2.add(zzbizVar);
                        }
                    }
                    return arrayList2;
                }
            }, this.zzg);
        }
        return zzgen.zzh(Collections.emptyList());
    }

    private final ListenableFuture zzp(JSONObject jSONObject, zzfgm zzfgmVar, zzfgp zzfgpVar) {
        String obfuscatedString = new ObfuscatedString(new long[]{7315826379324743702L, -8025594737480074610L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{1327267525359658965L, 3710567223895888998L}).toString();
        String obfuscatedString3 = new ObfuscatedString(new long[]{-533194725015710049L, -8279009111946921804L}).toString();
        final ListenableFuture zzb = this.zzi.zzb(jSONObject.optString(new ObfuscatedString(new long[]{-6282800124333901416L, -2784815770704370773L}).toString()), jSONObject.optString(obfuscatedString3), zzfgmVar, zzfgpVar, zzk(jSONObject.optInt(obfuscatedString2, 0), jSONObject.optInt(obfuscatedString, 0)));
        return zzgen.zzn(zzb, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdpu
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                zzcjk zzcjkVar = (zzcjk) obj;
                if (zzcjkVar != null && zzcjkVar.zzq() != null) {
                    return ListenableFuture.this;
                }
                throw new zzeml(1, new ObfuscatedString(new long[]{-3182045012885227216L, 5828194955056571953L, -5251690065970061101L, 8947577630460233429L, -2423509740684391081L, -3492153079676885423L, 7355587079189572353L}).toString());
            }
        }, zzcep.zzf);
    }

    @Nullable
    private static Integer zzq(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt(new ObfuscatedString(new long[]{-4085935402965815694L, 4853207545308328557L}).toString()), jSONObject2.getInt(new ObfuscatedString(new long[]{-6587128399699587876L, -9056226060587140331L}).toString()), jSONObject2.getInt(new ObfuscatedString(new long[]{1250350270376198252L, 2469006449935082810L}).toString())));
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    private static final com.google.android.gms.ads.internal.client.zzel zzr(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            String optString = jSONObject.optString(new ObfuscatedString(new long[]{-5148112788983311156L, 5007704648945527250L}).toString());
            String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{7069966792489751040L, 2335123282530429155L}).toString());
            if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                return new com.google.android.gms.ads.internal.client.zzel(optString, optString2);
            }
            return null;
        }
        return null;
    }

    public final /* synthetic */ zzbiw zza(JSONObject jSONObject, List list) {
        Integer num = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        String optString = jSONObject.optString(new ObfuscatedString(new long[]{8176885932260334558L, -7036177438833468174L}).toString());
        Integer zzq = zzq(jSONObject, new ObfuscatedString(new long[]{-2013202457342217937L, 2039481729409512374L}).toString());
        Integer zzq2 = zzq(jSONObject, new ObfuscatedString(new long[]{-1448231434721527023L, -9207446688895086877L, -8888437147138540403L}).toString());
        int optInt = jSONObject.optInt(new ObfuscatedString(new long[]{8711311309055364889L, -1807490384180370955L, 5982872259664597778L}).toString(), -1);
        boolean optBoolean = jSONObject.optBoolean(new ObfuscatedString(new long[]{2929891172797624026L, -5626771777815477148L, -7405667421299382314L, -7881296438376169047L}).toString());
        int optInt2 = jSONObject.optInt(new ObfuscatedString(new long[]{-272513150044377500L, 2862056159423074020L, -1098211515489280462L}).toString(), 1000);
        int optInt3 = jSONObject.optInt(new ObfuscatedString(new long[]{-4519689320523726891L, -5024650134709721264L, 138064832186118920L}).toString(), 4000);
        if (optInt > 0) {
            num = Integer.valueOf(optInt);
        }
        return new zzbiw(optString, list, zzq, zzq2, num, optInt3 + optInt2, this.zzh.zze, optBoolean);
    }

    public final /* synthetic */ ListenableFuture zzb(com.google.android.gms.ads.internal.client.zzq zzqVar, zzfgm zzfgmVar, zzfgp zzfgpVar, String str, String str2, Object obj) {
        zzcjk zza = this.zzj.zza(zzqVar, zzfgmVar, zzfgpVar);
        final zzcet zza2 = zzcet.zza(zza);
        zzdsc zzb = this.zzl.zzb();
        zza.zzN().zzN(zzb, zzb, zzb, zzb, zzb, false, null, new com.google.android.gms.ads.internal.zzb(this.zza, null, null), null, null, this.zzp, this.zzo, this.zzm, this.zzn, null, zzb, null, null, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdF)).booleanValue()) {
            zza.zzae(new ObfuscatedString(new long[]{-7247123555382579987L, 3607023972224156212L, -537579930792049521L, 4396695725552242635L}).toString(), zzbnf.zzs);
        }
        zza.zzae(new ObfuscatedString(new long[]{-472007571577087608L, 5393499934550576430L, 8226471823830453647L, -1404969835394089151L}).toString(), zzbnf.zzt);
        zza.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdpx
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i, String str3, String str4) {
                zzcet zzcetVar = zzcet.this;
                if (z) {
                    zzcetVar.zzb();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-6186549864694890232L, 8597858216002524195L, 7603385122101296945L, -4067581913981696879L, -5872506038920869566L, -9095123051598882835L, -5595014551244243277L}).toString());
                sb.append(i);
                sb.append(new ObfuscatedString(new long[]{-4355582897694410391L, 2986711427019434917L, 1653511931510797301L}).toString());
                sb.append(str3);
                zzcetVar.zzd(new zzeml(1, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1219481912511744089L, 8634721361071423870L, -4105102314810711186L}), sb, str4)));
            }
        });
        zza.zzac(str, str2, null);
        return zza2;
    }

    public final /* synthetic */ ListenableFuture zzc(String str, Object obj) {
        com.google.android.gms.ads.internal.zzt.zzz();
        zzcjk zza = zzcjx.zza(this.zza, zzcla.zza(), new ObfuscatedString(new long[]{-7460440185240638981L, -2633247395219244078L, 1252798919693727249L}).toString(), false, false, this.zzc, null, this.zzd, null, null, this.zze, this.zzf, null, null, this.zzq, this.zzr);
        final zzcet zza2 = zzcet.zza(zza);
        zza.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdpz
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i, String str2, String str3) {
                zzcet.this.zzb();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeX)).booleanValue()) {
            zza.loadData(Base64.encodeToString(str.getBytes(), 1), new ObfuscatedString(new long[]{-2427572527462443031L, 2122739924120316485L, 5857310222909917854L}).toString(), new ObfuscatedString(new long[]{8707547524106426737L, 7939704043559925881L}).toString());
        } else {
            zza.loadData(str, new ObfuscatedString(new long[]{4252896945974967047L, -6333654075047049326L, -6562035410367518145L}).toString(), new ObfuscatedString(new long[]{-4747672301483479951L, 2071127069342312671L}).toString());
        }
        return zza2;
    }

    public final ListenableFuture zzd(JSONObject jSONObject, String str) {
        final JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-6190839014439915082L, -6000543612312119410L, 6815355970826456572L}).toString());
        if (optJSONObject == null) {
            return zzgen.zzh(null);
        }
        JSONArray optJSONArray = optJSONObject.optJSONArray(new ObfuscatedString(new long[]{4915020720575203383L, 3152807321480917372L}).toString());
        JSONObject optJSONObject2 = optJSONObject.optJSONObject(new ObfuscatedString(new long[]{1758963230693477665L, 6788058264184420623L}).toString());
        if (optJSONArray == null && optJSONObject2 != null) {
            optJSONArray = new JSONArray();
            optJSONArray.put(optJSONObject2);
        }
        return zzm(optJSONObject.optBoolean(new ObfuscatedString(new long[]{1194742628115790366L, -7215242906369402131L}).toString()), zzgen.zzm(zzo(optJSONArray, false, true), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdqa
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return zzdqd.this.zza(optJSONObject, (List) obj);
            }
        }, this.zzg), null);
    }

    public final ListenableFuture zze(JSONObject jSONObject, String str) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb);
    }

    public final ListenableFuture zzf(JSONObject jSONObject, String str) {
        zzbjb zzbjbVar = this.zzh;
        return zzo(jSONObject.optJSONArray(new ObfuscatedString(new long[]{6123097585683686434L, -3126458180838232567L}).toString()), zzbjbVar.zzb, zzbjbVar.zzd);
    }

    public final ListenableFuture zzg(JSONObject jSONObject, String str, final zzfgm zzfgmVar, final zzfgp zzfgpVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjK)).booleanValue()) {
            return zzgen.zzh(null);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray(new ObfuscatedString(new long[]{6795302001049526156L, -3132667505090829L}).toString());
        if (optJSONArray != null && optJSONArray.length() > 0) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(0);
            if (optJSONObject == null) {
                return zzgen.zzh(null);
            }
            final String optString = optJSONObject.optString(new ObfuscatedString(new long[]{-22865061751577852L, -6369480151764015327L}).toString());
            final String optString2 = optJSONObject.optString(new ObfuscatedString(new long[]{6351252017452865680L, 8588592104670653843L}).toString());
            final com.google.android.gms.ads.internal.client.zzq zzk = zzk(optJSONObject.optInt(new ObfuscatedString(new long[]{-7328749242071135319L, 8806155479590534706L}).toString(), 0), optJSONObject.optInt(new ObfuscatedString(new long[]{-2475588468988352661L, 7338470556442076982L}).toString(), 0));
            if (TextUtils.isEmpty(optString2)) {
                return zzgen.zzh(null);
            }
            final ListenableFuture zzn = zzgen.zzn(zzgen.zzh(null), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdpv
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzdqd.this.zzb(zzk, zzfgmVar, zzfgpVar, optString, optString2, obj);
                }
            }, zzcep.zze);
            return zzgen.zzn(zzn, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzdpw
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    if (((zzcjk) obj) != null) {
                        return ListenableFuture.this;
                    }
                    throw new zzeml(1, new ObfuscatedString(new long[]{8194146234831119955L, -8684411072206506586L, -7164037779758280350L, 9113187530661670576L, -3942459610568893836L, -4478798247129235029L, 266341596578371787L}).toString());
                }
            }, zzcep.zzf);
        }
        return zzgen.zzh(null);
    }

    public final ListenableFuture zzh(JSONObject jSONObject, zzfgm zzfgmVar, zzfgp zzfgpVar) {
        ListenableFuture zza;
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbw.zzg(jSONObject, new ObfuscatedString(new long[]{-7042325245454094869L, -3160133680943634793L, -2926525729573979139L}).toString(), new ObfuscatedString(new long[]{9124181999270373243L, -966822259372512344L}).toString());
        if (zzg == null) {
            JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{7849015672494905932L, -5252040240821769394L}).toString());
            if (optJSONObject == null) {
                return zzgen.zzh(null);
            }
            String optString = optJSONObject.optString(new ObfuscatedString(new long[]{3894098441893850481L, -3983248397248684938L}).toString());
            boolean z = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjJ)).booleanValue() && optJSONObject.has(new ObfuscatedString(new long[]{9123261449456960617L, 4084651760720279977L}).toString())) {
                z = true;
            }
            if (TextUtils.isEmpty(optString)) {
                if (!z) {
                    zzcec.zzj(new ObfuscatedString(new long[]{5172372228066366423L, 2791361397401399108L, -6989993772314836751L, 6372533700541614157L, -7375400863211418060L, -8530250698561621961L, 5953769202803557868L}).toString());
                    return zzgen.zzh(null);
                }
            } else if (!z) {
                zza = this.zzi.zza(optJSONObject);
                return zzl(zzgen.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdG)).intValue(), TimeUnit.SECONDS, this.zzk), null);
            }
            zza = zzp(optJSONObject, zzfgmVar, zzfgpVar);
            return zzl(zzgen.zzo(zza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdG)).intValue(), TimeUnit.SECONDS, this.zzk), null);
        }
        return zzp(zzg, zzfgmVar, zzfgpVar);
    }
}
