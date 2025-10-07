package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdlu implements zzbng {
    private final WeakReference zza;

    public /* synthetic */ zzdlu(zzdlx zzdlxVar, zzdlt zzdltVar) {
        this.zza = new WeakReference(zzdlxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        zzdav zzdavVar;
        zzdis zzdisVar;
        zzdis zzdisVar2;
        zzdlx zzdlxVar = (zzdlx) this.zza.get();
        if (zzdlxVar != null) {
            zzdavVar = zzdlxVar.zzh;
            zzdavVar.onAdClicked();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
                zzdisVar = zzdlxVar.zzi;
                zzdisVar.zzs();
                if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{-382725681436893L, 1767813727534212167L}).toString()))) {
                    zzdisVar2 = zzdlxVar.zzi;
                    zzdisVar2.zzbo();
                }
            }
        }
    }
}
