package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzb extends com.google.android.gms.internal.common.zzi {
    final /* synthetic */ BaseGmsClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.zza = baseGmsClient;
    }

    private static final void zza(Message message) {
        zzc zzcVar = (zzc) message.obj;
        zzcVar.zzc();
        zzcVar.zzg();
    }

    private static final boolean zzb(Message message) {
        int i = message.what;
        if (i == 2 || i == 1 || i == 7) {
            return true;
        }
        return false;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        ConnectionResult connectionResult3;
        ConnectionResult connectionResult4;
        boolean z;
        if (this.zza.zzd.get() != message.arg1) {
            if (zzb(message)) {
                zza(message);
                return;
            }
            return;
        }
        int i = message.what;
        if ((i != 1 && i != 7 && ((i != 4 || this.zza.enableLocalFallback()) && message.what != 5)) || this.zza.isConnecting()) {
            int i2 = message.what;
            PendingIntent pendingIntent = null;
            if (i2 == 4) {
                this.zza.zzB = new ConnectionResult(message.arg2);
                if (BaseGmsClient.zzo(this.zza)) {
                    BaseGmsClient baseGmsClient = this.zza;
                    z = baseGmsClient.zzC;
                    if (!z) {
                        baseGmsClient.zzp(3, null);
                        return;
                    }
                }
                BaseGmsClient baseGmsClient2 = this.zza;
                connectionResult3 = baseGmsClient2.zzB;
                if (connectionResult3 != null) {
                    connectionResult4 = baseGmsClient2.zzB;
                } else {
                    connectionResult4 = new ConnectionResult(8);
                }
                this.zza.zzc.onReportServiceBinding(connectionResult4);
                this.zza.onConnectionFailed(connectionResult4);
                return;
            }
            if (i2 == 5) {
                BaseGmsClient baseGmsClient3 = this.zza;
                connectionResult = baseGmsClient3.zzB;
                if (connectionResult != null) {
                    connectionResult2 = baseGmsClient3.zzB;
                } else {
                    connectionResult2 = new ConnectionResult(8);
                }
                this.zza.zzc.onReportServiceBinding(connectionResult2);
                this.zza.onConnectionFailed(connectionResult2);
                return;
            }
            if (i2 == 3) {
                Object obj = message.obj;
                if (obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) obj;
                }
                ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, pendingIntent);
                this.zza.zzc.onReportServiceBinding(connectionResult5);
                this.zza.onConnectionFailed(connectionResult5);
                return;
            }
            if (i2 == 6) {
                this.zza.zzp(5, null);
                BaseGmsClient baseGmsClient4 = this.zza;
                baseConnectionCallbacks = baseGmsClient4.zzw;
                if (baseConnectionCallbacks != null) {
                    baseConnectionCallbacks2 = baseGmsClient4.zzw;
                    baseConnectionCallbacks2.onConnectionSuspended(message.arg2);
                }
                this.zza.onConnectionSuspended(message.arg2);
                BaseGmsClient.zzn(this.zza, 5, 1, null);
                return;
            }
            if (i2 == 2 && !this.zza.isConnected()) {
                zza(message);
                return;
            }
            if (zzb(message)) {
                ((zzc) message.obj).zze();
                return;
            }
            int i3 = message.what;
            Log.wtf(new ObfuscatedString(new long[]{-8622046057290190373L, 49727327793254727L, -3772006084754433720L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8571097887839550962L, -5213217888826839376L, 8693658314698032850L, 5394660718804805829L, -6205846025366712459L, 8534812987531682800L}), new StringBuilder(), i3), new Exception());
            return;
        }
        zza(message);
    }
}
