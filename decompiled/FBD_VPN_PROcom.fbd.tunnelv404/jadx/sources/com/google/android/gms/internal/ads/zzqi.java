package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(31)
/* loaded from: classes2.dex */
public final class zzqi {
    @DoNotInline
    public static zzpg zza(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        int playbackOffloadSupport;
        playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return zzpg.zza;
        }
        zzpe zzpeVar = new zzpe();
        boolean z2 = false;
        if (zzfy.zza > 32 && playbackOffloadSupport == 2) {
            z2 = true;
        }
        zzpeVar.zza(true);
        zzpeVar.zzb(z2);
        zzpeVar.zzc(z);
        return zzpeVar.zzd();
    }
}
