package com.google.android.gms.internal.consent_sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class zzcl {

    @Nullable
    @GuardedBy("DeviceId.class")
    private static String zza;

    public static synchronized String zza(Context context) {
        String str;
        String string;
        synchronized (zzcl.class) {
            try {
                if (zza == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    if (contentResolver == null) {
                        string = null;
                    } else {
                        string = Settings.Secure.getString(contentResolver, new ObfuscatedString(new long[]{-4995667630768007815L, -8062050575343460507L, 3736215122528275150L}).toString());
                    }
                    if (string != null) {
                        if (zzct.zza(true)) {
                        }
                        zza = zzb(string);
                    }
                    string = new ObfuscatedString(new long[]{1960760454805723442L, 6513970504486118605L}).toString();
                    zza = zzb(string);
                }
                str = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private static String zzb(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{-7706862852787377181L, -3950030116847880886L}).toString());
                messageDigest.update(str.getBytes());
                return String.format(new ObfuscatedString(new long[]{-4852502428463747951L, -6513519475185274515L}).toString(), new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return new ObfuscatedString(new long[]{-6952010762794475645L}).toString();
    }
}
