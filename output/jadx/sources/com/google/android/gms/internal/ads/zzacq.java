package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzacq {
    public final String zza;

    private zzacq(int i, int i2, String str) {
        this.zza = str;
    }

    @Nullable
    public static zzacq zza(zzfp zzfpVar) {
        String obfuscatedString;
        ObfuscatedString obfuscatedString2;
        ObfuscatedString obfuscatedString3;
        zzfpVar.zzL(2);
        int zzm = zzfpVar.zzm();
        int i = zzm >> 1;
        int i2 = zzm & 1;
        int zzm2 = zzfpVar.zzm() >> 3;
        if (i != 4 && i != 5 && i != 7) {
            if (i == 8) {
                obfuscatedString3 = new ObfuscatedString(new long[]{-8036053672173831847L, -6502563701462212432L});
            } else if (i == 9) {
                obfuscatedString3 = new ObfuscatedString(new long[]{565320390995010555L, -4730888760436246753L});
            } else {
                return null;
            }
            obfuscatedString = obfuscatedString3.toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-6347501602323654742L, -8293721492655270068L}).toString();
        }
        int i3 = zzm2 | (i2 << 5);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-1039278763364625217L, -3782012243694741540L}).toString());
        m3341xc20437a5.append(i);
        if (i3 < 10) {
            obfuscatedString2 = new ObfuscatedString(new long[]{5021960196089489582L, -6055747256387404301L});
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{-3628098256968233603L, -6157059942533109315L});
        }
        m3341xc20437a5.append(obfuscatedString2.toString());
        m3341xc20437a5.append(i3);
        return new zzacq(i, i3, m3341xc20437a5.toString());
    }
}
