package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
abstract class zzjw {
    private static final Logger zza = Logger.getLogger(zzjj.class.getName());
    private static final String zzb = new ObfuscatedString(new long[]{-1627200111567305054L, -566610776304771257L, -5630681402825463750L, -6627806148535269856L, 7250584813058038144L, 2818735209388784440L, 4603524393024201385L, 5224376201000914479L, -4881308685252164923L}).toString();

    public static zzjo zzb(Class cls) {
        String format;
        ClassLoader classLoader = zzjw.class.getClassLoader();
        if (cls.equals(zzjo.class)) {
            format = zzb;
        } else if (cls.getPackage().equals(zzjw.class.getPackage())) {
            format = String.format(new ObfuscatedString(new long[]{1289677021438241123L, -7588397155628185153L, -4953854077127103784L, -369234278147858646L, -8857282251003953822L}).toString(), cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    return (zzjo) cls.cast(((zzjw) Class.forName(format, true, classLoader).getConstructor(null).newInstance(null)).zza());
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (InstantiationException e3) {
                throw new IllegalStateException(e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzjw.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((zzjw) it.next()).zza()));
                } catch (ServiceConfigurationError e5) {
                    zza.logp(Level.SEVERE, new ObfuscatedString(new long[]{9048977172559094953L, -8057239007556640523L, -2510688072767423925L, 2892911680337526474L, -8963753163746788000L, 4125163797943448634L, 8563245184721398857L, 5584936913924792402L}).toString(), new ObfuscatedString(new long[]{-868221298994933573L, 5211818827475921189L}).toString(), new ObfuscatedString(new long[]{3242317569358669033L, -5585258232982457438L, 4594436209419965226L}).toString().concat(cls.getSimpleName()), (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (zzjo) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzjo) cls.getMethod(new ObfuscatedString(new long[]{-209277382307079429L, 789225630022013804L}).toString(), Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(e6);
            } catch (NoSuchMethodException e7) {
                throw new IllegalStateException(e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(e8);
            }
        }
    }

    public abstract zzjo zza();
}
