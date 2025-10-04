package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzhe {
    public static Object zza(@NonNull Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{-2253445220418716772L, -7178212043652458779L, 8790147402488810349L, -6485970090964520077L, -8213575858513965157L, 7711317966565965733L, 2221797686259032551L, -8823674744510070664L, -6952316442144361101L, 8663405747380745089L, 8479924664601335667L}).toString(), str, cls.getCanonicalName(), obj2.getClass().getCanonicalName()));
    }

    public static void zzb(@NonNull Bundle bundle, @NonNull Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble(new ObfuscatedString(new long[]{8255203720552469151L, -9048519056164731610L}).toString(), ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong(new ObfuscatedString(new long[]{596556285421582097L, 7185156471518567462L}).toString(), ((Long) obj).longValue());
        } else {
            bundle.putString(new ObfuscatedString(new long[]{1700495014787013824L, -4968331468895001327L}).toString(), obj.toString());
        }
    }
}
