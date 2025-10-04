package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zztk implements zzti {
    private zztk() {
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final boolean zzc(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final boolean zzd(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (new ObfuscatedString(new long[]{917313668236198419L, 8678385340312902757L, 4375245208662574422L}).toString().equals(str) && new ObfuscatedString(new long[]{4250410854407378709L, 1976106759786854839L, 6726232609315422478L}).toString().equals(str2)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzti
    public final boolean zze() {
        return false;
    }

    public /* synthetic */ zztk(zztj zztjVar) {
    }
}
