package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzbnq {
    @Nullable
    public static final Intent zza(Uri uri, Context context, zzavi zzaviVar, View view, zzfhl zzfhlVar) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent(new ObfuscatedString(new long[]{5092165900092615906L, -3771210658513472989L, 3389718791004542525L, -6659063025170556891L, 785736074570974703L}).toString());
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction(new ObfuscatedString(new long[]{-3309798924840928383L, 1729262534149986754L, 7827722363038489654L, -5908668384937726825L, -6226351459134583461L}).toString());
        return intent;
    }

    public static final Intent zzb(Intent intent, ResolveInfo resolveInfo, Context context, zzavi zzaviVar, View view, zzfhl zzfhlVar) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    @VisibleForTesting
    public static final ResolveInfo zzc(Intent intent, Context context, zzavi zzaviVar, View view, zzfhl zzfhlVar) {
        return zzd(intent, new ArrayList(), context, zzaviVar, view, zzfhlVar);
    }

    @Nullable
    @VisibleForTesting
    public static final ResolveInfo zzd(Intent intent, ArrayList arrayList, Context context, zzavi zzaviVar, View view, zzfhl zzfhlVar) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-1514492553136461821L, 417969458219321786L, -2846198522523407074L, 6566496159673248881L, 3027521597660998862L, 7735042718700304072L, -7694036725157041873L, -22944279978477764L, 4512427841141771884L}).toString());
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (queryIntentActivities != null && resolveActivity != null) {
            int i = 0;
            while (true) {
                if (i >= queryIntentActivities.size()) {
                    break;
                }
                if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                    resolveInfo = resolveActivity;
                    break;
                }
                i++;
            }
        }
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }
}
