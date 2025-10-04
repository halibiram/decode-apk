package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfm extends BroadcastReceiver {
    final /* synthetic */ zzfn zza;

    public /* synthetic */ zzfm(zzfn zzfnVar, zzfl zzflVar) {
        this.zza = zzfnVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Executor mainExecutor;
        int i = 3;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{8796343175799813035L, -8388075815376685933L, -9129361042665511574L}).toString());
        if (connectivityManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                    i = 1;
                } else {
                    int type = activeNetworkInfo.getType();
                    if (type != 0) {
                        if (type != 1) {
                            if (type != 4 && type != 5) {
                                if (type != 6) {
                                    if (type != 9) {
                                        i = 8;
                                    } else {
                                        i = 7;
                                    }
                                }
                                i = 5;
                            }
                        }
                        i = 2;
                    }
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                            break;
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 14:
                        case 15:
                        case 17:
                            i = 4;
                            break;
                        case 13:
                            i = 5;
                            break;
                        case 16:
                        case 19:
                        default:
                            i = 6;
                            break;
                        case 18:
                            i = 2;
                            break;
                        case 20:
                            if (zzfy.zza >= 29) {
                                i = 9;
                                break;
                            }
                            break;
                    }
                }
            } catch (SecurityException unused) {
            }
            if (zzfy.zza < 31 && i == 5) {
                zzfn zzfnVar = this.zza;
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(new ObfuscatedString(new long[]{566120403423374760L, 1856584431417059212L}).toString());
                    if (telephonyManager != null) {
                        zzfk zzfkVar = new zzfk(zzfnVar);
                        mainExecutor = context.getMainExecutor();
                        telephonyManager.registerTelephonyCallback(mainExecutor, zzfkVar);
                        telephonyManager.unregisterTelephonyCallback(zzfkVar);
                        return;
                    }
                    throw null;
                } catch (RuntimeException unused2) {
                    zzfn.zzc(zzfnVar, 5);
                    return;
                }
            }
            zzfn.zzc(this.zza, i);
        }
        i = 0;
        if (zzfy.zza < 31) {
        }
        zzfn.zzc(this.zza, i);
    }
}
