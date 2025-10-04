package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzetk implements zzexp {
    public final double zza;
    public final boolean zzb;

    public zzetk(double d, boolean z) {
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{3402942669655115526L, 7660798291623945840L}).toString());
        bundle.putBundle(new ObfuscatedString(new long[]{-673574611269001152L, 1452268622679312188L}).toString(), zza);
        Bundle zza2 = zzfhv.zza(zza, new ObfuscatedString(new long[]{-4569569338532151679L, -8265146190429713320L}).toString());
        zza.putBundle(new ObfuscatedString(new long[]{-8889071426671929879L, 8368935030933925223L}).toString(), zza2);
        zza2.putBoolean(new ObfuscatedString(new long[]{-5934439421726674385L, 6285310874679385178L, -799786073594184102L}).toString(), this.zzb);
        zza2.putDouble(new ObfuscatedString(new long[]{-4759537162277134272L, 4606742963125101979L, 3399316941762099279L}).toString(), this.zza);
    }
}
