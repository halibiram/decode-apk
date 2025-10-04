package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdls implements zzbng {
    private final WeakReference zza;

    public /* synthetic */ zzdls(zzdlx zzdlxVar, zzdlr zzdlrVar) {
        this.zza = new WeakReference(zzdlxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        zzdav zzdavVar;
        zzdis zzdisVar;
        zzdis zzdisVar2;
        zzdlx zzdlxVar = (zzdlx) this.zza.get();
        if (zzdlxVar != null) {
            if (new ObfuscatedString(new long[]{-4692800426675136094L, 7937763883400424101L}).toString().equals((String) map.get(new ObfuscatedString(new long[]{4959358025264143411L, -9122273640633592665L, -5036137600944339175L}).toString()))) {
                zzdavVar = zzdlxVar.zzh;
                zzdavVar.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkm)).booleanValue()) {
                    zzdisVar = zzdlxVar.zzi;
                    zzdisVar.zzs();
                    if (!TextUtils.isEmpty((CharSequence) map.get(new ObfuscatedString(new long[]{-5526066360874670448L, -6102721445020505033L}).toString()))) {
                        zzdisVar2 = zzdlxVar.zzi;
                        zzdisVar2.zzbo();
                    }
                }
            }
        }
    }
}
