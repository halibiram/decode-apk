package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    @NonNull
    @KeepForSdk
    public final RegisterListenerMethod<A, L> register;

    @NonNull
    public final UnregisterListenerMethod<A, L> zaa;

    @NonNull
    public final Runnable zab;

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class Builder<A extends Api.AnyClient, L> {
        private RemoteCall<A, TaskCompletionSource<Void>> zaa;
        private RemoteCall<A, TaskCompletionSource<Boolean>> zab;
        private ListenerHolder<L> zad;
        private Feature[] zae;
        private int zag;
        private Runnable zac = zacj.zaa;
        private boolean zaf = true;

        private Builder() {
        }

        @NonNull
        @KeepForSdk
        public RegistrationMethods<A, L> build() {
            boolean z;
            boolean z2;
            boolean z3 = false;
            if (this.zaa != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{3591389831997731300L, -7700469308809663344L, 2835570958985344434L, -6313381443607415078L, 9060681569499976702L}).toString());
            if (this.zab != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-6475810215952137668L, -5046256379723288045L, -8203996053224156164L, 3806162188613586024L, -6922039096386744331L}).toString());
            if (this.zad != null) {
                z3 = true;
            }
            Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{1772028603401998433L, 5754804121320954372L, 3089720001036491186L}).toString());
            return new RegistrationMethods<>(new zack(this, this.zad, this.zae, this.zaf, this.zag), new zacl(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.zad.getListenerKey(), new ObfuscatedString(new long[]{-9158567443867525648L, -4399512619143500718L, 8694814446329644693L, 7489965284001590515L}).toString())), this.zac, null);
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> onConnectionSuspended(@NonNull Runnable runnable) {
            this.zac = runnable;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> register(@NonNull RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.zaa = remoteCall;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.zaf = z;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> setFeatures(@NonNull Feature... featureArr) {
            this.zae = featureArr;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> setMethodKey(int i) {
            this.zag = i;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> unregister(@NonNull RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.zab = remoteCall;
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder<A, L> withHolder(@NonNull ListenerHolder<L> listenerHolder) {
            this.zad = listenerHolder;
            return this;
        }

        public /* synthetic */ Builder(zacm zacmVar) {
        }
    }

    public /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable, zacn zacnVar) {
        this.register = registerListenerMethod;
        this.zaa = unregisterListenerMethod;
        this.zab = runnable;
    }

    @NonNull
    @KeepForSdk
    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>(null);
    }
}
