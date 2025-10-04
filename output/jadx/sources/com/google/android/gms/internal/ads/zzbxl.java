package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;

/* loaded from: classes2.dex */
final class zzbxl extends zzbxh {
    final /* synthetic */ UpdateImpressionUrlsCallback zza;

    public zzbxl(zzbxq zzbxqVar, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zza = updateImpressionUrlsCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zze(String str) {
        this.zza.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxi
    public final void zzf(List list) {
        this.zza.onSuccess(list);
    }
}
