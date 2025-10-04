package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/* loaded from: classes2.dex */
class zzfuc {
    static final String zza = new UUID(0, 0).toString();
    final zzfud zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;

    public zzfuc(Context context, String str, String str2, String str3) {
        this.zzb = zzfud.zzb(context);
        this.zzc = str;
        this.zzd = str.concat(new ObfuscatedString(new long[]{-7489545807675270938L, 244325803758284924L}).toString());
        this.zze = str2;
        this.zzf = str2.concat(new ObfuscatedString(new long[]{6073716655914533401L, 7861102638141504210L}).toString());
        this.zzg = str3;
    }

    private final String zzh(String str, String str2, String str3) {
        String obfuscatedString;
        String obfuscatedString2;
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes(AbstractC0362x4440ab85.m2953x742e2fda(str, str2, str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(this.zzg);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{2264380994814974926L, 4470369422774973798L, 2763014219341321087L, -8298064618267947237L, 1135621041246011123L, -6095085589560062869L, -5075431765328133406L, -7163062940995209711L, -3794740494390382342L, 6729918889041341402L, -7177598231799801403L, -1077302171795365188L}).toString());
        if (str2 == null) {
            obfuscatedString = new ObfuscatedString(new long[]{-1860474262721401900L, -7153002702807824219L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-2396551225187537574L, -8546089011535080200L}).toString();
        }
        m3341xc20437a5.append(obfuscatedString);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-5847547678452321624L, 8055546391694871034L, 3666753064583314818L}).toString());
        if (str3 == null) {
            obfuscatedString2 = new ObfuscatedString(new long[]{3499679987359947027L, -5346228140541923551L}).toString();
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{-3966045599680674491L, -4884994232351377862L}).toString();
        }
        m3341xc20437a5.append(obfuscatedString2);
        throw new IllegalArgumentException(m3341xc20437a5.toString());
    }

    public final long zza(boolean z) {
        String str;
        if (z) {
            str = this.zzf;
        } else {
            str = this.zze;
        }
        return this.zzb.zza(str, -1L);
    }

    public final zzfub zzb(@Nullable String str, @Nullable String str2, long j, boolean z) {
        String str3;
        boolean z2 = true;
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(zza)) {
                    String zze = zze(true);
                    String zzc = this.zzb.zzc(new ObfuscatedString(new long[]{-5972381497106720836L, 8779956112467889288L, -302042780415071066L}).toString(), null);
                    if (zze != null && zzc != null && !zze.equals(zzh(str, str2, zzc))) {
                        return zzc(str, str2);
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new zzfub();
        }
        if (str == null) {
            z2 = false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
            long zza2 = zza(z2);
            if (zza2 != -1) {
                if (currentTimeMillis < zza2) {
                    zzfud zzfudVar = this.zzb;
                    if (z2) {
                        str3 = this.zzf;
                    } else {
                        str3 = this.zze;
                    }
                    zzfudVar.zzd(str3, Long.valueOf(currentTimeMillis));
                } else if (currentTimeMillis >= zza2 + j) {
                    return zzc(str, str2);
                }
            }
            String zze2 = zze(z2);
            if (zze2 == null && !z) {
                return zzc(str, str2);
            }
            return new zzfub(zze2, zza(z2));
        }
        throw new IllegalStateException(this.zzg.concat(new ObfuscatedString(new long[]{1494950683990330762L, 1096781406237644895L, -4766056325142590790L, -7674868981421547535L, 16915139543611594L, 6638880542695088500L, 8837971600700423579L, -2590687911020977094L, 3658941260059119057L}).toString()));
    }

    public final zzfub zzc(String str, String str2) {
        if (str == null) {
            return zzd(UUID.randomUUID().toString(), false);
        }
        String uuid = UUID.randomUUID().toString();
        this.zzb.zzd(new ObfuscatedString(new long[]{6906795250241760778L, 1481000485538755932L, 3990194340372456990L}).toString(), uuid);
        return zzd(zzh(str, str2, uuid), true);
    }

    public final zzfub zzd(String str, boolean z) {
        String str2;
        String str3;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
            zzfud zzfudVar = this.zzb;
            if (z) {
                str2 = this.zzf;
            } else {
                str2 = this.zze;
            }
            zzfudVar.zzd(str2, Long.valueOf(currentTimeMillis));
            zzfud zzfudVar2 = this.zzb;
            if (z) {
                str3 = this.zzd;
            } else {
                str3 = this.zzc;
            }
            zzfudVar2.zzd(str3, str);
            return new zzfub(str, currentTimeMillis);
        }
        throw new IllegalStateException(this.zzg.concat(new ObfuscatedString(new long[]{9193226621087362043L, -4346305391011219306L, -6996122169924892497L, -5090880248846947093L, -2872342655703375476L, -5716156472623524680L, -8684055642577553282L, 6363065970350844782L, -1391051064192261246L}).toString()));
    }

    public final String zze(boolean z) {
        String str;
        if (z) {
            str = this.zzd;
        } else {
            str = this.zzc;
        }
        return this.zzb.zzc(str, null);
    }

    public final void zzf(boolean z) {
        String str;
        String str2;
        if (z) {
            str = this.zzf;
        } else {
            str = this.zze;
        }
        this.zzb.zze(str);
        zzfud zzfudVar = this.zzb;
        if (z) {
            str2 = this.zzd;
        } else {
            str2 = this.zzc;
        }
        zzfudVar.zze(str2);
    }

    public final boolean zzg(boolean z) {
        return this.zzb.zzg(this.zzc);
    }
}
