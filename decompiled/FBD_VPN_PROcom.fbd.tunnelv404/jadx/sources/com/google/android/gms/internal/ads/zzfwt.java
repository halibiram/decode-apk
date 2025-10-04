package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzfwt {
    public static final CharSequence zza(@CheckForNull Object obj) {
        Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }

    public static final StringBuilder zzb(StringBuilder sb, Iterable iterable, String str) {
        Iterator it = iterable.iterator();
        try {
            if (it.hasNext()) {
                sb.append(zza(it.next()));
                while (it.hasNext()) {
                    sb.append((CharSequence) str);
                    sb.append(zza(it.next()));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
