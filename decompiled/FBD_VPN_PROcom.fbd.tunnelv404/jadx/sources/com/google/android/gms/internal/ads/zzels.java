package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzels {

    @GuardedBy("this")
    private final zzgfg zzc;

    @GuardedBy("this")
    private zzemi zzf;
    private final String zzh;
    private final int zzi;
    private final zzemh zzj;
    private zzfgm zzk;

    @GuardedBy("this")
    private final Map zza = new HashMap();

    @GuardedBy("this")
    private final List zzb = new ArrayList();

    @GuardedBy("this")
    private final List zzd = new ArrayList();

    @GuardedBy("this")
    private final Set zze = new HashSet();

    @GuardedBy("this")
    private int zzg = Integer.MAX_VALUE;

    public zzels(zzfgy zzfgyVar, zzemh zzemhVar, zzgfg zzgfgVar) {
        this.zzi = zzfgyVar.zzb.zzb.zzp;
        this.zzj = zzemhVar;
        this.zzc = zzgfgVar;
        this.zzh = zzemo.zzc(zzfgyVar);
        List list = zzfgyVar.zzb.zza;
        for (int i = 0; i < list.size(); i++) {
            this.zza.put((zzfgm) list.get(i), Integer.valueOf(i));
        }
        this.zzb.addAll(list);
    }

    private final synchronized void zzf() {
        this.zzj.zzi(this.zzk);
        zzemi zzemiVar = this.zzf;
        if (zzemiVar != null) {
            this.zzc.zzc(zzemiVar);
        } else {
            this.zzc.zzd(new zzeml(3, this.zzh));
        }
    }

    private final synchronized boolean zzg(boolean z) {
        int i;
        try {
            for (zzfgm zzfgmVar : this.zzb) {
                Integer num = (Integer) this.zza.get(zzfgmVar);
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = Integer.MAX_VALUE;
                }
                if (z || !this.zze.contains(zzfgmVar.zzat)) {
                    int i2 = this.zzg;
                    if (i < i2) {
                        return true;
                    }
                    if (i > i2) {
                        break;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized boolean zzh() {
        int i;
        try {
            Iterator it = this.zzd.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) this.zza.get((zzfgm) it.next());
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = Integer.MAX_VALUE;
                }
                if (i < this.zzg) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized boolean zzi() {
        if (!zzg(true)) {
            if (!zzh()) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final synchronized zzfgm zza() {
        for (int i = 0; i < this.zzb.size(); i++) {
            try {
                zzfgm zzfgmVar = (zzfgm) this.zzb.get(i);
                String str = zzfgmVar.zzat;
                if (!this.zze.contains(str)) {
                    if (!TextUtils.isEmpty(str)) {
                        this.zze.add(str);
                    }
                    this.zzd.add(zzfgmVar);
                    return (zzfgm) this.zzb.remove(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }

    public final synchronized void zzb(Throwable th, zzfgm zzfgmVar) {
        this.zzd.remove(zzfgmVar);
        this.zze.remove(zzfgmVar.zzat);
        if (!zzd() && !zzi()) {
            zzf();
        }
    }

    public final synchronized void zzc(zzemi zzemiVar, zzfgm zzfgmVar) {
        int i;
        this.zzd.remove(zzfgmVar);
        if (zzd()) {
            zzemiVar.zzq();
            return;
        }
        Integer num = (Integer) this.zza.get(zzfgmVar);
        if (num != null) {
            i = num.intValue();
        } else {
            i = Integer.MAX_VALUE;
        }
        if (i > this.zzg) {
            this.zzj.zzm(zzfgmVar);
            return;
        }
        if (this.zzf != null) {
            this.zzj.zzm(this.zzk);
        }
        this.zzg = i;
        this.zzf = zzemiVar;
        this.zzk = zzfgmVar;
        if (!zzi()) {
            zzf();
        }
    }

    public final synchronized boolean zzd() {
        return this.zzc.isDone();
    }

    public final synchronized boolean zze() {
        if (!zzd()) {
            List list = this.zzd;
            if (list.size() < this.zzi) {
                if (zzg(false)) {
                    return true;
                }
            }
        }
        return false;
    }
}
