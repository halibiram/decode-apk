package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class Api<O extends ApiOptions> {
    private final AbstractClientBuilder<?, O> zaa;
    private final ClientKey<?> zab;
    private final String zac;

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2.dex */
    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        @NonNull
        @KeepForSdk
        @Deprecated
        public T buildClient(@NonNull Context context, @NonNull Looper looper, @NonNull ClientSettings clientSettings, @NonNull O o, @NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks, @NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return buildClient(context, looper, clientSettings, (ClientSettings) o, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        }

        @NonNull
        @KeepForSdk
        public T buildClient(@NonNull Context context, @NonNull Looper looper, @NonNull ClientSettings clientSettings, @NonNull O o, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{7891554978982391371L, 643860979484698401L, -6026110332216149159L, 3793511502988419079L, 3105255205641656775L}).toString());
        }
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface AnyClient {
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes2.dex */
    public interface ApiOptions {

        @NonNull
        public static final NoOptions NO_OPTIONS = new NoOptions(null);

        /* loaded from: classes2.dex */
        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            @NonNull
            Account getAccount();
        }

        /* loaded from: classes2.dex */
        public interface HasGoogleSignInAccountOptions extends HasOptions {
            @Nullable
            GoogleSignInAccount getGoogleSignInAccount();
        }

        /* loaded from: classes2.dex */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes2.dex */
        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }

            public /* synthetic */ NoOptions(zaa zaaVar) {
            }
        }

        /* loaded from: classes2.dex */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes2.dex */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2.dex */
    public static abstract class BaseClientBuilder<T extends AnyClient, O> {

        @KeepForSdk
        public static final int API_PRIORITY_GAMES = 1;

        @KeepForSdk
        public static final int API_PRIORITY_OTHER = Integer.MAX_VALUE;

        @KeepForSdk
        public static final int API_PRIORITY_PLUS = 2;

        @NonNull
        @KeepForSdk
        public List<Scope> getImpliedScopes(@Nullable O o) {
            return Collections.emptyList();
        }

        @KeepForSdk
        public int getPriority() {
            return Integer.MAX_VALUE;
        }
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface Client extends AnyClient {
        @KeepForSdk
        void connect(@NonNull BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        @KeepForSdk
        void disconnect();

        @KeepForSdk
        void disconnect(@NonNull String str);

        @KeepForSdk
        void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr);

        @NonNull
        @KeepForSdk
        Feature[] getAvailableFeatures();

        @NonNull
        @KeepForSdk
        String getEndpointPackageName();

        @Nullable
        @KeepForSdk
        String getLastDisconnectMessage();

        @KeepForSdk
        int getMinApkVersion();

        @KeepForSdk
        void getRemoteService(@Nullable IAccountAccessor iAccountAccessor, @Nullable Set<Scope> set);

        @NonNull
        @KeepForSdk
        Feature[] getRequiredFeatures();

        @NonNull
        @KeepForSdk
        Set<Scope> getScopesForConnectionlessNonSignIn();

        @Nullable
        @KeepForSdk
        IBinder getServiceBrokerBinder();

        @NonNull
        @KeepForSdk
        Intent getSignInIntent();

        @KeepForSdk
        boolean isConnected();

        @KeepForSdk
        boolean isConnecting();

        @KeepForSdk
        void onUserSignOut(@NonNull BaseGmsClient.SignOutCallbacks signOutCallbacks);

        @KeepForSdk
        boolean providesSignIn();

        @KeepForSdk
        boolean requiresAccount();

        @KeepForSdk
        boolean requiresGooglePlayServices();

        @KeepForSdk
        boolean requiresSignIn();
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes2.dex */
    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @KeepForSdk
    public <C extends Client> Api(@NonNull String str, @NonNull AbstractClientBuilder<C, O> abstractClientBuilder, @NonNull ClientKey<C> clientKey) {
        Preconditions.checkNotNull(abstractClientBuilder, new ObfuscatedString(new long[]{270822943798504064L, 931058757923537391L, 1152844691974574544L, -3394438359255239180L, 2115491836374660940L, -8252126487543656419L, -2976204116106300458L, 1449367196986831737L}).toString());
        Preconditions.checkNotNull(clientKey, new ObfuscatedString(new long[]{-4652895983042638520L, -6730741396901044310L, -6090288866419633985L, 2428358505023094238L, 4631730323221449848L, -1805088732186851656L, 3458094024398678421L}).toString());
        this.zac = str;
        this.zaa = abstractClientBuilder;
        this.zab = clientKey;
    }

    @NonNull
    public final AbstractClientBuilder<?, O> zaa() {
        return this.zaa;
    }

    @NonNull
    public final AnyClientKey<?> zab() {
        return this.zab;
    }

    @NonNull
    public final BaseClientBuilder<?, O> zac() {
        return this.zaa;
    }

    @NonNull
    public final String zad() {
        return this.zac;
    }
}
