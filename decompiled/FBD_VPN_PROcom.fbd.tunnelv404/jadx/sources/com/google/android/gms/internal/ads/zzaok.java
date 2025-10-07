package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzaok {
    private final String zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private String zze;

    public zzaok(int i, int i2, int i3) {
        String obfuscatedString;
        if (i != Integer.MIN_VALUE) {
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1242629605550928737L, -5230923639932771891L}), AbstractC0749x8313616e.m3340x952a0a9e(i));
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-9215249841012811707L}).toString();
        }
        this.zza = obfuscatedString;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = Integer.MIN_VALUE;
        this.zze = new ObfuscatedString(new long[]{-9072944224079826705L}).toString();
    }

    private final void zzd() {
        if (this.zzd != Integer.MIN_VALUE) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{1849249287871941657L, -5435145005358312497L, -3471439071584869725L, 6224053695952078962L, -6913409686278242915L, 7057109104290378249L, -5509145282192294343L, -7921821725522787893L}).toString());
        }
    }

    public final int zza() {
        zzd();
        return this.zzd;
    }

    public final String zzb() {
        zzd();
        return this.zze;
    }

    public final void zzc() {
        int i;
        int i2 = this.zzd;
        if (i2 == Integer.MIN_VALUE) {
            i = this.zzb;
        } else {
            i = i2 + this.zzc;
        }
        this.zzd = i;
        this.zze = this.zza + i;
    }
}
