package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class PendingResults {
    @KeepForSdk
    private PendingResults() {
    }

    @NonNull
    public static PendingResult<Status> canceledPendingResult() {
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.cancel();
        return statusPendingResult;
    }

    @NonNull
    @KeepForSdk
    public static <R extends Result> PendingResult<R> immediateFailedResult(@NonNull R r, @NonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, new ObfuscatedString(new long[]{6289589683915628688L, 2391428656366190766L, 1339448953046628092L, -8858799274408256369L}).toString());
        Preconditions.checkArgument(!r.getStatus().isSuccess(), new ObfuscatedString(new long[]{5008631888636937243L, 8280489779156539374L, -8770007576124855648L, 7195010316007748479L, -4496794193478901020L}).toString());
        zag zagVar = new zag(googleApiClient, r);
        zagVar.setResult(r);
        return zagVar;
    }

    @NonNull
    @KeepForSdk
    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(@NonNull R r) {
        Preconditions.checkNotNull(r, new ObfuscatedString(new long[]{2061509789542282671L, -2588201276712509562L, 471063839213246730L, 7909044365791635891L}).toString());
        zah zahVar = new zah(null);
        zahVar.setResult(r);
        return new OptionalPendingResultImpl(zahVar);
    }

    @NonNull
    public static <R extends Result> PendingResult<R> canceledPendingResult(@NonNull R r) {
        Preconditions.checkNotNull(r, new ObfuscatedString(new long[]{2769314783427050341L, -6305943368891756516L, 8573533905601412488L, -3567489070272634759L}).toString());
        Preconditions.checkArgument(r.getStatus().getStatusCode() == 16, new ObfuscatedString(new long[]{-950318232925646512L, -8054284258185252576L, 8085645578719596460L, 8917603679266071170L, -2083207556082696481L, -6008772168221751059L, -7332368397498676149L}).toString());
        zaf zafVar = new zaf(r);
        zafVar.cancel();
        return zafVar;
    }

    @NonNull
    @KeepForSdk
    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(@NonNull R r, @NonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, new ObfuscatedString(new long[]{4065562588454487049L, 5882782934097653422L, 3043316692150412297L, -8851780477678668597L}).toString());
        zah zahVar = new zah(googleApiClient);
        zahVar.setResult(r);
        return new OptionalPendingResultImpl(zahVar);
    }

    @NonNull
    @KeepForSdk
    public static PendingResult<Status> immediatePendingResult(@NonNull Status status) {
        Preconditions.checkNotNull(status, new ObfuscatedString(new long[]{2927728080733344454L, -4099436396314884494L, 7795108862950641553L, 4862044194347446262L}).toString());
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }

    @NonNull
    @KeepForSdk
    public static PendingResult<Status> immediatePendingResult(@NonNull Status status, @NonNull GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(status, new ObfuscatedString(new long[]{-7372148810678391117L, 3874245311617668596L, -767842667093759433L, -6117299920582803694L}).toString());
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }
}
