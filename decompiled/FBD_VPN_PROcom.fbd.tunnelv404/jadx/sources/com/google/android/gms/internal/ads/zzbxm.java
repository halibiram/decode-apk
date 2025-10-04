package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;

/* loaded from: classes2.dex */
final class zzbxm extends zzbxh {
    final /* synthetic */ UpdateClickUrlCallback zza;

    public zzbxm(zzbxq zzbxqVar, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zza = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zze(String str) {
        this.zza.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zzf(List list) {
        this.zza.onSuccess((Uri) list.get(0));
    }
}
