package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeve implements zzexp {
    public final Bundle zza;

    public zzeve(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{1455865252065663979L, -938624595086474169L}).toString());
        zza.putBundle(new ObfuscatedString(new long[]{-7093492440157320357L, -3813051507916818519L, -222412882710492403L}).toString(), this.zza);
        bundle.putBundle(new ObfuscatedString(new long[]{-1386800547162070807L, -6026917634668522796L}).toString(), zza);
    }
}
