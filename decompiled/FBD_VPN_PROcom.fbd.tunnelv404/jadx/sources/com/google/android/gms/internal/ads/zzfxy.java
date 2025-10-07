package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzfxy {

    @CheckForNull
    private static final Object zza;

    @CheckForNull
    private static final Method zzb;

    @CheckForNull
    private static final Method zzc;

    static {
        Method zzb2;
        Object zza2 = zza();
        zza = zza2;
        Method method = null;
        if (zza2 == null) {
            zzb2 = null;
        } else {
            zzb2 = zzb(new ObfuscatedString(new long[]{-6220730083587171604L, -6818000138178101560L, -4009787247655030124L, 5882823532375508394L}).toString(), Throwable.class, Integer.TYPE);
        }
        zzb = zzb2;
        if (zza2 != null) {
            method = zzc(zza2);
        }
        zzc = method;
    }

    @CheckForNull
    private static Object zza() {
        try {
            return Class.forName(new ObfuscatedString(new long[]{-3643138346646822132L, -5135623947157174424L, 3234708574764396597L, -7765567107812113681L}).toString(), false, null).getMethod(new ObfuscatedString(new long[]{4148441214541224033L, 7889766701409624543L, 8199273097549184013L, 6027058719013538860L}).toString(), null).invoke(null, null);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    private static Method zzb(String str, Class... clsArr) {
        try {
            return Class.forName(new ObfuscatedString(new long[]{-6290020384015855051L, -1809151646676126523L, -647125955046086446L, 4408439637097566375L}).toString(), false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    private static Method zzc(Object obj) {
        try {
            Method zzb2 = zzb(new ObfuscatedString(new long[]{-7547115087170705213L, -9014054364131170189L, -6036950832917488758L, 1676141522543257313L}).toString(), Throwable.class);
            if (zzb2 == null) {
                return null;
            }
            zzb2.invoke(obj, new Throwable());
            return zzb2;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }
}
