package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@KeepForSdk
/* loaded from: classes2.dex */
public class BlockingServiceConnection implements ServiceConnection {
    boolean zza = false;
    private final BlockingQueue zzb = new LinkedBlockingQueue();

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public IBinder getService() {
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{6366218489567889127L, -810678904279708591L, 5472953144823690574L, 1919664735515153265L, 4928677388303154543L, -73356493765539378L, -2585244950318594283L, -4914627551344143975L, -438395227621578721L}).toString());
        if (!this.zza) {
            this.zza = true;
            return (IBinder) this.zzb.take();
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{7566030152397525124L, -7561332822469395584L, -8792568251837292488L, -9018340470319940271L, 9195886013366925298L, 7456197303877837752L, 444525169194022554L, 1161038346354115205L}).toString());
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public IBinder getServiceWithTimeout(long j, @NonNull TimeUnit timeUnit) {
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{7398079612481791889L, 7255349186169272230L, 3595317920051030237L, 4234378259701444389L, 4324657193246257462L, 1606881110223533051L, 1221422873564531673L, -981783300171896398L, -4366875056054890917L, 632283554840817887L}).toString());
        if (!this.zza) {
            this.zza = true;
            IBinder iBinder = (IBinder) this.zzb.poll(j, timeUnit);
            if (iBinder != null) {
                return iBinder;
            }
            throw new TimeoutException(new ObfuscatedString(new long[]{-8999705032388660771L, -4161849159043849037L, 7318019999854474513L, 3346284214762760637L, -6368591664723643896L, -4416734102083442907L, -8103255052830167337L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6412702305331909355L, -8059022695049533802L, 6317441253280353846L, 6957546410457338169L, -8359976736043663456L, -8969686214468366864L, -7984482312695386798L, 3724444642246667247L}).toString());
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.zzb.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
    }
}
