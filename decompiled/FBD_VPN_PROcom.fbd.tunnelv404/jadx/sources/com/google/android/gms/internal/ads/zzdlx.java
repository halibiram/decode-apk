package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzdlx implements zzdni {
    private com.google.android.gms.ads.internal.client.zzcs zzB;
    private final Context zza;
    private final zzdnl zzb;
    private final JSONObject zzc;
    private final zzdrz zzd;
    private final zzdna zze;
    private final zzavi zzf;
    private final zzdbp zzg;
    private final zzdav zzh;
    private final zzdis zzi;
    private final zzfgm zzj;
    private final zzcei zzk;
    private final zzfhh zzl;
    private final zzctb zzm;
    private final zzdoe zzn;
    private final Clock zzo;
    private final zzdio zzp;
    private final zzfny zzq;
    private final zzfmz zzr;
    private final zzehs zzs;
    private boolean zzu;
    private boolean zzt = false;
    private boolean zzv = false;
    private boolean zzw = false;
    private Point zzx = new Point();
    private Point zzy = new Point();
    private long zzz = 0;
    private long zzA = 0;

    public zzdlx(Context context, zzdnl zzdnlVar, JSONObject jSONObject, zzdrz zzdrzVar, zzdna zzdnaVar, zzavi zzaviVar, zzdbp zzdbpVar, zzdav zzdavVar, zzdis zzdisVar, zzfgm zzfgmVar, zzcei zzceiVar, zzfhh zzfhhVar, zzctb zzctbVar, zzdoe zzdoeVar, Clock clock, zzdio zzdioVar, zzfny zzfnyVar, zzfmz zzfmzVar, zzehs zzehsVar) {
        this.zza = context;
        this.zzb = zzdnlVar;
        this.zzc = jSONObject;
        this.zzd = zzdrzVar;
        this.zze = zzdnaVar;
        this.zzf = zzaviVar;
        this.zzg = zzdbpVar;
        this.zzh = zzdavVar;
        this.zzi = zzdisVar;
        this.zzj = zzfgmVar;
        this.zzk = zzceiVar;
        this.zzl = zzfhhVar;
        this.zzm = zzctbVar;
        this.zzn = zzdoeVar;
        this.zzo = clock;
        this.zzp = zzdioVar;
        this.zzq = zzfnyVar;
        this.zzr = zzfmzVar;
        this.zzs = zzehsVar;
    }

    @Nullable
    private final String zzD(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdp)).booleanValue()) {
            return null;
        }
        try {
            return this.zzf.zzc().zzh(this.zza, view, null);
        } catch (Exception unused) {
            zzcec.zzg(new ObfuscatedString(new long[]{9211592171399417181L, 267963581684691719L, 1776930004837873681L, 5542532803394632778L}).toString());
            return null;
        }
    }

    @Nullable
    private final String zzE(@Nullable View view, @Nullable Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int zzc = this.zze.zzc();
        if (zzc != 1) {
            if (zzc != 2) {
                if (zzc != 6) {
                    return null;
                }
                return new ObfuscatedString(new long[]{2824421406895024715L, -3508346571741704411L}).toString();
            }
            return new ObfuscatedString(new long[]{2018916004057013401L, 4715346809819001301L}).toString();
        }
        return new ObfuscatedString(new long[]{1904935771142789865L, -615029401534981399L}).toString();
    }

    private final boolean zzF(String str) {
        JSONObject optJSONObject = this.zzc.optJSONObject(new ObfuscatedString(new long[]{9216412248435362367L, 6172145357767155668L, -3569322633840350188L, 4728405585954361678L, -5659339526106345650L}).toString());
        if (optJSONObject == null || !optJSONObject.optBoolean(str, false)) {
            return false;
        }
        return true;
    }

    private final boolean zzG() {
        return this.zzc.optBoolean(new ObfuscatedString(new long[]{9120507258194584897L, 2479121916024950655L, -2687136409388434L, -295297533431182925L, -3157518843721674063L}).toString(), false);
    }

    private final boolean zzH(@Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable String str, @Nullable JSONObject jSONObject5, boolean z) {
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put(new ObfuscatedString(new long[]{-5157223011822253422L, 493752904689288846L}).toString(), this.zzc);
            jSONObject6.put(new ObfuscatedString(new long[]{-6208219081269431533L, -7426901445461660421L, -6936006854783119865L, -5821805621904767580L}).toString(), jSONObject2);
            jSONObject6.put(new ObfuscatedString(new long[]{-1329955953205954150L, 5213727861612382314L, -4957601284874311899L}).toString(), jSONObject);
            jSONObject6.put(new ObfuscatedString(new long[]{-1789872845372093093L, -6052224054817889988L, -4363104399356264517L, -4804660814094280595L}).toString(), jSONObject3);
            jSONObject6.put(new ObfuscatedString(new long[]{-6479462259151589350L, -8018264562084645994L, 1517449542354698772L, -2851369567515193950L}).toString(), jSONObject4);
            jSONObject6.put(new ObfuscatedString(new long[]{2692083915607877812L, -5816256548319937649L, 8675105206926097922L}).toString(), jSONObject5);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdp)).booleanValue()) {
                jSONObject6.put(new ObfuscatedString(new long[]{2731542954170844350L, -754689251256669080L, 4272469230499018845L}).toString(), str);
            }
            jSONObject6.put(new ObfuscatedString(new long[]{-6826665726301026273L, -56602697636816489L, -6376290687063668041L, 4355022850175791165L}).toString(), z);
            String obfuscatedString = new ObfuscatedString(new long[]{-6841812044956940925L, 112502124257801165L}).toString();
            Context context = this.zza;
            JSONObject jSONObject7 = new JSONObject();
            com.google.android.gms.ads.internal.zzt.zzp();
            DisplayMetrics zzs = com.google.android.gms.ads.internal.util.zzt.zzs((WindowManager) context.getSystemService(new ObfuscatedString(new long[]{8178231345022146111L, 5030565218976914282L}).toString()));
            try {
                jSONObject7.put(new ObfuscatedString(new long[]{6123599774314471834L, -1394938076896628497L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzs.widthPixels));
                jSONObject7.put(new ObfuscatedString(new long[]{-6289281894588424074L, -5891370699584475645L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzs.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put(obfuscatedString, jSONObject7);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzit)).booleanValue()) {
                this.zzd.zzi(new ObfuscatedString(new long[]{7174023498014493818L, -1599477471674253328L, 6384490745499068196L}).toString(), new zzdlu(this, null));
            } else {
                this.zzd.zzi(new ObfuscatedString(new long[]{2272092130322456226L, 8638542051916328832L, 5102140489075541891L}).toString(), new zzdls(this, null));
            }
            this.zzd.zzi(new ObfuscatedString(new long[]{3447295618961229618L, -6612814100182792671L, 7052403213506410247L, 3101437581485351159L}).toString(), new zzdlw(this, null));
            zzces.zza(this.zzd.zzd(new ObfuscatedString(new long[]{8192489595570927372L, -4704376563165929216L, 5279937368400551205L, 3998911423995177686L, 3016610763326994177L, -8718163500148818986L}).toString(), jSONObject6), new ObfuscatedString(new long[]{6816128532545866035L, -6632771618435530249L, -5667078520978057613L, 3346255749462430520L, 8860550714179912532L, 2679245968593142794L}).toString());
            if (!this.zzt) {
                this.zzt = com.google.android.gms.ads.internal.zzt.zzs().zzn(this.zza, this.zzk.zza, this.zzj.zzD.toString(), this.zzl.zzf);
                return true;
            }
            return true;
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2083366843164528643L, -795062354538804581L, 5419735096508969337L, -4686578710276420629L, 1769491501218325464L, 5984496392384137627L}).toString(), e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzA() {
        if (zza() != 0) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue()) {
                return this.zzl.zzi.zzj;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzB() {
        return zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final boolean zzC(Bundle bundle) {
        if (!zzF(new ObfuscatedString(new long[]{-8645824313800990646L, -3617379709735046900L, -4844025603175669578L, -3490986313097180388L}).toString())) {
            zzcec.zzg(new ObfuscatedString(new long[]{-8578360486236788246L, 7981163011935543914L, 6144976731286133199L, 1121526735078222521L, 1982699029793398398L, -3847790180559110963L, 3165692895484156321L, -718460012158609358L, 8369650343117490162L, -8405300235637182423L, 3539106235270532632L, 3857394509482865176L, 662668122736470461L, 1252012969573506176L, 4858598563685538079L, 4058630621865463612L, -7605653519300084159L}).toString());
            return false;
        }
        String str = null;
        JSONObject zzj = com.google.android.gms.ads.internal.client.zzay.zzb().zzj(bundle, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkP)).booleanValue()) {
            str = zzD(null);
        }
        return zzH(null, null, null, null, str, zzj, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final int zza() {
        if (this.zzl.zzi != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue()) {
                return this.zzl.zzi.zzi;
            }
            return 0;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    @Nullable
    public final JSONObject zze(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbz.zzd(context, map, map2, view, scaleType);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbz.zzg(context, view);
        JSONObject zzf = com.google.android.gms.ads.internal.util.zzbz.zzf(view);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbz.zze(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(new ObfuscatedString(new long[]{-1536590638843095133L, 9107190709319967721L, 4369263422217590048L, -2324394622941797873L}).toString(), zzd);
            jSONObject.put(new ObfuscatedString(new long[]{-5986975249335662419L, 6634522055661953099L, -4862221328010272684L}).toString(), zzg);
            jSONObject.put(new ObfuscatedString(new long[]{-149610597106975547L, -1443798922881492289L, 5168238863047879890L, 7996706246131303815L}).toString(), zzf);
            jSONObject.put(new ObfuscatedString(new long[]{9112929261664492986L, 1913812652242011335L, -6086042291065594079L, 7554110915521246896L}).toString(), zze);
            return jSONObject;
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1659490177708360789L, -375746355999301877L, -7564285566547431921L, -6338233361821606140L, 835505108818668035L, 1233713745565255837L, 5237956837488190351L}).toString(), e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    @Nullable
    public final JSONObject zzf(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        JSONObject zze = zze(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.zzw && zzG()) {
                jSONObject.put(new ObfuscatedString(new long[]{4514828661609671137L, 3207493776270009738L, 273455071256944710L, 4576415226802931849L, 3746869290649586475L}).toString(), true);
            }
            if (zze != null) {
                jSONObject.put(new ObfuscatedString(new long[]{-5359954676363973572L, 6363258452333685190L}).toString(), zze);
            }
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6921234876462924170L, -1073205866502245304L, 6829714291088319958L, -2163313543914714319L, 2309080439311026377L, 2414375166473932393L, 3755786557220176424L}).toString(), e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzg() {
        try {
            com.google.android.gms.ads.internal.client.zzcs zzcsVar = this.zzB;
            if (zzcsVar != null) {
                zzcsVar.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-6363938207199514499L, -177521928178556913L, 6908202444645421360L, -8534053842466317257L, -6808049781213505152L, 7403100119731392474L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzh() {
        if (!this.zzc.optBoolean(new ObfuscatedString(new long[]{-3542734454582238594L, 3216048779543470847L, 8593749294453257092L, -7794352498437214472L, -6225818708105219955L, 8908507129198833321L}).toString(), false)) {
            return;
        }
        this.zzn.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzi() {
        this.zzd.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzj(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        try {
            if (this.zzv) {
                return;
            }
            if (zzcwVar == null) {
                zzdna zzdnaVar = this.zze;
                if (zzdnaVar.zzk() != null) {
                    this.zzv = true;
                    this.zzq.zzc(zzdnaVar.zzk().zzf(), this.zzr);
                    zzg();
                    return;
                }
            }
            this.zzv = true;
            this.zzq.zzc(zzcwVar.zzf(), this.zzr);
            zzg();
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-2534898405922277690L, 1079957753891295980L, -1374938002323106323L, 3560539381278763222L, -678848137809525078L, 8900056297105307484L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzk(View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z, @Nullable ImageView.ScaleType scaleType) {
        View view3;
        Context context = this.zza;
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbz.zzd(context, map, map2, view2, scaleType);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbz.zzg(context, view2);
        JSONObject zzf = com.google.android.gms.ads.internal.util.zzbz.zzf(view2);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbz.zze(context, view2);
        String zzE = zzE(view, map);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbz.zzc(zzE, context, this.zzy, this.zzx);
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdw)).booleanValue()) {
            view3 = view2;
        } else {
            view3 = view;
        }
        zzn(view3, zzg, zzd, zzf, zze, zzE, zzc, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzl(String str) {
        zzn(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzm(@Nullable Bundle bundle) {
        String str;
        if (bundle == null) {
            zzcec.zze(new ObfuscatedString(new long[]{2400991490281449727L, -6100279679204213315L, -4094597318709449160L, 9130925859329718706L, 8114464359342364186L, -9066927532951532018L, 9193527499516002020L}).toString());
            return;
        }
        if (!zzF(new ObfuscatedString(new long[]{-8848854484045036615L, 1373416627368139359L, -6570092098955763048L}).toString())) {
            zzcec.zzg(new ObfuscatedString(new long[]{5710262503864090575L, 8208112034469364548L, 5107221150515711027L, 3299800594321073744L, -166113723492063960L, 5777968116366658581L, -5582673687366313663L, 4058565158480097550L, -3509378226660346112L, 3685847922085703273L, 6116800342291242125L, -1725644886650511220L, 6455578888638521530L, 1055006508155677518L, -4303506008836011249L, -7205333392396036157L, 3007910164199534478L}).toString());
            return;
        }
        Bundle bundle2 = bundle.getBundle(new ObfuscatedString(new long[]{5808149485856586613L, -9216151004268240083L, -3888975464095037785L}).toString());
        if (bundle2 != null) {
            str = bundle2.getString(new ObfuscatedString(new long[]{-6626589926265449121L, 5553777755659647064L}).toString());
        } else {
            str = null;
        }
        zzn(null, null, null, null, null, str, null, com.google.android.gms.ads.internal.client.zzay.zzb().zzj(bundle, null), false, false);
    }

    @VisibleForTesting
    public final void zzn(@Nullable View view, @Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3, @Nullable JSONObject jSONObject4, @Nullable String str, @Nullable JSONObject jSONObject5, @Nullable JSONObject jSONObject6, boolean z, boolean z2) {
        String str2;
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put(new ObfuscatedString(new long[]{-6442052273010445978L, 8139406623336099398L}).toString(), this.zzc);
            jSONObject7.put(new ObfuscatedString(new long[]{-7956639107213982042L, 6969785128443937601L, 8417610515876564688L, -6715398871298510196L}).toString(), jSONObject2);
            jSONObject7.put(new ObfuscatedString(new long[]{5693368177762600388L, -1370885229793111419L, -8427181648910218569L}).toString(), jSONObject);
            jSONObject7.put(new ObfuscatedString(new long[]{-1229280195139996486L, -4237558792864817180L, -4817605310960941485L}).toString(), jSONObject5);
            jSONObject7.put(new ObfuscatedString(new long[]{8374065418521396410L, 8362052507413848198L, 3009434256490631748L, -4055119183899839167L}).toString(), jSONObject3);
            jSONObject7.put(new ObfuscatedString(new long[]{-9114509326790110675L, -700258693431492763L, -9110459393629301459L, 6798630130290071309L}).toString(), jSONObject4);
            jSONObject7.put(new ObfuscatedString(new long[]{5058128858052767978L, -7538175800832547002L, -1444896913012366003L, 8517724452774506911L}).toString(), this.zzb.zzc(this.zze.zzA()) != null);
            jSONObject7.put(new ObfuscatedString(new long[]{2400685093179694253L, -1057967228834930599L, -2574587423510558196L}).toString(), jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put(new ObfuscatedString(new long[]{7138056753566232754L, 601835665772558847L}).toString(), str);
            jSONObject8.put(new ObfuscatedString(new long[]{1251184659443208139L, 6696034053775403894L}).toString(), this.zze.zzc());
            jSONObject8.put(new ObfuscatedString(new long[]{-3324973783382691863L, -7500778916621051178L, 6380312482270081919L, -1524237552754084439L}).toString(), z);
            String obfuscatedString = new ObfuscatedString(new long[]{-8154646144921184597L, 774865498219561584L, 2704196724751293910L, 5793008395240034381L}).toString();
            zzbjb zzbjbVar = this.zzl.zzi;
            jSONObject8.put(obfuscatedString, zzbjbVar != null && zzbjbVar.zzg);
            jSONObject8.put(new ObfuscatedString(new long[]{-519959707685172533L, -3952858080623030911L, -1685838805075712432L, -2070132327849925759L}).toString(), (this.zze.zzH().isEmpty() || this.zze.zzk() == null) ? false : true);
            if (this.zzn.zza() != null && this.zzc.optBoolean(new ObfuscatedString(new long[]{2806051284980869509L, -2245031351628414627L, -8434770527035536965L, -8381486269025784055L, 3217132098310317427L, 5012748507522545271L}).toString(), false)) {
                jSONObject8.put(new ObfuscatedString(new long[]{-2439297370561482657L, -7509420302034058605L, -8939188505904777844L, -6414669515466991918L, -6860044204479583351L, 4840814899911814015L}).toString(), true);
            }
            jSONObject8.put(new ObfuscatedString(new long[]{-7172412460353743960L, -6711537891612324786L, 2951858474648224903L}).toString(), this.zzo.currentTimeMillis());
            if (this.zzw && zzG()) {
                jSONObject8.put(new ObfuscatedString(new long[]{931168904463684812L, 7083216292155248998L, -621876916341171476L, -2946291345592547263L, -934966123019650791L}).toString(), true);
            }
            if (z2) {
                jSONObject8.put(new ObfuscatedString(new long[]{6008744061561262690L, -8494019355192839402L, -5274588720753897460L, -3546546722471487540L}).toString(), true);
            }
            jSONObject8.put(new ObfuscatedString(new long[]{6784659817580780316L, -3873533413522475491L, 7470667325758128326L, 9154409726388326022L}).toString(), this.zzb.zzc(this.zze.zzA()) != null);
            String obfuscatedString2 = new ObfuscatedString(new long[]{-6695559437113751666L, 1073805145525708808L, -1819711115735890898L}).toString();
            try {
                JSONObject optJSONObject = this.zzc.optJSONObject(new ObfuscatedString(new long[]{1384053625631039886L, -4861885385437209928L, -1388645396125919832L, 8149019081186421664L, 6832777795423783018L}).toString());
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                str2 = this.zzf.zzc().zze(this.zza, optJSONObject.optString(new ObfuscatedString(new long[]{8435013666572134105L, 682580799091694634L, -896463835176656167L}).toString()), view);
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{518956747085102068L, -7230610999281516743L, -3375375733229942116L, -5127116150811071237L, 6611794567964925550L, 2387701297140806812L}).toString(), e);
                str2 = null;
            }
            jSONObject8.put(obfuscatedString2, str2);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzez)).booleanValue()) {
                jSONObject8.put(new ObfuscatedString(new long[]{148451930225331177L, -8750905069687395926L, -3823218543166846726L, -3470419505751993584L}).toString(), true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzix)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject8.put(new ObfuscatedString(new long[]{7402760359602399490L, 928314152012640793L, -3203896676275759449L, -4669528287815594563L, -526765020572989139L}).toString(), true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziy)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject8.put(new ObfuscatedString(new long[]{-1555710532776620968L, 957212297833037909L, 8657044064054924715L, 5161772502326311733L, -7116652363756015842L, -9064483622920809325L, 301226626990258358L}).toString(), true);
            }
            jSONObject7.put(new ObfuscatedString(new long[]{1377893460397347860L, 4276506237370413879L}).toString(), jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long currentTimeMillis = this.zzo.currentTimeMillis();
            jSONObject9.put(new ObfuscatedString(new long[]{152089767625291583L, -7278686924283647704L, 5037289858725108216L, 6094720147891049710L, -3261794541223580339L}).toString(), currentTimeMillis - this.zzz);
            jSONObject9.put(new ObfuscatedString(new long[]{-9129278628047501131L, 2550946090410477334L, 2714855801731384754L, -7446029758146398282L}).toString(), currentTimeMillis - this.zzA);
            jSONObject7.put(new ObfuscatedString(new long[]{7395800772349948126L, -600805116131012992L, 7992120382345022482L}).toString(), jSONObject9);
            if (this.zzj.zzaj) {
                JSONObject jSONObject10 = (JSONObject) this.zzc.get(new ObfuscatedString(new long[]{27101326404300407L, 1358323898705842709L, 5453363144691757211L, 2389529086486191898L, 5979916452149648116L}).toString());
                String string = jSONObject10 != null ? jSONObject10.getString(new ObfuscatedString(new long[]{1122402858814981292L, 6868540710738263600L, 120501441400600641L}).toString()) : null;
                if (string != null) {
                    this.zzs.zzp(string, this.zze);
                }
            }
            zzces.zza(this.zzd.zzd(new ObfuscatedString(new long[]{-8434465809915156688L, -2480187690017912529L, -3245466399356817180L, 743206014824027952L, 5473689409552671939L, 7208119966601084655L}).toString(), jSONObject7), new ObfuscatedString(new long[]{-1712168429956200206L, 909635834360658430L, 5468144526276611129L, -7944770570576638524L, -8514158608193018306L, 1332937389079900668L}).toString());
        } catch (JSONException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{3125166443200942337L, 6780406129197739622L, -7354288245187509752L, 3006260456157991929L, -6266149530272800353L}).toString(), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzo(@Nullable View view, @Nullable View view2, @Nullable Map map, @Nullable Map map2, boolean z, @Nullable ImageView.ScaleType scaleType, int i) {
        JSONObject jSONObject;
        boolean z2 = false;
        if (this.zzc.optBoolean(new ObfuscatedString(new long[]{5361957784812810013L, -8286444789547095159L, 4266936276287754169L, -75525288449413706L, 1947049030530963800L}).toString(), false)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkU)).booleanValue()) {
                z2 = true;
            }
        }
        if (!z2) {
            if (!this.zzw) {
                zzcec.zze(new ObfuscatedString(new long[]{-1376662480349994515L, 9104914296427149702L, 3726068421254073567L, 299844156319858522L, -367151482804344416L, -1280386478508466123L, -8233717490992814299L, -5309518796678906135L, -1654626560898793642L, -4491145957260375804L}).toString());
                return;
            } else if (!zzG()) {
                zzcec.zze(new ObfuscatedString(new long[]{-340578729188058283L, -4061043679865564963L, -6128034662208680970L, 4552614884400517525L, 2900574141135684983L, 8796328082650110186L, -3906256725964146759L, 1559003576235187535L, 4179396993810991702L}).toString());
                return;
            }
        }
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbz.zzd(this.zza, map, map2, view2, scaleType);
        JSONObject zzg = com.google.android.gms.ads.internal.util.zzbz.zzg(this.zza, view2);
        JSONObject zzf = com.google.android.gms.ads.internal.util.zzbz.zzf(view2);
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbz.zze(this.zza, view2);
        String zzE = zzE(view, map);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbz.zzc(zzE, this.zza, this.zzy, this.zzx);
        if (z2) {
            try {
                JSONObject jSONObject2 = this.zzc;
                String obfuscatedString = new ObfuscatedString(new long[]{-3448640061800724594L, -8101967321548541494L, 3470367985258584893L, 513207220828941438L, 4167664081980654579L}).toString();
                Point point = this.zzy;
                Point point2 = this.zzx;
                try {
                    jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        JSONObject jSONObject4 = new JSONObject();
                        if (point != null) {
                            jSONObject3.put(new ObfuscatedString(new long[]{211327523348171495L, -8137943095713520068L}).toString(), point.x);
                            jSONObject3.put(new ObfuscatedString(new long[]{-5566246568136216939L, 3150154888829434414L}).toString(), point.y);
                        }
                        if (point2 != null) {
                            jSONObject4.put(new ObfuscatedString(new long[]{-6111442086800710695L, 1069512114846415579L}).toString(), point2.x);
                            jSONObject4.put(new ObfuscatedString(new long[]{-6046260112769916995L, -4648641637990880523L}).toString(), point2.y);
                        }
                        jSONObject.put(new ObfuscatedString(new long[]{-7630085001149786790L, -611460229126057190L, 3283923555196478209L}).toString(), jSONObject3);
                        jSONObject.put(new ObfuscatedString(new long[]{7856686029098105667L, -7536870848688679416L, 7392689235327655193L}).toString(), jSONObject4);
                        jSONObject.put(new ObfuscatedString(new long[]{3682497949162065775L, -6574391233741829544L, 2287694159121180100L}).toString(), i);
                    } catch (Exception e) {
                        e = e;
                        zzcec.zzh(new ObfuscatedString(new long[]{-1881718573116046296L, 3924951014589263994L, 1966337987151298060L, -7590888269236091322L, 1828059636593109796L, 5760136000475128060L, 6676653402463876589L, -7370411121449491395L, -1122716782247390469L}).toString(), e);
                        jSONObject2.put(obfuscatedString, jSONObject);
                        zzn(view2, zzg, zzd, zzf, zze, zzE, zzc, null, z, true);
                    }
                } catch (Exception e2) {
                    e = e2;
                    jSONObject = null;
                }
                jSONObject2.put(obfuscatedString, jSONObject);
            } catch (JSONException e3) {
                zzcec.zzh(new ObfuscatedString(new long[]{8228846082880680057L, 7866476395887051141L, -2318755998874895339L, 7521474904895157553L, 297243742853005458L, 5959404376109138070L, -2947175997858729077L, -8430117530826814205L, -819741028371615474L}).toString(), e3);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e3, new ObfuscatedString(new long[]{8314204460510849257L, 3636346015817113972L, -8429076775104369709L, -8840644377307811246L, -1744608531695221411L, -7445573528980774208L, 932699947446547299L}).toString());
            }
        }
        zzn(view2, zzg, zzd, zzf, zze, zzE, zzc, null, z, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzp() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(new ObfuscatedString(new long[]{-1582050955983335330L, 3853660881246600224L}).toString(), this.zzc);
            zzces.zza(this.zzd.zzd(new ObfuscatedString(new long[]{-3778660529268681146L, -809977265965733680L, -2754764190893679524L, -8730282100266217528L, 4235224104711484923L, -2158628857690675338L, 2311960291116063581L}).toString(), jSONObject), new ObfuscatedString(new long[]{-8666543240042060037L, -8256282157869586945L, -8079808153760824824L, -1480861938372577456L, 741366615224224980L, -3975835542404526965L, 6504759883991053035L, -4984359005153825569L}).toString());
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-331100030876800159L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzq(@Nullable View view, @Nullable Map map, @Nullable Map map2, @Nullable ImageView.ScaleType scaleType) {
        Context context = this.zza;
        zzH(com.google.android.gms.ads.internal.util.zzbz.zzg(context, view), com.google.android.gms.ads.internal.util.zzbz.zzd(context, map, map2, view, scaleType), com.google.android.gms.ads.internal.util.zzbz.zzf(view), com.google.android.gms.ads.internal.util.zzbz.zze(context, view), zzD(view), null, com.google.android.gms.ads.internal.util.zzbz.zzh(context, this.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzr() {
        zzH(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzs(@Nullable View view, MotionEvent motionEvent, @Nullable View view2) {
        this.zzx = com.google.android.gms.ads.internal.util.zzbz.zza(motionEvent, view2);
        long currentTimeMillis = this.zzo.currentTimeMillis();
        this.zzA = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.zzz = currentTimeMillis;
            this.zzy = this.zzx;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.zzx;
        obtain.setLocation(point.x, point.y);
        this.zzf.zzd(obtain);
        obtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzt(@Nullable Bundle bundle) {
        if (bundle == null) {
            zzcec.zze(new ObfuscatedString(new long[]{1739714545444226678L, 7568046085061605038L, 8067628925991516696L, 1998067444262449166L, 1477024218608355021L, -5587728252472089759L, 8716595794335977719L, 149517820733376783L}).toString());
            return;
        }
        if (!zzF(new ObfuscatedString(new long[]{-2873228889978029998L, 4495133710785764095L, -7437141437557159804L}).toString())) {
            zzcec.zzg(new ObfuscatedString(new long[]{4350584729374876151L, -946496673066275267L, 127406493072349815L, -6824683889084044716L, 5099995996532922119L, -4117102748993808897L, 1781166707753917549L, 9103955945095689270L, 2763266953950830674L, 5968704398313088122L, 142795703345631373L, -636271102205581453L, 3142951384768922142L, 4021818171590056166L, -2418736323290882808L, -103834810761976711L}).toString());
            return;
        }
        this.zzf.zzc().zzl((int) bundle.getFloat(new ObfuscatedString(new long[]{5120241504261705630L, 4438652172606004728L}).toString()), (int) bundle.getFloat(new ObfuscatedString(new long[]{7675656114554356347L, -3742520212741282650L}).toString()), bundle.getInt(new ObfuscatedString(new long[]{-2687216356635404415L, -4576935394017223777L, 3650331647845136241L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzu(View view) {
        if (!this.zzc.optBoolean(new ObfuscatedString(new long[]{-7197527021767160973L, -8021193232999149838L, -1043571972805626241L, 5698735604701944229L, -1797655890257379659L, 5673717864956852163L}).toString(), false)) {
            zzcec.zzj(new ObfuscatedString(new long[]{3093628012331089468L, -7899500575000947059L, 1470496225547509233L, 8271639077548734475L, 3529289476439878170L, 6005690072137654672L, -3354531905555192393L, 4805887317413296269L, 5210183435790147285L, 3546677564937356566L, -8794029261320060072L, -4337661045153687728L, -7192527452363693982L, 6115502093810056580L, -60153396844179459L, -8634014862523613475L, -7970995722651194701L, -4854153102270977731L, -514255039332345646L}).toString());
            return;
        }
        zzdoe zzdoeVar = this.zzn;
        if (view == null) {
            return;
        }
        view.setOnClickListener(zzdoeVar);
        view.setClickable(true);
        zzdoeVar.zzc = new WeakReference(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzv() {
        this.zzw = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzw(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzB = zzcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzx(zzblg zzblgVar) {
        if (!this.zzc.optBoolean(new ObfuscatedString(new long[]{5070155991911905504L, -968077632209683197L, -8163657301119702731L, -1700074725343341802L, 5172801282601934593L, 3593023077024160009L}).toString(), false)) {
            zzcec.zzj(new ObfuscatedString(new long[]{2509912753483209784L, 3841040108813366020L, 2710060690127167042L, 1517098791122595068L, 4111474202298681486L, 4784916341845819984L, -1118387114775772879L, 2233748287480464940L, -807187641389612426L, -3867402103951786866L, 8106938150574281561L, 281590199992805880L, 741254033083862669L, -6159642270736939264L, 1675345742673272688L, -8301944590605526896L, 3781757719403116840L, -1802995258467926128L, -3093662529401061538L}).toString());
        } else {
            this.zzn.zzc(zzblgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzy(View view, @Nullable Map map, @Nullable Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.zzx = new Point();
        this.zzy = new Point();
        if (!this.zzu) {
            this.zzp.zza(view);
            this.zzu = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.zzm.zzi(this);
        boolean zzi = com.google.android.gms.ads.internal.util.zzbz.zzi(this.zzk.zzc);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (zzi) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (zzi) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdni
    public final void zzz(@Nullable View view, @Nullable Map map) {
        this.zzx = new Point();
        this.zzy = new Point();
        if (view != null) {
            this.zzp.zzb(view);
        }
        this.zzu = false;
    }
}
