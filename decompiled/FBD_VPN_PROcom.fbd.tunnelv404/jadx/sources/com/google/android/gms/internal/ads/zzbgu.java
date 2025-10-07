package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2.dex */
public final class zzbgu {
    private final List zza = new LinkedList();
    private final Map zzb;
    private final Object zzc;

    public zzbgu(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        this.zzc = new Object();
        linkedHashMap.put(new ObfuscatedString(new long[]{-3149013922995308177L, 6017188513557142391L}).toString(), new ObfuscatedString(new long[]{-8393157574348535111L, -8058771891246898980L}).toString());
        linkedHashMap.put(new ObfuscatedString(new long[]{344877609606053078L, -7419736808395621812L, -9154343894338181838L}).toString(), str2);
    }

    public static final zzbgr zzf() {
        return new zzbgr(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), null, null);
    }

    public final zzbgt zza() {
        zzbgt zzbgtVar;
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.zzc) {
            try {
                for (zzbgr zzbgrVar : this.zza) {
                    long zza = zzbgrVar.zza();
                    String zzc = zzbgrVar.zzc();
                    zzbgr zzb = zzbgrVar.zzb();
                    if (zzb != null && zza > 0) {
                        long zza2 = zza - zzb.zza();
                        sb.append(zzc);
                        sb.append('.');
                        sb.append(zza2);
                        sb.append(',');
                        if (booleanValue) {
                            if (!hashMap.containsKey(Long.valueOf(zzb.zza()))) {
                                hashMap.put(Long.valueOf(zzb.zza()), new StringBuilder(zzc));
                            } else {
                                StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzb.zza()));
                                sb2.append('+');
                                sb2.append(zzc);
                            }
                        }
                    }
                }
                this.zza.clear();
                String str = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (booleanValue) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        sb3.append(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() + (((Long) entry.getKey()).longValue() - com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime()));
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    str = sb3.toString();
                }
                zzbgtVar = new zzbgt(sb.toString(), str);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbgtVar;
    }

    @VisibleForTesting
    public final Map zzb() {
        Map map;
        synchronized (this.zzc) {
            com.google.android.gms.ads.internal.zzt.zzo().zzg();
            map = this.zzb;
        }
        return map;
    }

    public final void zzc(@Nullable zzbgu zzbguVar) {
        synchronized (this.zzc) {
        }
    }

    public final void zzd(String str, String str2) {
        zzbgk zzg;
        if (!TextUtils.isEmpty(str2) && (zzg = com.google.android.gms.ads.internal.zzt.zzo().zzg()) != null) {
            synchronized (this.zzc) {
                zzbgq zza = zzg.zza(str);
                Map map = this.zzb;
                map.put(str, zza.zza((String) map.get(str), str2));
            }
        }
    }

    public final boolean zze(zzbgr zzbgrVar, long j, String... strArr) {
        synchronized (this.zzc) {
            for (int i = 0; i <= 0; i++) {
                try {
                    this.zza.add(new zzbgr(j, strArr[i], zzbgrVar));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return true;
    }
}
