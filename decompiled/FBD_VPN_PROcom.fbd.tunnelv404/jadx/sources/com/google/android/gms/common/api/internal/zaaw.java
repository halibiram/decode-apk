package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes2.dex */
public final class zaaw implements zabf {
    private final zabi zaa;
    private final Lock zab;
    private final Context zac;
    private final GoogleApiAvailabilityLight zad;

    @Nullable
    private ConnectionResult zae;
    private int zaf;
    private int zah;

    @Nullable
    private com.google.android.gms.signin.zae zak;
    private boolean zal;
    private boolean zam;
    private boolean zan;

    @Nullable
    private IAccountAccessor zao;
    private boolean zap;
    private boolean zaq;

    @Nullable
    private final ClientSettings zar;
    private final Map<Api<?>, Boolean> zas;

    @Nullable
    private final Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> zat;
    private int zag = 0;
    private final Bundle zai = new Bundle();
    private final Set<Api.AnyClientKey> zaj = new HashSet();
    private final ArrayList<Future<?>> zau = new ArrayList<>();

    public zaaw(zabi zabiVar, @Nullable ClientSettings clientSettings, Map<Api<?>, Boolean> map, GoogleApiAvailabilityLight googleApiAvailabilityLight, @Nullable Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, Lock lock, Context context) {
        this.zaa = zabiVar;
        this.zar = clientSettings;
        this.zas = map;
        this.zad = googleApiAvailabilityLight;
        this.zat = abstractClientBuilder;
        this.zab = lock;
        this.zac = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void zaA() {
        this.zam = false;
        this.zaa.zag.zad = Collections.emptySet();
        for (Api.AnyClientKey<?> anyClientKey : this.zaj) {
            if (!this.zaa.zab.containsKey(anyClientKey)) {
                this.zaa.zab.put(anyClientKey, new ConnectionResult(17, null));
            }
        }
    }

    @GuardedBy("mLock")
    private final void zaB(boolean z) {
        com.google.android.gms.signin.zae zaeVar = this.zak;
        if (zaeVar != null) {
            if (zaeVar.isConnected() && z) {
                zaeVar.zaa();
            }
            zaeVar.disconnect();
            this.zao = null;
        }
    }

    @GuardedBy("mLock")
    private final void zaC() {
        Bundle bundle;
        this.zaa.zai();
        zabj.zaa().execute(new zaak(this));
        com.google.android.gms.signin.zae zaeVar = this.zak;
        if (zaeVar != null) {
            if (this.zap) {
                zaeVar.zac((IAccountAccessor) Preconditions.checkNotNull(this.zao), this.zaq);
            }
            zaB(false);
        }
        Iterator<Api.AnyClientKey<?>> it = this.zaa.zab.keySet().iterator();
        while (it.hasNext()) {
            ((Api.Client) Preconditions.checkNotNull(this.zaa.zaa.get(it.next()))).disconnect();
        }
        if (this.zai.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.zai;
        }
        this.zaa.zah.zab(bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void zaD(ConnectionResult connectionResult) {
        zaz();
        zaB(!connectionResult.hasResolution());
        this.zaa.zak(connectionResult);
        this.zaa.zah.zaa(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void zaE(ConnectionResult connectionResult, Api<?> api, boolean z) {
        int priority = api.zac().getPriority();
        if ((!z || connectionResult.hasResolution() || this.zad.getErrorResolutionIntent(connectionResult.getErrorCode()) != null) && (this.zae == null || priority < this.zaf)) {
            this.zae = connectionResult;
            this.zaf = priority;
        }
        this.zaa.zab.put(api.zab(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final void zaF() {
        if (this.zah != 0) {
            return;
        }
        if (!this.zam || this.zan) {
            ArrayList arrayList = new ArrayList();
            this.zag = 1;
            this.zah = this.zaa.zaa.size();
            for (Api.AnyClientKey<?> anyClientKey : this.zaa.zaa.keySet()) {
                if (this.zaa.zab.containsKey(anyClientKey)) {
                    if (zaH()) {
                        zaC();
                    }
                } else {
                    arrayList.add(this.zaa.zaa.get(anyClientKey));
                }
            }
            if (!arrayList.isEmpty()) {
                this.zau.add(zabj.zaa().submit(new zaap(this, arrayList)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean zaG(int i) {
        if (this.zag != i) {
            new ObfuscatedString(new long[]{-3767663170465007059L, -8739753235126277953L, 4448819664974647769L}).toString();
            this.zaa.zag.zaf();
            new ObfuscatedString(new long[]{2878752203102216518L, -7537837708023515652L, 2373472879019940686L}).toString();
            new ObfuscatedString(new long[]{7927980351215990388L, -6341094285074061749L, 6010186128139033781L, -9172203778923270533L}).toString().concat(toString());
            new ObfuscatedString(new long[]{-2209701682073501592L, -3522877089616941508L, -1878901418066734606L, -4420324324927031217L}).toString();
            new ObfuscatedString(new long[]{7602238110945965477L, 4297893196480463674L, -7319599755923742548L}).toString();
            String zaJ = zaJ(this.zag);
            String zaJ2 = zaJ(i);
            new StringBuilder(zaJ2.length() + zaJ.length() + 70);
            new ObfuscatedString(new long[]{-1878820392681993073L, -4860119085952672374L, -4553569260356098543L, -687562283169681399L, -7101019007768253847L, 1534361188457395288L}).toString();
            new ObfuscatedString(new long[]{-6825350452273923191L, 399471720691651872L, 874384535453946773L, -3835059302954443444L, 7274788322067383310L}).toString();
            new Exception();
            new ObfuscatedString(new long[]{-587848902304562551L, 2643709728463849867L, 9163891794899070323L}).toString();
            zaD(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean zaH() {
        int i = this.zah - 1;
        this.zah = i;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            new ObfuscatedString(new long[]{1337323567089660447L, 3347564432878048063L, -6388052337478422685L}).toString();
            this.zaa.zag.zaf();
            Log.wtf(new ObfuscatedString(new long[]{3902906059327913779L, -1977558713776830698L, -2775742164969462106L}).toString(), new ObfuscatedString(new long[]{-6700547510970601202L, 8759129408263473155L, -2528116247099375759L, 5105093031106138648L, 8552002489867213888L, 5855436304977765693L, 399005064184531179L, -4364632394460313603L, -4055063629150729544L, -5619823653478505142L, -4049454480463268090L, -6926023191941441169L, -8575015560044440627L, -4888610177357809469L, -8154868691373581240L, 7797371465391055466L, 6146328255316590917L, -2890812975843418865L, 5924239434076141115L}).toString(), new Exception());
            zaD(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.zae;
        if (connectionResult != null) {
            this.zaa.zaf = this.zaf;
            zaD(connectionResult);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public final boolean zaI(ConnectionResult connectionResult) {
        if (this.zal && !connectionResult.hasResolution()) {
            return true;
        }
        return false;
    }

    private static final String zaJ(int i) {
        return (i != 0 ? new ObfuscatedString(new long[]{1694535037782391171L, 6410782224567962429L, -6563384474717888248L, -3189835838354307230L, 5215151937236097444L}) : new ObfuscatedString(new long[]{-2449216530024542316L, -7715453275707871695L, -7864449413805144764L, 2027706128745328846L, -3219642432326687850L, 5011938363026970574L})).toString();
    }

    public static /* bridge */ /* synthetic */ Set zao(zaaw zaawVar) {
        ClientSettings clientSettings = zaawVar.zar;
        if (clientSettings == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(clientSettings.getRequiredScopes());
        Map<Api<?>, com.google.android.gms.common.internal.zab> zad = zaawVar.zar.zad();
        for (Api<?> api : zad.keySet()) {
            if (!zaawVar.zaa.zab.containsKey(api.zab())) {
                hashSet.addAll(zad.get(api).zaa);
            }
        }
        return hashSet;
    }

    public static /* bridge */ /* synthetic */ void zar(zaaw zaawVar, com.google.android.gms.signin.internal.zak zakVar) {
        if (!zaawVar.zaG(0)) {
            return;
        }
        ConnectionResult zaa = zakVar.zaa();
        if (zaa.isSuccess()) {
            com.google.android.gms.common.internal.zav zavVar = (com.google.android.gms.common.internal.zav) Preconditions.checkNotNull(zakVar.zab());
            ConnectionResult zaa2 = zavVar.zaa();
            if (!zaa2.isSuccess()) {
                String valueOf = String.valueOf(zaa2);
                Log.wtf(new ObfuscatedString(new long[]{-6507158718789377678L, 8651217324020422468L, 8597881402108812L}).toString(), new ObfuscatedString(new long[]{185318068159946845L, 8191481542121755605L, -1880961321060093008L, 5359998593597882087L, 6138658439682075100L, -647489197514015852L, 7526507055130342532L}).toString().concat(valueOf), new Exception());
                zaawVar.zaD(zaa2);
                return;
            }
            zaawVar.zan = true;
            zaawVar.zao = (IAccountAccessor) Preconditions.checkNotNull(zavVar.zab());
            zaawVar.zap = zavVar.zac();
            zaawVar.zaq = zavVar.zad();
            zaawVar.zaF();
            return;
        }
        if (zaawVar.zaI(zaa)) {
            zaawVar.zaA();
            zaawVar.zaF();
        } else {
            zaawVar.zaD(zaa);
        }
    }

    private final void zaz() {
        ArrayList<Future<?>> arrayList = this.zau;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).cancel(true);
        }
        this.zau.clear();
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zaa(T t) {
        this.zaa.zag.zaa.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zab(T t) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{3460143141940012631L, -1708564015293857133L, 3151415877579828633L, 3821102851236107625L, -3082020199172073588L, 6891907360664926723L}).toString());
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zad() {
        boolean z;
        this.zaa.zab.clear();
        this.zam = false;
        zaas zaasVar = null;
        this.zae = null;
        this.zag = 0;
        this.zal = true;
        this.zan = false;
        this.zap = false;
        HashMap hashMap = new HashMap();
        boolean z2 = false;
        for (Api<?> api : this.zas.keySet()) {
            Api.Client client = (Api.Client) Preconditions.checkNotNull(this.zaa.zaa.get(api.zab()));
            if (api.zac().getPriority() == 1) {
                z = true;
            } else {
                z = false;
            }
            z2 |= z;
            boolean booleanValue = this.zas.get(api).booleanValue();
            if (client.requiresSignIn()) {
                this.zam = true;
                if (booleanValue) {
                    this.zaj.add(api.zab());
                } else {
                    this.zal = false;
                }
            }
            hashMap.put(client, new zaal(this, api, booleanValue));
        }
        if (z2) {
            this.zam = false;
        }
        if (this.zam) {
            Preconditions.checkNotNull(this.zar);
            Preconditions.checkNotNull(this.zat);
            this.zar.zae(Integer.valueOf(System.identityHashCode(this.zaa.zag)));
            zaat zaatVar = new zaat(this, zaasVar);
            Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder = this.zat;
            Context context = this.zac;
            Looper looper = this.zaa.zag.getLooper();
            ClientSettings clientSettings = this.zar;
            this.zak = abstractClientBuilder.buildClient(context, looper, clientSettings, (ClientSettings) clientSettings.zaa(), (GoogleApiClient.ConnectionCallbacks) zaatVar, (GoogleApiClient.OnConnectionFailedListener) zaatVar);
        }
        this.zah = this.zaa.zaa.size();
        this.zau.add(zabj.zaa().submit(new zaao(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zae() {
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zag(@Nullable Bundle bundle) {
        if (!zaG(1)) {
            return;
        }
        if (bundle != null) {
            this.zai.putAll(bundle);
        }
        if (zaH()) {
            zaC();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zah(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (!zaG(1)) {
            return;
        }
        zaE(connectionResult, api, z);
        if (zaH()) {
            zaC();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zai(int i) {
        zaD(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final boolean zaj() {
        zaz();
        zaB(true);
        this.zaa.zak(null);
        return true;
    }
}
