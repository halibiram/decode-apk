package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public final class zak extends zap {
    private final SparseArray<zaj> zad;

    private zak(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.zad = new SparseArray<>();
        this.mLifecycleFragment.addCallback(new ObfuscatedString(new long[]{3933579802918848554L, 4382327872911343954L, 953978002607739638L}).toString(), this);
    }

    public static zak zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(lifecycleActivity);
        zak zakVar = (zak) fragment.getCallbackOrNull(new ObfuscatedString(new long[]{1949738853262053780L, 2189194701351111282L, -9145211970534782853L}).toString(), zak.class);
        if (zakVar != null) {
            return zakVar;
        }
        return new zak(fragment);
    }

    @Nullable
    private final zaj zai(int i) {
        if (this.zad.size() <= i) {
            return null;
        }
        SparseArray<zaj> sparseArray = this.zad;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zai = zai(i);
            if (zai != null) {
                printWriter.append((CharSequence) str).append((CharSequence) new ObfuscatedString(new long[]{1726308856983623610L, 4609968415570959607L, -1777082215730299272L, 700893523365086184L}).toString()).print(zai.zaa);
                printWriter.println(new ObfuscatedString(new long[]{9195595345956030267L, -7712697338979260777L}).toString());
                zai.zab.dump(String.valueOf(str).concat(new ObfuscatedString(new long[]{-4370035436909848200L, -1041739130633431718L}).toString()), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        new StringBuilder(String.valueOf(this.zad).length() + 14);
        new ObfuscatedString(new long[]{-1143751902481277403L, 664113439766035776L}).toString();
        new ObfuscatedString(new long[]{-4901289585092294012L, 7331571084782518183L}).toString();
        new ObfuscatedString(new long[]{-7151181973405509507L, 8307580149090670082L, -8827306500481346617L}).toString();
        if (this.zab.get() == null) {
            for (int i = 0; i < this.zad.size(); i++) {
                zaj zai = zai(i);
                if (zai != null) {
                    zai.zab.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zai = zai(i);
            if (zai != null) {
                zai.zab.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zab(ConnectionResult connectionResult, int i) {
        new ObfuscatedString(new long[]{397622544875378480L, 6702411474476565055L, 710896169144659963L}).toString();
        new ObfuscatedString(new long[]{-1554042264120115106L, 1700248198709679212L, -45843007083694476L, 162192798626076313L, 7538697154788236102L, 3935165081358537953L, -273892614021302261L, 4135036598968723698L, 9200168381982414329L}).toString();
        if (i < 0) {
            Log.wtf(new ObfuscatedString(new long[]{3676843665541957166L, -1034668694444616601L, -2197287005073940291L}).toString(), new ObfuscatedString(new long[]{-8383109930470242567L, 4700518990234833069L, 8653310036500618028L, -4203589023074079432L, -4299354449695851102L, -7933709066327177302L, -3840426767478547895L, -8211603036726841342L, -7912551359478446666L, 6414935074934086158L, -2909879801008772012L, 2470151700903828929L, -5562798491044326807L, 5314005283494647387L}).toString(), new Exception());
            return;
        }
        zaj zajVar = this.zad.get(i);
        if (zajVar != null) {
            zae(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zajVar.zac;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zac() {
        for (int i = 0; i < this.zad.size(); i++) {
            zaj zai = zai(i);
            if (zai != null) {
                zai.zab.connect();
            }
        }
    }

    public final void zad(int i, GoogleApiClient googleApiClient, @Nullable GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean z;
        Preconditions.checkNotNull(googleApiClient, new ObfuscatedString(new long[]{-4292998585623799188L, 7048497663135647928L, -6123490181722374059L, -5270933440638115444L, 1938871004974948131L, -4152280403880143506L}).toString());
        if (this.zad.indexOfKey(i) < 0) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append(new ObfuscatedString(new long[]{4121101291535847733L, 4480714553489567966L, -7525491586143125530L, -8862961918037291983L, 8547090418812875527L, 1068415630598447584L, 9087289397237990196L}).toString());
        sb.append(i);
        Preconditions.checkState(z, sb.toString());
        zam zamVar = this.zab.get();
        new StringBuilder(String.valueOf(zamVar).length() + 49);
        new ObfuscatedString(new long[]{-7095857057269932753L, 218334053015504600L, 3761348536543907136L, -1515426983892637539L, 6867249455599327946L}).toString();
        new ObfuscatedString(new long[]{2560174305623676276L, 75591627305556244L}).toString();
        new ObfuscatedString(new long[]{4957989437780855264L, 7533979374321918384L}).toString();
        new ObfuscatedString(new long[]{-1862847770007373991L, 6104220591799331673L, 8203377684409566967L}).toString();
        zaj zajVar = new zaj(this, i, googleApiClient, onConnectionFailedListener);
        googleApiClient.registerConnectionFailedListener(zajVar);
        this.zad.put(i, zajVar);
        if (this.zaa && zamVar == null) {
            new ObfuscatedString(new long[]{868675504296514400L, -624953803544131502L, -521062342663195926L}).toString();
            new ObfuscatedString(new long[]{-4016274156071825442L, -920270547674345961L, 5593796359422637679L}).toString().concat(googleApiClient.toString());
            googleApiClient.connect();
        }
    }

    public final void zae(int i) {
        zaj zajVar = this.zad.get(i);
        this.zad.remove(i);
        if (zajVar != null) {
            zajVar.zab.unregisterConnectionFailedListener(zajVar);
            zajVar.zab.disconnect();
        }
    }
}
