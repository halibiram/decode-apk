package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdna {
    private int zza;
    private com.google.android.gms.ads.internal.client.zzdq zzb;
    private zzbjf zzc;
    private View zzd;
    private List zze;
    private com.google.android.gms.ads.internal.client.zzel zzg;
    private Bundle zzh;
    private zzcjk zzi;
    private zzcjk zzj;

    @Nullable
    private zzcjk zzk;

    @Nullable
    private zzfod zzl;

    @Nullable
    private ListenableFuture zzm;

    @Nullable
    private zzceu zzn;
    private View zzo;
    private View zzp;
    private IObjectWrapper zzq;
    private double zzr;
    private zzbjm zzs;
    private zzbjm zzt;
    private String zzu;
    private float zzx;

    @Nullable
    private String zzy;
    private final SimpleArrayMap zzv = new SimpleArrayMap();
    private final SimpleArrayMap zzw = new SimpleArrayMap();
    private List zzf = Collections.emptyList();

    @Nullable
    public static zzdna zzag(zzbtg zzbtgVar) {
        try {
            zzdmz zzak = zzak(zzbtgVar.zzg(), null);
            zzbjf zzh = zzbtgVar.zzh();
            View view = (View) zzam(zzbtgVar.zzj());
            String zzo = zzbtgVar.zzo();
            List zzr = zzbtgVar.zzr();
            String zzm = zzbtgVar.zzm();
            Bundle zzf = zzbtgVar.zzf();
            String zzn = zzbtgVar.zzn();
            View view2 = (View) zzam(zzbtgVar.zzk());
            IObjectWrapper zzl = zzbtgVar.zzl();
            String zzq = zzbtgVar.zzq();
            String zzp = zzbtgVar.zzp();
            double zze = zzbtgVar.zze();
            zzbjm zzi = zzbtgVar.zzi();
            zzdna zzdnaVar = new zzdna();
            zzdnaVar.zza = 2;
            zzdnaVar.zzb = zzak;
            zzdnaVar.zzc = zzh;
            zzdnaVar.zzd = view;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-7513639623676224882L, -7143904283520028529L}).toString(), zzo);
            zzdnaVar.zze = zzr;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-7549565430211843343L, -6337777096350512822L}).toString(), zzm);
            zzdnaVar.zzh = zzf;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{3074942264808754800L, 5330151118288972526L, -1028188881767973675L}).toString(), zzn);
            zzdnaVar.zzo = view2;
            zzdnaVar.zzq = zzl;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-7163712333655202310L, -6219027725259506995L}).toString(), zzq);
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-8127402592073471036L, -1259023299617226075L}).toString(), zzp);
            zzdnaVar.zzr = zze;
            zzdnaVar.zzs = zzi;
            return zzdnaVar;
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{6192922652542417963L, 378227301560619057L, -249944174664207217L, 620682158300658339L, -3157577406651085534L, -2582572902102782636L, 6501431612147947210L, 9096329213720230288L}).toString(), e);
            return null;
        }
    }

    @Nullable
    public static zzdna zzah(zzbth zzbthVar) {
        try {
            zzdmz zzak = zzak(zzbthVar.zzf(), null);
            zzbjf zzg = zzbthVar.zzg();
            View view = (View) zzam(zzbthVar.zzi());
            String zzo = zzbthVar.zzo();
            List zzp = zzbthVar.zzp();
            String zzm = zzbthVar.zzm();
            Bundle zze = zzbthVar.zze();
            String zzn = zzbthVar.zzn();
            View view2 = (View) zzam(zzbthVar.zzj());
            IObjectWrapper zzk = zzbthVar.zzk();
            String zzl = zzbthVar.zzl();
            zzbjm zzh = zzbthVar.zzh();
            zzdna zzdnaVar = new zzdna();
            zzdnaVar.zza = 1;
            zzdnaVar.zzb = zzak;
            zzdnaVar.zzc = zzg;
            zzdnaVar.zzd = view;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-1763174090372030019L, -740315647381667170L}).toString(), zzo);
            zzdnaVar.zze = zzp;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-503627785443450258L, -5586571360291637318L}).toString(), zzm);
            zzdnaVar.zzh = zze;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{3798937031326992021L, 3206851637095852142L, 1889716036108009572L}).toString(), zzn);
            zzdnaVar.zzo = view2;
            zzdnaVar.zzq = zzk;
            zzdnaVar.zzZ(new ObfuscatedString(new long[]{-2161372845282545360L, 3665780944878812620L, -1544506036122430291L}).toString(), zzl);
            zzdnaVar.zzt = zzh;
            return zzdnaVar;
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{4323155586226367524L, 6616953702807862461L, 5063771047857818849L, -2027689803265962837L, -5693685192429072358L, 8649887588204735122L, 6393466988177266049L}).toString(), e);
            return null;
        }
    }

    @Nullable
    public static zzdna zzai(zzbtg zzbtgVar) {
        try {
            return zzal(zzak(zzbtgVar.zzg(), null), zzbtgVar.zzh(), (View) zzam(zzbtgVar.zzj()), zzbtgVar.zzo(), zzbtgVar.zzr(), zzbtgVar.zzm(), zzbtgVar.zzf(), zzbtgVar.zzn(), (View) zzam(zzbtgVar.zzk()), zzbtgVar.zzl(), zzbtgVar.zzq(), zzbtgVar.zzp(), zzbtgVar.zze(), zzbtgVar.zzi(), null, 0.0f);
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{633353652046801437L, 6596964134723626250L, -1975494681719408638L, 4456398584173955422L, 8631709290760416349L, -6806950683181562316L, 3449147272265617803L, -7820795651195721650L, 733797343384519646L}).toString(), e);
            return null;
        }
    }

    @Nullable
    public static zzdna zzaj(zzbth zzbthVar) {
        try {
            return zzal(zzak(zzbthVar.zzf(), null), zzbthVar.zzg(), (View) zzam(zzbthVar.zzi()), zzbthVar.zzo(), zzbthVar.zzp(), zzbthVar.zzm(), zzbthVar.zze(), zzbthVar.zzn(), (View) zzam(zzbthVar.zzj()), zzbthVar.zzk(), null, null, -1.0d, zzbthVar.zzh(), zzbthVar.zzl(), 0.0f);
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-6992962344568450624L, 4315551412483755073L, 5364997188352706306L, 8928421155662944619L, 3524044492455769946L, -8697956816892555994L, 8065591850486407535L, 2521801064703672821L}).toString(), e);
            return null;
        }
    }

    @Nullable
    private static zzdmz zzak(com.google.android.gms.ads.internal.client.zzdq zzdqVar, @Nullable zzbtk zzbtkVar) {
        if (zzdqVar == null) {
            return null;
        }
        return new zzdmz(zzdqVar, zzbtkVar);
    }

    private static zzdna zzal(com.google.android.gms.ads.internal.client.zzdq zzdqVar, zzbjf zzbjfVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzbjm zzbjmVar, String str6, float f) {
        zzdna zzdnaVar = new zzdna();
        zzdnaVar.zza = 6;
        zzdnaVar.zzb = zzdqVar;
        zzdnaVar.zzc = zzbjfVar;
        zzdnaVar.zzd = view;
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{-8761480144153037156L, 3032829635862138226L}).toString(), str);
        zzdnaVar.zze = list;
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{2541543687419925543L, 5202675006519065395L}).toString(), str2);
        zzdnaVar.zzh = bundle;
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{2934451728776317104L, -4998240403525713105L, -8189043133949113149L}).toString(), str3);
        zzdnaVar.zzo = view2;
        zzdnaVar.zzq = iObjectWrapper;
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{5186082065630118276L, 1305864417359991670L}).toString(), str4);
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{8649093433375223633L, 5568550971248826708L}).toString(), str5);
        zzdnaVar.zzr = d;
        zzdnaVar.zzs = zzbjmVar;
        zzdnaVar.zzZ(new ObfuscatedString(new long[]{-2433648828669865014L, 5409833145541429723L, -4175904297854976286L}).toString(), str6);
        zzdnaVar.zzR(f);
        return zzdnaVar;
    }

    private static Object zzam(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.unwrap(iObjectWrapper);
    }

    @Nullable
    public static zzdna zzt(zzbtk zzbtkVar) {
        try {
            return zzal(zzak(zzbtkVar.zzj(), zzbtkVar), zzbtkVar.zzk(), (View) zzam(zzbtkVar.zzm()), zzbtkVar.zzs(), zzbtkVar.zzv(), zzbtkVar.zzq(), zzbtkVar.zzi(), zzbtkVar.zzr(), (View) zzam(zzbtkVar.zzn()), zzbtkVar.zzo(), zzbtkVar.zzu(), zzbtkVar.zzt(), zzbtkVar.zze(), zzbtkVar.zzl(), zzbtkVar.zzp(), zzbtkVar.zzf());
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-6514473069543905457L, 397623731544075109L, 2319897559045428403L, -7416918040495432430L, 7111432019875441776L, -571928038850656448L, -4701644445835293645L, -37182055642096418L}).toString(), e);
            return null;
        }
    }

    public final synchronized String zzA() {
        return this.zzu;
    }

    public final synchronized String zzB() {
        return zzF(new ObfuscatedString(new long[]{7688853553945925728L, -8942452596587111810L}).toString());
    }

    @Nullable
    public final synchronized String zzC() {
        return this.zzy;
    }

    public final synchronized String zzD() {
        return zzF(new ObfuscatedString(new long[]{1412906559284910513L, -8420632520642710384L}).toString());
    }

    public final synchronized String zzE() {
        return zzF(new ObfuscatedString(new long[]{-300230390980775894L, -1411948681453876747L}).toString());
    }

    public final synchronized String zzF(String str) {
        return (String) this.zzw.get(str);
    }

    public final synchronized List zzG() {
        return this.zze;
    }

    public final synchronized List zzH() {
        return this.zzf;
    }

    public final synchronized void zzI() {
        try {
            zzcjk zzcjkVar = this.zzi;
            if (zzcjkVar != null) {
                zzcjkVar.destroy();
                this.zzi = null;
            }
            zzcjk zzcjkVar2 = this.zzj;
            if (zzcjkVar2 != null) {
                zzcjkVar2.destroy();
                this.zzj = null;
            }
            zzcjk zzcjkVar3 = this.zzk;
            if (zzcjkVar3 != null) {
                zzcjkVar3.destroy();
                this.zzk = null;
            }
            ListenableFuture listenableFuture = this.zzm;
            if (listenableFuture != null) {
                listenableFuture.cancel(false);
                this.zzm = null;
            }
            zzceu zzceuVar = this.zzn;
            if (zzceuVar != null) {
                zzceuVar.cancel(false);
                this.zzn = null;
            }
            this.zzl = null;
            this.zzv.clear();
            this.zzw.clear();
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzh = null;
            this.zzo = null;
            this.zzp = null;
            this.zzq = null;
            this.zzs = null;
            this.zzt = null;
            this.zzu = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzJ(zzbjf zzbjfVar) {
        this.zzc = zzbjfVar;
    }

    public final synchronized void zzK(String str) {
        this.zzu = str;
    }

    public final synchronized void zzL(@Nullable com.google.android.gms.ads.internal.client.zzel zzelVar) {
        this.zzg = zzelVar;
    }

    public final synchronized void zzM(zzbjm zzbjmVar) {
        this.zzs = zzbjmVar;
    }

    public final synchronized void zzN(String str, zzbiz zzbizVar) {
        if (zzbizVar == null) {
            this.zzv.remove(str);
        } else {
            this.zzv.put(str, zzbizVar);
        }
    }

    public final synchronized void zzO(zzcjk zzcjkVar) {
        this.zzj = zzcjkVar;
    }

    public final synchronized void zzP(List list) {
        this.zze = list;
    }

    public final synchronized void zzQ(zzbjm zzbjmVar) {
        this.zzt = zzbjmVar;
    }

    public final synchronized void zzR(float f) {
        this.zzx = f;
    }

    public final synchronized void zzS(List list) {
        this.zzf = list;
    }

    public final synchronized void zzT(zzcjk zzcjkVar) {
        this.zzk = zzcjkVar;
    }

    public final synchronized void zzU(ListenableFuture listenableFuture) {
        this.zzm = listenableFuture;
    }

    public final synchronized void zzV(@Nullable String str) {
        this.zzy = str;
    }

    public final synchronized void zzW(zzfod zzfodVar) {
        this.zzl = zzfodVar;
    }

    public final synchronized void zzX(zzceu zzceuVar) {
        this.zzn = zzceuVar;
    }

    public final synchronized void zzY(double d) {
        this.zzr = d;
    }

    public final synchronized void zzZ(String str, String str2) {
        if (str2 == null) {
            this.zzw.remove(str);
        } else {
            this.zzw.put(str, str2);
        }
    }

    public final synchronized double zza() {
        return this.zzr;
    }

    public final synchronized void zzaa(int i) {
        this.zza = i;
    }

    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzdq zzdqVar) {
        this.zzb = zzdqVar;
    }

    public final synchronized void zzac(View view) {
        this.zzo = view;
    }

    public final synchronized void zzad(zzcjk zzcjkVar) {
        this.zzi = zzcjkVar;
    }

    public final synchronized void zzae(View view) {
        this.zzp = view;
    }

    public final synchronized boolean zzaf() {
        return this.zzj != null;
    }

    public final synchronized float zzb() {
        return this.zzx;
    }

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized Bundle zzd() {
        try {
            if (this.zzh == null) {
                this.zzh = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzh;
    }

    public final synchronized View zze() {
        return this.zzd;
    }

    public final synchronized View zzf() {
        return this.zzo;
    }

    public final synchronized View zzg() {
        return this.zzp;
    }

    public final synchronized SimpleArrayMap zzh() {
        return this.zzv;
    }

    public final synchronized SimpleArrayMap zzi() {
        return this.zzw;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzdq zzj() {
        return this.zzb;
    }

    @Nullable
    public final synchronized com.google.android.gms.ads.internal.client.zzel zzk() {
        return this.zzg;
    }

    public final synchronized zzbjf zzl() {
        return this.zzc;
    }

    @Nullable
    public final zzbjm zzm() {
        List list = this.zze;
        if (list != null && !list.isEmpty()) {
            Object obj = this.zze.get(0);
            if (obj instanceof IBinder) {
                return zzbjl.zzg((IBinder) obj);
            }
            return null;
        }
        return null;
    }

    public final synchronized zzbjm zzn() {
        return this.zzs;
    }

    public final synchronized zzbjm zzo() {
        return this.zzt;
    }

    @Nullable
    public final synchronized zzceu zzp() {
        return this.zzn;
    }

    public final synchronized zzcjk zzq() {
        return this.zzj;
    }

    @Nullable
    public final synchronized zzcjk zzr() {
        return this.zzk;
    }

    public final synchronized zzcjk zzs() {
        return this.zzi;
    }

    @Nullable
    public final synchronized zzfod zzu() {
        return this.zzl;
    }

    public final synchronized IObjectWrapper zzv() {
        return this.zzq;
    }

    @Nullable
    public final synchronized ListenableFuture zzw() {
        return this.zzm;
    }

    public final synchronized String zzx() {
        return zzF(new ObfuscatedString(new long[]{1988342957877644743L, -1347964476053557161L, 7657809381503839711L}).toString());
    }

    public final synchronized String zzy() {
        return zzF(new ObfuscatedString(new long[]{-1484234433780636332L, -172777249781271546L}).toString());
    }

    public final synchronized String zzz() {
        return zzF(new ObfuscatedString(new long[]{2917280773693726299L, -7710215157532673603L, -5458797035848438207L}).toString());
    }
}
