package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaat implements zzaas {
    private final WindowManager zza;

    private zzaat(WindowManager windowManager) {
        this.zza = windowManager;
    }

    @Nullable
    public static zzaas zzc(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{5064974201055744796L, 4262522019238878241L}).toString());
        if (windowManager != null) {
            return new zzaat(windowManager);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.zzaas
    public final void zzb(zzaap zzaapVar) {
        zzaaw.zzb(zzaapVar.zza, this.zza.getDefaultDisplay());
    }
}
