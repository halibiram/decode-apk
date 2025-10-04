package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzeyb implements zzexq {
    private final zzgey zza;
    private final Context zzb;

    public zzeyb(zzgey zzgeyVar, Context context) {
        this.zza = zzgeyVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeya
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeyb.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzexz zzc() {
        int i;
        boolean z;
        int i2;
        TelephonyManager telephonyManager = (TelephonyManager) this.zzb.getSystemService(new ObfuscatedString(new long[]{-3783419453649283931L, 7676569101486508762L}).toString());
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        com.google.android.gms.ads.internal.zzt.zzp();
        int i3 = -1;
        if (com.google.android.gms.ads.internal.util.zzt.zzz(this.zzb, new ObfuscatedString(new long[]{-1215464164515815585L, 6990351526032117019L, -7119976851018935969L, 5633823544576327405L, 1442746364173011356L, 7624662816290104378L}).toString())) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zzb.getSystemService(new ObfuscatedString(new long[]{2525148744817975505L, -6813706447017926465L, -8148810062017432323L}).toString());
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                i = type;
                i3 = ordinal;
            } else {
                i = -1;
            }
            z = connectivityManager.isActiveNetworkMetered();
            i2 = i3;
        } else {
            i = -2;
            z = false;
            i2 = -1;
        }
        return new zzexz(networkOperator, i, com.google.android.gms.ads.internal.zzt.zzq().zzm(this.zzb), phoneType, z, i2);
    }
}
