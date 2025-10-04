package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.GuardedBy;
import com.google.android.gms.internal.ads.zzbgc;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcf {

    @GuardedBy("this")
    private final Map zza = new HashMap();

    @GuardedBy("this")
    private final List zzb = new ArrayList();
    private final Context zzc;

    public zzcf(Context context) {
        this.zzc = context;
    }

    public final synchronized void zzb(String str) {
        SharedPreferences sharedPreferences;
        try {
            if (this.zza.containsKey(str)) {
                return;
            }
            if (Objects.equals(str, new ObfuscatedString(new long[]{3726203909161956685L, -3574965185591335093L, 4590084209336165008L}).toString())) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
            } else {
                sharedPreferences = this.zzc.getSharedPreferences(str, 0);
            }
            zzce zzceVar = new zzce(this, str);
            this.zza.put(str, zzceVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzceVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void zzc() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        Map zzu = zzt.zzu((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjY));
        Iterator it = zzu.keySet().iterator();
        while (it.hasNext()) {
            zzb((String) it.next());
        }
        zzd(new zzcd(zzu));
    }

    public final synchronized void zzd(zzcd zzcdVar) {
        this.zzb.add(zzcdVar);
    }
}
