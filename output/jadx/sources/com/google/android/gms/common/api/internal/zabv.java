package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.panda912.muddy.ObfuscatedString;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class zabv<O extends Api.ApiOptions> extends zaag {

    @NotOnlyInitialized
    private final GoogleApi<O> zaa;

    public zabv(GoogleApi<O> googleApi) {
        super(new ObfuscatedString(new long[]{-6417336572215304233L, 367638585800822008L, -2182453321179759680L, -3340463528214527807L, -3316374970881302217L, -7117910218167517527L, 8627772723651429272L, 2359535514434864698L, 1828642947726771415L, -3410869753618344246L, -288497104998111757L, 816985887089100253L, 7157579847911184413L, -4365894091948774625L, 1923687419426919540L, -1263553434213373660L}).toString());
        this.zaa = googleApi;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@NonNull T t) {
        return (T) this.zaa.doRead((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@NonNull T t) {
        return (T) this.zaa.doWrite((GoogleApi<O>) t);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.zaa.getApplicationContext();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zaa.getLooper();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zao(zada zadaVar) {
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zap(zada zadaVar) {
    }
}
