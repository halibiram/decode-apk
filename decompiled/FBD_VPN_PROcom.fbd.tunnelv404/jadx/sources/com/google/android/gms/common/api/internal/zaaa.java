package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zaaa implements zaca {
    private final Context zaa;
    private final zabe zab;
    private final Looper zac;
    private final zabi zad;
    private final zabi zae;
    private final Map<Api.AnyClientKey<?>, zabi> zaf;

    @Nullable
    private final Api.Client zah;

    @Nullable
    private Bundle zai;
    private final Lock zam;
    private final Set<SignInConnectionListener> zag = Collections.newSetFromMap(new WeakHashMap());

    @Nullable
    private ConnectionResult zaj = null;

    @Nullable
    private ConnectionResult zak = null;
    private boolean zal = false;

    @GuardedBy("mLock")
    private int zan = 0;

    private zaaa(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, Map<Api.AnyClientKey<?>, Api.Client> map2, ClientSettings clientSettings, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, @Nullable Api.Client client, ArrayList<zat> arrayList, ArrayList<zat> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.zaa = context;
        this.zab = zabeVar;
        this.zam = lock;
        this.zac = looper;
        this.zah = client;
        this.zad = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map2, null, map4, null, arrayList2, new zax(this, null));
        this.zae = new zabi(context, zabeVar, lock, looper, googleApiAvailabilityLight, map, clientSettings, map3, abstractClientBuilder, arrayList, new zaz(this, null));
        ArrayMap arrayMap = new ArrayMap();
        Iterator<Api.AnyClientKey<?>> it = map2.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put(it.next(), this.zad);
        }
        Iterator<Api.AnyClientKey<?>> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            arrayMap.put(it2.next(), this.zae);
        }
        this.zaf = DesugarCollections.unmodifiableMap(arrayMap);
    }

    @GuardedBy("mLock")
    private final void zaA(ConnectionResult connectionResult) {
        int i = this.zan;
        if (i != 1) {
            if (i != 2) {
                Log.wtf(new ObfuscatedString(new long[]{7391412755217040228L, 2793443921117753752L, -7869648951548308008L}).toString(), new ObfuscatedString(new long[]{-5586062933849269237L, 1720638095099155545L, -6228041380242666943L, 6194955267704890986L, 7946663045143147263L, -6835742365677450374L, 1875784191345966974L, -4973191924200192222L, 5401868915951323078L, -8110123837362011968L, -1206190180855498504L, 8382632911755853119L, -2566845727886410176L, 524490779186505371L, 1421320916271565705L, -8686712172408505094L}).toString(), new Exception());
                this.zan = 0;
            }
            this.zab.zaa(connectionResult);
        }
        zaB();
        this.zan = 0;
    }

    @GuardedBy("mLock")
    private final void zaB() {
        Iterator<SignInConnectionListener> it = this.zag.iterator();
        while (it.hasNext()) {
            it.next().onComplete();
        }
        this.zag.clear();
    }

    @GuardedBy("mLock")
    private final boolean zaC() {
        ConnectionResult connectionResult = this.zak;
        if (connectionResult != null && connectionResult.getErrorCode() == 4) {
            return true;
        }
        return false;
    }

    private final boolean zaD(BaseImplementation.ApiMethodImpl<? extends Result, ? extends Api.AnyClient> apiMethodImpl) {
        zabi zabiVar = this.zaf.get(apiMethodImpl.getClientKey());
        Preconditions.checkNotNull(zabiVar, new ObfuscatedString(new long[]{-7849423931890027901L, 8545793799873326659L, 9124962668547959617L, 2909634965875664939L, -7417744023386638670L, -1705287687404264350L, -8045000516310586090L, 4015550097937753999L, -7778325228072811122L, 4145262543294304401L}).toString());
        return zabiVar.equals(this.zae);
    }

    private static boolean zaE(@Nullable ConnectionResult connectionResult) {
        if (connectionResult != null && connectionResult.isSuccess()) {
            return true;
        }
        return false;
    }

    public static zaaa zag(Context context, zabe zabeVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends com.google.android.gms.signin.zae, SignInOptions> abstractClientBuilder, ArrayList<zat> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        Api.Client client = null;
        for (Map.Entry<Api.AnyClientKey<?>, Api.Client> entry : map.entrySet()) {
            Api.Client value = entry.getValue();
            if (true == value.providesSignIn()) {
                client = value;
            }
            if (value.requiresSignIn()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        Preconditions.checkState(!arrayMap.isEmpty(), new ObfuscatedString(new long[]{1349412678426123393L, 25080456661036881L, -7389271248917437084L, 5950227574518625188L, -3123961212090714758L, 2999554787263620065L, 1384892926785141338L, -1226655591787871257L, 4936566339961390888L, 8145607139559189861L, -1860983092324438098L, 3229194246174997380L}).toString());
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.AnyClientKey<?> zab = api.zab();
            if (arrayMap.containsKey(zab)) {
                arrayMap3.put(api, map2.get(api));
            } else if (arrayMap2.containsKey(zab)) {
                arrayMap4.put(api, map2.get(api));
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-4198304141971882666L, 6903347630551994646L, -4107889388559798817L, -4101893601865108790L, -2703469907860637752L, 5554036586448612444L, 3526812353738182216L, -8034628164454124336L, 694895925908438967L, 8089076230675756350L, -1242794990950922425L, 8723031253618130029L}).toString());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zat zatVar = arrayList.get(i);
            if (arrayMap3.containsKey(zatVar.zaa)) {
                arrayList2.add(zatVar);
            } else if (arrayMap4.containsKey(zatVar.zaa)) {
                arrayList3.add(zatVar);
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8228868873976140424L, 2568910772844015307L, -3853667373978132388L, 7547004177644551330L, 5313968378486506842L, -3062836115429357810L, 6392802407754226111L, -7689661538384483344L, -5315181691070303688L, -5707992993449257238L}).toString());
            }
        }
        return new zaaa(context, zabeVar, lock, looper, googleApiAvailabilityLight, arrayMap, arrayMap2, clientSettings, abstractClientBuilder, client, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    public static /* bridge */ /* synthetic */ void zan(zaaa zaaaVar, int i, boolean z) {
        zaaaVar.zab.zac(i, z);
        zaaaVar.zak = null;
        zaaaVar.zaj = null;
    }

    public static /* bridge */ /* synthetic */ void zao(zaaa zaaaVar, Bundle bundle) {
        Bundle bundle2 = zaaaVar.zai;
        if (bundle2 == null) {
            zaaaVar.zai = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    public static /* bridge */ /* synthetic */ void zap(zaaa zaaaVar) {
        ConnectionResult connectionResult;
        if (zaE(zaaaVar.zaj)) {
            if (!zaE(zaaaVar.zak) && !zaaaVar.zaC()) {
                ConnectionResult connectionResult2 = zaaaVar.zak;
                if (connectionResult2 != null) {
                    if (zaaaVar.zan == 1) {
                        zaaaVar.zaB();
                        return;
                    } else {
                        zaaaVar.zaA(connectionResult2);
                        zaaaVar.zad.zar();
                        return;
                    }
                }
                return;
            }
            int i = zaaaVar.zan;
            if (i != 1) {
                if (i != 2) {
                    Log.wtf(new ObfuscatedString(new long[]{-498204368381978803L, 6145248723211806819L, 3390478225228604679L}).toString(), new ObfuscatedString(new long[]{5684258666138394100L, -1785362317131078202L, -1087176813746381480L, -8617042874716962971L, -7573568149046793578L, 7390978494204418301L, -8831327394159659069L, -6463443397420274304L, 5662941668801752546L, -8425912829866510670L, 8120990689276080605L, 1816610353580117930L, 5909954893469061309L, 8369843693812727426L, 1876803447350190166L, -7820252671623336030L}).toString(), new AssertionError());
                    zaaaVar.zan = 0;
                    return;
                }
                ((zabe) Preconditions.checkNotNull(zaaaVar.zab)).zab(zaaaVar.zai);
            }
            zaaaVar.zaB();
            zaaaVar.zan = 0;
            return;
        }
        if (zaaaVar.zaj != null && zaE(zaaaVar.zak)) {
            zaaaVar.zae.zar();
            zaaaVar.zaA((ConnectionResult) Preconditions.checkNotNull(zaaaVar.zaj));
            return;
        }
        ConnectionResult connectionResult3 = zaaaVar.zaj;
        if (connectionResult3 != null && (connectionResult = zaaaVar.zak) != null) {
            if (zaaaVar.zae.zaf < zaaaVar.zad.zaf) {
                connectionResult3 = connectionResult;
            }
            zaaaVar.zaA(connectionResult3);
        }
    }

    @Nullable
    private final PendingIntent zaz() {
        if (this.zah == null) {
            return null;
        }
        return com.google.android.gms.internal.base.zal.zaa(this.zaa, System.identityHashCode(this.zab), this.zah.getSignInIntent(), com.google.android.gms.internal.base.zal.zaa | 134217728);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final ConnectionResult zab() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final ConnectionResult zac(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @Nullable
    @GuardedBy("mLock")
    public final ConnectionResult zad(@NonNull Api<?> api) {
        if (Objects.equal(this.zaf.get(api.zab()), this.zae)) {
            if (zaC()) {
                return new ConnectionResult(4, zaz());
            }
            return this.zae.zad(api);
        }
        return this.zad.zad(api);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zae(@NonNull T t) {
        if (zaD(t)) {
            if (zaC()) {
                t.setFailedResult(new Status(4, (String) null, zaz()));
                return t;
            }
            this.zae.zae(t);
            return t;
        }
        this.zad.zae(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zaf(@NonNull T t) {
        if (zaD(t)) {
            if (zaC()) {
                t.setFailedResult(new Status(4, (String) null, zaz()));
                return t;
            }
            return (T) this.zae.zaf(t);
        }
        return (T) this.zad.zaf(t);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void zaq() {
        this.zan = 2;
        this.zal = false;
        this.zak = null;
        this.zaj = null;
        this.zad.zaq();
        this.zae.zaq();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void zar() {
        this.zak = null;
        this.zaj = null;
        this.zan = 0;
        this.zad.zar();
        this.zae.zar();
        zaB();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zas(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{-3915273776714106858L, 2812794801192931471L, -6936898806864626687L}).toString()).println(new ObfuscatedString(new long[]{-1462277832081197399L, -6254632029058176468L}).toString());
        this.zae.zas(String.valueOf(str).concat(new ObfuscatedString(new long[]{-5664509801277645813L, -1905355729015057100L}).toString()), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{-5623553524622104154L, 8258168040969458271L, -4356853607572189220L}).toString()).println(new ObfuscatedString(new long[]{-2895013638497058460L, -5074062052357775134L}).toString());
        this.zad.zas(String.valueOf(str).concat(new ObfuscatedString(new long[]{-1101081614584666538L, 7636194784611779805L}).toString()), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    @GuardedBy("mLock")
    public final void zat() {
        this.zad.zat();
        this.zae.zat();
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final void zau() {
        this.zam.lock();
        try {
            boolean zax = zax();
            this.zae.zar();
            this.zak = new ConnectionResult(4);
            if (zax) {
                new com.google.android.gms.internal.base.zaq(this.zac).post(new zav(this));
            } else {
                zaB();
            }
            this.zam.unlock();
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
    
        if (r3.zan == 1) goto L11;
     */
    @Override // com.google.android.gms.common.api.internal.zaca
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zaw() {
        this.zam.lock();
        try {
            boolean z = false;
            if (this.zad.zaw()) {
                if (!this.zae.zaw() && !zaC()) {
                }
                z = true;
            }
            return z;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zax() {
        boolean z;
        this.zam.lock();
        try {
            if (this.zan == 2) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } finally {
            this.zam.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zaca
    public final boolean zay(SignInConnectionListener signInConnectionListener) {
        this.zam.lock();
        try {
            if (!zax()) {
                if (zaw()) {
                }
                this.zam.unlock();
                return false;
            }
            if (!this.zae.zaw()) {
                this.zag.add(signInConnectionListener);
                if (this.zan == 0) {
                    this.zan = 1;
                }
                this.zak = null;
                this.zae.zaq();
                this.zam.unlock();
                return true;
            }
            this.zam.unlock();
            return false;
        } catch (Throwable th) {
            this.zam.unlock();
            throw th;
        }
    }
}
