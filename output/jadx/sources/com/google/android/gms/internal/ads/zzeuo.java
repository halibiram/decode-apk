package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeuo implements zzexp {
    public final String zza;
    public final boolean zzb;

    public zzeuo(String str, boolean z) {
        this.zza = str;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString(new ObfuscatedString(new long[]{2469811444909783871L, -8097112019742951320L}).toString(), this.zza);
        if (this.zzb) {
            bundle.putString(new ObfuscatedString(new long[]{-8736729660183312628L, 4812227598476222626L}).toString(), new ObfuscatedString(new long[]{-5812732144970045357L, 7224539909834043631L}).toString());
        }
    }
}
