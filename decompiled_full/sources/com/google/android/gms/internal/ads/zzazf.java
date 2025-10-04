package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzazf {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final boolean zzd;
    private final zzazu zze;
    private final zzbac zzf;
    private int zzn;
    private final Object zzg = new Object();
    private final ArrayList zzh = new ArrayList();
    private final ArrayList zzi = new ArrayList();
    private final ArrayList zzj = new ArrayList();
    private int zzk = 0;
    private int zzl = 0;
    private int zzm = 0;
    private String zzo = new ObfuscatedString(new long[]{6357830067265604370L}).toString();
    private String zzp = new ObfuscatedString(new long[]{-3610652738224972559L}).toString();
    private String zzq = new ObfuscatedString(new long[]{822145477761610868L}).toString();

    public zzazf(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = z;
        this.zze = new zzazu(i4);
        this.zzf = new zzbac(i5, i6, i7);
    }

    private final void zzp(@Nullable String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null) {
            if (str.length() >= this.zzc) {
                synchronized (this.zzg) {
                    try {
                        this.zzh.add(str);
                        this.zzk += str.length();
                        if (z) {
                            this.zzi.add(str);
                            this.zzj.add(new zzazq(f, f2, f3, f4, this.zzi.size() - 1));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    private static final String zzq(ArrayList arrayList, int i) {
        if (arrayList.isEmpty()) {
            return new ObfuscatedString(new long[]{5341457810607467520L}).toString();
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            sb.append((String) arrayList.get(i2));
            sb.append(' ');
            i2++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        if (sb2.length() < 100) {
            return sb2;
        }
        return sb2.substring(0, 100);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzazf)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzazf) obj).zzo;
        if (str == null || !str.equals(this.zzo)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.zzo.hashCode();
    }

    public final String toString() {
        ArrayList arrayList = this.zzh;
        int i = this.zzl;
        int i2 = this.zzn;
        int i3 = this.zzk;
        String zzq = zzq(arrayList, 100);
        String zzq2 = zzq(this.zzi, 100);
        String str = this.zzo;
        String str2 = this.zzp;
        String str3 = this.zzq;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5937070776698619473L, -6997357363233022449L, -3677036845413947335L, 4627941976360023538L, 2684957521853536309L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{5733054373006680141L, -1531488500730181192L}).toString());
        sb.append(i2);
        sb.append(new ObfuscatedString(new long[]{5262822671224925076L, -3878767196934562706L, -4173044999663274899L}).toString());
        sb.append(i3);
        sb.append(new ObfuscatedString(new long[]{88804268617318557L, -7590954011816626402L}).toString());
        sb.append(zzq);
        sb.append(new ObfuscatedString(new long[]{-6306824913480453093L, -45715069154283855L, 8316706339941989584L}).toString());
        sb.append(zzq2);
        sb.append(new ObfuscatedString(new long[]{2326536201003688132L, 8348468948565119006L, 8105702976288782677L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-3241193734562183081L, -857875542075227618L, -5144350821965904785L, 7631879660757109850L}).toString());
        sb.append(str2);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{9127093880261597128L, -4413942891521006769L, 6630971020637632298L, 7773829008543226519L, 325238869744931996L}), sb, str3);
    }

    @VisibleForTesting
    public final int zza(int i, int i2) {
        if (this.zzd) {
            return this.zzb;
        }
        return (i2 * this.zzb) + (i * this.zza);
    }

    public final int zzb() {
        return this.zzn;
    }

    @VisibleForTesting
    public final int zzc() {
        return this.zzk;
    }

    public final String zzd() {
        return this.zzo;
    }

    public final String zze() {
        return this.zzp;
    }

    public final String zzf() {
        return this.zzq;
    }

    public final void zzg() {
        synchronized (this.zzg) {
            this.zzm--;
        }
    }

    public final void zzh() {
        synchronized (this.zzg) {
            this.zzm++;
        }
    }

    public final void zzi() {
        synchronized (this.zzg) {
            this.zzn -= 100;
        }
    }

    public final void zzj(int i) {
        this.zzl = i;
    }

    public final void zzk(String str, boolean z, float f, float f2, float f3, float f4) {
        zzp(str, z, f, f2, f3, f4);
    }

    public final void zzl(String str, boolean z, float f, float f2, float f3, float f4) {
        zzp(str, z, f, f2, f3, f4);
        synchronized (this.zzg) {
            try {
                if (this.zzm < 0) {
                    zzcec.zze(new ObfuscatedString(new long[]{-8190428223915875057L, -1065158073668123667L, -6244494968380290301L, 4218707127111118858L, -3687798606158374151L, -8414383298169532171L, 2676256414047104389L}).toString());
                }
                zzm();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzm() {
        synchronized (this.zzg) {
            try {
                int zza = zza(this.zzk, this.zzl);
                if (zza > this.zzn) {
                    this.zzn = zza;
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzN()) {
                        this.zzo = this.zze.zza(this.zzh);
                        this.zzp = this.zze.zza(this.zzi);
                    }
                    if (!com.google.android.gms.ads.internal.zzt.zzo().zzi().zzO()) {
                        this.zzq = this.zzf.zza(this.zzi, this.zzj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzn() {
        synchronized (this.zzg) {
            try {
                int zza = zza(this.zzk, this.zzl);
                if (zza > this.zzn) {
                    this.zzn = zza;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzo() {
        boolean z;
        synchronized (this.zzg) {
            if (this.zzm == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
