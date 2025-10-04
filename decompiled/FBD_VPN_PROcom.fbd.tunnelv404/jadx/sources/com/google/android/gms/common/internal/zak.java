package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* loaded from: classes2.dex */
public final class zak implements Handler.Callback {

    @NotOnlyInitialized
    private final zaj zab;
    private final Handler zah;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zac = new ArrayList<>();

    @VisibleForTesting
    final ArrayList<GoogleApiClient.ConnectionCallbacks> zaa = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zad = new ArrayList<>();
    private volatile boolean zae = false;
    private final AtomicInteger zaf = new AtomicInteger(0);
    private boolean zag = false;
    private final Object zai = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.zab = zajVar;
        this.zah = new com.google.android.gms.internal.base.zaq(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.zai) {
                try {
                    if (this.zae && this.zab.isConnected() && this.zac.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnected(null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append(new ObfuscatedString(new long[]{-2858860814903250762L, -2956350835692369200L, -8319191437297642147L, 92879070706725205L, 8049321081731187755L, -4041067391384754012L}).toString());
        sb.append(i);
        Log.wtf(new ObfuscatedString(new long[]{899603775381617695L, -2321718135256189752L, -6574069858710393741L}).toString(), sb.toString(), new Exception());
        return false;
    }

    public final void zaa() {
        this.zae = false;
        this.zaf.incrementAndGet();
    }

    public final void zab() {
        this.zae = true;
    }

    @VisibleForTesting
    public final void zac(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.zah, new ObfuscatedString(new long[]{-8614088189176133128L, -5335831153791375734L, -8239292369487904192L, -5253368466624548624L, 2653834544426861183L, -562413269431452636L, -6052903016163177157L, 7956140632040650843L, 2275511453041368304L}).toString());
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            try {
                ArrayList arrayList = new ArrayList(this.zad);
                int i = this.zaf.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it.next();
                    if (this.zae && this.zaf.get() == i) {
                        if (this.zad.contains(onConnectionFailedListener)) {
                            onConnectionFailedListener.onConnectionFailed(connectionResult);
                        }
                    }
                    return;
                }
            } finally {
            }
        }
    }

    @VisibleForTesting
    public final void zad(@Nullable Bundle bundle) {
        Preconditions.checkHandlerThread(this.zah, new ObfuscatedString(new long[]{-1125208878896078839L, 606248929921976993L, -9196985873480312952L, 5823809135174891002L, 3847974582970581460L, -2654923732657070914L, 3249650213011493642L, 8649454338852846157L, 9009384170214554875L}).toString());
        synchronized (this.zai) {
            try {
                Preconditions.checkState(!this.zag);
                this.zah.removeMessages(1);
                this.zag = true;
                Preconditions.checkState(this.zaa.isEmpty());
                ArrayList arrayList = new ArrayList(this.zac);
                int i = this.zaf.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                    if (!this.zae || !this.zab.isConnected() || this.zaf.get() != i) {
                        break;
                    } else if (!this.zaa.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnected(bundle);
                    }
                }
                this.zaa.clear();
                this.zag = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public final void zae(int i) {
        Preconditions.checkHandlerThread(this.zah, new ObfuscatedString(new long[]{-4316204049919553523L, 4603830105625353106L, -4091196595959757563L, 1763764016514552142L, 8760452693052593249L, -4695517221852564655L, -7055784703112477403L, -2415025745064522677L, 8325749049807334833L, -7008845229442845057L}).toString());
        this.zah.removeMessages(1);
        synchronized (this.zai) {
            try {
                this.zag = true;
                ArrayList arrayList = new ArrayList(this.zac);
                int i2 = this.zaf.get();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                    if (!this.zae || this.zaf.get() != i2) {
                        break;
                    } else if (this.zac.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnectionSuspended(i);
                    }
                }
                this.zaa.clear();
                this.zag = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            try {
                if (this.zac.contains(connectionCallbacks)) {
                    new ObfuscatedString(new long[]{8902376988536447492L, -8316421323544139798L, -8279773985693787501L}).toString();
                    new StringBuilder(String.valueOf(connectionCallbacks).length() + 62);
                    new ObfuscatedString(new long[]{5611478882380397671L, 8011596796201902284L, 6362239480688612264L, 6954947583129293442L, 4883146618666349968L, -6780699047951550106L}).toString();
                    new ObfuscatedString(new long[]{-5610112265288282317L, 2294724121754575901L, -5789312145963956647L, 5555199163588508596L}).toString();
                } else {
                    this.zac.add(connectionCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.zab.isConnected()) {
            Handler handler = this.zah;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void zag(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            try {
                if (this.zad.contains(onConnectionFailedListener)) {
                    new ObfuscatedString(new long[]{-3954424451218197629L, 2096315981909093110L, -3445949884869880349L}).toString();
                    new StringBuilder(String.valueOf(onConnectionFailedListener).length() + 67);
                    new ObfuscatedString(new long[]{6826761207974239627L, -2244604462215512167L, -8845567175726221664L, 1051739055800203666L, -110468933799116036L, 943247524080349451L, -9113679246271908756L}).toString();
                    new ObfuscatedString(new long[]{8505107328123002510L, 4634286988167890033L, -5270959328140874446L, -4379506703587183062L}).toString();
                } else {
                    this.zad.add(onConnectionFailedListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zah(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            try {
                if (!this.zac.remove(connectionCallbacks)) {
                    new ObfuscatedString(new long[]{-2908892861624786185L, -2678168203912019702L, 858326582016528153L}).toString();
                    new StringBuilder(String.valueOf(connectionCallbacks).length() + 52);
                    new ObfuscatedString(new long[]{-5163710193455650486L, -4204075844958963916L, -8361791885209385696L, 4406239377153666718L, -4459315080171619918L, 2208620762628317077L, 5374436828160656083L}).toString();
                    new ObfuscatedString(new long[]{-7557460974333163287L, 4206561009642938798L, -5107938379192134433L}).toString();
                } else if (this.zag) {
                    this.zaa.add(connectionCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            try {
                if (!this.zad.remove(onConnectionFailedListener)) {
                    new ObfuscatedString(new long[]{3347423020160932040L, -6354274764447223307L, -3205017852318490620L}).toString();
                    new StringBuilder(String.valueOf(onConnectionFailedListener).length() + 57);
                    new ObfuscatedString(new long[]{-2222136569553625547L, -587771975889396544L, -3702947989300125773L, -5190326059695314703L, 8331043837554858440L, 459240590873097420L, -2214110115513057047L}).toString();
                    new ObfuscatedString(new long[]{7717311799988286739L, 7575179184243495612L, 2673022245398795799L}).toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zaj(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            contains = this.zac.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            contains = this.zad.contains(onConnectionFailedListener);
        }
        return contains;
    }
}
