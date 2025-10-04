package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {
    protected volatile boolean zaa;
    protected final AtomicReference<zam> zab;
    protected final GoogleApiAvailability zac;
    private final Handler zad;

    @VisibleForTesting
    public zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.zab = new AtomicReference<>(null);
        this.zad = new com.google.android.gms.internal.base.zaq(Looper.getMainLooper());
        this.zac = googleApiAvailability;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zaa(ConnectionResult connectionResult, int i) {
        this.zab.set(null);
        zab(connectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zad() {
        this.zab.set(null);
        zac();
    }

    private static final int zae(@Nullable zam zamVar) {
        if (zamVar == null) {
            return -1;
        }
        return zamVar.zaa();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onActivityResult(int i, int i2, Intent intent) {
        zam zamVar = this.zab.get();
        if (i != 1) {
            if (i == 2) {
                int isGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(getActivity());
                if (isGooglePlayServicesAvailable == 0) {
                    zad();
                    return;
                } else {
                    if (zamVar == null) {
                        return;
                    }
                    if (zamVar.zab().getErrorCode() == 18 && isGooglePlayServicesAvailable == 18) {
                        return;
                    }
                }
            }
        } else {
            if (i2 == -1) {
                zad();
                return;
            }
            if (i2 == 0) {
                if (zamVar == null) {
                    return;
                }
                int i3 = 13;
                if (intent != null) {
                    i3 = intent.getIntExtra(new ObfuscatedString(new long[]{4779680589963618296L, 3004942036161783166L, -8982688221964967781L, -3941528295947788882L, -4812784828068693404L}).toString(), 13);
                }
                zaa(new ConnectionResult(i3, null, zamVar.zab().toString()), zae(zamVar));
                return;
            }
        }
        if (zamVar != null) {
            zaa(zamVar.zab(), zamVar.zaa());
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        zaa(new ConnectionResult(13, null), zae(this.zab.get()));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onCreate(@Nullable Bundle bundle) {
        zam zamVar;
        super.onCreate(bundle);
        if (bundle != null) {
            AtomicReference<zam> atomicReference = this.zab;
            if (bundle.getBoolean(new ObfuscatedString(new long[]{7728991427968120452L, 4496208718924748470L, -982348543384827462L}).toString(), false)) {
                zamVar = new zam(new ConnectionResult(bundle.getInt(new ObfuscatedString(new long[]{5921734009439867187L, -6220126316511256945L, -3561200886569892201L}).toString()), (PendingIntent) bundle.getParcelable(new ObfuscatedString(new long[]{-557171064175882565L, -6892511040101175114L, -8909867056366172585L, 3889201838202657064L}).toString())), bundle.getInt(new ObfuscatedString(new long[]{-2174444140389528038L, 8090381631878385890L, -6902264036879854229L}).toString(), -1));
            } else {
                zamVar = null;
            }
            atomicReference.set(zamVar);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        zam zamVar = this.zab.get();
        if (zamVar == null) {
            return;
        }
        bundle.putBoolean(new ObfuscatedString(new long[]{1785714170496438467L, 4721124053569971003L, 861900842212028102L}).toString(), true);
        bundle.putInt(new ObfuscatedString(new long[]{-4565496043877767488L, 616207607098846232L, -7750801872221296297L}).toString(), zamVar.zaa());
        bundle.putInt(new ObfuscatedString(new long[]{655482239841338184L, -1634363404363384789L, 6197400980770823586L}).toString(), zamVar.zab().getErrorCode());
        bundle.putParcelable(new ObfuscatedString(new long[]{-4281570502648528205L, 1041891371588678006L, -7481176143840319173L, -7048026921293175525L}).toString(), zamVar.zab().getResolution());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.zaa = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.zaa = false;
    }

    public abstract void zab(ConnectionResult connectionResult, int i);

    public abstract void zac();

    public final void zah(ConnectionResult connectionResult, int i) {
        zam zamVar = new zam(connectionResult, i);
        AtomicReference<zam> atomicReference = this.zab;
        while (!atomicReference.compareAndSet(null, zamVar)) {
            if (atomicReference.get() != null) {
                return;
            }
        }
        this.zad.post(new zao(this, zamVar));
    }
}
