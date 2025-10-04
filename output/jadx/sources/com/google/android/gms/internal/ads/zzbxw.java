package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbxw implements zzbxy {

    @VisibleForTesting
    public static zzbxy zza;

    @VisibleForTesting
    static zzbxy zzb;

    @VisibleForTesting
    static zzbxy zzc;
    private static final Object zzd = new Object();
    private final Context zzf;
    private final ExecutorService zzh;
    private final zzcei zzi;
    private final Object zze = new Object();
    private final WeakHashMap zzg = new WeakHashMap();

    public zzbxw(Context context, zzcei zzceiVar) {
        zzfts.zza();
        this.zzh = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.zzf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzi = zzceiVar;
    }

    public static zzbxy zza(Context context) {
        synchronized (zzd) {
            try {
                if (zza == null) {
                    if (((Boolean) zzbij.zze.zze()).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhF)).booleanValue()) {
                            zza = new zzbxw(context, zzcei.zza());
                        }
                    }
                    zza = new zzbxx();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zza;
    }

    public static zzbxy zzb(Context context, zzcei zzceiVar) {
        synchronized (zzd) {
            if (zzc == null) {
                if (((Boolean) zzbij.zze.zze()).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhF)).booleanValue()) {
                        zzbxw zzbxwVar = new zzbxw(context, zzceiVar);
                        Thread thread = Looper.getMainLooper().getThread();
                        if (thread != null) {
                            synchronized (zzbxwVar.zze) {
                                zzbxwVar.zzg.put(thread, Boolean.TRUE);
                            }
                            thread.setUncaughtExceptionHandler(new zzbxv(zzbxwVar, thread.getUncaughtExceptionHandler()));
                        }
                        Thread.setDefaultUncaughtExceptionHandler(new zzbxu(zzbxwVar, Thread.getDefaultUncaughtExceptionHandler()));
                        zzc = zzbxwVar;
                    }
                }
                zzc = new zzbxx();
            }
        }
        return zzc;
    }

    public static zzbxy zzc(Context context) {
        synchronized (zzd) {
            try {
                if (zzb == null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhG)).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhF)).booleanValue()) {
                            zzb = new zzbxw(context, zzcei.zza());
                        }
                    }
                    zzb = new zzbxx();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzb;
    }

    public static String zzd(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zze(Throwable th) {
        return zzfxt.zzc(zzcdv.zzf(zzd(th)));
    }

    public final void zzf(Thread thread, Throwable th) {
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= zzcdv.zzo(stackTraceElement.getClassName());
                    z2 |= zzbxw.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (z && !z2) {
                zzh(th, new ObfuscatedString(new long[]{-188912511762533860L}).toString(), 1.0f);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxy
    public final void zzg(Throwable th, String str) {
        zzh(th, str, 1.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b6, code lost:
    
        if (r15.startsWith(new com.panda912.muddy.ObfuscatedString(r8).toString()) != false) goto L23;
     */
    @Override // com.google.android.gms.internal.ads.zzbxy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(Throwable th, String str, float f) {
        Throwable th2;
        Throwable th3;
        int i;
        String obfuscatedString;
        int i2;
        boolean z;
        int i3;
        String obfuscatedString2;
        int i4;
        String obfuscatedString3;
        int i5 = 2;
        Handler handler = zzcdv.zza;
        int i6 = 1;
        if (((Boolean) zzbij.zzf.zze()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable th4 = th; th4 != null; th4 = th4.getCause()) {
                linkedList.push(th4);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th5 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th5.getStackTrace();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th5.getClass().getName(), new ObfuscatedString(new long[]{-3983730894377003397L, 6159665556138768186L, 5479165444839065288L}).toString(), new ObfuscatedString(new long[]{-3501820030811013123L, -3257585028601283835L, 466504322654625220L}).toString(), i6));
                int length = stackTrace.length;
                int i7 = 0;
                boolean z2 = false;
                while (i7 < length) {
                    StackTraceElement stackTraceElement = stackTrace[i7];
                    if (zzcdv.zzo(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z2 = true;
                        i = 1;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className)) {
                            long[] jArr = new long[i5];
                            // fill-array-data instruction
                            jArr[0] = -3386249145337809374L;
                            jArr[1] = -4783151436892178902L;
                            if (!className.startsWith(new ObfuscatedString(jArr).toString())) {
                                long[] jArr2 = new long[i5];
                                // fill-array-data instruction
                                jArr2[0] = 2488991841396266784L;
                                jArr2[1] = 2690462140367415876L;
                            }
                            i = 1;
                            arrayList.add(stackTraceElement);
                        }
                        i = 1;
                        arrayList.add(new StackTraceElement(new ObfuscatedString(new long[]{6217572380264708338L, 8701997837193544480L, -5242587714161104631L}).toString(), new ObfuscatedString(new long[]{-6291714303912008195L, -6213250752331301479L, -3450126542640558729L}).toString(), new ObfuscatedString(new long[]{1384007080630793410L, 8742587224047113577L, -8948041153383816876L}).toString(), 1));
                    }
                    i7 += i;
                    i5 = 2;
                }
                if (z2) {
                    if (th2 == null) {
                        th3 = new Throwable(th5.getMessage());
                    } else {
                        th3 = new Throwable(th5.getMessage(), th2);
                    }
                    th2 = th3;
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
                i5 = 2;
                i6 = 1;
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String zzd2 = zzd(th);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziI)).booleanValue()) {
                obfuscatedString = zze(th);
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{8017952879525918379L}).toString();
            }
            double d = f;
            double random = Math.random();
            if (f > 0.0f) {
                i2 = (int) (1.0f / f);
            } else {
                i2 = 1;
            }
            if (random < d) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    z = Wrappers.packageManager(this.zzf).isCallerInstantApp();
                } catch (Throwable th6) {
                    zzcec.zzh(new ObfuscatedString(new long[]{-1835654832907362819L, 5551915643270366901L, 1922469497840216870L, 4042785045648664634L, 3358557538977997664L}).toString(), th6);
                    z = false;
                }
                try {
                    obfuscatedString2 = this.zzf.getPackageName();
                    i3 = 2;
                } catch (Throwable unused) {
                    zzcec.zzj(new ObfuscatedString(new long[]{2006705458036669887L, -262187630177760708L, 8707090837491776835L, 5910949666865905048L, 7424062489848391746L, -8678604137525272359L}).toString());
                    i3 = 2;
                    obfuscatedString2 = new ObfuscatedString(new long[]{2003407083628987617L, -5039868617778154352L}).toString();
                }
                long[] jArr3 = new long[i3];
                // fill-array-data instruction
                jArr3[0] = -3960296554860502146L;
                jArr3[1] = 9036226822421639155L;
                Uri.Builder appendQueryParameter = new Uri.Builder().scheme(new ObfuscatedString(jArr3).toString()).path(new ObfuscatedString(new long[]{1993947157079210091L, -5273148445144899221L, -3239691035500796908L, 1886571736582498552L, 6741684555729983675L, 8495207757785189456L, -1683742668703897364L}).toString()).appendQueryParameter(new ObfuscatedString(new long[]{-7987777060965527092L, -8038851277981663706L}).toString(), Boolean.toString(z)).appendQueryParameter(new ObfuscatedString(new long[]{356701639857009503L, -5237564749815852402L}).toString(), new ObfuscatedString(new long[]{-2184053556438515216L, -7815041552628152428L, 2693598450418345748L, -7586003667792346839L, -2638635616125154429L}).toString()).appendQueryParameter(new ObfuscatedString(new long[]{-8927358682034189657L, 1834122545767064181L}).toString(), Build.VERSION.RELEASE).appendQueryParameter(new ObfuscatedString(new long[]{-8130879742642644982L, -1404271962593447701L}).toString(), String.valueOf(Build.VERSION.SDK_INT));
                String str2 = Build.MANUFACTURER;
                String str3 = Build.MODEL;
                if (str3.startsWith(str2)) {
                    i4 = 2;
                } else {
                    i4 = 2;
                    str3 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8750840064995794773L, 6865712424549375923L}), AbstractC0749x8313616e.m3341xc20437a5(str2), str3);
                }
                long[] jArr4 = new long[i4];
                // fill-array-data instruction
                jArr4[0] = -107634851970123967L;
                jArr4[1] = -4516079195626259853L;
                long[] jArr5 = new long[i4];
                // fill-array-data instruction
                jArr5[0] = -1994488898493989685L;
                jArr5[1] = 6678955138094116910L;
                Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter(new ObfuscatedString(jArr4).toString(), str3).appendQueryParameter(new ObfuscatedString(jArr5).toString(), this.zzi.zza);
                long[] jArr6 = new long[i4];
                // fill-array-data instruction
                jArr6[0] = -8324056857534334222L;
                jArr6[1] = -1142564892334438284L;
                Uri.Builder appendQueryParameter3 = appendQueryParameter2.appendQueryParameter(new ObfuscatedString(jArr6).toString(), obfuscatedString2).appendQueryParameter(new ObfuscatedString(new long[]{-4474217397377014085L, 723873594195427642L, -5433648847114127530L}).toString(), name).appendQueryParameter(new ObfuscatedString(new long[]{8638305456520507449L, -57471058864800591L, 7752205546312084626L}).toString(), zzd2).appendQueryParameter(new ObfuscatedString(new long[]{-3855059521884530191L, 1687654786521392128L}).toString(), TextUtils.join(new ObfuscatedString(new long[]{-5419829613315763105L, -8563270331542868549L}).toString(), com.google.android.gms.ads.internal.client.zzba.zza().zza())).appendQueryParameter(new ObfuscatedString(new long[]{1375871550288161501L, 5899836561398708559L, -6917642882527398091L}).toString(), str).appendQueryParameter(new ObfuscatedString(new long[]{-3191675288222171936L, -4069197599146089298L}).toString(), new ObfuscatedString(new long[]{9014513266104950408L, 3873911686895076343L, -5128488006314270430L}).toString()).appendQueryParameter(new ObfuscatedString(new long[]{-3834015902914534225L, -3231835181966973266L}).toString(), new ObfuscatedString(new long[]{-7285214542966136969L, 2678833902658893490L}).toString()).appendQueryParameter(new ObfuscatedString(new long[]{8285247829933160276L, 7841804226648396681L, 1034609569903368840L}).toString(), Integer.toString(i2)).appendQueryParameter(new ObfuscatedString(new long[]{-1305496601538366465L, 7634821173131380137L}).toString(), String.valueOf(zzbij.zzc.zze())).appendQueryParameter(new ObfuscatedString(new long[]{-2172125128598204689L, 6510198497323469063L}).toString(), String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzf)));
                if (true != this.zzi.zze) {
                    obfuscatedString3 = new ObfuscatedString(new long[]{3816537656779164892L, 8735551162853400811L}).toString();
                } else {
                    obfuscatedString3 = new ObfuscatedString(new long[]{-3611032126558804758L, -7659280614961795927L}).toString();
                }
                Uri.Builder appendQueryParameter4 = appendQueryParameter3.appendQueryParameter(new ObfuscatedString(new long[]{-4688978472570226336L, -2898867646880774084L}).toString(), obfuscatedString3);
                if (!TextUtils.isEmpty(obfuscatedString)) {
                    appendQueryParameter4.appendQueryParameter(new ObfuscatedString(new long[]{8217200287018122265L, -3634656747721850608L}).toString(), obfuscatedString);
                }
                arrayList2.add(appendQueryParameter4.toString());
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    final String str4 = (String) it.next();
                    final zzceh zzcehVar = new zzceh(null);
                    this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxt
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzceh.this.zza(str4);
                        }
                    });
                }
            }
        }
    }
}
