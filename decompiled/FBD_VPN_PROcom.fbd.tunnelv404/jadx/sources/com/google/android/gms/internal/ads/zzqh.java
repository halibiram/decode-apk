package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(29)
/* loaded from: classes2.dex */
public final class zzqh {
    @DoNotInline
    public static zzpg zza(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        boolean isOffloadedPlaybackSupported;
        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
        if (!isOffloadedPlaybackSupported) {
            return zzpg.zza;
        }
        zzpe zzpeVar = new zzpe();
        zzpeVar.zza(true);
        zzpeVar.zzc(z);
        return zzpeVar.zzd();
    }
}
