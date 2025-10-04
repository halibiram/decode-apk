package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzazg {

    @VisibleForTesting
    int zza;
    private final Object zzb = new Object();
    private final List zzc = new LinkedList();

    @Nullable
    public final zzazf zza(boolean z) {
        int i;
        synchronized (this.zzb) {
            try {
                zzazf zzazfVar = null;
                if (this.zzc.isEmpty()) {
                    zzcec.zze(new ObfuscatedString(new long[]{-7032342976219404049L, -3361281515699203788L, -2818970230603211382L}).toString());
                    return null;
                }
                int i2 = 0;
                if (this.zzc.size() >= 2) {
                    int i3 = Integer.MIN_VALUE;
                    int i4 = 0;
                    for (zzazf zzazfVar2 : this.zzc) {
                        int zzb = zzazfVar2.zzb();
                        if (zzb > i3) {
                            i2 = i4;
                        }
                        if (zzb > i3) {
                            i = zzb;
                        } else {
                            i = i3;
                        }
                        if (zzb > i3) {
                            zzazfVar = zzazfVar2;
                        }
                        i4++;
                        i3 = i;
                    }
                    this.zzc.remove(i2);
                    return zzazfVar;
                }
                zzazf zzazfVar3 = (zzazf) this.zzc.get(0);
                if (z) {
                    this.zzc.remove(0);
                } else {
                    zzazfVar3.zzi();
                }
                return zzazfVar3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb(zzazf zzazfVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc.size() >= 10) {
                    zzcec.zze(new ObfuscatedString(new long[]{1063128392241910832L, 5226703168649827075L, 6797525199949434651L, -850250704272398456L, 373189367018869157L}).toString() + this.zzc.size());
                    this.zzc.remove(0);
                }
                int i = this.zza;
                this.zza = i + 1;
                zzazfVar.zzj(i);
                zzazfVar.zzn();
                this.zzc.add(zzazfVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(zzazf zzazfVar) {
        synchronized (this.zzb) {
            try {
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    zzazf zzazfVar2 = (zzazf) it.next();
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN()) {
                        if (!zzazfVar.equals(zzazfVar2) && zzazfVar2.zzd().equals(zzazfVar.zzd())) {
                            it.remove();
                            return true;
                        }
                    } else if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO() && !zzazfVar.equals(zzazfVar2) && zzazfVar2.zzf().equals(zzazfVar.zzf())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(zzazf zzazfVar) {
        synchronized (this.zzb) {
            try {
                if (this.zzc.contains(zzazfVar)) {
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
