package com.google.android.gms.internal.ads;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzegy extends zzehu {
    private final Activity zza;

    @Nullable
    private final com.google.android.gms.ads.internal.overlay.zzm zzb;

    @Nullable
    private final String zzc;

    @Nullable
    private final String zzd;

    public /* synthetic */ zzegy(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, String str, String str2, zzegx zzegxVar) {
        this.zza = activity;
        this.zzb = zzmVar;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzehu) {
            zzehu zzehuVar = (zzehu) obj;
            if (this.zza.equals(zzehuVar.zza()) && ((zzmVar = this.zzb) != null ? zzmVar.equals(zzehuVar.zzb()) : zzehuVar.zzb() == null) && ((str = this.zzc) != null ? str.equals(zzehuVar.zzc()) : zzehuVar.zzc() == null) && ((str2 = this.zzd) != null ? str2.equals(zzehuVar.zzd()) : zzehuVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.zza.hashCode() ^ 1000003;
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        int i = 0;
        if (zzmVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzmVar.hashCode();
        }
        int i2 = ((hashCode3 * 1000003) ^ hashCode) * 1000003;
        String str = this.zzc;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.zzd;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i3 ^ i;
    }

    public final String toString() {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        String obj = this.zza.toString();
        String valueOf = String.valueOf(zzmVar);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4562123239763768555L, 726460611101215159L, -9101535744169700914L, 5561803127138918999L, 1826805559026493172L}).toString());
        sb.append(obj);
        sb.append(new ObfuscatedString(new long[]{4785572808898104081L, -4092617377346503102L, 2397968287140589275L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{2289714925921762531L, 1655388750412727219L, -5894420655396495460L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{7719908536917057320L, -6248595178469915320L}).toString());
        sb.append(this.zzd);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7570612503524391428L, 5902950737483534907L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzehu
    public final Activity zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzehu
    @Nullable
    public final com.google.android.gms.ads.internal.overlay.zzm zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzehu
    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzehu
    @Nullable
    public final String zzd() {
        return this.zzd;
    }
}
