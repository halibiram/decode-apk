package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes2.dex */
public final class zada<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> zag;
    private final zacz zah;

    @Nullable
    private ResultTransform<? super R, ? extends Result> zaa = null;

    @Nullable
    private zada<? extends Result> zab = null;

    @Nullable
    private volatile ResultCallbacks<? super R> zac = null;

    @Nullable
    private PendingResult<R> zad = null;
    private final Object zae = new Object();

    @Nullable
    private Status zaf = null;
    private boolean zai = false;

    public zada(WeakReference<GoogleApiClient> weakReference) {
        Looper mainLooper;
        Preconditions.checkNotNull(weakReference, new ObfuscatedString(new long[]{-8135072597043851688L, 4052615689034136556L, -3900487532850570581L, -6083986429693606685L, -7595458844006539520L, -7546664416679722733L, -2775654505056515860L}).toString());
        this.zag = weakReference;
        GoogleApiClient googleApiClient = weakReference.get();
        if (googleApiClient != null) {
            mainLooper = googleApiClient.getLooper();
        } else {
            mainLooper = Looper.getMainLooper();
        }
        this.zah = new zacz(this, mainLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaj(Status status) {
        synchronized (this.zae) {
            this.zaf = status;
            zal(status);
        }
    }

    @GuardedBy("mSyncToken")
    private final void zak() {
        if (this.zaa == null && this.zac == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.zag.get();
        if (!this.zai && this.zaa != null && googleApiClient != null) {
            googleApiClient.zao(this);
            this.zai = true;
        }
        Status status = this.zaf;
        if (status != null) {
            zal(status);
            return;
        }
        PendingResult<R> pendingResult = this.zad;
        if (pendingResult != null) {
            pendingResult.setResultCallback(this);
        }
    }

    private final void zal(Status status) {
        synchronized (this.zae) {
            try {
                ResultTransform<? super R, ? extends Result> resultTransform = this.zaa;
                if (resultTransform != null) {
                    ((zada) Preconditions.checkNotNull(this.zab)).zaj((Status) Preconditions.checkNotNull(resultTransform.onFailure(status), new ObfuscatedString(new long[]{1600984199178149070L, -987016444330236219L, 2665872975022081404L, 5976620196977817497L, -9048916705802674008L}).toString()));
                } else if (zam()) {
                    ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onFailure(status);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("mSyncToken")
    private final boolean zam() {
        GoogleApiClient googleApiClient = this.zag.get();
        if (this.zac != null && googleApiClient != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void zan(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(result);
                new ObfuscatedString(new long[]{5615309099058738266L, -3157103004468437756L, 8125834985475853122L, 4827883646914736175L}).toString();
                new ObfuscatedString(new long[]{-5231093005985652679L, 4489808827376504769L, -922854332862377132L, -112738655310618083L}).toString().concat(valueOf);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        boolean z;
        synchronized (this.zae) {
            boolean z2 = false;
            if (this.zac == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{6518063859981761485L, 4604415435356429032L, -728001310634874374L, 5894517667516378084L, 7671404361783230727L}).toString());
            if (this.zaa == null) {
                z2 = true;
            }
            Preconditions.checkState(z2, new ObfuscatedString(new long[]{-160680474462784432L, 769891631204982679L, 675565180547281110L, 5392967514108242805L, 2550277205071679725L, 3564115233539082063L, -8741661693780938104L, 7882123121600953147L, -1614284341060866366L, -4464562509886919570L}).toString());
            this.zac = resultCallbacks;
            zak();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        synchronized (this.zae) {
            try {
                if (r.getStatus().isSuccess()) {
                    if (this.zaa != null) {
                        zaco.zaa().submit(new zacy(this, r));
                    } else if (zam()) {
                        ((ResultCallbacks) Preconditions.checkNotNull(this.zac)).onSuccess(r);
                    }
                } else {
                    zaj(r.getStatus());
                    zan(r);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        boolean z;
        zada<? extends Result> zadaVar;
        synchronized (this.zae) {
            boolean z2 = false;
            if (this.zaa == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-7273267844717747169L, 4544030812366230813L, -1090969684348907371L, -2310524104699025821L, 4566471217867401495L}).toString());
            if (this.zac == null) {
                z2 = true;
            }
            Preconditions.checkState(z2, new ObfuscatedString(new long[]{5879424658918218519L, 6573191287701831005L, 5172524240437912814L, 2611044443106193581L, -7051115834704992272L, -4211861439876915165L, 830349097291893696L, -5359183046034333605L, 7228720178717119995L, -8323662684986027601L}).toString());
            this.zaa = resultTransform;
            zadaVar = new zada<>(this.zag);
            this.zab = zadaVar;
            zak();
        }
        return zadaVar;
    }

    public final void zah() {
        this.zac = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zai(PendingResult<?> pendingResult) {
        synchronized (this.zae) {
            this.zad = pendingResult;
            zak();
        }
    }
}
