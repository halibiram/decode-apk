package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbms implements zzbng {
    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        try {
            zzfue.zzj(zzcjkVar.getContext()).zzk();
            zzfuf.zzi(zzcjkVar.getContext()).zzj();
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{8937660253748974457L, -3203588694139715213L, -4167818350278141474L, 2670850918963842053L, -478273056974022494L}).toString());
        }
    }
}
