package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class zabq<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zau {
    final /* synthetic */ GoogleApiManager zaa;

    @NotOnlyInitialized
    private final Api.Client zac;
    private final ApiKey<O> zad;
    private final zaad zae;
    private final int zah;

    @Nullable
    private final zact zai;
    private boolean zaj;
    private final Queue<zai> zab = new LinkedList();
    private final Set<zal> zaf = new HashSet();
    private final Map<ListenerHolder.ListenerKey<?>, zaci> zag = new HashMap();
    private final List<zabs> zak = new ArrayList();

    @Nullable
    private ConnectionResult zal = null;
    private int zam = 0;

    @WorkerThread
    public zabq(GoogleApiManager googleApiManager, GoogleApi<O> googleApi) {
        Handler handler;
        Context context;
        Handler handler2;
        this.zaa = googleApiManager;
        handler = googleApiManager.zat;
        Api.Client zab = googleApi.zab(handler.getLooper(), this);
        this.zac = zab;
        this.zad = googleApi.getApiKey();
        this.zae = new zaad();
        this.zah = googleApi.zaa();
        if (zab.requiresSignIn()) {
            context = googleApiManager.zak;
            handler2 = googleApiManager.zat;
            this.zai = googleApi.zac(context, handler2);
            return;
        }
        this.zai = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @WorkerThread
    private final Feature zaB(@Nullable Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] availableFeatures = this.zac.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
            for (Feature feature : availableFeatures) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) arrayMap.get(feature2.getName());
                if (l == null || l.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @WorkerThread
    private final void zaC(ConnectionResult connectionResult) {
        String str;
        for (zal zalVar : this.zaf) {
            if (Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS)) {
                str = this.zac.getEndpointPackageName();
            } else {
                str = null;
            }
            zalVar.zac(this.zad, connectionResult, str);
        }
        this.zaf.clear();
    }

    @WorkerThread
    public final void zaD(Status status) {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        zaE(status, null, false);
    }

    @WorkerThread
    private final void zaE(@Nullable Status status, @Nullable Exception exc, boolean z) {
        Handler handler;
        boolean z2;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        boolean z3 = true;
        if (status != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (exc != null) {
            z3 = false;
        }
        if (z2 != z3) {
            Iterator<zai> it = this.zab.iterator();
            while (it.hasNext()) {
                zai next = it.next();
                if (!z || next.zac == 2) {
                    if (status != null) {
                        next.zad(status);
                    } else {
                        next.zae(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5941211061389975866L, 4667066407273897135L, -4641146906480696991L, -8298443364689536758L, 6593811614107612828L, 2048634393918911924L}).toString());
    }

    @WorkerThread
    private final void zaF() {
        ArrayList arrayList = new ArrayList(this.zab);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (this.zac.isConnected()) {
                if (zaL(zaiVar)) {
                    this.zab.remove(zaiVar);
                }
            } else {
                return;
            }
        }
    }

    @WorkerThread
    public final void zaG() {
        zan();
        zaC(ConnectionResult.RESULT_SUCCESS);
        zaK();
        Iterator<zaci> it = this.zag.values().iterator();
        while (it.hasNext()) {
            zaci next = it.next();
            if (zaB(next.zaa.getRequiredFeatures()) != null) {
                it.remove();
            } else {
                try {
                    next.zaa.registerListener(this.zac, new TaskCompletionSource<>());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    this.zac.disconnect(new ObfuscatedString(new long[]{5131182940496386410L, 6391899007391654418L, -8477100538811812741L, -5241644211666783917L, 3606455968056745332L, 490303204928257223L, -2542328113714954684L, -5575686270589673380L, -8783573683342454634L, -7903790097196444066L}).toString());
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        zaF();
        zaI();
    }

    @WorkerThread
    public final void zaH(int i) {
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        com.google.android.gms.common.internal.zal zalVar;
        zan();
        this.zaj = true;
        this.zae.zae(i, this.zac.getLastDisconnectMessage());
        GoogleApiManager googleApiManager = this.zaa;
        handler = googleApiManager.zat;
        handler2 = googleApiManager.zat;
        Message obtain = Message.obtain(handler2, 9, this.zad);
        j = this.zaa.zae;
        handler.sendMessageDelayed(obtain, j);
        GoogleApiManager googleApiManager2 = this.zaa;
        handler3 = googleApiManager2.zat;
        handler4 = googleApiManager2.zat;
        Message obtain2 = Message.obtain(handler4, 11, this.zad);
        j2 = this.zaa.zaf;
        handler3.sendMessageDelayed(obtain2, j2);
        zalVar = this.zaa.zam;
        zalVar.zac();
        Iterator<zaci> it = this.zag.values().iterator();
        while (it.hasNext()) {
            it.next().zac.run();
        }
    }

    private final void zaI() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j;
        handler = this.zaa.zat;
        handler.removeMessages(12, this.zad);
        GoogleApiManager googleApiManager = this.zaa;
        handler2 = googleApiManager.zat;
        handler3 = googleApiManager.zat;
        Message obtainMessage = handler3.obtainMessage(12, this.zad);
        j = this.zaa.zag;
        handler2.sendMessageDelayed(obtainMessage, j);
    }

    @WorkerThread
    private final void zaJ(zai zaiVar) {
        zaiVar.zag(this.zae, zaz());
        try {
            zaiVar.zaf(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.zac.disconnect(new ObfuscatedString(new long[]{2926368337259700684L, 4517918291238909911L, 3680587613170716645L, 1611429601824852549L, 8042741442281067221L, 8617167761747381623L, -1946783396183523209L, 6361169216841022570L}).toString());
        }
    }

    @WorkerThread
    private final void zaK() {
        Handler handler;
        Handler handler2;
        if (this.zaj) {
            handler = this.zaa.zat;
            handler.removeMessages(11, this.zad);
            handler2 = this.zaa.zat;
            handler2.removeMessages(9, this.zad);
            this.zaj = false;
        }
    }

    @WorkerThread
    private final boolean zaL(zai zaiVar) {
        boolean z;
        Handler handler;
        Handler handler2;
        long j;
        Handler handler3;
        Handler handler4;
        long j2;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        long j3;
        if (!(zaiVar instanceof zac)) {
            zaJ(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature zaB = zaB(zacVar.zab(this));
        if (zaB == null) {
            zaJ(zaiVar);
            return true;
        }
        String name = this.zac.getClass().getName();
        String name2 = zaB.getName();
        zaB.getVersion();
        new StringBuilder(name.length() + 77 + String.valueOf(name2).length());
        new ObfuscatedString(new long[]{5994845790447501606L, -1656720981692360157L, 4637990234501520697L, 8381819561149550663L, 1415193060939618682L, 6104324362671357208L, 7033858577984701103L, -8877420812483093080L}).toString();
        new ObfuscatedString(new long[]{-2556358394595053624L, -8586335409185567988L}).toString();
        new ObfuscatedString(new long[]{-3330381366789191102L, 8256561027043105964L}).toString();
        new ObfuscatedString(new long[]{6983895066595614944L, -3598001610133293423L, 6230351222832383738L}).toString();
        z = this.zaa.zau;
        if (z && zacVar.zaa(this)) {
            zabs zabsVar = new zabs(this.zad, zaB, null);
            int indexOf = this.zak.indexOf(zabsVar);
            if (indexOf >= 0) {
                zabs zabsVar2 = this.zak.get(indexOf);
                handler5 = this.zaa.zat;
                handler5.removeMessages(15, zabsVar2);
                GoogleApiManager googleApiManager = this.zaa;
                handler6 = googleApiManager.zat;
                handler7 = googleApiManager.zat;
                Message obtain = Message.obtain(handler7, 15, zabsVar2);
                j3 = this.zaa.zae;
                handler6.sendMessageDelayed(obtain, j3);
                return false;
            }
            this.zak.add(zabsVar);
            GoogleApiManager googleApiManager2 = this.zaa;
            handler = googleApiManager2.zat;
            handler2 = googleApiManager2.zat;
            Message obtain2 = Message.obtain(handler2, 15, zabsVar);
            j = this.zaa.zae;
            handler.sendMessageDelayed(obtain2, j);
            GoogleApiManager googleApiManager3 = this.zaa;
            handler3 = googleApiManager3.zat;
            handler4 = googleApiManager3.zat;
            Message obtain3 = Message.obtain(handler4, 16, zabsVar);
            j2 = this.zaa.zaf;
            handler3.sendMessageDelayed(obtain3, j2);
            ConnectionResult connectionResult = new ConnectionResult(2, null);
            if (!zaM(connectionResult)) {
                this.zaa.zaG(connectionResult, this.zah);
                return false;
            }
            return false;
        }
        zacVar.zae(new UnsupportedApiCallException(zaB));
        return true;
    }

    @WorkerThread
    private final boolean zaM(@NonNull ConnectionResult connectionResult) {
        Object obj;
        zaae zaaeVar;
        Set set;
        zaae zaaeVar2;
        obj = GoogleApiManager.zac;
        synchronized (obj) {
            try {
                GoogleApiManager googleApiManager = this.zaa;
                zaaeVar = googleApiManager.zaq;
                if (zaaeVar != null) {
                    set = googleApiManager.zar;
                    if (set.contains(this.zad)) {
                        zaaeVar2 = this.zaa.zaq;
                        zaaeVar2.zah(connectionResult, this.zah);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @WorkerThread
    public final boolean zaN(boolean z) {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        if (!this.zac.isConnected() || this.zag.size() != 0) {
            return false;
        }
        if (this.zae.zag()) {
            if (z) {
                zaI();
            }
            return false;
        }
        this.zac.disconnect(new ObfuscatedString(new long[]{1222901915631575791L, -1418500739933599810L, 3721053230340725351L, 5051950967565625847L, -4259172310962810896L}).toString());
        return true;
    }

    public static /* bridge */ /* synthetic */ ApiKey zag(zabq zabqVar) {
        return zabqVar.zad;
    }

    public static /* bridge */ /* synthetic */ void zai(zabq zabqVar, Status status) {
        zabqVar.zaD(status);
    }

    public static /* bridge */ /* synthetic */ void zal(zabq zabqVar, zabs zabsVar) {
        if (zabqVar.zak.contains(zabsVar) && !zabqVar.zaj) {
            if (!zabqVar.zac.isConnected()) {
                zabqVar.zao();
            } else {
                zabqVar.zaF();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void zam(zabq zabqVar, zabs zabsVar) {
        Handler handler;
        Handler handler2;
        Feature feature;
        Feature[] zab;
        if (zabqVar.zak.remove(zabsVar)) {
            handler = zabqVar.zaa.zat;
            handler.removeMessages(15, zabsVar);
            handler2 = zabqVar.zaa.zat;
            handler2.removeMessages(16, zabsVar);
            feature = zabsVar.zab;
            ArrayList arrayList = new ArrayList(zabqVar.zab.size());
            for (zai zaiVar : zabqVar.zab) {
                if ((zaiVar instanceof zac) && (zab = ((zac) zaiVar).zab(zabqVar)) != null && ArrayUtils.contains(zab, feature)) {
                    arrayList.add(zaiVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zai zaiVar2 = (zai) arrayList.get(i);
                zabqVar.zab.remove(zaiVar2);
                zaiVar2.zae(new UnsupportedApiCallException(feature));
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zax(zabq zabqVar, boolean z) {
        return zabqVar.zaN(false);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(@Nullable Bundle bundle) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.zaa.zat;
        if (myLooper == handler.getLooper()) {
            zaG();
        } else {
            handler2 = this.zaa.zat;
            handler2.post(new zabm(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zar(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Handler handler;
        Handler handler2;
        Looper myLooper = Looper.myLooper();
        handler = this.zaa.zat;
        if (myLooper == handler.getLooper()) {
            zaH(i);
        } else {
            handler2 = this.zaa.zat;
            handler2.post(new zabn(this, i));
        }
    }

    @WorkerThread
    public final boolean zaA() {
        return zaN(true);
    }

    @Override // com.google.android.gms.common.api.internal.zau
    public final void zaa(ConnectionResult connectionResult, Api<?> api, boolean z) {
        throw null;
    }

    public final int zab() {
        return this.zah;
    }

    @WorkerThread
    public final int zac() {
        return this.zam;
    }

    @Nullable
    @WorkerThread
    public final ConnectionResult zad() {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        return this.zal;
    }

    public final Api.Client zaf() {
        return this.zac;
    }

    public final Map<ListenerHolder.ListenerKey<?>, zaci> zah() {
        return this.zag;
    }

    @WorkerThread
    public final void zan() {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        this.zal = null;
    }

    @WorkerThread
    public final void zao() {
        Handler handler;
        com.google.android.gms.common.internal.zal zalVar;
        Context context;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        if (!this.zac.isConnected() && !this.zac.isConnecting()) {
            try {
                GoogleApiManager googleApiManager = this.zaa;
                zalVar = googleApiManager.zam;
                context = googleApiManager.zak;
                int zab = zalVar.zab(context, this.zac);
                if (zab != 0) {
                    ConnectionResult connectionResult = new ConnectionResult(zab, null);
                    new ObfuscatedString(new long[]{-3865583544873238251L, -1453892466002847222L, 3423093998111470860L}).toString();
                    new StringBuilder(this.zac.getClass().getName().length() + 35 + connectionResult.toString().length());
                    new ObfuscatedString(new long[]{6972669394847772055L, -9090894567851586113L, -8027662300503285029L}).toString();
                    new ObfuscatedString(new long[]{6863559798018378338L, -3728241111660679233L, -6675431714456017841L, -2108582408811598410L}).toString();
                    zar(connectionResult, null);
                    return;
                }
                GoogleApiManager googleApiManager2 = this.zaa;
                Api.Client client = this.zac;
                zabu zabuVar = new zabu(googleApiManager2, client, this.zad);
                if (client.requiresSignIn()) {
                    ((zact) Preconditions.checkNotNull(this.zai)).zae(zabuVar);
                }
                try {
                    this.zac.connect(zabuVar);
                } catch (SecurityException e) {
                    zar(new ConnectionResult(10), e);
                }
            } catch (IllegalStateException e2) {
                zar(new ConnectionResult(10), e2);
            }
        }
    }

    @WorkerThread
    public final void zap(zai zaiVar) {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        if (this.zac.isConnected()) {
            if (zaL(zaiVar)) {
                zaI();
                return;
            } else {
                this.zab.add(zaiVar);
                return;
            }
        }
        this.zab.add(zaiVar);
        ConnectionResult connectionResult = this.zal;
        if (connectionResult != null && connectionResult.hasResolution()) {
            zar(this.zal, null);
        } else {
            zao();
        }
    }

    @WorkerThread
    public final void zaq() {
        this.zam++;
    }

    @WorkerThread
    public final void zar(@NonNull ConnectionResult connectionResult, @Nullable Exception exc) {
        Handler handler;
        com.google.android.gms.common.internal.zal zalVar;
        boolean z;
        Status zaH;
        Status zaH2;
        Status zaH3;
        Handler handler2;
        Handler handler3;
        long j;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        zact zactVar = this.zai;
        if (zactVar != null) {
            zactVar.zaf();
        }
        zan();
        zalVar = this.zaa.zam;
        zalVar.zac();
        zaC(connectionResult);
        if ((this.zac instanceof com.google.android.gms.common.internal.service.zap) && connectionResult.getErrorCode() != 24) {
            this.zaa.zah = true;
            GoogleApiManager googleApiManager = this.zaa;
            handler5 = googleApiManager.zat;
            handler6 = googleApiManager.zat;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            status = GoogleApiManager.zab;
            zaD(status);
            return;
        }
        if (this.zab.isEmpty()) {
            this.zal = connectionResult;
            return;
        }
        if (exc != null) {
            handler4 = this.zaa.zat;
            Preconditions.checkHandlerThread(handler4);
            zaE(null, exc, false);
            return;
        }
        z = this.zaa.zau;
        if (z) {
            zaH2 = GoogleApiManager.zaH(this.zad, connectionResult);
            zaE(zaH2, null, true);
            if (!this.zab.isEmpty() && !zaM(connectionResult) && !this.zaa.zaG(connectionResult, this.zah)) {
                if (connectionResult.getErrorCode() == 18) {
                    this.zaj = true;
                }
                if (this.zaj) {
                    GoogleApiManager googleApiManager2 = this.zaa;
                    handler2 = googleApiManager2.zat;
                    handler3 = googleApiManager2.zat;
                    Message obtain = Message.obtain(handler3, 9, this.zad);
                    j = this.zaa.zae;
                    handler2.sendMessageDelayed(obtain, j);
                    return;
                }
                zaH3 = GoogleApiManager.zaH(this.zad, connectionResult);
                zaD(zaH3);
                return;
            }
            return;
        }
        zaH = GoogleApiManager.zaH(this.zad, connectionResult);
        zaD(zaH);
    }

    @WorkerThread
    public final void zas(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        Api.Client client = this.zac;
        String name = client.getClass().getName();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append(new ObfuscatedString(new long[]{7897850145828598512L, -2793324754190670974L, -8682906870065090805L, 1819922176266889658L}).toString());
        sb.append(name);
        sb.append(new ObfuscatedString(new long[]{436119559375238979L, -6885415620579407460L}).toString());
        sb.append(valueOf);
        client.disconnect(sb.toString());
        zar(connectionResult, null);
    }

    @WorkerThread
    public final void zat(zal zalVar) {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        this.zaf.add(zalVar);
    }

    @WorkerThread
    public final void zau() {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        if (this.zaj) {
            zao();
        }
    }

    @WorkerThread
    public final void zav() {
        Handler handler;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        zaD(GoogleApiManager.zaa);
        this.zae.zaf();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.zag.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            zap(new zah(listenerKey, new TaskCompletionSource()));
        }
        zaC(new ConnectionResult(4));
        if (this.zac.isConnected()) {
            this.zac.onUserSignOut(new zabp(this));
        }
    }

    @WorkerThread
    public final void zaw() {
        Handler handler;
        GoogleApiAvailability googleApiAvailability;
        Context context;
        Status status;
        handler = this.zaa.zat;
        Preconditions.checkHandlerThread(handler);
        if (this.zaj) {
            zaK();
            GoogleApiManager googleApiManager = this.zaa;
            googleApiAvailability = googleApiManager.zal;
            context = googleApiManager.zak;
            if (googleApiAvailability.isGooglePlayServicesAvailable(context) == 18) {
                status = new Status(21, new ObfuscatedString(new long[]{2228012844824925230L, 2815251247072774916L, 6488327898582512176L, 7925434032986432184L, 7046010403878415732L, -1408199569221307610L, -4995451542871247873L, 1824875589913599614L, -4634852725138225157L, -6972198607620778135L, 2618643059858283408L}).toString());
            } else {
                status = new Status(22, new ObfuscatedString(new long[]{4393540489472419139L, 3578919802259354760L, 6054163594060170330L, -6029816837868914604L, -4198446009343526454L, 1680436618241840847L, -4618830304511719403L, 6126767468715856205L, -2135294897497995934L}).toString());
            }
            zaD(status);
            this.zac.disconnect(new ObfuscatedString(new long[]{-7559104585348248406L, -2774517193411906961L, 8111554749880300496L, -5554937690921445681L, 6294609347060106826L, -4147017733157237876L}).toString());
        }
    }

    public final boolean zay() {
        return this.zac.isConnected();
    }

    public final boolean zaz() {
        return this.zac.requiresSignIn();
    }
}
