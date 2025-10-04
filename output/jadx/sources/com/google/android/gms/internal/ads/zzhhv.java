package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzhhv {
    private static String zza;

    public static String zza(Context context) {
        String str;
        String str2 = zza;
        if (str2 != null) {
            return str2;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(new ObfuscatedString(new long[]{4187075293709059222L, 1105752532290303756L, 600838427294230328L, -5287330635355679566L, 238555740641605374L}).toString(), Uri.parse(new ObfuscatedString(new long[]{-8766870793669201673L, -8975661405537982440L, 5024856023086456669L, -1631828023101988195L}).toString()));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveActivity != null) {
            str = resolveActivity.activityInfo.packageName;
        } else {
            str = null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction(new ObfuscatedString(new long[]{-7138005549686269563L, -1240723486280771784L, 3597628212982834993L, 6331336381563939411L, -5540542424993329988L, -9048928500364146486L, 2786114968263853289L, 2069695074627426997L}).toString());
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            zza = null;
        } else if (arrayList.size() == 1) {
            zza = (String) arrayList.get(0);
        } else {
            if (!TextUtils.isEmpty(str)) {
                try {
                    List<ResolveInfo> queryIntentActivities2 = context.getPackageManager().queryIntentActivities(intent, 64);
                    if (queryIntentActivities2 != null && queryIntentActivities2.size() != 0) {
                        for (ResolveInfo resolveInfo2 : queryIntentActivities2) {
                            IntentFilter intentFilter = resolveInfo2.filter;
                            if (intentFilter != null && intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo2.activityInfo != null) {
                                break;
                            }
                        }
                    }
                } catch (RuntimeException unused) {
                    new ObfuscatedString(new long[]{1221473789532738440L, 5305144111419102842L, 6881891497429777962L}).toString();
                    new ObfuscatedString(new long[]{-1650628623132218805L, 5708238485881424548L, 7674463123295185126L, 8230524480442465739L, -6882436373832434887L, 7279228871827124539L, 371341944047053674L, 6048274678306697044L}).toString();
                }
                if (arrayList.contains(str)) {
                    zza = str;
                }
            }
            if (arrayList.contains(new ObfuscatedString(new long[]{-4966821113994446363L, 1598175105368658050L, -285954399609079394L, -182691952547468311L}).toString())) {
                zza = new ObfuscatedString(new long[]{-5560990518857006921L, 2112058748789569253L, 8668503048445641351L, -546686097490741643L}).toString();
            } else if (arrayList.contains(new ObfuscatedString(new long[]{4572304918116365617L, 1712244706000778728L, 8201226648018389140L}).toString())) {
                zza = new ObfuscatedString(new long[]{-2576369962474356115L, -3507266830334958199L, -1496920615022632012L}).toString();
            } else if (arrayList.contains(new ObfuscatedString(new long[]{4584801938184884211L, 5971153002741358516L, -4246664205098895008L}).toString())) {
                zza = new ObfuscatedString(new long[]{-4432875241006149396L, -6521795774794665998L, 3702584693853527651L}).toString();
            } else if (arrayList.contains(new ObfuscatedString(new long[]{-5294638345270045824L, -1345979927335427336L, 2538132499378848027L, 2738822330683314282L, -8969959784645232710L}).toString())) {
                zza = new ObfuscatedString(new long[]{5638337849665920018L, -8587475470735118752L, -8431505800273543048L, -5765777421647316472L, 2829721270851288290L}).toString();
            }
        }
        return zza;
    }
}
