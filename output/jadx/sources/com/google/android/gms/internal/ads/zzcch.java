package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.dynamite.DynamiteModule;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcch {
    private final AtomicReference zzb = new AtomicReference(null);
    private final Object zzc = new Object();

    @Nullable
    private String zzd = null;

    @VisibleForTesting
    final AtomicBoolean zza = new AtomicBoolean(false);
    private final AtomicInteger zze = new AtomicInteger(-1);
    private final AtomicReference zzf = new AtomicReference(null);
    private final AtomicReference zzg = new AtomicReference(null);
    private final ConcurrentMap zzh = new ConcurrentHashMap(9);
    private final AtomicReference zzi = new AtomicReference(null);
    private final BlockingQueue zzj = new ArrayBlockingQueue(20);
    private final Object zzk = new Object();

    @VisibleForTesting
    public static final boolean zzq(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzah)).booleanValue()) {
            return false;
        }
        if (DynamiteModule.getLocalVersion(context, new ObfuscatedString(new long[]{-5851693071873935575L, 1166740214547148744L, 6568979246969120596L, -1536938635386804637L, -3900173840185403072L, -4303788416851293863L}).toString()) < ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzai)).intValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaj)).booleanValue()) {
            try {
                context.getClassLoader().loadClass(new ObfuscatedString(new long[]{5853205382618451788L, 4632827218112660259L, 3218446678306912171L, -6871502973866609002L, 8571700215177845437L, 5151666611508747964L, -1551790301536866556L}).toString());
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    @Nullable
    private final Object zzr(String str, Context context) {
        if (!zzw(context, new ObfuscatedString(new long[]{-499774468759165835L, 690369903576362496L, 2621587651802139815L, 777675073143979478L, -6336230220201050139L, 5914943883743489817L, -6985725044495006057L, -5742232352469610870L}).toString(), this.zzf, true)) {
            return null;
        }
        try {
            return zzs(context, str).invoke(this.zzf.get(), null);
        } catch (Exception unused) {
            zzv(str, true);
            return null;
        }
    }

    @Nullable
    private final Method zzs(Context context, String str) {
        Method method = (Method) this.zzh.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass(new ObfuscatedString(new long[]{-4168209434346671651L, -2964225531962341636L, -7335843507853572431L, 2008552266276932987L, 249309553176178944L, -7139445545965496938L, -5892527267867435398L, 6175026692854548096L}).toString()).getDeclaredMethod(str, null);
            this.zzh.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            zzv(str, false);
            return null;
        }
    }

    private final void zzt(Context context, String str, String str2) {
        if (!zzw(context, new ObfuscatedString(new long[]{-8034976111124303526L, 2415094734793774007L, -4402162290066611613L, -2160231442342596846L, -1845717836967135742L, -5977037143151234468L, 6442273015889395658L, -8945796238372515578L}).toString(), this.zzf, true)) {
            return;
        }
        Method method = (Method) this.zzh.get(str2);
        if (method == null) {
            try {
                method = context.getClassLoader().loadClass(new ObfuscatedString(new long[]{-7358267423028415513L, 4309439233424076426L, -5901742102888185117L, 6554216606106326470L, 4043568745782969430L, -6167607076161547634L, -3728682155674840981L, 6841335869393437778L}).toString()).getDeclaredMethod(str2, String.class);
                this.zzh.put(str2, method);
            } catch (Exception unused) {
                zzv(str2, false);
                method = null;
            }
        }
        try {
            method.invoke(this.zzf.get(), str);
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1649617301976215241L, -1016681824193794173L, 2130545672855893768L, 4700609367240085230L}).toString() + str2 + new ObfuscatedString(new long[]{-3940120774932244925L, 2506433819185535857L, -6425063633665528465L}).toString() + str);
        } catch (Exception unused2) {
            zzv(str2, false);
        }
    }

    private final void zzu(Context context, String str, String str2, @Nullable Bundle bundle) {
        if (zzp(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong(new ObfuscatedString(new long[]{2305274012129247345L, -4984593747117106515L}).toString(), Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-523586422572325840L, -126802645047417476L, 6253009866316518829L, -562699801190663101L}).toString().concat(String.valueOf(str2)), e);
            }
            if (new ObfuscatedString(new long[]{1873878287171882780L, -8669037195566683206L}).toString().equals(str)) {
                bundle2.putInt(new ObfuscatedString(new long[]{6079044916905653611L, 4214855722778775979L}).toString(), 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            if (zzw(context, new ObfuscatedString(new long[]{4904175178725662405L, 9141424738122668570L, -6278488890220829906L, 3327893380556973311L, -7644875117031925937L, -8877227038369818608L, -7915985788892762272L, -6046416598286897167L}).toString(), this.zzf, true)) {
                Method method = (Method) this.zzh.get(new ObfuscatedString(new long[]{3419304990689995584L, -5510551345565927447L, -4266112652474248037L}).toString());
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass(new ObfuscatedString(new long[]{-8473870727217923304L, 1039290224286939840L, 595145181629579453L, 8155173420363926926L, -8726064372183245243L, -7595036297523342287L, 7139672455112992169L, 6125404351587362085L}).toString()).getDeclaredMethod(new ObfuscatedString(new long[]{5312157751116458544L, 7425420658832208429L, 7821191373496815815L}).toString(), String.class, String.class, Bundle.class);
                        this.zzh.put(new ObfuscatedString(new long[]{2147188261795617242L, -1999004547349059840L, -1626990337233499972L}).toString(), method);
                    } catch (Exception unused) {
                        zzv(new ObfuscatedString(new long[]{-1911540108027684182L, -4974703813834415106L, -6902292019728054443L}).toString(), true);
                        method = null;
                    }
                }
                try {
                    method.invoke(this.zzf.get(), new ObfuscatedString(new long[]{4219755254513711018L, -85163036514576148L}).toString(), str, bundle2);
                } catch (Exception unused2) {
                    zzv(new ObfuscatedString(new long[]{8853704459439518633L, -2161725167064889802L, -800106469815296640L}).toString(), true);
                }
            }
        }
    }

    private final void zzv(String str, boolean z) {
        if (!this.zza.get()) {
            zzcec.zzj(new ObfuscatedString(new long[]{-6343354602185527510L, -785583984123591581L, 2302760905002369170L, 3506872922486330732L}).toString() + str + new ObfuscatedString(new long[]{8856386478976048548L, -2245767009483155662L}).toString());
            if (z) {
                zzcec.zzj(new ObfuscatedString(new long[]{-5105838002653283695L, 8404118630905596707L, 3937340500863217493L, 5642238306170671493L, 6409312183345816451L, -3192589362484338569L, -3983435455174318564L, 4830091032286935126L, 3425711222677437019L, -2310340462730454161L, -2178749994291512123L, 8951493383455972687L, -5367360717513647164L, 184631131663713885L, 1464631964175282700L, 3345004121025699024L, 9189529014902185503L, -4051690533709975743L, 2629424001353500057L, -3035158898988647438L, 1592177426074916997L, -1344914891332576449L, -8110937857762289728L}).toString());
                this.zza.set(true);
            }
        }
    }

    private final boolean zzw(Context context, String str, AtomicReference atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                zzcce.zza(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod(new ObfuscatedString(new long[]{5679874700099782763L, 9144042945847539235L, 2084405643271192175L}).toString(), Context.class).invoke(null, context));
            } catch (Exception unused) {
                zzv(new ObfuscatedString(new long[]{-3780763490868476336L, 8840685270936574434L, -7188460248715201841L}).toString(), z);
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final String zza(Context context) {
        Object zzr;
        if (zzp(context) && (zzr = zzr(new ObfuscatedString(new long[]{-5922216357079094047L, -8296174454785991338L, -6297497609541803648L}).toString(), context)) != null) {
            return zzr.toString();
        }
        return null;
    }

    @Nullable
    public final String zzb(final Context context) {
        ExecutorService threadPoolExecutor;
        if (!zzp(context)) {
            return null;
        }
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaf)).longValue();
        if (longValue < 0) {
            return (String) zzr(new ObfuscatedString(new long[]{6265020582411906533L, 391488958454899795L, -4947450882558579190L}).toString(), context);
        }
        if (this.zzb.get() == null) {
            if (ClientLibraryUtils.isPackageSide()) {
                threadPoolExecutor = zzfts.zza().zzc(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzag)).intValue(), new zzccg(this), 2);
            } else {
                zzbfu zzbfuVar = zzbgc.zzag;
                threadPoolExecutor = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzccg(this));
            }
            zzcce.zza(this.zzb, null, threadPoolExecutor);
        }
        try {
            return (String) ((ExecutorService) this.zzb.get()).submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzccf
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzcch.this.zze(context);
                }
            }).get(longValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused) {
            return new ObfuscatedString(new long[]{-6222839239594611219L, 1952895887844755702L}).toString();
        } catch (Exception unused2) {
            return null;
        }
    }

    public final String zzc(Context context) {
        if (zzp(context) && zzw(context, new ObfuscatedString(new long[]{-880117106181414769L, 1032282577562677875L, -7835591803268515694L, 6607058745525972096L, -2492774515825660950L, 6701196150094160961L, 8973876015835799679L, -6119579964457820959L}).toString(), this.zzf, true)) {
            try {
                String str = (String) zzs(context, new ObfuscatedString(new long[]{5071522733662119399L, -7072531938684975536L, -2309924706097671686L, -2830075975083117309L}).toString()).invoke(this.zzf.get(), null);
                if (str == null) {
                    str = (String) zzs(context, new ObfuscatedString(new long[]{-6621230467383317324L, -2158364327677618269L, -7901700887492705007L, -2545118547232109821L}).toString()).invoke(this.zzf.get(), null);
                }
                if (str == null) {
                    return new ObfuscatedString(new long[]{-3939655055121366292L}).toString();
                }
                return str;
            } catch (Exception unused) {
                zzv(new ObfuscatedString(new long[]{-7686936112217618180L, 3222887042756590618L, -6567873903749654666L, 9035855417683965312L}).toString(), false);
                return new ObfuscatedString(new long[]{3825104863795756132L}).toString();
            }
        }
        return new ObfuscatedString(new long[]{-2688956274622466416L}).toString();
    }

    @Nullable
    public final String zzd(Context context) {
        if (!zzp(context)) {
            return null;
        }
        synchronized (this.zzc) {
            try {
                String str = this.zzd;
                if (str != null) {
                    return str;
                }
                String str2 = (String) zzr(new ObfuscatedString(new long[]{-995758608569475057L, 2845584670169956158L, -3977066058791722564L}).toString(), context);
                this.zzd = str2;
                return str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ String zze(Context context) {
        return (String) zzr(new ObfuscatedString(new long[]{6064591873521375268L, 7367952573870283411L, -6632245494151024697L}).toString(), context);
    }

    public final void zzf(Context context, String str) {
        if (!zzp(context)) {
            return;
        }
        zzt(context, str, new ObfuscatedString(new long[]{3106392230931514769L, 4915657297930705502L, -7724186298916624345L, -8932426115596093939L}).toString());
    }

    public final void zzg(Context context, String str) {
        if (!zzp(context)) {
            return;
        }
        zzt(context, str, new ObfuscatedString(new long[]{8087950825515253927L, 5730449703183681891L, 7057559982395996323L, 8902037714181413347L}).toString());
    }

    public final void zzh(Context context, String str) {
        zzu(context, new ObfuscatedString(new long[]{7752576428635797612L, -5764350865113495224L}).toString(), str, null);
    }

    public final void zzi(Context context, String str) {
        zzu(context, new ObfuscatedString(new long[]{7330154647159515436L, 5221692247063228793L}).toString(), str, null);
    }

    public final void zzj(Context context, String str) {
        zzu(context, new ObfuscatedString(new long[]{7872747130220080721L, -3083659142177920507L}).toString(), str, null);
    }

    public final void zzk(Context context, String str) {
        zzu(context, new ObfuscatedString(new long[]{4143010618181951086L, -6042129533714485800L}).toString(), str, null);
    }

    public final void zzl(Context context, String str, String str2, String str3, int i) {
        if (!zzp(context)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{-3317911568341574379L, -2759993554767214497L}).toString(), str2);
        bundle.putString(new ObfuscatedString(new long[]{-7812328691785493087L, 1187720688649558037L, -5634265967102428416L}).toString(), str3);
        bundle.putInt(new ObfuscatedString(new long[]{4322416861058527785L, 6079357030960171020L, 5437785901828019093L}).toString(), i);
        zzu(context, new ObfuscatedString(new long[]{3449041004642589987L, -6048695639307122482L}).toString(), str, bundle);
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8146000644573049748L, -2489953149469435430L, 1226728223371632785L, 4996047521863085590L, 6133169377200852514L, 172905136277358045L, 618384514253945279L}).toString() + str3 + new ObfuscatedString(new long[]{7467854489744120145L, 9199924966766284015L, -4939033024895842758L}).toString() + i);
    }

    public final void zzm(Context context, com.google.android.gms.ads.internal.client.zzl zzlVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzam)).booleanValue() && zzp(context) && zzq(context)) {
            synchronized (this.zzk) {
            }
        }
    }

    public final void zzn(Context context, com.google.android.gms.ads.internal.client.zzff zzffVar) {
        zzcci.zzd(context).zzb().zzc(zzffVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzam)).booleanValue() && zzp(context) && zzq(context)) {
            synchronized (this.zzk) {
            }
        }
    }

    @Deprecated
    public final void zzo(Context context, String str) {
        if (zzp(context) && (context instanceof Activity) && zzw(context, new ObfuscatedString(new long[]{-7787782119547398049L, -8380340707701177954L, 6829593599817352911L, -2487348617957434916L, 3133577591279487422L, -2849810974463761539L, -7160346975782777364L}).toString(), this.zzg, false)) {
            ConcurrentMap concurrentMap = this.zzh;
            String obfuscatedString = new ObfuscatedString(new long[]{3605398991908308222L, -8636699846899090308L, 1502563068133353793L}).toString();
            Method method = (Method) concurrentMap.get(obfuscatedString);
            if (method == null) {
                try {
                    method = context.getClassLoader().loadClass(new ObfuscatedString(new long[]{-7235430597770259505L, 3123122731272833854L, -4504782898282214136L, -5835081042919740731L, 1374164255856315369L, -2928566726139919649L, -6905310529547270753L}).toString()).getDeclaredMethod(obfuscatedString, Activity.class, String.class, String.class);
                    this.zzh.put(obfuscatedString, method);
                } catch (Exception unused) {
                    zzv(obfuscatedString, false);
                    method = null;
                }
            }
            try {
                method.invoke(this.zzg.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception unused2) {
                zzv(new ObfuscatedString(new long[]{-4604209374834190826L, 6432699731472538454L, -9143854524563443800L}).toString(), false);
            }
        }
    }

    public final boolean zzp(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaa)).booleanValue() && !this.zza.get()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzak)).booleanValue()) {
                return true;
            }
            if (this.zze.get() == -1) {
                com.google.android.gms.ads.internal.client.zzay.zzb();
                if (!zzcdv.zzs(context, 12451000)) {
                    com.google.android.gms.ads.internal.client.zzay.zzb();
                    if (zzcdv.zzt(context)) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-7502515877259629468L, 4056284881190422120L, 2145989776695939773L, 1481691410928500986L, -7750057587503344926L, -7968924710898559107L, 376761120162961061L, 6441833433292269161L, 8807820306884191045L, -7420345758486650404L, -7940901180911491047L, 5921382278697512112L, 5344757137576388045L, -8674325230744385081L, 1854749165221447424L, 8299975481678346386L, 8435620234511180001L, -3440435994248775892L, -7525787918909877197L, 3945852723262646437L, -3147128455970887039L}).toString());
                        this.zze.set(0);
                    }
                }
                this.zze.set(1);
            }
            if (this.zze.get() == 1) {
                return true;
            }
        }
        return false;
    }
}
