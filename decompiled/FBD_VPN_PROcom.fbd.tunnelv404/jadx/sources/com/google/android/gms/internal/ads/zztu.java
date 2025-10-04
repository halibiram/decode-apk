package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zztu implements zzvi {
    private final zzadb zza;

    @Nullable
    private zzacu zzb;

    @Nullable
    private zzacv zzc;

    public zztu(zzadb zzadbVar) {
        this.zza = zzadbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final int zza(zzadr zzadrVar) {
        zzacu zzacuVar = this.zzb;
        zzacuVar.getClass();
        zzacv zzacvVar = this.zzc;
        zzacvVar.getClass();
        return zzacuVar.zzb(zzacvVar, zzadrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final long zzb() {
        zzacv zzacvVar = this.zzc;
        if (zzacvVar != null) {
            return zzacvVar.zzf();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final void zzc() {
        zzacu zzacuVar = this.zzb;
        if (zzacuVar != null && (zzacuVar instanceof zzaig)) {
            ((zzaig) zzacuVar).zza();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0047, code lost:
    
        if (r9.zzf() != r15) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004b, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0072, code lost:
    
        if (r9.zzf() != r15) goto L23;
     */
    @Override // com.google.android.gms.internal.ads.zzvi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(zzu zzuVar, Uri uri, Map map, long j, long j2, zzacx zzacxVar) {
        boolean z = true;
        zzack zzackVar = new zzack(zzuVar, j, j2);
        this.zzc = zzackVar;
        if (this.zzb != null) {
            return;
        }
        zzacu[] zza = this.zza.zza(uri, map);
        int length = zza.length;
        int i = 0;
        if (length == 1) {
            this.zzb = zza[0];
        } else {
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                zzacu zzacuVar = zza[i2];
                try {
                } catch (EOFException unused) {
                    if (this.zzb == null) {
                    }
                } catch (Throwable th) {
                    if (this.zzb == null && zzackVar.zzf() != j) {
                        z = false;
                    }
                    zzek.zzf(z);
                    zzackVar.zzj();
                    throw th;
                }
                if (zzacuVar.zze(zzackVar)) {
                    this.zzb = zzacuVar;
                    zzek.zzf(true);
                    zzackVar.zzj();
                    break;
                } else {
                    if (this.zzb == null) {
                    }
                    boolean z2 = true;
                    zzek.zzf(z2);
                    zzackVar.zzj();
                    i2++;
                }
            }
            if (this.zzb == null) {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int length2 = zza.length;
                    if (i >= length2) {
                        break;
                    }
                    sb.append(zza[i].getClass().getSimpleName());
                    if (i < length2 - 1) {
                        sb.append(new ObfuscatedString(new long[]{-4232353296659654707L, -1353486449182936049L}).toString());
                    }
                    i++;
                }
                String sb2 = sb.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(new ObfuscatedString(new long[]{-3905148175643280587L, 913279816848835701L, 1303672565916243278L, 2757018081610203529L, -4270788605728994052L, -865345790424504688L}).toString());
                sb3.append(sb2);
                throw new zzwt(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3540532761247614535L, -4569238838218575271L, -4799446774830990681L, 9064692232805273733L}), sb3), uri);
            }
        }
        this.zzb.zzc(zzacxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final void zze() {
        if (this.zzb != null) {
            this.zzb = null;
        }
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final void zzf(long j, long j2) {
        zzacu zzacuVar = this.zzb;
        zzacuVar.getClass();
        zzacuVar.zzd(j, j2);
    }
}
