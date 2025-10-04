package com.google.android.gms.dynamite;

import com.panda912.muddy.ObfuscatedString;
import dalvik.system.PathClassLoader;

/* loaded from: classes2.dex */
final class zzc extends PathClassLoader {
    public zzc(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final Class loadClass(String str, boolean z) {
        if (!str.startsWith(new ObfuscatedString(new long[]{-8611366263510071723L, -2315776212118176727L}).toString()) && !str.startsWith(new ObfuscatedString(new long[]{5081951307171619527L, 5506908299029824380L}).toString())) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z);
    }
}
