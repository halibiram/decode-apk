package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzexc implements zzexp {

    @Nullable
    public final String zza;

    @Nullable
    public final String zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final String zzd;

    @Nullable
    public final Long zze;

    public zzexc(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Long l) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = l;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-8172844731683839133L, 8379605695636631642L, 1558056060731884233L}).toString(), this.zza);
        zzfhv.zzc(bundle, new ObfuscatedString(new long[]{3391324376386860769L, -5863385540041689923L}).toString(), this.zzb);
        zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-4870961679326613738L, -8695894761512736875L}).toString(), this.zzc);
        zzfhv.zzc(bundle, new ObfuscatedString(new long[]{-3754666264400934705L, 1366969949965765025L, -2550566843020344283L}).toString(), this.zzd);
        Long l = this.zze;
        if (l != null) {
            bundle.putLong(new ObfuscatedString(new long[]{1443167110642839403L, -1004204456666976931L, 3130261012439680157L}).toString(), l.longValue());
        }
    }
}
