package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class zzdyy {
    private final zzdyi zza;
    private final zzdtx zzb;
    private final Object zzc = new Object();

    @GuardedBy("lock")
    private final List zzd = new ArrayList();

    @GuardedBy("lock")
    private boolean zze;

    public zzdyy(zzdyi zzdyiVar, zzdtx zzdtxVar) {
        this.zza = zzdyiVar;
        this.zzb = zzdtxVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(List list) {
        String obfuscatedString;
        boolean z;
        zzdtw zza;
        zzbvg zzbvgVar;
        synchronized (this.zzc) {
            try {
                if (this.zze) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzbpd zzbpdVar = (zzbpd) it.next();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjj)).booleanValue()) {
                        zzdtw zza2 = this.zzb.zza(zzbpdVar.zza);
                        if (zza2 != null && (zzbvgVar = zza2.zzc) != null) {
                            obfuscatedString = zzbvgVar.toString();
                        }
                        obfuscatedString = new ObfuscatedString(new long[]{-5731133027773518791L}).toString();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{6669065254300220323L}).toString();
                    }
                    String str = obfuscatedString;
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjk)).booleanValue() || (zza = this.zzb.zza(zzbpdVar.zza)) == null || !zza.zzd) {
                        z = false;
                    } else {
                        z = true;
                    }
                    List list2 = this.zzd;
                    String str2 = zzbpdVar.zza;
                    list2.add(new zzdyx(str2, str, this.zzb.zzc(str2), zzbpdVar.zzb ? 1 : 0, zzbpdVar.zzd, zzbpdVar.zzc, z));
                }
                this.zze = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final JSONArray zza() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.zzc) {
            try {
                if (!this.zze) {
                    if (this.zza.zzt()) {
                        zzd(this.zza.zzg());
                    } else {
                        zzc();
                    }
                }
                Iterator it = this.zzd.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((zzdyx) it.next()).zza());
                }
            } finally {
            }
        }
        return jSONArray;
    }

    public final void zzc() {
        this.zza.zzs(new zzdyw(this));
    }
}
