package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(29)
/* loaded from: classes2.dex */
public final class zzpc {
    @DoNotInline
    public static int zza(int i, int i2, zzk zzkVar) {
        boolean isDirectPlaybackSupported;
        for (int i3 = 10; i3 > 0; i3--) {
            int zzg = zzfy.zzg(i3);
            if (zzg != 0) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(zzg).build(), zzkVar.zza().zza);
                if (isDirectPlaybackSupported) {
                    return i3;
                }
            }
        }
        return 0;
    }

    @DoNotInline
    public static zzgaa<Integer> zzb(zzk zzkVar) {
        zzgad zzgadVar;
        boolean isDirectPlaybackSupported;
        zzfzx zzfzxVar = new zzfzx();
        zzgadVar = zzpd.zzc;
        zzgce it = zzgadVar.keySet().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int intValue = num.intValue();
            if (zzfy.zza >= zzfy.zzf(intValue)) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), zzkVar.zza().zza);
                if (isDirectPlaybackSupported) {
                    zzfzxVar.zzf(num);
                }
            }
        }
        zzfzxVar.zzf((Object) 2);
        return zzfzxVar.zzi();
    }
}
