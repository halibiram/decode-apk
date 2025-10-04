package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArraySet;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class GoogleApiManager implements Handler.Callback {

    @NonNull
    public static final Status zaa = new Status(4, new ObfuscatedString(new long[]{1450248027536557401L, 7125917461128672413L, -4749793593978013937L, -2693945094674160633L, -1578369205112395184L, 2583910947599463260L, -9188580198363040272L, 4948176177197375685L}).toString());
    private static final Status zab = new Status(4, new ObfuscatedString(new long[]{8212518721686748616L, 4202276480571295854L, 4488995495192308287L, 6234770242814688913L, 4739461615080153120L, 8349277373302615900L, -293926149888549239L, -325809991102818765L}).toString());
    private static final Object zac = new Object();

    @Nullable
    @GuardedBy("lock")
    private static GoogleApiManager zad;

    @Nullable
    private TelemetryData zai;

    @Nullable
    private TelemetryLoggingClient zaj;
    private final Context zak;
    private final GoogleApiAvailability zal;
    private final com.google.android.gms.common.internal.zal zam;

    @NotOnlyInitialized
    private final Handler zat;
    private volatile boolean zau;
    private long zae = CoroutineLiveDataKt.DEFAULT_TIMEOUT;
    private long zaf = 120000;
    private long zag = WorkRequest.MIN_BACKOFF_MILLIS;
    private boolean zah = false;
    private final AtomicInteger zan = new AtomicInteger(1);
    private final AtomicInteger zao = new AtomicInteger(0);
    private final Map<ApiKey<?>, zabq<?>> zap = new ConcurrentHashMap(5, 0.75f, 1);

    @Nullable
    @GuardedBy("lock")
    private zaae zaq = null;

    @GuardedBy("lock")
    private final Set<ApiKey<?>> zar = new ArraySet();
    private final Set<ApiKey<?>> zas = new ArraySet();

    @KeepForSdk
    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zau = true;
        this.zak = context;
        com.google.android.gms.internal.base.zaq zaqVar = new com.google.android.gms.internal.base.zaq(looper, this);
        this.zat = zaqVar;
        this.zal = googleApiAvailability;
        this.zam = new com.google.android.gms.common.internal.zal(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zau = false;
        }
        zaqVar.sendMessage(zaqVar.obtainMessage(6));
    }

    @KeepForSdk
    public static void reportSignOut() {
        synchronized (zac) {
            try {
                GoogleApiManager googleApiManager = zad;
                if (googleApiManager != null) {
                    googleApiManager.zao.incrementAndGet();
                    Handler handler = googleApiManager.zat;
                    handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zaH(ApiKey<?> apiKey, ConnectionResult connectionResult) {
        String zab2 = apiKey.zab();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(zab2).length() + 63 + valueOf.length());
        sb.append(new ObfuscatedString(new long[]{7758948888619186678L, 6561979060701132169L}).toString());
        sb.append(zab2);
        return new Status(connectionResult, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8387321923250211908L, 1416876932600095524L, -5165874646090709415L, -783534156983509273L, -973421996526561265L, -4977481479732205163L, -2579087097394562416L, -5660814001945072134L, -8840746280184049778L}), sb, valueOf));
    }

    @WorkerThread
    private final zabq<?> zaI(GoogleApi<?> googleApi) {
        ApiKey<?> apiKey = googleApi.getApiKey();
        zabq<?> zabqVar = this.zap.get(apiKey);
        if (zabqVar == null) {
            zabqVar = new zabq<>(this, googleApi);
            this.zap.put(apiKey, zabqVar);
        }
        if (zabqVar.zaz()) {
            this.zas.add(apiKey);
        }
        zabqVar.zao();
        return zabqVar;
    }

    @WorkerThread
    private final TelemetryLoggingClient zaJ() {
        if (this.zaj == null) {
            this.zaj = TelemetryLogging.getClient(this.zak);
        }
        return this.zaj;
    }

    @WorkerThread
    private final void zaK() {
        TelemetryData telemetryData = this.zai;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || zaF()) {
                zaJ().log(telemetryData);
            }
            this.zai = null;
        }
    }

    private final <T> void zaL(TaskCompletionSource<T> taskCompletionSource, int i, GoogleApi googleApi) {
        zacd zaa2;
        if (i != 0 && (zaa2 = zacd.zaa(this, i, googleApi.getApiKey())) != null) {
            Task<T> task = taskCompletionSource.getTask();
            final Handler handler = this.zat;
            handler.getClass();
            task.addOnCompleteListener(new Executor() { // from class: com.google.android.gms.common.api.internal.zabk
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, zaa2);
        }
    }

    @NonNull
    public static GoogleApiManager zal() {
        GoogleApiManager googleApiManager;
        synchronized (zac) {
            Preconditions.checkNotNull(zad, new ObfuscatedString(new long[]{531530649909284904L, 2281137113256131651L, -2978611918131197875L, -6585107040659625515L, -7969471085082037300L, 4867280641713223532L, 2484610421613104993L, 8896329222504973432L, 8343220684039893489L}).toString());
            googleApiManager = zad;
        }
        return googleApiManager;
    }

    @NonNull
    public static GoogleApiManager zam(@NonNull Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zac) {
            try {
                if (zad == null) {
                    zad = new GoogleApiManager(context.getApplicationContext(), GmsClientSupervisor.getOrStartHandlerThread().getLooper(), GoogleApiAvailability.getInstance());
                }
                googleApiManager = zad;
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleApiManager;
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public final boolean handleMessage(@NonNull Message message) {
        ApiKey apiKey;
        ApiKey apiKey2;
        ApiKey apiKey3;
        ApiKey apiKey4;
        long j = 300000;
        zabq<?> zabqVar = null;
        switch (message.what) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    j = WorkRequest.MIN_BACKOFF_MILLIS;
                }
                this.zag = j;
                this.zat.removeMessages(12);
                for (ApiKey<?> apiKey5 : this.zap.keySet()) {
                    Handler handler = this.zat;
                    handler.sendMessageDelayed(handler.obtainMessage(12, apiKey5), this.zag);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                Iterator<ApiKey<?>> it = zalVar.zab().iterator();
                while (true) {
                    if (it.hasNext()) {
                        ApiKey<?> next = it.next();
                        zabq<?> zabqVar2 = this.zap.get(next);
                        if (zabqVar2 == null) {
                            zalVar.zac(next, new ConnectionResult(13), null);
                        } else if (zabqVar2.zay()) {
                            zalVar.zac(next, ConnectionResult.RESULT_SUCCESS, zabqVar2.zaf().getEndpointPackageName());
                        } else {
                            ConnectionResult zad2 = zabqVar2.zad();
                            if (zad2 != null) {
                                zalVar.zac(next, zad2, null);
                            } else {
                                zabqVar2.zat(zalVar);
                                zabqVar2.zao();
                            }
                        }
                    }
                }
                return true;
            case 3:
                for (zabq<?> zabqVar3 : this.zap.values()) {
                    zabqVar3.zan();
                    zabqVar3.zao();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zach zachVar = (zach) message.obj;
                zabq<?> zabqVar4 = this.zap.get(zachVar.zac.getApiKey());
                if (zabqVar4 == null) {
                    zabqVar4 = zaI(zachVar.zac);
                }
                if (zabqVar4.zaz() && this.zao.get() != zachVar.zab) {
                    zachVar.zaa.zad(zaa);
                    zabqVar4.zav();
                } else {
                    zabqVar4.zap(zachVar.zaa);
                }
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<zabq<?>> it2 = this.zap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabq<?> next2 = it2.next();
                        if (next2.zab() == i) {
                            zabqVar = next2;
                        }
                    }
                }
                if (zabqVar != null) {
                    if (connectionResult.getErrorCode() == 13) {
                        String errorString = this.zal.getErrorString(connectionResult.getErrorCode());
                        String errorMessage = connectionResult.getErrorMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                        sb.append(new ObfuscatedString(new long[]{6939865701767851595L, 6732326392818590818L, -4522070298439500715L, 2562950458826669991L, 6386682359201769995L, -4904567295998265831L, 7951848970572707919L, 5904747168311704892L, -337858673711537456L, -8823337537252059298L}).toString());
                        sb.append(errorString);
                        zabq.zai(zabqVar, new Status(17, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-8181020590421276460L, 6828557133483975144L}), sb, errorMessage)));
                    } else {
                        zabq.zai(zabqVar, zaH(zabq.zag(zabqVar), connectionResult));
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder(76);
                    sb2.append(new ObfuscatedString(new long[]{5321595965825870990L, 4303661575317020021L, 8894641551721291478L, -7526919427339518850L, 1187987839959734403L}).toString());
                    sb2.append(i);
                    sb2.append(new ObfuscatedString(new long[]{-1496956706271833542L, -210875916292594394L, -4355037413887947842L, -2520695985869525826L, -6412400194661854109L, -4651117008106456462L}).toString());
                    Log.wtf(new ObfuscatedString(new long[]{7621633684484976536L, -6186459890447783642L, -4635807789330510026L}).toString(), sb2.toString(), new Exception());
                }
                return true;
            case 6:
                if (this.zak.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) this.zak.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new zabl(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.zag = 300000L;
                    }
                }
                return true;
            case 7:
                zaI((GoogleApi) message.obj);
                return true;
            case 9:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zau();
                }
                return true;
            case 10:
                Iterator<ApiKey<?>> it3 = this.zas.iterator();
                while (it3.hasNext()) {
                    zabq<?> remove = this.zap.remove(it3.next());
                    if (remove != null) {
                        remove.zav();
                    }
                }
                this.zas.clear();
                return true;
            case 11:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zaw();
                }
                return true;
            case 12:
                if (this.zap.containsKey(message.obj)) {
                    this.zap.get(message.obj).zaA();
                }
                return true;
            case 14:
                zaaf zaafVar = (zaaf) message.obj;
                ApiKey<?> zaa2 = zaafVar.zaa();
                if (!this.zap.containsKey(zaa2)) {
                    zaafVar.zab().setResult(Boolean.FALSE);
                } else {
                    zaafVar.zab().setResult(Boolean.valueOf(zabq.zax(this.zap.get(zaa2), false)));
                }
                return true;
            case 15:
                zabs zabsVar = (zabs) message.obj;
                Map<ApiKey<?>, zabq<?>> map = this.zap;
                apiKey = zabsVar.zaa;
                if (map.containsKey(apiKey)) {
                    Map<ApiKey<?>, zabq<?>> map2 = this.zap;
                    apiKey2 = zabsVar.zaa;
                    zabq.zal(map2.get(apiKey2), zabsVar);
                }
                return true;
            case 16:
                zabs zabsVar2 = (zabs) message.obj;
                Map<ApiKey<?>, zabq<?>> map3 = this.zap;
                apiKey3 = zabsVar2.zaa;
                if (map3.containsKey(apiKey3)) {
                    Map<ApiKey<?>, zabq<?>> map4 = this.zap;
                    apiKey4 = zabsVar2.zaa;
                    zabq.zam(map4.get(apiKey4), zabsVar2);
                }
                return true;
            case 17:
                zaK();
                return true;
            case 18:
                zace zaceVar = (zace) message.obj;
                if (zaceVar.zac == 0) {
                    zaJ().log(new TelemetryData(zaceVar.zab, Arrays.asList(zaceVar.zaa)));
                } else {
                    TelemetryData telemetryData = this.zai;
                    if (telemetryData != null) {
                        List<MethodInvocation> zab2 = telemetryData.zab();
                        if (telemetryData.zaa() == zaceVar.zab && (zab2 == null || zab2.size() < zaceVar.zad)) {
                            this.zai.zac(zaceVar.zaa);
                        } else {
                            this.zat.removeMessages(17);
                            zaK();
                        }
                    }
                    if (this.zai == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(zaceVar.zaa);
                        this.zai = new TelemetryData(zaceVar.zab, arrayList);
                        Handler handler2 = this.zat;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), zaceVar.zac);
                    }
                }
                return true;
            case 19:
                this.zah = false;
                return true;
            default:
                new ObfuscatedString(new long[]{6536549525758079299L, -1849191013879035452L, 4460531016984589991L, -6614169182571475612L}).toString();
                new ObfuscatedString(new long[]{1455619340327760781L, -7008905972404359828L, 2164932809257917889L}).toString();
                return false;
        }
    }

    public final void zaA() {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void zaB(@NonNull GoogleApi<?> googleApi) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final void zaC(@NonNull zaae zaaeVar) {
        synchronized (zac) {
            try {
                if (this.zaq != zaaeVar) {
                    this.zaq = zaaeVar;
                    this.zar.clear();
                }
                this.zar.addAll(zaaeVar.zaa());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zaD(@NonNull zaae zaaeVar) {
        synchronized (zac) {
            try {
                if (this.zaq == zaaeVar) {
                    this.zaq = null;
                    this.zar.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @WorkerThread
    public final boolean zaF() {
        if (this.zah) {
            return false;
        }
        RootTelemetryConfiguration config2 = RootTelemetryConfigManager.getInstance().getConfig();
        if (config2 != null && !config2.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int zaa2 = this.zam.zaa(this.zak, 203400000);
        if (zaa2 != -1 && zaa2 != 0) {
            return false;
        }
        return true;
    }

    public final boolean zaG(ConnectionResult connectionResult, int i) {
        return this.zal.zah(this.zak, connectionResult, i);
    }

    public final int zaa() {
        return this.zan.getAndIncrement();
    }

    @Nullable
    public final zabq zak(ApiKey<?> apiKey) {
        return this.zap.get(apiKey);
    }

    @NonNull
    public final Task<Map<ApiKey<?>, String>> zao(@NonNull Iterable<? extends HasApiKey<?>> iterable) {
        zal zalVar = new zal(iterable);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(2, zalVar));
        return zalVar.zaa();
    }

    @NonNull
    public final Task<Boolean> zap(@NonNull GoogleApi<?> googleApi) {
        zaaf zaafVar = new zaaf(googleApi.getApiKey());
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(14, zaafVar));
        return zaafVar.zab().getTask();
    }

    @NonNull
    public final <O extends Api.ApiOptions> Task<Void> zaq(@NonNull GoogleApi<O> googleApi, @NonNull RegisterListenerMethod<Api.AnyClient, ?> registerListenerMethod, @NonNull UnregisterListenerMethod<Api.AnyClient, ?> unregisterListenerMethod, @NonNull Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaL(taskCompletionSource, registerListenerMethod.zaa(), googleApi);
        zaf zafVar = new zaf(new zaci(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(8, new zach(zafVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    @NonNull
    public final <O extends Api.ApiOptions> Task<Boolean> zar(@NonNull GoogleApi<O> googleApi, @NonNull ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaL(taskCompletionSource, i, googleApi);
        zah zahVar = new zah(listenerKey, taskCompletionSource);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(13, new zach(zahVar, this.zao.get(), googleApi)));
        return taskCompletionSource.getTask();
    }

    public final <O extends Api.ApiOptions> void zaw(@NonNull GoogleApi<O> googleApi, int i, @NonNull BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient> apiMethodImpl) {
        zae zaeVar = new zae(i, apiMethodImpl);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zach(zaeVar, this.zao.get(), googleApi)));
    }

    public final <O extends Api.ApiOptions, ResultT> void zax(@NonNull GoogleApi<O> googleApi, int i, @NonNull TaskApiCall<Api.AnyClient, ResultT> taskApiCall, @NonNull TaskCompletionSource<ResultT> taskCompletionSource, @NonNull StatusExceptionMapper statusExceptionMapper) {
        zaL(taskCompletionSource, taskApiCall.zaa(), googleApi);
        zag zagVar = new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper);
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(4, new zach(zagVar, this.zao.get(), googleApi)));
    }

    public final void zay(MethodInvocation methodInvocation, int i, long j, int i2) {
        Handler handler = this.zat;
        handler.sendMessage(handler.obtainMessage(18, new zace(methodInvocation, i, j, i2)));
    }

    public final void zaz(@NonNull ConnectionResult connectionResult, int i) {
        if (!zaG(connectionResult, i)) {
            Handler handler = this.zat;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }
}
