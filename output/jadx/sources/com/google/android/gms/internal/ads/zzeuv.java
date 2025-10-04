package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzeuv implements zzexq {
    private final zzgey zza;

    @Nullable
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set zzd;

    public zzeuv(zzgey zzgeyVar, @Nullable ViewGroup viewGroup, Context context, Set set) {
        this.zza = zzgeyVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeuv.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeuw zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfT)).booleanValue() && this.zzb != null && this.zzd.contains(new ObfuscatedString(new long[]{512835638172993871L, -749154547897412779L}).toString())) {
            return new zzeuw(Boolean.valueOf(this.zzb.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfU)).booleanValue() && this.zzd.contains(new ObfuscatedString(new long[]{5826487358413294468L, -8503286949091698195L}).toString())) {
            Context context = this.zzc;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                    bool = Boolean.TRUE;
                } else {
                    try {
                        boolean z = false;
                        if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                            z = true;
                        }
                        bool = Boolean.valueOf(z);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                return new zzeuw(bool);
            }
        }
        return new zzeuw(null);
    }
}
