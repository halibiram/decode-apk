package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class BaseImplementation {

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface ResultHolder<R> {
        @KeepForSdk
        void setFailedResult(@NonNull Status status);

        @KeepForSdk
        void setResult(@NonNull R r);
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {

        @Nullable
        @KeepForSdk
        private final Api<?> mApi;

        @KeepForSdk
        private final Api.AnyClientKey<A> mClientKey;

        @KeepForSdk
        @Deprecated
        public ApiMethodImpl(@NonNull Api.AnyClientKey<A> anyClientKey, @NonNull GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, new ObfuscatedString(new long[]{-812934725014102980L, -5443311583230506562L, 1661359866639115536L, 3788875525497296756L, -7509953581092879080L}).toString()));
            this.mClientKey = (Api.AnyClientKey) Preconditions.checkNotNull(anyClientKey);
            this.mApi = null;
        }

        @KeepForSdk
        private void setFailedResult(@NonNull RemoteException remoteException) {
            setFailedResult(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        @KeepForSdk
        public abstract void doExecute(@NonNull A a);

        @Nullable
        @KeepForSdk
        public final Api<?> getApi() {
            return this.mApi;
        }

        @NonNull
        @KeepForSdk
        public final Api.AnyClientKey<A> getClientKey() {
            return this.mClientKey;
        }

        @KeepForSdk
        public void onSetFailedResult(@NonNull R r) {
        }

        @KeepForSdk
        public final void run(@NonNull A a) {
            try {
                doExecute(a);
            } catch (DeadObjectException e) {
                setFailedResult(e);
                throw e;
            } catch (RemoteException e2) {
                setFailedResult(e2);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public /* bridge */ /* synthetic */ void setResult(@NonNull Object obj) {
            setResult((ApiMethodImpl<R, A>) obj);
        }

        @KeepForSdk
        public ApiMethodImpl(@NonNull Api<?> api, @NonNull GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, new ObfuscatedString(new long[]{-626348257661167028L, 5090753585366782233L, 4911307722446639573L, 4744652396105041657L, -795264330818323449L}).toString()));
            Preconditions.checkNotNull(api, new ObfuscatedString(new long[]{-2725028749518709207L, -8618369247652160839L, 9059405987849180130L, -5180385569266859354L}).toString());
            this.mClientKey = (Api.AnyClientKey<A>) api.zab();
            this.mApi = api;
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public final void setFailedResult(@NonNull Status status) {
            Preconditions.checkArgument(!status.isSuccess(), new ObfuscatedString(new long[]{-5277314285651517418L, -8321213341206108326L, 1849108718570863499L, 8516975184833273033L, 6207800070708914943L, 5257351422562450968L}).toString());
            R createFailedResult = createFailedResult(status);
            setResult((ApiMethodImpl<R, A>) createFailedResult);
            onSetFailedResult(createFailedResult);
        }

        @KeepForSdk
        @VisibleForTesting
        public ApiMethodImpl(@NonNull BasePendingResult.CallbackHandler<R> callbackHandler) {
            super(callbackHandler);
            this.mClientKey = new Api.AnyClientKey<>();
            this.mApi = null;
        }
    }
}
