package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(32)
/* loaded from: classes2.dex */
public final class zzxz {
    private final Spatializer zza;
    private final boolean zzb;

    @Nullable
    private Handler zzc;

    @Nullable
    private Spatializer.OnSpatializerStateChangedListener zzd;

    private zzxz(Spatializer spatializer) {
        int immersiveAudioLevel;
        boolean z;
        this.zza = spatializer;
        immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
        if (immersiveAudioLevel != 0) {
            z = true;
        } else {
            z = false;
        }
        this.zzb = z;
    }

    @Nullable
    public static zzxz zza(Context context) {
        Spatializer spatializer;
        AudioManager audioManager = (AudioManager) context.getSystemService(new ObfuscatedString(new long[]{59878005140125078L, 7363287847925397699L}).toString());
        if (audioManager != null) {
            spatializer = audioManager.getSpatializer();
            return new zzxz(spatializer);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzxx] */
    public final void zzb(zzyg zzygVar, Looper looper) {
        if (this.zzd == null && this.zzc == null) {
            this.zzd = new zzxy(this, zzygVar);
            final Handler handler = new Handler(looper);
            this.zzc = handler;
            this.zza.addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzxx
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, this.zzd);
        }
    }

    public final void zzc() {
        Spatializer.OnSpatializerStateChangedListener onSpatializerStateChangedListener = this.zzd;
        if (onSpatializerStateChangedListener != null && this.zzc != null) {
            this.zza.removeOnSpatializerStateChangedListener(onSpatializerStateChangedListener);
            Handler handler = this.zzc;
            int i = zzfy.zza;
            handler.removeCallbacksAndMessages(null);
            this.zzc = null;
            this.zzd = null;
        }
    }

    public final boolean zzd(zzk zzkVar, zzam zzamVar) {
        int i;
        boolean canBeSpatialized;
        if (new ObfuscatedString(new long[]{2309931102323653950L, 1480645780050140241L, 5916085157407375261L}).toString().equals(zzamVar.zzm) && zzamVar.zzz == 16) {
            i = 12;
        } else {
            i = zzamVar.zzz;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(zzfy.zzg(i));
        int i2 = zzamVar.zzA;
        if (i2 != -1) {
            channelMask.setSampleRate(i2);
        }
        canBeSpatialized = this.zza.canBeSpatialized(zzkVar.zza().zza, channelMask.build());
        return canBeSpatialized;
    }

    public final boolean zze() {
        boolean isAvailable;
        isAvailable = this.zza.isAvailable();
        return isAvailable;
    }

    public final boolean zzf() {
        boolean isEnabled;
        isEnabled = this.zza.isEnabled();
        return isEnabled;
    }

    public final boolean zzg() {
        return this.zzb;
    }
}
