package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzccm {

    @GuardedBy("this")
    private final Map zza = new HashMap();

    @GuardedBy("this")
    private final List zzb = new ArrayList();
    private final Context zzc;
    private final zzcbx zzd;

    public zzccm(Context context, zzcbx zzcbxVar) {
        this.zzc = context;
        this.zzd = zzcbxVar;
    }

    public final /* synthetic */ void zzb(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.zzd.zzd();
        }
    }

    public final synchronized void zzc(String str) {
        SharedPreferences sharedPreferences;
        try {
            if (this.zza.containsKey(str)) {
                return;
            }
            if (Objects.equals(str, new ObfuscatedString(new long[]{-4922777635598035077L, -1766761498298022785L, 1428909823186787444L}).toString())) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.zzc);
            } else {
                sharedPreferences = this.zzc.getSharedPreferences(str, 0);
            }
            zzccl zzcclVar = new zzccl(this, str);
            this.zza.put(str, zzcclVar);
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzcclVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(zzcck zzcckVar) {
        this.zzb.add(zzcckVar);
    }
}
