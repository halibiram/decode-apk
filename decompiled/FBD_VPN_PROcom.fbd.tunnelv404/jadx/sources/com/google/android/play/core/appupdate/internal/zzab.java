package com.google.android.play.core.appupdate.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzab {
    private static final zzm zza = new zzm(new ObfuscatedString(new long[]{-39743327538438657L, -1414021481094177491L, 5578909794555501683L, 2758935139712528564L, 4991837308790950065L}).toString());

    public static boolean zza(Context context) {
        try {
            if (context.getPackageManager().getApplicationInfo(new ObfuscatedString(new long[]{-994109784028866017L, 8263852384572298822L, 841630891124971328L, -7799035382302831957L}).toString(), 0).enabled) {
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{6271590143322933292L, -7788950622668368202L, 5738211245737487004L, -6889713861987667591L}).toString(), 64).signatures;
                if (signatureArr != null && (signatureArr.length) != 0) {
                    for (Signature signature : signatureArr) {
                        String zza2 = zzaa.zza(signature.toByteArray());
                        if (!new ObfuscatedString(new long[]{-8094582486329422179L, -7284116010997311750L, -378650813790794874L, -7292883376354570416L, 8335619710422318456L, -1020269941829686176L, 3172956148224960187L}).toString().equals(zza2)) {
                            String str = Build.TAGS;
                            if ((!str.contains(new ObfuscatedString(new long[]{-6380626715197160789L, -6182284799005998857L}).toString()) && !str.contains(new ObfuscatedString(new long[]{-4538509616313346248L, 5959704471929468969L, 2542181649862421187L}).toString())) || !new ObfuscatedString(new long[]{3318125536320040195L, -7364813237727660906L, -8537695132289605904L, -5693204293911743664L, -7409095482780715438L, 871169819366073013L, 8859532791523949916L}).toString().equals(zza2)) {
                            }
                        }
                        return true;
                    }
                }
                zza.zze(new ObfuscatedString(new long[]{8931407688230740956L, 8101474937983263246L, -6728543008000987099L, 9112148516359093862L, -3844676871769688105L, 2491161736196797311L, 7868389442543799542L, 4006473457560925789L, -3707705931298718154L, 1382646592807492366L, -1545031315026054933L}).toString(), new Object[0]);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
