package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.LifecycleActivity;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.SignInConnectionListener;
import com.google.android.gms.common.api.internal.zabe;
import com.google.android.gms.common.api.internal.zada;
import com.google.android.gms.common.api.internal.zak;
import com.google.android.gms.common.api.internal.zat;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.signin.SignInOptions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;

@KeepForSdk
@Deprecated
/* loaded from: classes2.dex */
public abstract class GoogleApiClient {
    public static final int SIGN_IN_MODE_OPTIONAL = 2;
    public static final int SIGN_IN_MODE_REQUIRED = 1;

    @NonNull
    @KeepForSdk
    public static final String DEFAULT_ACCOUNT = new ObfuscatedString(new long[]{-6494487009441162822L, -2194204552410071852L, 462342106297291L, -7949676165138769336L}).toString();

    @GuardedBy("sAllClients")
    private static final Set<GoogleApiClient> zaa = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* loaded from: classes2.dex */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
        public static final int CAUSE_NETWORK_LOST = 2;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    public static void dumpAll(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
            try {
                String concat = String.valueOf(str).concat(new ObfuscatedString(new long[]{-3433416818923861354L, 7525975445439157429L}).toString());
                int i = 0;
                for (GoogleApiClient googleApiClient : set) {
                    printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{-5188773073418481193L, 5521389946692375848L, -4835612981380221596L}).toString()).println(i);
                    googleApiClient.dump(concat, fileDescriptor, printWriter, strArr);
                    i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static Set<GoogleApiClient> getAllClients() {
        Set<GoogleApiClient> set = zaa;
        synchronized (set) {
        }
        return set;
    }

    @NonNull
    public abstract ConnectionResult blockingConnect();

    @NonNull
    public abstract ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit);

    @NonNull
    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public void connect(int i) {
        throw new UnsupportedOperationException();
    }

    public abstract void disconnect();

    public abstract void dump(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr);

    @NonNull
    @KeepForSdk
    public <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T enqueue(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @KeepForSdk
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T execute(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @KeepForSdk
    public <C extends Api.Client> C getClient(@NonNull Api.AnyClientKey<C> anyClientKey) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public abstract ConnectionResult getConnectionResult(@NonNull Api<?> api);

    @NonNull
    @KeepForSdk
    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    @NonNull
    @KeepForSdk
    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public boolean hasApi(@NonNull Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(@NonNull Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    @KeepForSdk
    public boolean maybeSignIn(@NonNull SignInConnectionListener signInConnectionListener) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    public void maybeSignOut() {
        throw new UnsupportedOperationException();
    }

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void registerConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    @NonNull
    @KeepForSdk
    public <L> ListenerHolder<L> registerListener(@NonNull L l) {
        throw new UnsupportedOperationException();
    }

    public abstract void stopAutoManage(@NonNull FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks);

    public abstract void unregisterConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    public void zao(zada zadaVar) {
        throw new UnsupportedOperationException();
    }

    public void zap(zada zadaVar) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    @Deprecated
    /* loaded from: classes2.dex */
    public static final class Builder {

        @Nullable
        private Account zaa;
        private final Set<Scope> zab;
        private final Set<Scope> zac;
        private int zad;
        private View zae;
        private String zaf;
        private String zag;
        private final Map<Api<?>, com.google.android.gms.common.internal.zab> zah;
        private final Context zai;
        private final Map<Api<?>, Api.ApiOptions> zaj;
        private LifecycleActivity zak;
        private int zal;

        @Nullable
        private OnConnectionFailedListener zam;
        private Looper zan;
        private GoogleApiAvailability zao;
        private Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> zap;
        private final ArrayList<ConnectionCallbacks> zaq;
        private final ArrayList<OnConnectionFailedListener> zar;

        @KeepForSdk
        public Builder(@NonNull Context context) {
            this.zab = new HashSet();
            this.zac = new HashSet();
            this.zah = new ArrayMap();
            this.zaj = new ArrayMap();
            this.zal = -1;
            this.zao = GoogleApiAvailability.getInstance();
            this.zap = com.google.android.gms.signin.zad.zac;
            this.zaq = new ArrayList<>();
            this.zar = new ArrayList<>();
            this.zai = context;
            this.zan = context.getMainLooper();
            this.zaf = context.getPackageName();
            this.zag = context.getClass().getName();
        }

        private final <O extends Api.ApiOptions> void zab(Api<O> api, @Nullable O o, Scope... scopeArr) {
            HashSet hashSet = new HashSet(((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), new ObfuscatedString(new long[]{6738802800875739239L, 8071205537095083347L, 486292440763016159L, -2585899717399817260L, -2198002315654849172L, 5575504262209252201L}).toString())).getImpliedScopes(o));
            for (Scope scope : scopeArr) {
                hashSet.add(scope);
            }
            this.zah.put(api, new com.google.android.gms.common.internal.zab(hashSet));
        }

        @NonNull
        public Builder addApi(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api) {
            Preconditions.checkNotNull(api, new ObfuscatedString(new long[]{1780855173893084334L, 6774968387873857519L, 7017634148821586183L, -3369981834280206524L}).toString());
            this.zaj.put(api, null);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), new ObfuscatedString(new long[]{-6038401831856847194L, 1752649322416708811L, -7157917187176317111L, 2037526095817855857L, 4053768895502717482L, -8388380496340634374L}).toString())).getImpliedScopes(null);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        @NonNull
        public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(@NonNull Api<O> api, @NonNull O o, @NonNull Scope... scopeArr) {
            Preconditions.checkNotNull(api, new ObfuscatedString(new long[]{3302642203465625319L, -8500549380466288232L, 1117574528770335609L, 376454165881487669L}).toString());
            Preconditions.checkNotNull(o, new ObfuscatedString(new long[]{-4099003180165414163L, 5223593150942026707L, -1849586196154746533L, 744185335616497830L, -2746692852830886321L, -3789638062933509116L, -4334861881665687904L}).toString());
            this.zaj.put(api, o);
            zab(api, o, scopeArr);
            return this;
        }

        @NonNull
        public Builder addConnectionCallbacks(@NonNull ConnectionCallbacks connectionCallbacks) {
            Preconditions.checkNotNull(connectionCallbacks, new ObfuscatedString(new long[]{6891013523687833564L, -3296031088495142168L, 4247870465448215378L, 9119423530847439476L, -3394144641627173445L}).toString());
            this.zaq.add(connectionCallbacks);
            return this;
        }

        @NonNull
        public Builder addOnConnectionFailedListener(@NonNull OnConnectionFailedListener onConnectionFailedListener) {
            Preconditions.checkNotNull(onConnectionFailedListener, new ObfuscatedString(new long[]{-8576588961051722387L, 8144091133008161330L, -8232711617494125612L, -4410948028965385986L, -4120352799005549940L}).toString());
            this.zar.add(onConnectionFailedListener);
            return this;
        }

        @NonNull
        public Builder addScope(@NonNull Scope scope) {
            Preconditions.checkNotNull(scope, new ObfuscatedString(new long[]{5531203895703536116L, -1149293674792874967L, 7167864801319947100L, 5586215727608991357L}).toString());
            this.zab.add(scope);
            return this;
        }

        @NonNull
        public GoogleApiClient build() {
            boolean z;
            boolean z2;
            Preconditions.checkArgument(!this.zaj.isEmpty(), new ObfuscatedString(new long[]{8792571172930235111L, -3499886935767311565L, 2084260774980844337L, 6181076880640389286L, -7451637351236846928L, 4288996766401275051L, -8599754666872428779L}).toString());
            ClientSettings zaa = zaa();
            Map<Api<?>, com.google.android.gms.common.internal.zab> zad = zaa.zad();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            Api<?> api = null;
            boolean z3 = false;
            for (Api<?> api2 : this.zaj.keySet()) {
                Api.ApiOptions apiOptions = this.zaj.get(api2);
                if (zad.get(api2) != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayMap.put(api2, Boolean.valueOf(z2));
                zat zatVar = new zat(api2, z2);
                arrayList.add(zatVar);
                Api.AbstractClientBuilder abstractClientBuilder = (Api.AbstractClientBuilder) Preconditions.checkNotNull(api2.zaa());
                Api.Client buildClient = abstractClientBuilder.buildClient(this.zai, this.zan, zaa, (ClientSettings) apiOptions, (ConnectionCallbacks) zatVar, (OnConnectionFailedListener) zatVar);
                arrayMap2.put(api2.zab(), buildClient);
                if (abstractClientBuilder.getPriority() == 1) {
                    if (apiOptions != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                }
                if (buildClient.providesSignIn()) {
                    if (api == null) {
                        api = api2;
                    } else {
                        String zad2 = api2.zad();
                        String zad3 = api.zad();
                        StringBuilder sb = new StringBuilder(String.valueOf(zad2).length() + 21 + String.valueOf(zad3).length());
                        sb.append(zad2);
                        throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7334931506967126916L, -4123858603881744167L, 1622038383673287448L, 4732483111280850427L}), sb, zad3));
                    }
                }
            }
            if (api != null) {
                if (!z3) {
                    if (this.zaa == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.checkState(z, new ObfuscatedString(new long[]{-7528083759307687159L, 2779609474122747707L, -6995265367314849299L, 7233694352579893082L, 8428007540538880859L, -5543123150830040296L, -5193782629319541482L, -6602660937819777560L, 5153627402002815015L, -5769787710348837330L, 1078440786169143164L, 3719395798678767026L, 8750030041224184326L, 4443396929151954734L, 1356001134489438121L, 5615916879436558247L}).toString(), api.zad());
                    Preconditions.checkState(this.zab.equals(this.zac), new ObfuscatedString(new long[]{-5255912052495756334L, -9165494090812449999L, 929585415603505285L, -1850519905411965982L, -4794106525871600822L, 8070614910934158584L, 3878758392062185506L, 5786400399821626000L, 4976864143986421514L, -7540135856965664657L, -3908979393152180507L, 4635390714667196805L, 7216973842204355703L, 3492645073022959209L, -5331135002475051559L, 3181259846007055160L}).toString(), api.zad());
                } else {
                    String zad4 = api.zad();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(zad4).length() + 82);
                    sb2.append(new ObfuscatedString(new long[]{7723003007052929903L, 5482108908655554785L, -2093997853983619273L}).toString());
                    sb2.append(zad4);
                    throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5140746280840940307L, -9141494839438552376L, 5668582446260065619L, -6526266430699823804L, -7404687502981385795L, 3471846612736961638L, -2407886693469635490L, -2864831936045411466L, -8331118978411443976L, -6645943951410712427L}), sb2));
                }
            }
            zabe zabeVar = new zabe(this.zai, new ReentrantLock(), this.zan, zaa, this.zao, this.zap, arrayMap, this.zaq, this.zar, arrayMap2, this.zal, zabe.zad(arrayMap2.values(), true), arrayList);
            synchronized (GoogleApiClient.zaa) {
                GoogleApiClient.zaa.add(zabeVar);
            }
            if (this.zal >= 0) {
                zak.zaa(this.zak).zad(this.zal, zabeVar, this.zam);
            }
            return zabeVar;
        }

        @NonNull
        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, int i, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            LifecycleActivity lifecycleActivity = new LifecycleActivity((Activity) fragmentActivity);
            Preconditions.checkArgument(i >= 0, new ObfuscatedString(new long[]{-844385537671613800L, 6957031574094858982L, 5409546428008257276L, 594794088563466143L, -5968044034100798757L}).toString());
            this.zal = i;
            this.zam = onConnectionFailedListener;
            this.zak = lifecycleActivity;
            return this;
        }

        @NonNull
        public Builder setAccountName(@NonNull String str) {
            Account account;
            if (str == null) {
                account = null;
            } else {
                account = new Account(str, new ObfuscatedString(new long[]{-1269375763967157767L, -2172534027060834464L, 8043552603006579248L}).toString());
            }
            this.zaa = account;
            return this;
        }

        @NonNull
        public Builder setGravityForPopups(int i) {
            this.zad = i;
            return this;
        }

        @NonNull
        public Builder setHandler(@NonNull Handler handler) {
            Preconditions.checkNotNull(handler, new ObfuscatedString(new long[]{-8808856687381612382L, -3522641139613481334L, 4243361021920935172L, -6087917402586478031L}).toString());
            this.zan = handler.getLooper();
            return this;
        }

        @NonNull
        public Builder setViewForPopups(@NonNull View view) {
            Preconditions.checkNotNull(view, new ObfuscatedString(new long[]{3420931275806743457L, -293477311076061607L, 1612429873179293648L, 5084638272918644235L}).toString());
            this.zae = view;
            return this;
        }

        @NonNull
        public Builder useDefaultAccount() {
            setAccountName(new ObfuscatedString(new long[]{-8920597762687049859L, -2390763902396475397L, -866183109451883447L, 1941064626199893573L}).toString());
            return this;
        }

        @NonNull
        @VisibleForTesting
        public final ClientSettings zaa() {
            SignInOptions signInOptions = SignInOptions.zaa;
            Map<Api<?>, Api.ApiOptions> map = this.zaj;
            Api<SignInOptions> api = com.google.android.gms.signin.zad.zag;
            if (map.containsKey(api)) {
                signInOptions = (SignInOptions) this.zaj.get(api);
            }
            return new ClientSettings(this.zaa, this.zab, this.zah, this.zad, this.zae, this.zaf, this.zag, signInOptions, false);
        }

        @NonNull
        public Builder enableAutoManage(@NonNull FragmentActivity fragmentActivity, @Nullable OnConnectionFailedListener onConnectionFailedListener) {
            enableAutoManage(fragmentActivity, 0, onConnectionFailedListener);
            return this;
        }

        @NonNull
        public <T extends Api.ApiOptions.NotRequiredOptions> Builder addApiIfAvailable(@NonNull Api<? extends Api.ApiOptions.NotRequiredOptions> api, @NonNull Scope... scopeArr) {
            Preconditions.checkNotNull(api, new ObfuscatedString(new long[]{1522433438878741650L, 3665734064934594784L, -2044390041425018646L, -7414640566313004591L}).toString());
            this.zaj.put(api, null);
            zab(api, null, scopeArr);
            return this;
        }

        @NonNull
        public <O extends Api.ApiOptions.HasOptions> Builder addApi(@NonNull Api<O> api, @NonNull O o) {
            Preconditions.checkNotNull(api, new ObfuscatedString(new long[]{7059702952353415668L, 5752966574006839206L, 5965768963235739230L, 7697021425209793911L}).toString());
            Preconditions.checkNotNull(o, new ObfuscatedString(new long[]{-4314094956646135204L, -6012463030094762957L, 6203200027865315558L, 5930275685767871831L, -3962359258415087268L, 7516643231855614207L, 2287611943801169321L}).toString());
            this.zaj.put(api, o);
            List<Scope> impliedScopes = ((Api.BaseClientBuilder) Preconditions.checkNotNull(api.zac(), new ObfuscatedString(new long[]{-6908899901391742512L, -2419757375762587593L, -6812152855101693419L, 3233541258215488019L, 7562671720023676151L, -6423568776149783763L}).toString())).getImpliedScopes(o);
            this.zac.addAll(impliedScopes);
            this.zab.addAll(impliedScopes);
            return this;
        }

        @KeepForSdk
        public Builder(@NonNull Context context, @NonNull ConnectionCallbacks connectionCallbacks, @NonNull OnConnectionFailedListener onConnectionFailedListener) {
            this(context);
            Preconditions.checkNotNull(connectionCallbacks, new ObfuscatedString(new long[]{-5374856805982448218L, -1717588985421634503L, -3033472535289551638L, 4550191734469186533L, 7084382882291536115L, 4474502437676436751L}).toString());
            this.zaq.add(connectionCallbacks);
            Preconditions.checkNotNull(onConnectionFailedListener, new ObfuscatedString(new long[]{8650346619460567158L, 2794650514790986597L, 8549193256289216763L, 6000977035803809830L, -6026423781773128863L, -1774217622914166111L, -2429768050486833420L}).toString());
            this.zar.add(onConnectionFailedListener);
        }
    }
}
