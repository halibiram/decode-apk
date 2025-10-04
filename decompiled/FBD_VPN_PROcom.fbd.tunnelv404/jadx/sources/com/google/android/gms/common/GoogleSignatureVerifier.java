package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.panda912.muddy.ObfuscatedString;
import java.util.Set;
import javax.annotation.Nullable;

@CheckReturnValue
@ShowFirstParty
@KeepForSdk
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms/common/testing/.*", explanation = "Sub classing of GMS Core's APIs are restricted to testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes2.dex */
public class GoogleSignatureVerifier {

    @Nullable
    private static GoogleSignatureVerifier zza;

    @Nullable
    private static volatile Set zzb;
    private final Context zzc;
    private volatile String zzd;

    public GoogleSignatureVerifier(@NonNull Context context) {
        this.zzc = context.getApplicationContext();
    }

    @NonNull
    @KeepForSdk
    public static GoogleSignatureVerifier getInstance(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (zza == null) {
                    zzn.zze(context);
                    zza = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zza;
    }

    @Nullable
    public static final zzj zza(PackageInfo packageInfo, zzj... zzjVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                new ObfuscatedString(new long[]{-4880741487947688248L, -6082821388773834266L, -8009524174284653163L, -4336627004524226324L}).toString();
                new ObfuscatedString(new long[]{2379653455005888998L, 5911881586660894757L, 6466005242195663071L, -4728162778668964548L, -5084652514794471532L, 8970040606339970343L}).toString();
                return null;
            }
            zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < zzjVarArr.length; i++) {
                if (zzjVarArr[i].equals(zzkVar)) {
                    return zzjVarArr[i];
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean zzb(@NonNull PackageInfo packageInfo, boolean z) {
        PackageInfo packageInfo2;
        zzj zza2;
        if (z) {
            if (packageInfo != null) {
                if (new ObfuscatedString(new long[]{2391169476876624283L, -4244560584732171213L, 429278072635061630L, -6537451236787314882L}).toString().equals(packageInfo.packageName) || new ObfuscatedString(new long[]{-1142218031393287398L, 3892890861093428236L, -2520900098009961860L, -7703748953585098919L}).toString().equals(packageInfo.packageName)) {
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if (applicationInfo == null || (applicationInfo.flags & 129) == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
            } else {
                packageInfo2 = null;
                if (packageInfo != null && packageInfo2.signatures != null) {
                    if (!z) {
                        zza2 = zza(packageInfo2, zzm.zza);
                    } else {
                        zza2 = zza(packageInfo2, zzm.zza[0]);
                    }
                    if (zza2 == null) {
                        return true;
                    }
                }
                return false;
            }
        }
        packageInfo2 = packageInfo;
        if (packageInfo != null) {
            if (!z) {
            }
            if (zza2 == null) {
            }
        }
        return false;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    private final zzx zzc(@Nullable String str, boolean z, boolean z2) {
        zzx zzc;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return zzx.zzc(new ObfuscatedString(new long[]{1201197737466986724L, -4128580545144542044L}).toString());
        }
        if (!str.equals(this.zzd)) {
            if (zzn.zzg()) {
                zzc = zzn.zzb(str, GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc), false, false);
            } else {
                try {
                    PackageInfo packageInfo = this.zzc.getPackageManager().getPackageInfo(str, 64);
                    boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc);
                    if (packageInfo == null) {
                        zzc = zzx.zzc(new ObfuscatedString(new long[]{-8709861876070565397L, 5596238513652432650L}).toString());
                    } else {
                        Signature[] signatureArr = packageInfo.signatures;
                        if (signatureArr != null && signatureArr.length == 1) {
                            zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
                            String str2 = packageInfo.packageName;
                            zzx zza2 = zzn.zza(str2, zzkVar, honorsDebugCertificates, false);
                            if (zza2.zza && (applicationInfo = packageInfo.applicationInfo) != null && (2 & applicationInfo.flags) != 0 && zzn.zza(str2, zzkVar, false, true).zza) {
                                zzc = zzx.zzc(new ObfuscatedString(new long[]{-2370943045325073647L, 1329229355865329158L, -7532735929510739736L, 337856123308893480L, 398399886398440304L, -3389849027023845245L}).toString());
                            } else {
                                zzc = zza2;
                            }
                        } else {
                            zzc = zzx.zzc(new ObfuscatedString(new long[]{490271637718281272L, -2231346471188538505L, -2629111348645463631L, -7622096557772923390L}).toString());
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    return zzx.zzd(new ObfuscatedString(new long[]{-7703627628984144521L, -4817125008627522426L}).toString().concat(str), e);
                }
            }
            if (zzc.zza) {
                this.zzd = str;
            }
            return zzc;
        }
        return zzx.zzb();
    }

    @KeepForSdk
    public boolean isGooglePublicSignedPackage(@NonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzb(packageInfo, false)) {
            return true;
        }
        if (zzb(packageInfo, true)) {
            if (GooglePlayServicesUtilLight.honorsDebugCertificates(this.zzc)) {
                return true;
            }
            new ObfuscatedString(new long[]{-4098210732203002565L, 8140130440955069666L, -4607931718800605420L, 689721042383313109L}).toString();
            new ObfuscatedString(new long[]{60850120417342938L, -1454001768050609418L, -293942407224583655L, -702881459591628579L, 2725605512696507770L, 5867258802636685914L}).toString();
        }
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isPackageGoogleSigned(@Nullable String str) {
        zzx zzc = zzc(str, false, false);
        zzc.zze();
        return zzc.zza;
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isUidGoogleSigned(int i) {
        zzx zzc;
        int length;
        String[] packagesForUid = this.zzc.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            zzc = null;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    zzc = zzc(packagesForUid[i2], false, false);
                    if (zzc.zza) {
                        break;
                    }
                    i2++;
                } else {
                    Preconditions.checkNotNull(zzc);
                    break;
                }
            }
        } else {
            zzc = zzx.zzc(new ObfuscatedString(new long[]{4573684355351203162L, -1339814570517972458L}).toString());
        }
        zzc.zze();
        return zzc.zza;
    }
}
