package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzgmw {
    private static final Logger zza = Logger.getLogger(zzgmw.class.getName());
    private static final AtomicBoolean zzb = new AtomicBoolean(false);

    private zzgmw() {
    }

    public static Boolean zza() {
        try {
            return (Boolean) Class.forName(new ObfuscatedString(new long[]{7343424461579741935L, -800821374471181388L, 6702076393755459783L, -6137946350396042332L}).toString()).getMethod(new ObfuscatedString(new long[]{-8640707521595588425L, -10571027062235548L, 3928034506418012926L, -5740540131410523842L}).toString(), null).invoke(null, null);
        } catch (Exception unused) {
            zza.logp(Level.INFO, new ObfuscatedString(new long[]{-1717075401311258877L, -189319952551931099L, -5662804190916536084L, 7295574035397661415L, 6727060960002841870L, 6511443080984862566L, -6302189391774694221L, 484282385545937853L}).toString(), new ObfuscatedString(new long[]{-6414825086941148740L, 2349716864960643373L, -8555834163533308886L, 7653887721446039390L, -2635126909005046342L, -2972996800324788898L, 8429598120808097834L}).toString(), new ObfuscatedString(new long[]{-447331744343187872L, -2009953329063610880L, 2383674947914432929L, 3954870661144325837L, 8212697362910265790L, -2930058186543546508L, 1446722535767090046L, -2212422883248296807L, 9177707044972838525L, 7890035356654535430L}).toString());
            return Boolean.FALSE;
        }
    }

    public static boolean zzb() {
        if (zzb.get()) {
            return true;
        }
        return false;
    }
}
