package com.google.android.gms.internal.ads;

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
public abstract class zzgzn {
    private static final Logger zza = Logger.getLogger(zzgza.class.getName());
    private static final String zzb = new ObfuscatedString(new long[]{-7986941341114394353L, -6179482065180575714L, -3516867317038846352L, 4319882975943745042L, -6085559591990233568L, 6300639564367960392L, 2088723999149000501L, -5841359090615444005L, 8581947298163374965L}).toString();

    public static zzgzf zzb(Class cls) {
        String format;
        ClassLoader classLoader = zzgzn.class.getClassLoader();
        if (cls.equals(zzgzf.class)) {
            format = zzb;
        } else if (cls.getPackage().equals(zzgzn.class.getPackage())) {
            format = String.format(new ObfuscatedString(new long[]{-2057787715952722058L, 5005875114127691055L, 392231389489644835L, 5907100067086369563L, -5713362396182402712L}).toString(), cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    return (zzgzf) cls.cast(((zzgzn) Class.forName(format, true, classLoader).getConstructor(null).newInstance(null)).zza());
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
            Iterator it = ServiceLoader.load(zzgzn.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add((zzgzf) cls.cast(((zzgzn) it.next()).zza()));
                } catch (ServiceConfigurationError e5) {
                    zza.logp(Level.SEVERE, new ObfuscatedString(new long[]{3918926268222025790L, 1278093438537602704L, -475962215082065839L, -3332533046941813021L, -3191777102233505245L, -1401946928808867021L, 429073181300787154L, -6868975571021800831L}).toString(), new ObfuscatedString(new long[]{8974500636811234416L, 6857041322694478804L}).toString(), new ObfuscatedString(new long[]{-3944308186364474333L, -6864256302828554707L, 6218880654863554673L}).toString().concat(cls.getSimpleName()), (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (zzgzf) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzgzf) cls.getMethod(new ObfuscatedString(new long[]{8022232266094568447L, 1743915956140465437L}).toString(), Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(e6);
            } catch (NoSuchMethodException e7) {
                throw new IllegalStateException(e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(e8);
            }
        }
    }

    public abstract zzgzf zza();
}
