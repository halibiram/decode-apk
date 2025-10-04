package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public abstract class RemoteCreator<T> {
    private final String zza;
    private Object zzb;

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class RemoteCreatorException extends Exception {
        @KeepForSdk
        public RemoteCreatorException(@NonNull String str) {
            super(str);
        }

        @KeepForSdk
        public RemoteCreatorException(@NonNull String str, @NonNull Throwable th) {
            super(str, th);
        }
    }

    @KeepForSdk
    public RemoteCreator(@NonNull String str) {
        this.zza = str;
    }

    @NonNull
    @KeepForSdk
    public abstract T getRemoteCreator(@NonNull IBinder iBinder);

    @NonNull
    @KeepForSdk
    public final T getRemoteCreatorInstance(@NonNull Context context) {
        if (this.zzb == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.zzb = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zza).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new RemoteCreatorException(new ObfuscatedString(new long[]{8444631686755814569L, -5212048647720152628L, -8878146680560092736L, 2632639174738966001L, -6992203500139493142L}).toString(), e);
                } catch (IllegalAccessException e2) {
                    throw new RemoteCreatorException(new ObfuscatedString(new long[]{8827655290829881261L, 3456773460923056332L, 8694700435751111028L, 2086603704437055711L, -4100099269976001750L}).toString(), e2);
                } catch (InstantiationException e3) {
                    throw new RemoteCreatorException(new ObfuscatedString(new long[]{-7825160749699823471L, -8580208739596157630L, 7859112609122117796L, -5988467063206637030L, 5012224895980822837L}).toString(), e3);
                }
            } else {
                throw new RemoteCreatorException(new ObfuscatedString(new long[]{-7856372202444487045L, -3282039796364902134L, -1098778423697360530L, 5550062306910866696L, -1271236771866797394L}).toString());
            }
        }
        return (T) this.zzb;
    }
}
