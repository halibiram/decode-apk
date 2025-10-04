package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzetf implements zzexq {
    private final zzgey zza;
    private final Context zzb;

    public zzetf(zzgey zzgeyVar, Context context) {
        this.zza = zzgeyVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 13;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzete
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetf.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzetg zzc() {
        int i;
        int i2;
        AudioManager audioManager = (AudioManager) this.zzb.getSystemService(new ObfuscatedString(new long[]{8510008162811320068L, 7954986550336681343L}).toString());
        int mode = audioManager.getMode();
        boolean isMusicActive = audioManager.isMusicActive();
        boolean isSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int streamVolume = audioManager.getStreamVolume(3);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkv)).booleanValue()) {
            int zzj = com.google.android.gms.ads.internal.zzt.zzq().zzj(audioManager);
            i2 = audioManager.getStreamMaxVolume(3);
            i = zzj;
        } else {
            i = -1;
            i2 = -1;
        }
        return new zzetg(mode, isMusicActive, isSpeakerphoneOn, streamVolume, i, i2, audioManager.getRingerMode(), audioManager.getStreamVolume(2), com.google.android.gms.ads.internal.zzt.zzr().zza(), com.google.android.gms.ads.internal.zzt.zzr().zze());
    }
}
