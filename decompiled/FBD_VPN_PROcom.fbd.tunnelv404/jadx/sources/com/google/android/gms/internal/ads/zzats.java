package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class zzats {
    private static final String zza = "zzats";

    public static HashMap zza(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return (HashMap) new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0))).readObject();
            }
            return null;
        } catch (IOException | ClassNotFoundException unused) {
            new ObfuscatedString(new long[]{5732850231149267264L, -8421423325544326398L, -4570016736730159125L, 6715966633577816018L}).toString();
            return null;
        }
    }

    public final String toString() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(zzb());
            objectOutputStream.close();
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        } catch (IOException unused) {
            return null;
        }
    }

    public abstract HashMap zzb();
}
