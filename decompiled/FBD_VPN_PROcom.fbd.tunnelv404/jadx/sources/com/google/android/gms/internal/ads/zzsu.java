package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1301xde9db1b5;
import java.util.List;

@RequiresApi(29)
/* loaded from: classes2.dex */
final class zzsu {
    @DoNotInline
    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, String str, int i, int i2, double d) {
        List supportedPerformancePoints;
        supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
            return 0;
        }
        int zzb = zzb(supportedPerformancePoints, AbstractC1301xde9db1b5.m4310x9738a56c(i, i2, (int) d));
        if (zzb == 1 && str.equals(new ObfuscatedString(new long[]{3124672077065301214L, -3954261140967314223L, 1500069807491497346L}).toString())) {
            AbstractC1301xde9db1b5.m4315x9d12c1f4();
            if (zzb(supportedPerformancePoints, AbstractC1301xde9db1b5.m4309x75d576dc()) != 2) {
                return 0;
            }
        }
        return zzb;
    }

    private static int zzb(List list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
        boolean covers;
        for (int i = 0; i < list.size(); i++) {
            covers = AbstractC1301xde9db1b5.m4311x9e171bf9(list.get(i)).covers(performancePoint);
            if (covers) {
                return 2;
            }
        }
        return 1;
    }
}
