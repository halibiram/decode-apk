package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.StrictMode;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.errorprone.annotations.CheckReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes2.dex */
public final class zzn {
    private static volatile zzag zze;
    private static Context zzg;
    static final zzl zza = new zzf(zzj.zze(new ObfuscatedString(new long[]{8869678722541797953L, 8051699135859071035L, -3219268259394325454L, 2962176249775409380L, -5991659154806954713L, 6242541178142848506L}).toString()));
    static final zzl zzb = new zzg(zzj.zze(new ObfuscatedString(new long[]{-9102318423871531341L, -6255779915734032702L, -6773498719829558311L, -4275748146017731380L, 4134559107471309211L, -931775926243533246L}).toString()));
    static final zzl zzc = new zzh(zzj.zze("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
    static final zzl zzd = new zzi(zzj.zze("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
    private static final Object zzf = new Object();

    public static zzx zza(String str, zzj zzjVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return zzh(str, zzjVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static zzx zzb(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, true);
    }

    public static zzx zzc(String str, boolean z, boolean z2, boolean z3) {
        return zzi(str, z, false, false, false);
    }

    public static /* synthetic */ String zzd(boolean z, String str, zzj zzjVar) {
        String obfuscatedString;
        if (!z && zzh(str, zzjVar, true, false).zza) {
            obfuscatedString = new ObfuscatedString(new long[]{6941584556223326410L, -4261645314659943L, -4745164542837528193L, 2691565132134304839L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4073713100793470654L, 1766797541907603269L, 8250551507093286626L}).toString();
        }
        MessageDigest zza2 = AndroidUtilsLight.zza(new ObfuscatedString(new long[]{-6204291714971496667L, -8351634267980780415L}).toString());
        Preconditions.checkNotNull(zza2);
        return String.format(new ObfuscatedString(new long[]{-4398804748027361219L, 2047217806990674916L, -3156283085184353734L, -5197429274687779684L, -4730463746761251988L, 6843867687327858781L}).toString(), obfuscatedString, str, Hex.bytesToStringLowercase(zza2.digest(zzjVar.zzf())), Boolean.valueOf(z), new ObfuscatedString(new long[]{6683172572378729445L, 8199166301729159611L, -3918456040522265641L}).toString());
    }

    public static synchronized void zze(Context context) {
        synchronized (zzn.class) {
            if (zzg == null) {
                if (context != null) {
                    zzg = context.getApplicationContext();
                }
            } else {
                new ObfuscatedString(new long[]{-4475805415445208258L, 4484556510836296252L, -1949523240183100305L, -8641112807289950710L}).toString();
                new ObfuscatedString(new long[]{2328518052033947991L, -3936943255199579070L, 2144976115105063499L, -5835844829852611356L, 1173889134381088068L, 2517000587573369107L, 800987048236233883L}).toString();
            }
        }
    }

    public static boolean zzf() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzj();
                z = zze.zzg();
            } catch (RemoteException | DynamiteModule.LoadingException unused) {
                new ObfuscatedString(new long[]{-8782824360670688263L, -7464039873069904258L, -9138060391096171994L, 8445563406809199468L}).toString();
                new ObfuscatedString(new long[]{2511292399356003073L, -5690676788361766535L, 4412245702513916745L, 5948178060749098978L, 3316576518326713169L, -6323870763733310656L, -7928866081291186888L}).toString();
                z = false;
            }
            return z;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static boolean zzg() {
        boolean z;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                zzj();
                z = zze.zzi();
            } catch (RemoteException | DynamiteModule.LoadingException unused) {
                new ObfuscatedString(new long[]{6531626401872199014L, -5981254292464689405L, -5280807705726599808L, -7897752320145773857L}).toString();
                new ObfuscatedString(new long[]{-4956086986221827494L, 1613581151948895795L, -9080793005556140520L, 6382870704189172170L, 3150556506096547448L, 7188569419442790354L, 7674423748226874487L}).toString();
                z = false;
            }
            return z;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static zzx zzh(final String str, final zzj zzjVar, final boolean z, boolean z2) {
        try {
            zzj();
            Preconditions.checkNotNull(zzg);
            try {
                if (zze.zzh(new zzs(str, zzjVar, z, z2), ObjectWrapper.wrap(zzg.getPackageManager()))) {
                    return zzx.zzb();
                }
                return new zzv(new Callable() { // from class: com.google.android.gms.common.zze
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzn.zzd(z, str, zzjVar);
                    }
                }, null);
            } catch (RemoteException e) {
                new ObfuscatedString(new long[]{-385677437526503682L, 41125964106048652L, -312250073638963311L, -6915616631776702312L}).toString();
                new ObfuscatedString(new long[]{7503838660264626216L, -2952429458708471879L, 6267997538795542422L, -2432712197787320534L, -6384423302905126512L, 9117786616163795162L, 2163160017083349160L}).toString();
                return zzx.zzd(new ObfuscatedString(new long[]{2297327782578746855L, -8558788010637601761L, -367167091534843650L}).toString(), e);
            }
        } catch (DynamiteModule.LoadingException e2) {
            new ObfuscatedString(new long[]{6904372007521083656L, 6196861792821051640L, -406386616795023554L, -4859430313725684575L}).toString();
            new ObfuscatedString(new long[]{-9025705737874497577L, -3022313808942093308L, 8065372892849508225L, 7928085553470484261L, 2311850814816244744L, 5558485654842092381L, 3084002600911671771L}).toString();
            return zzx.zzd(new ObfuscatedString(new long[]{-8988487841694883118L, -5043545976414635293L, -8408877547228300180L}).toString().concat(String.valueOf(e2.getMessage())), e2);
        }
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.gms.dynamic.IObjectWrapper, android.os.IBinder] */
    private static zzx zzi(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        zzx zzd2;
        zzq zzf2;
        PackageManager.NameNotFoundException nameNotFoundException;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            Preconditions.checkNotNull(zzg);
            try {
                zzj();
                zzo zzoVar = new zzo(str, z, false, ObjectWrapper.wrap(zzg), false, true);
                try {
                    if (z4) {
                        zzf2 = zze.zze(zzoVar);
                    } else {
                        zzf2 = zze.zzf(zzoVar);
                    }
                    if (zzf2.zzb()) {
                        zzd2 = zzx.zzf(zzf2.zzc());
                    } else {
                        String zza2 = zzf2.zza();
                        if (zzf2.zzd() == 4) {
                            nameNotFoundException = new PackageManager.NameNotFoundException();
                        } else {
                            nameNotFoundException = null;
                        }
                        String obfuscatedString = new ObfuscatedString(new long[]{357205631394743274L, -2812228789027823534L, -2334694445329966088L, 9084099865949621308L, -3157325175884210081L, -2845256419722547908L}).toString();
                        if (zza2 == null) {
                            zza2 = obfuscatedString;
                        }
                        zzd2 = zzx.zzg(zzf2.zzc(), zzf2.zzd(), zza2, nameNotFoundException);
                    }
                } catch (RemoteException e) {
                    new ObfuscatedString(new long[]{4568041921943190576L, 5199682831012777936L, -2321303063263572787L, 2064383533576711225L}).toString();
                    new ObfuscatedString(new long[]{-1122016422228093994L, 7004885376525915605L, 8375666895999554578L, 7279283212991263833L, 2889936345165770008L, 3975513611075338135L, 4561964722497728640L}).toString();
                    zzd2 = zzx.zzd(new ObfuscatedString(new long[]{8677448662902362748L, 245841146374182263L, 6384679567974619628L}).toString(), e);
                }
            } catch (DynamiteModule.LoadingException e2) {
                new ObfuscatedString(new long[]{-3473706933691777326L, 5076327678757148474L, 6882006898596319104L, -7323021544345193148L}).toString();
                new ObfuscatedString(new long[]{7261375685659480613L, -2882386326199486196L, -2808940255688223120L, -8930966415016560147L, -8567293752792135698L, -2521263042697890762L, -5514591901992198878L}).toString();
                zzd2 = zzx.zzd(new ObfuscatedString(new long[]{4834654745507306782L, -634620763576725128L, 1385565388555739036L}).toString().concat(String.valueOf(e2.getMessage())), e2);
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return zzd2;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    private static void zzj() {
        if (zze != null) {
            return;
        }
        Preconditions.checkNotNull(zzg);
        synchronized (zzf) {
            try {
                if (zze == null) {
                    zze = zzaf.zzb(DynamiteModule.load(zzg, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, new ObfuscatedString(new long[]{-8544747638539855005L, -4718245312330668967L, -6912631693719892182L, 5163973663187897142L, 4448084083684607798L, 2752965949333269903L, 6414781671893923396L}).toString()).instantiate(new ObfuscatedString(new long[]{-5439532351484042308L, 7809203928561115453L, -380570353783197522L, 7452307554957169991L, -7177300950198054862L, -7208525098644417596L, -8178285321387626585L, 4119819957375513677L}).toString()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
