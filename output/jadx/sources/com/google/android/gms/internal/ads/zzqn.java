package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
/* loaded from: classes2.dex */
final class zzqn {
    @DoNotInline
    public static void zza(AudioTrack audioTrack, @Nullable zzqp zzqpVar) {
        AudioDeviceInfo audioDeviceInfo;
        if (zzqpVar == null) {
            audioDeviceInfo = null;
        } else {
            audioDeviceInfo = zzqpVar.zza;
        }
        audioTrack.setPreferredDevice(audioDeviceInfo);
    }
}
