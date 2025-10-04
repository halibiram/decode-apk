package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzeuf implements zzexp {
    private final String zza;
    private final String zzb;
    private final Bundle zzc;

    public /* synthetic */ zzeuf(String str, String str2, Bundle bundle, zzeue zzeueVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString(new ObfuscatedString(new long[]{-6730575256670874148L, 5182202119735209274L, 3295936654343729475L}).toString(), this.zza);
        bundle.putString(new ObfuscatedString(new long[]{-8419875978747871065L, -587314791180633052L, 5113092765986856905L}).toString(), this.zzb);
        bundle.putBundle(new ObfuscatedString(new long[]{-5645444405887457707L, -7988710920389786349L, -1509219705186635000L}).toString(), this.zzc);
    }
}
