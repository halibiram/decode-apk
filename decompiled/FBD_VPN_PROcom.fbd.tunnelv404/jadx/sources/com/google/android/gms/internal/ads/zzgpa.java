package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;

/* loaded from: classes2.dex */
public final class zzgpa {
    private static final ThreadLocal zza = new zzgoz();

    public static /* synthetic */ SecureRandom zza() {
        SecureRandom zzc = zzc();
        zzc.nextLong();
        return zzc;
    }

    public static byte[] zzb(int i) {
        byte[] bArr = new byte[i];
        ((SecureRandom) zza.get()).nextBytes(bArr);
        return bArr;
    }

    private static SecureRandom zzc() {
        try {
            try {
                try {
                    try {
                        return SecureRandom.getInstance(new ObfuscatedString(new long[]{8215224904581013017L, 8335448709362232387L}).toString(), new ObfuscatedString(new long[]{-5208142494233937147L, 2087662814398465144L, -3002752141167151890L}).toString());
                    } catch (GeneralSecurityException unused) {
                        try {
                            return SecureRandom.getInstance(new ObfuscatedString(new long[]{-6662679611459289150L, -8891473327902822396L}).toString(), (Provider) Class.forName(new ObfuscatedString(new long[]{-1826966137581263579L, -1898461500123975992L, -7786184943554137671L, 2206223197451590981L}).toString()).getMethod(new ObfuscatedString(new long[]{140227200159515526L, -2703237350128717608L, -3088146043857883179L}).toString(), null).invoke(null, null));
                        } catch (ClassNotFoundException e) {
                            e = e;
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5475963751964904029L, -5448483275169046779L, 6125093093036578548L, -6666360646666117046L, -2505115684443734773L}).toString(), e);
                        } catch (IllegalAccessException e2) {
                            e = e2;
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5475963751964904029L, -5448483275169046779L, 6125093093036578548L, -6666360646666117046L, -2505115684443734773L}).toString(), e);
                        } catch (IllegalArgumentException e3) {
                            e = e3;
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5475963751964904029L, -5448483275169046779L, 6125093093036578548L, -6666360646666117046L, -2505115684443734773L}).toString(), e);
                        } catch (NoSuchMethodException e4) {
                            e = e4;
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5475963751964904029L, -5448483275169046779L, 6125093093036578548L, -6666360646666117046L, -2505115684443734773L}).toString(), e);
                        } catch (InvocationTargetException e5) {
                            e = e5;
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5475963751964904029L, -5448483275169046779L, 6125093093036578548L, -6666360646666117046L, -2505115684443734773L}).toString(), e);
                        }
                    }
                } catch (GeneralSecurityException unused2) {
                    return SecureRandom.getInstance(new ObfuscatedString(new long[]{-4502187955907939474L, -7604138013257463219L}).toString(), new ObfuscatedString(new long[]{5857450695556275253L, 3716852807224446820L, 49483009064255851L}).toString());
                }
            } catch (GeneralSecurityException unused3) {
                return SecureRandom.getInstance(new ObfuscatedString(new long[]{3151064435832402478L, 3071776098782885376L}).toString(), new ObfuscatedString(new long[]{-9145120970212149739L, -328849258752653647L, -827971882769641643L}).toString());
            }
        } catch (GeneralSecurityException unused4) {
            return new SecureRandom();
        }
    }
}
