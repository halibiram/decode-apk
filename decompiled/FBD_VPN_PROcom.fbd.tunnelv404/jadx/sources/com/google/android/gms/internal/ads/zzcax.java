package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcax implements RewardItem {
    private final zzcak zza;

    public zzcax(zzcak zzcakVar) {
        this.zza = zzcakVar;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public final int getAmount() {
        zzcak zzcakVar = this.zza;
        if (zzcakVar != null) {
            try {
                return zzcakVar.zze();
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{8578066631935460670L, -4793500358767422018L, -1844703267027125832L, -2625727822792464680L, -516997474104918363L, 5446627396937010195L, 6843118976004366607L}).toString(), e);
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    @Nullable
    public final String getType() {
        zzcak zzcakVar = this.zza;
        if (zzcakVar != null) {
            try {
                return zzcakVar.zzf();
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-7992577099762804926L, 2551077987464977686L, 4512997075643188164L, 7788186467438911728L, 7089422140157568550L, -6764344836475212901L}).toString(), e);
            }
        }
        return null;
    }
}
