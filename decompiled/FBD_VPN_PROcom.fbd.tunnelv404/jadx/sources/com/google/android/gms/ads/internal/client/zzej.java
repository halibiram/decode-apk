package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhy;
import com.google.android.gms.internal.ads.zzbpd;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbsn;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfxt;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzej {
    private static zzej zza;
    private zzco zzg;
    private final Object zzb = new Object();
    private boolean zzd = false;
    private boolean zze = false;
    private final Object zzf = new Object();

    @Nullable
    private OnAdInspectorClosedListener zzh = null;

    @NonNull
    private RequestConfiguration zzi = new RequestConfiguration.Builder().build();
    private final ArrayList zzc = new ArrayList();

    private zzej() {
    }

    private final void zzA(Context context) {
        if (this.zzg == null) {
            this.zzg = (zzco) new zzaq(zzay.zza(), context).zzd(context, false);
        }
    }

    private final void zzB(@NonNull RequestConfiguration requestConfiguration) {
        try {
            this.zzg.zzu(new zzff(requestConfiguration));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{6734327008109448975L, -6632823835856636677L, -3009820806035480269L, -808934069705909310L, -1271079710830544530L, -6945892599379155822L, 9123827044665027321L}).toString(), e);
        }
    }

    public static zzej zzf() {
        zzej zzejVar;
        synchronized (zzej.class) {
            try {
                if (zza == null) {
                    zza = new zzej();
                }
                zzejVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzejVar;
    }

    public static InitializationStatus zzy(List list) {
        AdapterStatus.State state;
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzbpd zzbpdVar = (zzbpd) it.next();
            String str = zzbpdVar.zza;
            if (zzbpdVar.zzb) {
                state = AdapterStatus.State.READY;
            } else {
                state = AdapterStatus.State.NOT_READY;
            }
            hashMap.put(str, new zzbpl(state, zzbpdVar.zzd, zzbpdVar.zzc));
        }
        return new zzbpm(hashMap);
    }

    private final void zzz(Context context, @Nullable String str) {
        try {
            zzbsn.zza().zzb(context, null);
            this.zzg.zzk();
            this.zzg.zzl(null, ObjectWrapper.wrap(null));
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-8422045101352886212L, 7202192195118950120L, 2093777022128556988L, 7027327248913433233L, -7425225086424116470L, -3272040267351558114L, -8494183035435751390L}).toString(), e);
        }
    }

    public final float zza() {
        synchronized (this.zzf) {
            zzco zzcoVar = this.zzg;
            float f = 1.0f;
            if (zzcoVar == null) {
                return 1.0f;
            }
            try {
                f = zzcoVar.zze();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-659737208255199691L, -6650989827067967053L, 1244241297873192244L, -5842582861814212504L, 8173530708195794871L}).toString(), e);
            }
            return f;
        }
    }

    @NonNull
    public final RequestConfiguration zzc() {
        return this.zzi;
    }

    public final InitializationStatus zze() {
        boolean z;
        InitializationStatus zzy;
        synchronized (this.zzf) {
            try {
                if (this.zzg != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{5362791087058036563L, -1313277036886418497L, -3570494021888368321L, 4141796604773147134L, -1257470479211180442L, -5091091094755609126L, 5385009045197664687L, 6918818885130160716L, -3491310080527907537L, -5655445040622007901L, -3252367902586005401L}).toString());
                try {
                    zzy = zzy(this.zzg.zzg());
                } catch (RemoteException unused) {
                    zzcec.zzg(new ObfuscatedString(new long[]{-3796980882862132839L, 8831717797271684063L, -8058767071806910432L, 4368302268675392995L, -3379770901294828289L, 442197383243639726L}).toString());
                    return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzeb
                        @Override // com.google.android.gms.ads.initialization.InitializationStatus
                        public final Map getAdapterStatusMap() {
                            HashMap hashMap = new HashMap();
                            hashMap.put(new ObfuscatedString(new long[]{-5147807970757020650L, -6735533883528084149L, 9172627334838955720L, -7759910507025349196L, 4372868125326484545L, 5005741798199496245L}).toString(), new zzee(zzej.this));
                            return hashMap;
                        }
                    };
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzy;
    }

    public final String zzh() {
        boolean z;
        String zzc;
        synchronized (this.zzf) {
            try {
                if (this.zzg != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{4600710785331130045L, 4863187229243763135L, 8547008390234915028L, 7162766664985736604L, 879572458992887356L, -8374128311272958524L, -5121110233315484144L, 5504101370031757782L, 2902342592653461484L, 403535371899665464L}).toString());
                try {
                    zzc = zzfxt.zzc(this.zzg.zzf());
                } catch (RemoteException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{5812593871692168752L, -5671748941700069844L, -6962773886757983099L, -379066175948050109L, -8937356217929447605L}).toString(), e);
                    return new ObfuscatedString(new long[]{-6161413519407797872L}).toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzc;
    }

    public final void zzl(Context context) {
        synchronized (this.zzf) {
            zzA(context);
            try {
                this.zzg.zzi();
            } catch (RemoteException unused) {
                zzcec.zzg(new ObfuscatedString(new long[]{986850935643021931L, -5429701600827444308L, 607696748932754369L, 5069246879173681042L, -5227894156432993479L, 6419770785515083565L, 7877339362892548714L, -8955108530078855445L}).toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008c A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, RemoteException -> 0x0061, blocks: (B:26:0x0035, B:28:0x0055, B:31:0x007b, B:33:0x008c, B:35:0x009e, B:36:0x00f9, B:39:0x00ba, B:41:0x00c8, B:43:0x00da, B:44:0x00e5, B:45:0x0063, B:49:0x0069), top: B:25:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c8 A[Catch: all -> 0x005e, TryCatch #2 {all -> 0x005e, RemoteException -> 0x0061, blocks: (B:26:0x0035, B:28:0x0055, B:31:0x007b, B:33:0x008c, B:35:0x009e, B:36:0x00f9, B:39:0x00ba, B:41:0x00c8, B:43:0x00da, B:44:0x00e5, B:45:0x0063, B:49:0x0069), top: B:25:0x0035 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzm(Context context, @Nullable String str, @Nullable OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.zzb) {
            try {
                if (this.zzd) {
                    if (onInitializationCompleteListener != null) {
                        this.zzc.add(onInitializationCompleteListener);
                    }
                    return;
                }
                if (this.zze) {
                    if (onInitializationCompleteListener != null) {
                        onInitializationCompleteListener.onInitializationComplete(zze());
                    }
                    return;
                }
                this.zzd = true;
                if (onInitializationCompleteListener != null) {
                    this.zzc.add(onInitializationCompleteListener);
                }
                if (context != null) {
                    synchronized (this.zzf) {
                        String str2 = null;
                        try {
                            zzA(context);
                            this.zzg.zzs(new zzei(this, null));
                            this.zzg.zzo(new zzbsr());
                        } catch (RemoteException e) {
                            zzcec.zzk(new ObfuscatedString(new long[]{-4504302139674515843L, 7395897634799189329L, -5958290067482577923L, 1623566390770120257L, -8985451795548595427L, -7231396937704329591L, -8457039142426184374L}).toString(), e);
                        } finally {
                        }
                        if (this.zzi.getTagForChildDirectedTreatment() == -1) {
                            if (this.zzi.getTagForUnderAgeOfConsent() != -1) {
                            }
                            zzbgc.zza(context);
                            if (((Boolean) zzbhy.zza.zze()).booleanValue()) {
                                if (((Boolean) zzba.zzc().zza(zzbgc.zzkF)).booleanValue()) {
                                    zzcec.zze(new ObfuscatedString(new long[]{4552764576809399901L, 2546579489403865025L, -5471784334536520999L, 7367480945859058223L, -7276179662586307361L}).toString());
                                    zzcdr.zza.execute(new Runnable(context, str2) { // from class: com.google.android.gms.ads.internal.client.zzec
                                        public final /* synthetic */ Context zzb;

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzej.this.zzn(this.zzb, null);
                                        }
                                    });
                                }
                            }
                            if (((Boolean) zzbhy.zzb.zze()).booleanValue()) {
                                if (((Boolean) zzba.zzc().zza(zzbgc.zzkF)).booleanValue()) {
                                    zzcdr.zzb.execute(new Runnable(context, str2) { // from class: com.google.android.gms.ads.internal.client.zzed
                                        public final /* synthetic */ Context zzb;

                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            zzej.this.zzo(this.zzb, null);
                                        }
                                    });
                                }
                            }
                            zzcec.zze(new ObfuscatedString(new long[]{4251863977675269809L, 8205963050715512983L, -1930381935155119410L, -4983283560489718021L, 510239184509377965L}).toString());
                            zzz(context, null);
                        }
                        zzB(this.zzi);
                        zzbgc.zza(context);
                        if (((Boolean) zzbhy.zza.zze()).booleanValue()) {
                        }
                        if (((Boolean) zzbhy.zzb.zze()).booleanValue()) {
                        }
                        zzcec.zze(new ObfuscatedString(new long[]{4251863977675269809L, 8205963050715512983L, -1930381935155119410L, -4983283560489718021L, 510239184509377965L}).toString());
                        zzz(context, null);
                    }
                    return;
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4630371446650480407L, 4255003387143194201L, 7176141781225603146L, 8478018728739551215L}).toString());
            } finally {
            }
        }
    }

    public final /* synthetic */ void zzn(Context context, String str) {
        synchronized (this.zzf) {
            zzz(context, null);
        }
    }

    public final /* synthetic */ void zzo(Context context, String str) {
        synchronized (this.zzf) {
            zzz(context, null);
        }
    }

    public final void zzp(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.zzf) {
            zzA(context);
            this.zzh = onAdInspectorClosedListener;
            try {
                this.zzg.zzm(new zzeg(null));
            } catch (RemoteException unused) {
                zzcec.zzg(new ObfuscatedString(new long[]{-3799724592883636511L, -8917932240227571060L, -8226202695290062863L, 4900332541948539742L, 3289104250707499088L}).toString());
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, new ObfuscatedString(new long[]{2037360688760169966L, -8037093559891381069L, 2792435330083649823L, -816252805578806804L, -5701897529429860024L, 742434890604017055L}).toString(), new ObfuscatedString(new long[]{8946255996511885784L, -7406117869862658500L, 5272367503091176193L, -5044613030065569639L, -7851463974118977503L}).toString()));
                }
            }
        }
    }

    public final void zzq(Context context, String str) {
        boolean z;
        synchronized (this.zzf) {
            if (this.zzg != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-4584121984924996238L, -7994791021685811290L, 1327257200398658813L, 564344843498855413L, -3763268472223753694L, -4822017945491729838L, 4967389338272960315L, 8188594367274543790L, -9103257223829972445L, 8449307868645297792L}).toString());
            try {
                this.zzg.zzn(ObjectWrapper.wrap(context), str);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-974752452158091718L, -3182861937498948548L, 2935549627601657022L, -4994272216804245753L, -4035011662979109105L}).toString(), e);
            }
        }
    }

    public final void zzr(Class cls) {
        synchronized (this.zzf) {
            try {
                this.zzg.zzh(cls.getCanonicalName());
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-5232161562405785896L, 2560403256922985578L, 778984541938982538L, -714311992733383773L, -7080122445729671125L}).toString(), e);
            }
        }
    }

    public final void zzs(boolean z) {
        boolean z2;
        synchronized (this.zzf) {
            if (this.zzg != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkState(z2, new ObfuscatedString(new long[]{491408415497542132L, 3854323883124596247L, -4500475695609238662L, -6072256511012012146L, 7224858864974993591L, -6116806457893717568L, 2646263937165697876L, -5569489941273773254L, -3418106335516018361L, -7205997349103932030L}).toString());
            try {
                this.zzg.zzp(z);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{5727356551996896379L, 809104982525690776L, -6990250717881915024L, -9091585045990236369L, 875350557234119653L}).toString(), e);
            }
        }
    }

    public final void zzt(float f) {
        boolean z;
        boolean z2 = true;
        if (f >= 0.0f && f <= 1.0f) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3907700365233674682L, -2200207153173175573L, 2090347925036323576L, -6469203420085487866L, -631578213032518914L, 4245782109778010670L, 8426850390390770843L, -167683281377346714L, -8304504327283116343L}).toString());
        synchronized (this.zzf) {
            if (this.zzg == null) {
                z2 = false;
            }
            Preconditions.checkState(z2, new ObfuscatedString(new long[]{4714513939982362375L, -6148602513702670307L, -3013772854926133534L, 7227457504487324299L, -4856045264796169739L, 3096966203789720397L, 2728414140950817446L, -4825668969903209102L, 6117759714584988078L, -2805750038909737289L}).toString());
            try {
                this.zzg.zzq(f);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-6173764109690808200L, -1764928578339456425L, -5574345978263098397L, 5891287830999091999L, 4870337684661978390L}).toString(), e);
            }
        }
    }

    public final void zzu(String str) {
        boolean z;
        synchronized (this.zzf) {
            if (this.zzg != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{5721974017969696031L, -6299679478816770563L, -6999214875767217315L, 7926530632285517784L, -2225735170347089046L, -174659920139847117L, 3140633660303733570L, -5481747694911958373L, 3319738357045108160L, 8734682165210451136L}).toString());
            try {
                this.zzg.zzt(str);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{5878272093049770324L, -439664693847077649L, -1345398466544376609L, 2794511007877640390L}).toString(), e);
            }
        }
    }

    public final void zzv(@NonNull RequestConfiguration requestConfiguration) {
        boolean z;
        if (requestConfiguration != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-5741626745628039027L, -2806364208876696464L, 3178284557991746447L, 2424726305308016445L, -6949408435250659721L, -7669351514832982672L}).toString());
        synchronized (this.zzf) {
            try {
                RequestConfiguration requestConfiguration2 = this.zzi;
                this.zzi = requestConfiguration;
                if (this.zzg == null) {
                    return;
                }
                if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                    zzB(requestConfiguration);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzw() {
        synchronized (this.zzf) {
            zzco zzcoVar = this.zzg;
            boolean z = false;
            if (zzcoVar == null) {
                return false;
            }
            try {
                z = zzcoVar.zzv();
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-478207994073818079L, 1581188916114403730L, -608498261231864938L, 1055488624188238150L, -9060765377877547570L}).toString(), e);
            }
            return z;
        }
    }

    public final boolean zzx(boolean z) {
        boolean z2;
        String obfuscatedString;
        synchronized (this.zzf) {
            try {
                if (this.zzg != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.checkState(z2, new ObfuscatedString(new long[]{-7088586014141699555L, -4142876820060606065L, 3010232837114798240L, -4120419698547800724L, -4671084222717516425L, 6797761647660855325L, -5167137080932404639L, -9113315598987092565L, -2109289022246917055L, 1502102712047047409L, -8140901840208537814L, -2934417939460713459L, -7737559515091696144L}).toString());
                try {
                    this.zzg.zzj(z);
                } catch (RemoteException e) {
                    if (z) {
                        obfuscatedString = new ObfuscatedString(new long[]{-8947958543258554109L, 1349456923728851294L}).toString();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{2794984534844839237L, 5397889324775984284L}).toString();
                    }
                    zzcec.zzh(new ObfuscatedString(new long[]{-8638201848014146524L, -2605809790872894793L, 1973629182912787642L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{9192120067013041175L, 164767580968531180L, -4598804094254640255L, 4784751175718812431L, -5539731774110845357L}).toString(), e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }
}
