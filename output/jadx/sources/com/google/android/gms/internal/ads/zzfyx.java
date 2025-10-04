package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfyx {
    public static int zza(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1460419289422579514L, -2339638812682775343L, -6547494053492421048L, -6421074744499750949L, -1190849239075317293L}), AbstractC0749x8313616e.m3341xc20437a5(str), i));
    }

    public static void zzb(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            String obj3 = obj.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-6540140136097915789L, 9119813992839585271L, -5440150252937681891L, 3966864204004276899L}).toString());
            sb.append(obj3);
            throw new NullPointerException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8235738375636759165L, -349912569998664560L}), sb));
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-1399673124035257675L, -5146216214610864774L, -4115155469392127508L, 2992101850213203604L}).toString().concat(String.valueOf(obj2)));
    }
}
