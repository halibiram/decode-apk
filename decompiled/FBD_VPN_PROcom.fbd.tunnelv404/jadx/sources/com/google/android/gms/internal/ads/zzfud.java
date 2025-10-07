package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzfud {
    private static zzfud zza;
    private final String zzb;
    private final SharedPreferences zzc;

    private zzfud(Context context) {
        this.zzb = context.getPackageName();
        this.zzc = context.getSharedPreferences(new ObfuscatedString(new long[]{637080234406500064L, 1503326711690943883L, -6677410675358954642L}).toString(), 0);
    }

    public static zzfud zzb(Context context) {
        if (zza == null) {
            zza = new zzfud(context);
        }
        return zza;
    }

    public final long zza(String str, long j) {
        return this.zzc.getLong(str, -1L);
    }

    @Nullable
    public final String zzc(String str, String str2) {
        return this.zzc.getString(str, null);
    }

    public final void zzd(String str, Object obj) {
        boolean commit;
        if (obj instanceof String) {
            commit = this.zzc.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            commit = this.zzc.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            commit = this.zzc.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else {
            String.valueOf(obj.getClass());
            new ObfuscatedString(new long[]{-8158728571205044311L, 3934627480103348290L, 7909130446006634345L, -1113732712257547387L}).toString();
            new ObfuscatedString(new long[]{3426323252162338272L, 3482304127120121416L, -1209184914917380438L}).toString();
            new ObfuscatedString(new long[]{-9103230823694527952L, 1633100737015180630L, -1732783124547543213L, 8881295933804775357L}).toString();
            String str2 = this.zzb;
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5652437150445792937L, 4190996808550656409L, -7288823518122094061L}).toString());
            sb.append(str);
            throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7544963701903389931L, 7302284026484941636L, -31539748142162957L}), sb, str2));
        }
        if (commit) {
            return;
        }
        String str22 = this.zzb;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{5652437150445792937L, 4190996808550656409L, -7288823518122094061L}).toString());
        sb2.append(str);
        throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7544963701903389931L, 7302284026484941636L, -31539748142162957L}), sb2, str22));
    }

    public final void zze(String str) {
        if (this.zzc.edit().remove(str).commit()) {
            return;
        }
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7519958103669371424L, -1223214455703781153L, 5833260045247752024L, -2013258284355890609L}).toString());
        sb.append(str);
        throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8577504514724356385L, 2500532083903342502L, -8912283140175379958L}), sb, str2));
    }

    public final boolean zzf(String str, boolean z) {
        return this.zzc.getBoolean(str, true);
    }

    public final boolean zzg(String str) {
        return this.zzc.contains(str);
    }
}
