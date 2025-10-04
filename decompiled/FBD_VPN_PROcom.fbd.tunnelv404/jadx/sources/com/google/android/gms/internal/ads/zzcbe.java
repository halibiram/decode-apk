package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcbe extends zzcaj {
    private final String zza;
    private final int zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzcbe(@Nullable RewardItem rewardItem) {
        this(r1, rewardItem != null ? rewardItem.getAmount() : 1);
        String obfuscatedString;
        if (rewardItem != null) {
            obfuscatedString = rewardItem.getType();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{8938193706482800204L}).toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcak
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcak
    public final String zzf() {
        return this.zza;
    }

    public zzcbe(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }
}
