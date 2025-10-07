package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbve extends zzbur {
    private final RtbAdapter zza;
    private MediationInterstitialAd zzb;
    private MediationRewardedAd zzc;
    private MediationAppOpenAd zzd;
    private String zze = new ObfuscatedString(new long[]{-1341136735016136221L}).toString();

    public zzbve(RtbAdapter rtbAdapter) {
        this.zza = rtbAdapter;
    }

    private final Bundle zzv(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle;
        Bundle bundle2 = zzlVar.zzm;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.zza.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    private static final Bundle zzw(String str) {
        zzcec.zzj(new ObfuscatedString(new long[]{8603635947882263083L, -203026420003384137L, -6027720907339854680L, -5951642801087651791L}).toString().concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                return bundle2;
            }
            return bundle;
        } catch (JSONException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5748827900542897227L}).toString(), e);
            throw new RemoteException();
        }
    }

    private static final boolean zzx(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        if (!zzlVar.zzf) {
            com.google.android.gms.ads.internal.client.zzay.zzb();
            if (!zzcdv.zzr()) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Nullable
    private static final String zzy(String str, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        String str2 = zzlVar.zzu;
        try {
            return new JSONObject(str).getString(new ObfuscatedString(new long[]{7536415292807758722L, -5196910198467910935L, -4353794553151291500L, -1001435341877967041L}).toString());
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdq zze() {
        MediationExtrasReceiver mediationExtrasReceiver = this.zza;
        if (mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{-3444522149600949411L}).toString(), th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final zzbvg zzf() {
        return zzbvg.zza(this.zza.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final zzbvg zzg() {
        return zzbvg.zza(this.zza.getSDKVersionInfo());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        if (r10.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2466676763112607936L, -6256895763748034503L}).toString()) != false) goto L28;
     */
    @Override // com.google.android.gms.internal.ads.zzbus
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzq zzqVar, zzbuv zzbuvVar) {
        AdFormat adFormat;
        char c = 2;
        try {
            zzbvc zzbvcVar = new zzbvc(this, zzbuvVar);
            RtbAdapter rtbAdapter = this.zza;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals(new ObfuscatedString(new long[]{6161687220393223422L, -3848499025522932481L}).toString())) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1052618729:
                    if (str.equals(new ObfuscatedString(new long[]{-2248004481835011412L, -4363493398227696805L}).toString())) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -239580146:
                    break;
                case 604727084:
                    if (str.equals(new ObfuscatedString(new long[]{-4697209224798916234L, -3674036577423941212L, 7052282307828968830L}).toString())) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1167692200:
                    if (str.equals(new ObfuscatedString(new long[]{4667317107613060811L, 6436195487596406911L}).toString())) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1778294298:
                    if (str.equals(new ObfuscatedString(new long[]{9051936046981535958L, 2721244123605475671L, 8143417169960473060L}).toString())) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1911491517:
                    if (str.equals(new ObfuscatedString(new long[]{-9063616680342454655L, -565262272768346252L, -8741433302986118356L, 7378100616908382682L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    adFormat = AdFormat.BANNER;
                    break;
                case 1:
                    adFormat = AdFormat.INTERSTITIAL;
                    break;
                case 2:
                    adFormat = AdFormat.REWARDED;
                    break;
                case 3:
                    adFormat = AdFormat.REWARDED_INTERSTITIAL;
                    break;
                case 4:
                    adFormat = AdFormat.NATIVE;
                    break;
                case 5:
                    adFormat = AdFormat.APP_OPEN_AD;
                    break;
                case 6:
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzli)).booleanValue()) {
                        adFormat = AdFormat.APP_OPEN_AD;
                        break;
                    }
                default:
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{8224542228835321602L, -5662052044654377253L, 8153302477875603316L}).toString());
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, com.google.android.gms.ads.zzb.zzc(zzqVar.zze, zzqVar.zzb, zzqVar.zza)), zzbvcVar);
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7361406267587939299L, -4488538044254472701L, 3452333840868162474L, -4982411261488797003L, -4623373860340726541L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{6640642838738170961L, 8314193168580274256L, 1579267667455021427L, -265655390275081016L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbud zzbudVar, zzbtb zzbtbVar) {
        try {
            this.zza.loadRtbAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), this.zze), new zzbvb(this, zzbudVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-4953961884805980767L, 2487939715099999635L, 5493275768168777007L, 3948676887107620293L, 4752231093746478182L, 8568098666928721748L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{8825192262954832125L, 4699755620408991186L, -1957172191772043607L, -1841229253960075261L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbug zzbugVar, zzbtb zzbtbVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        try {
            this.zza.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), com.google.android.gms.ads.zzb.zzc(zzqVar.zze, zzqVar.zzb, zzqVar.zza), this.zze), new zzbux(this, zzbugVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2373083055893403141L, 5459732393559301638L, 5865096619018345497L, -3509614481375612740L, -3417575494531431338L, 8001309128687872334L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-2858550141304162117L, 1467642064972214556L, -4914107032310803935L, 8762898053593110213L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbug zzbugVar, zzbtb zzbtbVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        try {
            this.zza.loadRtbInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), com.google.android.gms.ads.zzb.zzc(zzqVar.zze, zzqVar.zzb, zzqVar.zza), this.zze), new zzbuy(this, zzbugVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{8069489785410614071L, -8056458795826290333L, 1372092368163566358L, 4610584735078728101L, 7024413331037247656L, -7746806628766476286L, 1373668846465482898L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-3287142021790648296L, -8430399984369626136L, 913592020914063188L, 7203726610684589005L, 8059111439325843410L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbuj zzbujVar, zzbtb zzbtbVar) {
        try {
            this.zza.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), this.zze), new zzbuz(this, zzbujVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5307858181999851306L, 5815608448103471000L, -2530755787311930132L, 5743965373539555698L, -9021430804662890231L, 3993788614572322567L, 4182138376003421588L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{5589207167459425595L, -7025330522018345041L, 5475553096057171616L, 8627430392591303300L, 8156492650245534286L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtb zzbtbVar) {
        zzn(str, str2, zzlVar, iObjectWrapper, zzbumVar, zzbtbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtb zzbtbVar, zzbjb zzbjbVar) {
        try {
            this.zza.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), this.zze, zzbjbVar), new zzbva(this, zzbumVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2626932089687661909L, -7890793380285617811L, 6286025882862819175L, 695522313362703694L, 5455502546913118323L, 6285525439666025297L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-7122921956264515024L, 4690078331388558718L, -125314093273705795L, -506311317254449973L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbup zzbupVar, zzbtb zzbtbVar) {
        try {
            this.zza.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), this.zze), new zzbvd(this, zzbupVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2634150291481611177L, -2075135835741580220L, 387107449171598519L, -8213459248252967054L, 591644859127825149L, 5319676308120809898L, -3207511890173146215L, 6867370794454718226L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-8087092435199883786L, 5900987750574779718L, 2902710147522243350L, -1835534297628756234L, 4090393213789146431L, 4562321442841695479L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbup zzbupVar, zzbtb zzbtbVar) {
        try {
            this.zza.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzlVar), zzx(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzy(str2, zzlVar), this.zze), new zzbvd(this, zzbupVar, zzbtbVar));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1188549438346852488L, -7746014242423756651L, -8322721818731999228L, -1300864582816135869L, 5046857134897136656L, -4370291713889069797L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-5743352913398909207L, -1706356586430348790L, 5551584183828322866L, 7647805305363579445L, 6674121219868500754L}).toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzq(String str) {
        this.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        MediationAppOpenAd mediationAppOpenAd = this.zzd;
        if (mediationAppOpenAd == null) {
            return false;
        }
        try {
            mediationAppOpenAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-5756365716800427084L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{-286389985516471467L, -5499058582013569934L, -1190260026728804250L, 4992781529189119269L}).toString());
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        MediationInterstitialAd mediationInterstitialAd = this.zzb;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{1610143090037794528L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{5506055818726532111L, -6320624783994648611L, -3062439882788516778L, 1108118633008239470L, 7914275369680222255L}).toString());
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzt(IObjectWrapper iObjectWrapper) {
        MediationRewardedAd mediationRewardedAd = this.zzc;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{2649950777441099219L}).toString(), th);
            zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{4107457840946333403L, -5587551360312167060L, 8728348987703702662L, 7195332933901077210L, -1663421148596643243L}).toString());
        }
        return true;
    }
}
