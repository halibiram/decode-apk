package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzads {
    public final zzadv zza;
    public final zzadv zzb;

    public zzads(zzadv zzadvVar, zzadv zzadvVar2) {
        this.zza = zzadvVar;
        this.zzb = zzadvVar2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzads.class == obj.getClass()) {
            zzads zzadsVar = (zzads) obj;
            if (this.zza.equals(zzadsVar.zza) && this.zzb.equals(zzadsVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + (this.zza.hashCode() * 31);
    }

    public final String toString() {
        String concat;
        zzadv zzadvVar = this.zza;
        zzadv zzadvVar2 = this.zzb;
        String zzadvVar3 = zzadvVar.toString();
        if (zzadvVar.equals(zzadvVar2)) {
            concat = new ObfuscatedString(new long[]{1271292667906586694L}).toString();
        } else {
            concat = new ObfuscatedString(new long[]{-8772371627723706165L, 853089939374670056L}).toString().concat(this.zzb.toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6801224538264608312L, -1444667103408099827L}).toString());
        sb.append(zzadvVar3);
        sb.append(concat);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4223057264798831881L, -7103401357783757836L}), sb);
    }
}
