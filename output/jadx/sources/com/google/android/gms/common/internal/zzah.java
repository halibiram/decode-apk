package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzah {
    private static final Object zza = new Object();

    @GuardedBy("lock")
    private static boolean zzb;

    @Nullable
    private static String zzc;
    private static int zzd;

    public static int zza(Context context) {
        zzc(context);
        return zzd;
    }

    @Nullable
    public static String zzb(Context context) {
        zzc(context);
        return zzc;
    }

    private static void zzc(Context context) {
        Bundle bundle;
        synchronized (zza) {
            try {
                if (zzb) {
                    return;
                }
                zzb = true;
                try {
                    bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf(new ObfuscatedString(new long[]{-7742412511740041108L, 7312420807786483081L, 3794015773572507015L, 9095841684171284914L}).toString(), new ObfuscatedString(new long[]{-2682501525613450779L, 9005094338969317436L, -741176543804093985L, -2868430418253126917L, 2799540413674535061L}).toString(), e);
                }
                if (bundle == null) {
                    return;
                }
                zzc = bundle.getString(new ObfuscatedString(new long[]{4359470057938096538L, -8254373520959444758L, 7789037515240299023L, -2146548520796471308L}).toString());
                zzd = bundle.getInt(new ObfuscatedString(new long[]{4985376295924907393L, 1008727782020628028L, 1267305999123855768L, -7611907889619957984L, -6551911910369288638L}).toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
