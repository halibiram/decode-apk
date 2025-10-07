package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdtx {
    private final Map zza = new HashMap();

    @Nullable
    public final synchronized zzdtw zza(String str) {
        return (zzdtw) this.zza.get(str);
    }

    @Nullable
    public final zzdtw zzb(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdtw zza = zza((String) it.next());
            if (zza != null) {
                return zza;
            }
        }
        return null;
    }

    public final String zzc(String str) {
        zzbvg zzbvgVar;
        zzdtw zza = zza(str);
        if (zza != null && (zzbvgVar = zza.zzb) != null) {
            return zzbvgVar.toString();
        }
        return new ObfuscatedString(new long[]{1461894240944104081L}).toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzd(String str, @Nullable zzfif zzfifVar) {
        zzbvg zze;
        if (this.zza.containsKey(str)) {
            return;
        }
        zzbvg zzbvgVar = null;
        if (zzfifVar != null) {
            try {
                zze = zzfifVar.zze();
            } catch (zzfho unused) {
            }
            if (zzfifVar != null) {
                try {
                    zzbvgVar = zzfifVar.zzf();
                } catch (zzfho unused2) {
                }
            }
            boolean z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjk)).booleanValue()) {
                if (zzfifVar != null) {
                    try {
                        zzfifVar.zzC();
                    } catch (zzfho unused3) {
                    }
                }
                z = false;
            }
            this.zza.put(str, new zzdtw(str, zze, zzbvgVar, z));
        }
        zze = null;
        if (zzfifVar != null) {
        }
        boolean z2 = true;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjk)).booleanValue()) {
        }
        this.zza.put(str, new zzdtw(str, zze, zzbvgVar, z2));
    }

    public final synchronized void zze(String str, zzbus zzbusVar) {
        if (this.zza.containsKey(str)) {
            return;
        }
        try {
            this.zza.put(str, new zzdtw(str, zzbusVar.zzf(), zzbusVar.zzg(), true));
        } catch (Throwable unused) {
        }
    }
}
