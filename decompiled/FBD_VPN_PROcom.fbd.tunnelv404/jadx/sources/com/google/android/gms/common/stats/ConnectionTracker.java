package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

@KeepForSdk
/* loaded from: classes2.dex */
public class ConnectionTracker {
    private static final Object zzb = new Object();

    @Nullable
    private static volatile ConnectionTracker zzc;

    @NonNull
    @VisibleForTesting
    public final ConcurrentHashMap zza = new ConcurrentHashMap();

    private ConnectionTracker() {
    }

    @NonNull
    @KeepForSdk
    public static ConnectionTracker getInstance() {
        if (zzc == null) {
            synchronized (zzb) {
                try {
                    if (zzc == null) {
                        zzc = new ConnectionTracker();
                    }
                } finally {
                }
            }
        }
        ConnectionTracker connectionTracker = zzc;
        Preconditions.checkNotNull(connectionTracker);
        return connectionTracker;
    }

    private static void zzb(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    private final boolean zzc(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z, @Nullable Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            new ObfuscatedString(new long[]{21710606122343386L, -8695519689967225200L, -5892066034724176750L, 8030399914043636097L}).toString().equals(packageName);
            try {
                if ((Wrappers.packageManager(context).getApplicationInfo(packageName, 0).flags & 2097152) != 0) {
                    new ObfuscatedString(new long[]{6949786846597251730L, 5711416763758328602L, 4794105910549541477L, 5192788611409637537L}).toString();
                    new ObfuscatedString(new long[]{448862973811517382L, 7601373202118719746L, 1637937723471257883L, 7182757548891029387L, -554442146179067778L, 508545026023572096L, -304032217567330114L, 1498106336974697527L}).toString();
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (zzd(serviceConnection)) {
            ServiceConnection serviceConnection2 = (ServiceConnection) this.zza.putIfAbsent(serviceConnection, serviceConnection);
            if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
                String.format(new ObfuscatedString(new long[]{1266533303635207981L, 4332040434376224738L, -1417532369775792670L, -5730824696093706559L, 7801331288782343109L, 1658708664129115072L, 963030371442319068L, -1368208671103132978L, -2779537734464839709L}).toString(), serviceConnection, str, intent.getAction());
                new ObfuscatedString(new long[]{7553197152551578473L, 6905210053858157631L, -326924986992701279L, 6079537737228674939L}).toString();
            }
            try {
                boolean zze = zze(context, intent, serviceConnection, i, executor);
                if (!zze) {
                    return false;
                }
                return zze;
            } finally {
                this.zza.remove(serviceConnection, serviceConnection);
            }
        }
        return zze(context, intent, serviceConnection, i, executor);
    }

    private static boolean zzd(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof zzt);
    }

    private static final boolean zze(Context context, Intent intent, ServiceConnection serviceConnection, int i, @Nullable Executor executor) {
        boolean bindService;
        if (executor == null) {
            executor = null;
        }
        if (PlatformVersion.isAtLeastQ() && executor != null) {
            bindService = context.bindService(intent, i, executor, serviceConnection);
            return bindService;
        }
        return context.bindService(intent, serviceConnection, i);
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public boolean bindService(@NonNull Context context, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i) {
        return zzc(context, context.getClass().getName(), intent, serviceConnection, i, true, null);
    }

    @KeepForSdk
    public void unbindService(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        if (zzd(serviceConnection) && this.zza.containsKey(serviceConnection)) {
            try {
                zzb(context, (ServiceConnection) this.zza.get(serviceConnection));
                return;
            } finally {
                this.zza.remove(serviceConnection);
            }
        }
        zzb(context, serviceConnection);
    }

    @KeepForSdk
    public void unbindServiceSafe(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        try {
            unbindService(context, serviceConnection);
        } catch (IllegalArgumentException unused) {
        }
    }

    @ResultIgnorabilityUnspecified
    public final boolean zza(@NonNull Context context, @NonNull String str, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i, @Nullable Executor executor) {
        return zzc(context, str, intent, serviceConnection, 4225, true, executor);
    }
}
