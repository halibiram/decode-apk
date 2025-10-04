package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

@KeepForSdk
@KeepName
/* loaded from: classes2.dex */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> zaa = new zaq();
    public static final /* synthetic */ int zad = 0;

    @KeepName
    private zas mResultGuardian;

    @NonNull
    protected final CallbackHandler<R> zab;

    @NonNull
    protected final WeakReference<GoogleApiClient> zac;
    private final Object zae;
    private final CountDownLatch zaf;
    private final ArrayList<PendingResult.StatusListener> zag;

    @Nullable
    private ResultCallback<? super R> zah;
    private final AtomicReference<zadb> zai;

    @Nullable
    private R zaj;
    private Status zak;
    private volatile boolean zal;
    private boolean zam;
    private boolean zan;

    @Nullable
    private ICancelToken zao;
    private volatile zada<R> zap;
    private boolean zaq;

    @Deprecated
    public BasePendingResult() {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(Looper.getMainLooper());
        this.zac = new WeakReference<>(null);
    }

    private final R zaa() {
        R r;
        synchronized (this.zae) {
            Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{-8791424835510907393L, 7278086057752321516L, -897954593175344733L, 4082640479637829760L, -6219962104677136870L, 4019175470505503202L}).toString());
            Preconditions.checkState(isReady(), new ObfuscatedString(new long[]{-7403983863518460023L, 2183038506228454761L, -5845340565560467946L, 3229800592367588480L}).toString());
            r = this.zaj;
            this.zaj = null;
            this.zah = null;
            this.zal = true;
        }
        zadb andSet = this.zai.getAndSet(null);
        if (andSet != null) {
            andSet.zaa.zab.remove(this);
        }
        return (R) Preconditions.checkNotNull(r);
    }

    private final void zab(R r) {
        this.zaj = r;
        this.zak = r.getStatus();
        this.zao = null;
        this.zaf.countDown();
        if (this.zam) {
            this.zah = null;
        } else {
            ResultCallback<? super R> resultCallback = this.zah;
            if (resultCallback == null) {
                if (this.zaj instanceof Releasable) {
                    this.mResultGuardian = new zas(this, null);
                }
            } else {
                this.zab.removeMessages(2);
                this.zab.zaa(resultCallback, zaa());
            }
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.zag;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).onComplete(this.zak);
        }
        this.zag.clear();
    }

    public static void zal(@Nullable Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(result);
                new ObfuscatedString(new long[]{-8964389430383292109L, 7122008356993774652L, -2468925383366532955L, -4160639143510613458L}).toString();
                new ObfuscatedString(new long[]{4384990769122582189L, 7548655904113927039L, 6253059551661463796L, 839138352372480331L}).toString().concat(valueOf);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(@NonNull PendingResult.StatusListener statusListener) {
        boolean z;
        if (statusListener != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-1411457028030124708L, -6766209347002285699L, -4502986459670977158L, 2345081893753516178L}).toString());
        synchronized (this.zae) {
            try {
                if (isReady()) {
                    statusListener.onComplete(this.zak);
                } else {
                    this.zag.add(statusListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public final R await() {
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{4116053820161469605L, -9172991354486714844L, -909226587959195392L, -7999301665897597053L, 4166675605970172800L, -5823514693696562392L, 6532542524009174473L}).toString());
        Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{-6356740221927590775L, -5214141477590730306L, 6871851026066205615L, -5714166447997271034L, 3894926058843807385L}).toString());
        Preconditions.checkState(this.zap == null, new ObfuscatedString(new long[]{2069139083378735508L, -5956959570820525463L, -216189943427707475L, 2036309507487568899L, 862339499238261028L, -923970244352547052L}).toString());
        try {
            this.zaf.await();
        } catch (InterruptedException unused) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), new ObfuscatedString(new long[]{1002763309906617903L, 3780335330796642970L, -3923071086111862037L, -2987650801570255019L}).toString());
        return zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public void cancel() {
        synchronized (this.zae) {
            if (!this.zam && !this.zal) {
                ICancelToken iCancelToken = this.zao;
                if (iCancelToken != null) {
                    try {
                        iCancelToken.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                zal(this.zaj);
                this.zam = true;
                zab(createFailedResult(Status.RESULT_CANCELED));
            }
        }
    }

    @NonNull
    @KeepForSdk
    public abstract R createFailedResult(@NonNull Status status);

    @KeepForSdk
    @Deprecated
    public final void forceFailureUnlessReady(@NonNull Status status) {
        synchronized (this.zae) {
            try {
                if (!isReady()) {
                    setResult(createFailedResult(status));
                    this.zan = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        boolean z;
        synchronized (this.zae) {
            z = this.zam;
        }
        return z;
    }

    @KeepForSdk
    public final boolean isReady() {
        if (this.zaf.getCount() == 0) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public final void setCancelToken(@NonNull ICancelToken iCancelToken) {
        synchronized (this.zae) {
            this.zao = iCancelToken;
        }
    }

    @KeepForSdk
    public final void setResult(@NonNull R r) {
        synchronized (this.zae) {
            try {
                if (!this.zan && !this.zam) {
                    isReady();
                    Preconditions.checkState(!isReady(), new ObfuscatedString(new long[]{-6310946640080308228L, 4967651290558176748L, 2401264205620918628L, -1530703883236356932L, 5105268815124795974L}).toString());
                    Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{-7120861731811773643L, -5640822186490912397L, 2479648161004001640L, 6949364523543000782L, -4692857691590365087L}).toString());
                    zab(r);
                    return;
                }
                zal(r);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public final void setResultCallback(@Nullable ResultCallback<? super R> resultCallback) {
        synchronized (this.zae) {
            try {
                if (resultCallback == null) {
                    this.zah = null;
                    return;
                }
                boolean z = true;
                Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{7811678984553986061L, -129676050271294679L, -7037262838782682664L, -6034078720877065669L, 4463072775801728130L, 7921462627829276270L}).toString());
                if (this.zap != null) {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{-5200208543749800088L, 8117681269503094330L, 4624303651524768315L, -479075214577165826L, -3251887889753275784L, 470778661949848818L, 264217909673550548L}).toString());
                if (isCanceled()) {
                    return;
                }
                if (isReady()) {
                    this.zab.zaa(resultCallback, zaa());
                } else {
                    this.zah = resultCallback;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        boolean z;
        TransformedResult<S> then;
        Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{-3443348859617369927L, -3773219711579367873L, -4878942229667718415L, 3445949032683008631L, -5847227271412682672L, 9073231734987321288L}).toString());
        synchronized (this.zae) {
            try {
                boolean z2 = false;
                if (this.zap == null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{-3044091515984914572L, 4308782867459176062L, -1077742001634733615L, 859408879314667472L, 7434794769093147847L}).toString());
                if (this.zah == null) {
                    z2 = true;
                }
                Preconditions.checkState(z2, new ObfuscatedString(new long[]{6460232787792541322L, 5167816060383603571L, 7259372424817485882L, -6067151949545268260L, -2923326482081530637L, 986877012951934778L}).toString());
                Preconditions.checkState(!this.zam, new ObfuscatedString(new long[]{-5365670502686069158L, 4196977972693926346L, 3343973601315321466L, 4342104541172044393L, -2183068502645688404L, -3350208906995102815L, 2566279951542893643L}).toString());
                this.zaq = true;
                this.zap = new zada<>(this.zac);
                then = this.zap.then(resultTransform);
                if (isReady()) {
                    this.zab.zaa(this.zap, zaa());
                } else {
                    this.zah = this.zap;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return then;
    }

    public final void zak() {
        boolean z = true;
        if (!this.zaq && !zaa.get().booleanValue()) {
            z = false;
        }
        this.zaq = z;
    }

    public final boolean zam() {
        boolean isCanceled;
        synchronized (this.zae) {
            try {
                if (this.zac.get() != null) {
                    if (!this.zaq) {
                    }
                    isCanceled = isCanceled();
                }
                cancel();
                isCanceled = isCanceled();
            } catch (Throwable th) {
                throw th;
            }
        }
        return isCanceled;
    }

    public final void zan(@Nullable zadb zadbVar) {
        this.zai.set(zadbVar);
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class CallbackHandler<R extends Result> extends com.google.android.gms.internal.base.zaq {
        public CallbackHandler() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    StringBuilder sb = new StringBuilder(45);
                    sb.append(new ObfuscatedString(new long[]{-5222820635216878217L, -8666946558562986109L, 2424448160198498070L, 9051725214358454467L, -7285558947549178601L, 8281588816332543840L}).toString());
                    sb.append(i);
                    Log.wtf(new ObfuscatedString(new long[]{2414202918749533198L, 2003971960999057669L, 286660942492293135L, 4220103507391155449L}).toString(), sb.toString(), new Exception());
                    return;
                }
                ((BasePendingResult) message.obj).forceFailureUnlessReady(Status.RESULT_TIMEOUT);
                return;
            }
            Pair pair = (Pair) message.obj;
            ResultCallback resultCallback = (ResultCallback) pair.first;
            Result result = (Result) pair.second;
            try {
                resultCallback.onResult(result);
            } catch (RuntimeException e) {
                BasePendingResult.zal(result);
                throw e;
            }
        }

        public final void zaa(@NonNull ResultCallback<? super R> resultCallback, @NonNull R r) {
            int i = BasePendingResult.zad;
            sendMessage(obtainMessage(1, new Pair((ResultCallback) Preconditions.checkNotNull(resultCallback), r)));
        }

        public CallbackHandler(@NonNull Looper looper) {
            super(looper);
        }
    }

    @KeepForSdk
    @Deprecated
    public BasePendingResult(@NonNull Looper looper) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(looper);
        this.zac = new WeakReference<>(null);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public final R await(long j, @NonNull TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{-7988483470263602687L, -6731805559952590390L, 133681001699122214L, 8066151807321286770L, -3652632849269969433L, 3890094913685005076L, -8455824577447644459L, -6550006889869357010L, 8901113450587768020L, 171342863262716090L, -151848062856511424L}).toString());
        }
        Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{-6837884449290963467L, 3612439800577537102L, 6911653186995017357L, 4242469643452427854L, 7057885514185501358L, -1596760498496417410L}).toString());
        Preconditions.checkState(this.zap == null, new ObfuscatedString(new long[]{566400758240399657L, -5512116145688192464L, -402505296096506286L, -6851395321955165943L, -1823396818815299462L, -5898930059421506105L}).toString());
        try {
            if (!this.zaf.await(j, timeUnit)) {
                forceFailureUnlessReady(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException unused) {
            forceFailureUnlessReady(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), new ObfuscatedString(new long[]{-1552621948653411577L, 8133897250015874881L, 8069224542155487815L, 7654456252268165517L}).toString());
        return zaa();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @KeepForSdk
    public final void setResultCallback(@NonNull ResultCallback<? super R> resultCallback, long j, @NonNull TimeUnit timeUnit) {
        synchronized (this.zae) {
            try {
                if (resultCallback == null) {
                    this.zah = null;
                    return;
                }
                boolean z = true;
                Preconditions.checkState(!this.zal, new ObfuscatedString(new long[]{349532592843608322L, 1557624385805595406L, 2523971068502555225L, -8637887129912969609L, -1538119272518737505L, 5037213113863912212L}).toString());
                if (this.zap != null) {
                    z = false;
                }
                Preconditions.checkState(z, new ObfuscatedString(new long[]{-1720159412596369197L, -3343497094192605984L, -351464209712026347L, 6547297934374930772L, 1772938531537360647L, -7374167954858946245L, 8173141113858413348L}).toString());
                if (isCanceled()) {
                    return;
                }
                if (isReady()) {
                    this.zab.zaa(resultCallback, zaa());
                } else {
                    this.zah = resultCallback;
                    CallbackHandler<R> callbackHandler = this.zab;
                    callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(2, this), timeUnit.toMillis(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    public BasePendingResult(@Nullable GoogleApiClient googleApiClient) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = new CallbackHandler<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zac = new WeakReference<>(googleApiClient);
    }

    @VisibleForTesting
    @KeepForSdk
    public BasePendingResult(@NonNull CallbackHandler<R> callbackHandler) {
        this.zae = new Object();
        this.zaf = new CountDownLatch(1);
        this.zag = new ArrayList<>();
        this.zai = new AtomicReference<>();
        this.zaq = false;
        this.zab = (CallbackHandler) Preconditions.checkNotNull(callbackHandler, new ObfuscatedString(new long[]{-4953860475862153559L, -7404893287196367865L, 232963455574756266L, 5618386963299802764L, -2490039682407537244L}).toString());
        this.zac = new WeakReference<>(null);
    }
}
