package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfiy {
    private final zzfix zza = new zzfix();
    private int zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private int zzf;

    public final zzfix zza() {
        zzfix zzfixVar = this.zza;
        zzfix clone = zzfixVar.clone();
        zzfixVar.zza = false;
        zzfixVar.zzb = false;
        return clone;
    }

    public final String zzb() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8767426291028747077L, -3240129878589631778L, 7811214092686974684L, 427131173342624847L}).toString());
        sb.append(this.zzd);
        sb.append(new ObfuscatedString(new long[]{1395756038453333543L, 636264428355499688L, -1147507870897891906L, -7330077202738059206L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{1829268071532472745L, -7347358043934826738L, -361003919587440046L, 7206375720435412707L}).toString());
        sb.append(this.zzc);
        sb.append(new ObfuscatedString(new long[]{5447243623482530242L, -805653057436753691L, -249953339251734636L, 4391007232689772718L}).toString());
        sb.append(this.zzf);
        sb.append(new ObfuscatedString(new long[]{1678131011845389689L, 4110998748210528742L, -695858580580081591L, 1543961858485287103L}).toString());
        sb.append(this.zze);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6836501085043543402L, 1394979315655530001L}), sb);
    }

    public final void zzc() {
        this.zzf++;
    }

    public final void zzd() {
        this.zzb++;
        this.zza.zza = true;
    }

    public final void zze() {
        this.zze++;
    }

    public final void zzf() {
        this.zzd++;
    }

    public final void zzg() {
        this.zzc++;
        this.zza.zzb = true;
    }
}
