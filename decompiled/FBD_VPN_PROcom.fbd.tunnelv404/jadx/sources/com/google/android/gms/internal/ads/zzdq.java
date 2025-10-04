package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdq {
    private final zzgaa zza;
    private final List zzb = new ArrayList();
    private ByteBuffer[] zzc = new ByteBuffer[0];
    private zzdr zzd;
    private zzdr zze;
    private boolean zzf;

    public zzdq(zzgaa zzgaaVar) {
        this.zza = zzgaaVar;
        zzdr zzdrVar = zzdr.zza;
        this.zzd = zzdrVar;
        this.zze = zzdrVar;
        this.zzf = false;
    }

    private final int zzi() {
        return this.zzc.length - 1;
    }

    private final void zzj(ByteBuffer byteBuffer) {
        boolean z;
        ByteBuffer byteBuffer2;
        do {
            int i = 0;
            z = false;
            while (i <= zzi()) {
                int i2 = i + 1;
                if (!this.zzc[i].hasRemaining()) {
                    zzdt zzdtVar = (zzdt) this.zzb.get(i);
                    if (zzdtVar.zzh()) {
                        if (!this.zzc[i].hasRemaining() && i < zzi()) {
                            ((zzdt) this.zzb.get(i2)).zzd();
                        }
                    } else {
                        if (i > 0) {
                            byteBuffer2 = this.zzc[i - 1];
                        } else if (byteBuffer.hasRemaining()) {
                            byteBuffer2 = byteBuffer;
                        } else {
                            byteBuffer2 = zzdt.zza;
                        }
                        long remaining = byteBuffer2.remaining();
                        zzdtVar.zze(byteBuffer2);
                        this.zzc[i] = zzdtVar.zzb();
                        boolean z2 = true;
                        if (remaining - byteBuffer2.remaining() <= 0 && !this.zzc[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    }
                }
                i = i2;
            }
        } while (z);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdq)) {
            return false;
        }
        zzdq zzdqVar = (zzdq) obj;
        if (this.zza.size() != zzdqVar.zza.size()) {
            return false;
        }
        for (int i = 0; i < this.zza.size(); i++) {
            if (this.zza.get(i) != zzdqVar.zza.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final zzdr zza(zzdr zzdrVar) {
        if (!zzdrVar.equals(zzdr.zza)) {
            for (int i = 0; i < this.zza.size(); i++) {
                zzdt zzdtVar = (zzdt) this.zza.get(i);
                zzdr zza = zzdtVar.zza(zzdrVar);
                if (zzdtVar.zzg()) {
                    zzek.zzf(!zza.equals(zzdr.zza));
                    zzdrVar = zza;
                }
            }
            this.zze = zzdrVar;
            return zzdrVar;
        }
        throw new zzds(new ObfuscatedString(new long[]{-3914976281025981629L, 3672055253765218149L, -7952567028545659063L, 1628585517423377909L}).toString(), zzdrVar);
    }

    public final ByteBuffer zzb() {
        if (!zzh()) {
            return zzdt.zza;
        }
        ByteBuffer byteBuffer = this.zzc[zzi()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        zzj(zzdt.zza);
        return this.zzc[zzi()];
    }

    public final void zzc() {
        this.zzb.clear();
        this.zzd = this.zze;
        this.zzf = false;
        for (int i = 0; i < this.zza.size(); i++) {
            zzdt zzdtVar = (zzdt) this.zza.get(i);
            zzdtVar.zzc();
            if (zzdtVar.zzg()) {
                this.zzb.add(zzdtVar);
            }
        }
        this.zzc = new ByteBuffer[this.zzb.size()];
        for (int i2 = 0; i2 <= zzi(); i2++) {
            this.zzc[i2] = ((zzdt) this.zzb.get(i2)).zzb();
        }
    }

    public final void zzd() {
        if (zzh() && !this.zzf) {
            this.zzf = true;
            ((zzdt) this.zzb.get(0)).zzd();
        }
    }

    public final void zze(ByteBuffer byteBuffer) {
        if (zzh() && !this.zzf) {
            zzj(byteBuffer);
        }
    }

    public final void zzf() {
        for (int i = 0; i < this.zza.size(); i++) {
            zzdt zzdtVar = (zzdt) this.zza.get(i);
            zzdtVar.zzc();
            zzdtVar.zzf();
        }
        this.zzc = new ByteBuffer[0];
        zzdr zzdrVar = zzdr.zza;
        this.zzd = zzdrVar;
        this.zze = zzdrVar;
        this.zzf = false;
    }

    public final boolean zzg() {
        if (this.zzf && ((zzdt) this.zzb.get(zzi())).zzh() && !this.zzc[zzi()].hasRemaining()) {
            return true;
        }
        return false;
    }

    public final boolean zzh() {
        if (!this.zzb.isEmpty()) {
            return true;
        }
        return false;
    }
}
