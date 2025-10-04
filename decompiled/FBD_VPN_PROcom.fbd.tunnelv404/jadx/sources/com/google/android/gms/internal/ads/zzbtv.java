package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbtv extends zzbsx {
    private final Object zza;
    private zzbtx zzb;
    private zzcaf zzc;
    private IObjectWrapper zzd;
    private View zze;
    private MediationInterstitialAd zzf;
    private UnifiedNativeAdMapper zzg;
    private MediationRewardedAd zzh;
    private MediationInterscrollerAd zzi;
    private MediationAppOpenAd zzj;
    private final String zzk = new ObfuscatedString(new long[]{1389323683306885685L}).toString();

    public zzbtv(@NonNull Adapter adapter) {
        this.zza = adapter;
    }

    private final Bundle zzU(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle;
        Bundle bundle2 = zzlVar.zzm;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.zza.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    private final Bundle zzV(String str, com.google.android.gms.ads.internal.client.zzl zzlVar, String str2) {
        zzcec.zze(new ObfuscatedString(new long[]{-2437998294135860208L, -4751325895587197769L, -7524641339853436234L, -8487982262475332175L}).toString().concat(String.valueOf(str)));
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
                bundle = bundle2;
            }
            if (this.zza instanceof AdMobAdapter) {
                bundle.putString(new ObfuscatedString(new long[]{-3564086549963767826L, -1692777052576858183L}).toString(), str2);
                if (zzlVar != null) {
                    bundle.putInt(new ObfuscatedString(new long[]{-8274714261357386551L, 4647810224012650151L, -8055942419451819002L, 7992366940859953593L, -2259306143637996861L}).toString(), zzlVar.zzg);
                }
            }
            bundle.remove(new ObfuscatedString(new long[]{4695306876695675336L, -6300054215653602745L, 7484402541749619920L, 7147041248340890709L}).toString());
            return bundle;
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{1757391066323644033L}).toString(), th);
            throw new RemoteException();
        }
    }

    private static final boolean zzW(com.google.android.gms.ads.internal.client.zzl zzlVar) {
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
    private static final String zzX(String str, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        String str2 = zzlVar.zzu;
        try {
            return new JSONObject(str).getString(new ObfuscatedString(new long[]{9036555208448292311L, -5798264176977559137L, 4712661762727506795L, -3533371346568817881L}).toString());
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{3104842479240380196L, 3858958670353709869L, -4445169343860471411L, 297714858392478086L, -7268928234616386041L, 7679965722242718340L}).toString());
            try {
                ((Adapter) this.zza).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{4218649455432520860L}).toString(), zzV(str, zzlVar, null), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), new ObfuscatedString(new long[]{4434508826620982312L}).toString()), new zzbtt(this, zzbtbVar));
                return;
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-8831388408509398401L}).toString(), e);
                zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{-1285278696448641415L, -946390670600879668L, -4096829671988931385L, 4843912206726633678L}).toString());
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{7432829077746069096L, 4730499780169482662L, -5558459627037473533L, -4904709308680141776L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzB(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzA(this.zzd, zzlVar, str, new zzbty((Adapter) obj, this.zzc));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{886567573481135391L, -5355231147287151324L, 9155311592466504704L, -941949844479340046L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{-75653270460378644L, -5619299964515207571L, -579704538654873581L, 1121592483003733352L, 5247185784356565954L, 244173227348789425L, -613882451291699698L, 5350532504318633902L}).toString());
            try {
                ((Adapter) this.zza).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{-9170206448374811412L}).toString(), zzV(str, zzlVar, null), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), new ObfuscatedString(new long[]{4272709970573814865L}).toString()), new zzbtt(this, zzbtbVar));
                return;
            } catch (Exception e) {
                zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{913720697082166548L, 675830167270990926L, -5947537741861049054L, 3330899473793644957L, 1845186094399478755L, 4450818954381617624L}).toString());
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{6947896447050579569L, 4787393066306303161L, -5894082833987493376L, 6078005023908671319L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzD(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zza;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzE() {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onPause();
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{6585991469117444715L}).toString(), th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzF() {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onResume();
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{-961276751670431678L}).toString(), th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzG(boolean z) {
        Object obj = this.zza;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{4972290927470991381L}).toString(), th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-1242362618736938692L, -9146252885121006623L, 5863662947779885155L, -2539523490503987585L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zze(m3341xc20437a5.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzH(IObjectWrapper iObjectWrapper) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{3599028929541487399L, -6280622280107731798L, 2695451991469442881L, -4350671171105471016L, 6448988065585166312L}).toString());
            MediationAppOpenAd mediationAppOpenAd = this.zzj;
            if (mediationAppOpenAd != null) {
                try {
                    mediationAppOpenAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    return;
                } catch (RuntimeException e) {
                    zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{-8269031654140901560L, -7539892208727400748L, 7499150305653165926L, 7659329534139643861L}).toString());
                    throw e;
                }
            }
            zzcec.zzg(new ObfuscatedString(new long[]{-8151150198020894370L, -7921540532084720504L, 669293404365150006L, -5315204697991975431L, 7436014136935390715L, -721652902128392023L}).toString());
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-200849042311126003L, 5084408023528924384L, -1528368510287435875L, 9136882830793533833L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzI() {
        Object obj = this.zza;
        if (obj instanceof MediationInterstitialAdapter) {
            zzcec.zze(new ObfuscatedString(new long[]{-9010949604700228524L, -5458462153461813918L, 6907955794824087583L, 763687997262440239L, -6622495595335015288L, -5629305253852244865L}).toString());
            try {
                ((MediationInterstitialAdapter) this.zza).showInterstitial();
                return;
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{6573882657897847387L}).toString(), th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-8530310349969891646L, -6487265484806961261L, 2282994089947872604L, -4093826135330209799L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzJ(IObjectWrapper iObjectWrapper) {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !(obj instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{7247911079400534163L, -916241381135613154L}).toString());
            m3341xc20437a5.append(canonicalName2);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{7987223333434926549L, -4279860154247898037L, -447889715734766674L, -5600526415159687171L}).toString());
            m3341xc20437a5.append(canonicalName3);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        if (obj instanceof MediationInterstitialAdapter) {
            zzI();
            return;
        }
        zzcec.zze(new ObfuscatedString(new long[]{5862789505142968211L, -3258909236057116223L, -3950287368555523163L, 7083103623798148135L, 1345864134244468531L, 8206979077399038878L}).toString());
        MediationInterstitialAd mediationInterstitialAd = this.zzf;
        if (mediationInterstitialAd != null) {
            try {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return;
            } catch (RuntimeException e) {
                zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{-3860633892825181931L, -2742237124436489488L, -3110178376294331059L, -5898789319008964421L, -4109369714496100341L}).toString());
                throw e;
            }
        }
        zzcec.zzg(new ObfuscatedString(new long[]{1399433703886364526L, -1626101559852298562L, -6503037860494594533L, -8343389124081956279L, -106184329972306304L, -6624499231171721046L, 3085063910302475955L}).toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzK(IObjectWrapper iObjectWrapper) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{-440597708357265423L, -3686773036120173440L, 4288641021423588677L, -2541928737287629242L, -2027441615111475083L}).toString());
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                    return;
                } catch (RuntimeException e) {
                    zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{-8641779737767047313L, 2085213652616556364L, -3584720406417690456L, 6094344334928832045L}).toString());
                    throw e;
                }
            }
            zzcec.zzg(new ObfuscatedString(new long[]{8639647602496312415L, 3498319747702620999L, 8074960129507422241L, -2584531640005591347L, 721667236351680223L, 8612711077811848983L}).toString());
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{1108038588325060086L, -2183615697259946780L, 408392480739606200L, 2279293808248600968L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzL() {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzh;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzd));
                    return;
                } catch (RuntimeException e) {
                    zzbss.zza(this.zzd, e, new ObfuscatedString(new long[]{5894313304556417701L, -2270191947113397532L, 2216398381477388542L, -7565310941479048407L}).toString());
                    throw e;
                }
            }
            zzcec.zzg(new ObfuscatedString(new long[]{8234692130888573793L, -4980519222779270440L, 8695314543422098617L, 4109195109126274457L, 6068586901079661314L, -2495350292356717234L}).toString());
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-3475654497286599775L, 2415555373221126593L, 7976051032341741360L, 7399475343691322814L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final boolean zzM() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final boolean zzN() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !Objects.equals(obj.getClass().getCanonicalName(), new ObfuscatedString(new long[]{-3116288926368576038L, -8398842921131627475L, 6941130464745159398L, -740744475592363662L, -7957117710398116855L, 1664567181114084204L, -7913990840126804791L}).toString())) {
            Object obj2 = this.zza;
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = obj2.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{4982530775318014846L, 6730137975504859848L, -6718011655909856907L, 7849793944954482055L}).toString());
            m3341xc20437a5.append(canonicalName2);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        if (this.zzc != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbtg zzO() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbth zzP() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zze() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zzf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        Object obj = this.zza;
        if (obj instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{-61985359329547655L}).toString(), th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbkg zzi() {
        zzbtx zzbtxVar = this.zzb;
        if (zzbtxVar != null) {
            zzbkh zzc = zzbtxVar.zzc();
            if (zzc instanceof zzbkh) {
                return zzc.zza();
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbte zzj() {
        MediationInterscrollerAd mediationInterscrollerAd = this.zzi;
        if (mediationInterscrollerAd != null) {
            return new zzbtw(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbtk zzk() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        UnifiedNativeAdMapper zza;
        Object obj = this.zza;
        if (obj instanceof MediationNativeAdapter) {
            zzbtx zzbtxVar = this.zzb;
            if (zzbtxVar != null && (zza = zzbtxVar.zza()) != null) {
                return new zzbua(zza);
            }
            return null;
        }
        if ((obj instanceof Adapter) && (unifiedNativeAdMapper = this.zzg) != null) {
            return new zzbua(unifiedNativeAdMapper);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbvg zzl() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbvg.zza(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    @Nullable
    public final zzbvg zzm() {
        Object obj = this.zza;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzbvg.zza(((Adapter) obj).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final IObjectWrapper zzn() {
        Object obj = this.zza;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{-2996391267259675954L}).toString(), th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            return ObjectWrapper.wrap(this.zze);
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{5160024075225008797L, -3979398937219309700L}).toString());
        m3341xc20437a5.append(canonicalName2);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{6362642542704985659L, 1357827322614928161L, -2073287501190290930L, -663406893969370955L}).toString());
        m3341xc20437a5.append(canonicalName3);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzo() {
        Object obj = this.zza;
        if (!(obj instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) obj).onDestroy();
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{1035125443814358415L}).toString(), th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzcaf zzcafVar, String str2) {
        Object obj = this.zza;
        if (!(obj instanceof Adapter) && !Objects.equals(obj.getClass().getCanonicalName(), new ObfuscatedString(new long[]{-7590917037557673444L, -5514963573045313641L, -3020735932438102992L, 2762394208277812927L, -6892637374220689015L, -4898606235968673955L, 4328520578322796031L}).toString())) {
            Object obj2 = this.zza;
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = obj2.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{6158083867279179094L, -458970736025055791L, 7421293062268415570L, -2387548510769872835L}).toString());
            m3341xc20437a5.append(canonicalName2);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        this.zzd = iObjectWrapper;
        this.zzc = zzcafVar;
        zzcafVar.zzl(ObjectWrapper.wrap(this.zza));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x00cc. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzq(IObjectWrapper iObjectWrapper, zzbph zzbphVar, List list) {
        char c;
        if (this.zza instanceof Adapter) {
            zzbtp zzbtpVar = new zzbtp(this, zzbphVar);
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzbpn zzbpnVar = (zzbpn) it.next();
                String str = zzbpnVar.zza;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals(new ObfuscatedString(new long[]{3018882417428772022L, 3134563469617562961L}).toString())) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (str.equals(new ObfuscatedString(new long[]{4670385798256463274L, 1719450017770517469L}).toString())) {
                            c = 4;
                            break;
                        }
                        break;
                    case -239580146:
                        if (str.equals(new ObfuscatedString(new long[]{5612404009573238553L, 4181929609909220291L}).toString())) {
                            c = 2;
                            break;
                        }
                        break;
                    case 604727084:
                        if (str.equals(new ObfuscatedString(new long[]{-824083003932437568L, 5716469065279727132L, 3496482360712272926L}).toString())) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1167692200:
                        if (str.equals(new ObfuscatedString(new long[]{-6318000143954013291L, -8646659210053415486L}).toString())) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1778294298:
                        if (str.equals(new ObfuscatedString(new long[]{9098762541346139219L, 7763396546921048717L, -5414634616328361589L}).toString())) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1911491517:
                        if (str.equals(new ObfuscatedString(new long[]{8996770639222418851L, 8980450141110938413L, 3081379269765677212L, 4741342290059891310L}).toString())) {
                            c = 3;
                            break;
                        }
                        break;
                }
                c = 65535;
                AdFormat adFormat = null;
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
                        break;
                }
                if (adFormat != null) {
                    arrayList.add(new MediationConfiguration(adFormat, zzbpnVar.zzb));
                }
            }
            ((Adapter) this.zza).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbtpVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzr(IObjectWrapper iObjectWrapper, zzcaf zzcafVar, List list) {
        zzcec.zzj(new ObfuscatedString(new long[]{7828535284251432735L, -3706277216758201763L, 1448858167336338313L, 9182647398600336329L, -4387325144303833615L, -5052016292020743688L, -8878176223541095056L}).toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzs(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) {
        zzB(zzlVar, str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{2895128960996172144L, 4285706887382243941L, -5757001784563305602L, 5391871290710697951L, 3961785724889142121L, -5730215097616828417L}).toString());
            try {
                ((Adapter) this.zza).loadAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{7875051248217544082L}).toString(), zzV(str, zzlVar, null), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), new ObfuscatedString(new long[]{6644253000070386349L}).toString()), new zzbtu(this, zzbtbVar));
                return;
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{1215131787619389375L}).toString(), e);
                zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{-7382376246311481809L, -285339894557235848L, -6412504565776937186L, 160920170071454208L}).toString());
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{3386900500869371498L, 4767896094971537443L, -474304912154569523L, -4513658089448830814L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        zzv(iObjectWrapper, zzqVar, zzlVar, str, null, zzbtbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        AdSize zzc;
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        if (!(obj instanceof MediationBannerAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-2763968893941610017L, 4112541456920089709L}).toString());
            m3341xc20437a5.append(canonicalName2);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{5582441128079459014L, -1229608719434098885L, 5744704095061231773L, 318099505888702119L}).toString());
            m3341xc20437a5.append(canonicalName3);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        zzcec.zze(new ObfuscatedString(new long[]{-1282546204566428733L, 9181310033316822637L, 4410636144235210528L, 6184425372236932804L, -1890829889682711229L, 5329097703043053032L}).toString());
        if (zzqVar.zzn) {
            zzc = com.google.android.gms.ads.zzb.zzd(zzqVar.zze, zzqVar.zzb);
        } else {
            zzc = com.google.android.gms.ads.zzb.zzc(zzqVar.zze, zzqVar.zzb, zzqVar.zza);
        }
        AdSize adSize = zzc;
        Object obj2 = this.zza;
        if (obj2 instanceof MediationBannerAdapter) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) obj2;
                List list = zzlVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = zzlVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                zzbtn zzbtnVar = new zzbtn(date, zzlVar.zzd, hashSet, zzlVar.zzk, zzW(zzlVar), zzlVar.zzg, zzlVar.zzr, zzlVar.zzt, zzX(str, zzlVar));
                Bundle bundle2 = zzlVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationBannerAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbtx(zzbtbVar), zzV(str, zzlVar, str2), adSize, zzbtnVar, bundle);
                return;
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{-3824424244899783986L}).toString(), th);
                zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{8917218075006142354L, -585111493186873384L, -8816887057818126262L, 4625710209505916338L}).toString());
                throw new RemoteException();
            }
        }
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{-5202044291596344529L}).toString(), zzV(str, zzlVar, str2), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), adSize, this.zzk), new zzbtq(this, zzbtbVar));
            } catch (Throwable th2) {
                zzcec.zzh(new ObfuscatedString(new long[]{5050367259505048863L}).toString(), th2);
                zzbss.zza(iObjectWrapper, th2, new ObfuscatedString(new long[]{7896533213534104677L, 9006283839421819902L, 7127053952940651673L, 6105664128083842684L}).toString());
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        Object obj = this.zza;
        if (obj instanceof Adapter) {
            zzcec.zze(new ObfuscatedString(new long[]{799022996328556669L, 8989471465611448769L, 2176618067989283264L, -1297094274132592126L, 2855219828434698181L, -742919327956199836L, -405668890629234379L}).toString());
            try {
                Adapter adapter = (Adapter) this.zza;
                adapter.loadInterscrollerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{-6337101181925571639L}).toString(), zzV(str, zzlVar, str2), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), com.google.android.gms.ads.zzb.zze(zzqVar.zze, zzqVar.zzb), new ObfuscatedString(new long[]{5152083068917928001L}).toString()), new zzbto(this, zzbtbVar, adapter));
                return;
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-1576964006369236543L}).toString(), e);
                zzbss.zza(iObjectWrapper, e, new ObfuscatedString(new long[]{7088886878736076547L, 4380882701140519287L, 6062609522215579228L, 7795342532031227916L, -1311823268260824576L}).toString());
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = obj.getClass().getCanonicalName();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{624584487536639566L, 2201808143266600554L, -1681597363611796586L, -663737588278377994L}).toString());
        m3341xc20437a5.append(canonicalName2);
        zzcec.zzj(m3341xc20437a5.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbtb zzbtbVar) {
        zzy(iObjectWrapper, zzlVar, str, null, zzbtbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar) {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        if (!(obj instanceof MediationInterstitialAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-9134265840247243513L, -4377099753037153662L}).toString());
            m3341xc20437a5.append(canonicalName2);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2337647819066476966L, -1119971908933453959L, 3355707080552727501L, 1076044389827866692L}).toString());
            m3341xc20437a5.append(canonicalName3);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        zzcec.zze(new ObfuscatedString(new long[]{-4013301833017563357L, -7703584786753222439L, 2807697564021184515L, 4789370778370477162L, 4873863171173481308L, -713644390375023884L}).toString());
        Object obj2 = this.zza;
        if (obj2 instanceof MediationInterstitialAdapter) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) obj2;
                List list = zzlVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = zzlVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                zzbtn zzbtnVar = new zzbtn(date, zzlVar.zzd, hashSet, zzlVar.zzk, zzW(zzlVar), zzlVar.zzg, zzlVar.zzr, zzlVar.zzt, zzX(str, zzlVar));
                Bundle bundle2 = zzlVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationInterstitialAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzbtx(zzbtbVar), zzV(str, zzlVar, str2), zzbtnVar, bundle);
                return;
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{2242160528659945587L}).toString(), th);
                zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{3863822724420771108L, -5419007198531505598L, -2477525803986403191L, 2088334357942712737L, -8393062849652937819L}).toString());
                throw new RemoteException();
            }
        }
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{4467720435719118551L}).toString(), zzV(str, zzlVar, str2), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), this.zzk), new zzbtr(this, zzbtbVar));
            } catch (Throwable th2) {
                zzcec.zzh(new ObfuscatedString(new long[]{-430903598912969093L}).toString(), th2);
                zzbss.zza(iObjectWrapper, th2, new ObfuscatedString(new long[]{9073790494320755874L, 1418451945977309976L, 8642452206270306360L, -3066522971223119200L, 9207900619528104738L}).toString());
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsy
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbtb zzbtbVar, zzbjb zzbjbVar, List list) {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        Object obj = this.zza;
        if (!(obj instanceof MediationNativeAdapter) && !(obj instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = obj.getClass().getCanonicalName();
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(canonicalName);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-7269047909017019744L, -4821623217838506013L}).toString());
            m3341xc20437a5.append(canonicalName2);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{5089098456298664922L, -1268809839528561591L, 4633111027455433381L, 7662526006457006466L}).toString());
            m3341xc20437a5.append(canonicalName3);
            zzcec.zzj(m3341xc20437a5.toString());
            throw new RemoteException();
        }
        zzcec.zze(new ObfuscatedString(new long[]{6271134710815150455L, -1667368460869093524L, -4287157567492925913L, -1259438564011734319L, -1763981261942455946L, -1773422289368510539L}).toString());
        Object obj2 = this.zza;
        if (obj2 instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj2;
                List list2 = zzlVar.zze;
                if (list2 != null) {
                    hashSet = new HashSet(list2);
                } else {
                    hashSet = null;
                }
                long j = zzlVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                zzbtz zzbtzVar = new zzbtz(date, zzlVar.zzd, hashSet, zzlVar.zzk, zzW(zzlVar), zzlVar.zzg, zzbjbVar, list, zzlVar.zzr, zzlVar.zzt, zzX(str, zzlVar));
                Bundle bundle2 = zzlVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationNativeAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                this.zzb = new zzbtx(zzbtbVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzb, zzV(str, zzlVar, str2), zzbtzVar, bundle);
                return;
            } catch (Throwable th) {
                zzcec.zzh(new ObfuscatedString(new long[]{3328965695919586268L}).toString(), th);
                zzbss.zza(iObjectWrapper, th, new ObfuscatedString(new long[]{5566144034321892283L, 7867780350733797353L, 8079232113633796657L, 7454342893752901876L}).toString());
                throw new RemoteException();
            }
        }
        if (obj2 instanceof Adapter) {
            try {
                ((Adapter) obj2).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), new ObfuscatedString(new long[]{6138702207127395864L}).toString(), zzV(str, zzlVar, str2), zzU(zzlVar), zzW(zzlVar), zzlVar.zzk, zzlVar.zzg, zzlVar.zzt, zzX(str, zzlVar), this.zzk, zzbjbVar), new zzbts(this, zzbtbVar));
            } catch (Throwable th2) {
                zzcec.zzh(new ObfuscatedString(new long[]{-5424001127241626899L}).toString(), th2);
                zzbss.zza(iObjectWrapper, th2, new ObfuscatedString(new long[]{-6719743000192303183L, 5069558185370703478L, 414736619362341609L, -904025827449985910L}).toString());
                throw new RemoteException();
            }
        }
    }

    public zzbtv(@NonNull MediationAdapter mediationAdapter) {
        this.zza = mediationAdapter;
    }
}
