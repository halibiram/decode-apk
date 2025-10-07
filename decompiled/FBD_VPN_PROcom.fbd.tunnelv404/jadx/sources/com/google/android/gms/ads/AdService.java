package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class AdService extends IntentService {

    @NonNull
    @KeepForSdk
    public static final String CLASS_NAME = new ObfuscatedString(new long[]{3694543369524284096L, 5781950798575334685L, 6369092105988650609L, -5129340362607575936L, -5439622961438887322L, -2948271318320848965L}).toString();

    public AdService() {
        super(new ObfuscatedString(new long[]{3883984818596442027L, 8627055542207663742L, -3005619135023416864L}).toString());
    }

    @Override // android.app.IntentService
    public final void onHandleIntent(@NonNull Intent intent) {
        try {
            zzay.zza().zzm(this, new zzbsr()).zze(intent);
        } catch (RemoteException e) {
            zzcec.zzg(new ObfuscatedString(new long[]{-1064857044670760728L, -504369116147005458L, 1417903553593180042L, 8492913060762452163L, 2991508204127561947L, 7975062524023753169L, -3532645258735588728L, 7648604017024021344L}).toString().concat(e.toString()));
        }
    }
}
