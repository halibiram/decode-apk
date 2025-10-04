package com.google.android.gms.common.wrappers;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class InstantApps {
    private static Context zza;

    @Nullable
    private static Boolean zzb;

    @KeepForSdk
    public static synchronized boolean isInstantApp(@NonNull Context context) {
        boolean isInstantApp;
        Boolean bool;
        synchronized (InstantApps.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = zza;
            if (context2 != null && (bool = zzb) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            zzb = null;
            if (PlatformVersion.isAtLeastO()) {
                isInstantApp = applicationContext.getPackageManager().isInstantApp();
                zzb = Boolean.valueOf(isInstantApp);
            } else {
                try {
                    context.getClassLoader().loadClass(new ObfuscatedString(new long[]{2085900804333540835L, 7452475525105952911L, 5798515285174342830L, 104700606878343469L, 703259997153014030L, -8040929668010798232L, 4358144783919510378L, 948700060684253829L, 740947639439273277L}).toString());
                    zzb = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    zzb = Boolean.FALSE;
                }
            }
            zza = applicationContext;
            return zzb.booleanValue();
        }
    }
}
