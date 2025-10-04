package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzccl implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzccm zza;
    private final String zzb;

    public zzccl(zzccm zzccmVar, String str) {
        this.zza = zzccmVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<zzcck> list;
        synchronized (this.zza) {
            try {
                list = this.zza.zzb;
                for (zzcck zzcckVar : list) {
                    zzcckVar.zza.zzb(zzcckVar.zzb, sharedPreferences, this.zzb, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
