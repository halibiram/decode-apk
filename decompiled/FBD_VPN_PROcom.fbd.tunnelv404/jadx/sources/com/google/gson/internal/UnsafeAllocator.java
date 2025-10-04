package com.google.gson.internal;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class UnsafeAllocator {
    public static final UnsafeAllocator INSTANCE = create();

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertInstantiable(Class<?> cls) {
        String checkInstantiable = ConstructorConstructor.checkInstantiable(cls);
        if (checkInstantiable == null) {
            return;
        }
        throw new AssertionError(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{6854386486060819385L, -8260335277773369447L, 6550321359571002823L, 923617579128209180L, 6523357221096623048L, 3841513009153815147L, -9199475033840336651L, 136559299802704177L}), new StringBuilder(), checkInstantiable));
    }

    private static UnsafeAllocator create() {
        try {
            try {
                try {
                    Class<?> cls = Class.forName(new ObfuscatedString(new long[]{2259372040495064439L, -9059935130376814635L, -1263196196276994082L}).toString());
                    Field declaredField = cls.getDeclaredField(new ObfuscatedString(new long[]{-3000872715861628448L, 6930942828625173574L, 7454421149139983079L}).toString());
                    declaredField.setAccessible(true);
                    final Object obj = declaredField.get(null);
                    final Method method = cls.getMethod(new ObfuscatedString(new long[]{-8703035655628675383L, 6317054484048498706L, 8281636219024692075L}).toString(), Class.class);
                    return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.1
                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) {
                            UnsafeAllocator.assertInstantiable(cls2);
                            return (T) method.invoke(obj, cls2);
                        }
                    };
                } catch (Exception unused) {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod(new ObfuscatedString(new long[]{8381246226450114738L, -1097276620089484734L, 1656188709739364765L}).toString(), Class.class);
                    declaredMethod.setAccessible(true);
                    final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod(new ObfuscatedString(new long[]{4393831875069858480L, 198877234341383909L, 3864312338774905727L}).toString(), Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.2
                        @Override // com.google.gson.internal.UnsafeAllocator
                        public <T> T newInstance(Class<T> cls2) {
                            UnsafeAllocator.assertInstantiable(cls2);
                            return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                        }
                    };
                }
            } catch (Exception unused2) {
                return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.4
                    @Override // com.google.gson.internal.UnsafeAllocator
                    public <T> T newInstance(Class<T> cls2) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{7886010695850464140L, 6574921633316194633L, -3738078538751038616L}).toString());
                        sb.append(cls2);
                        throw new UnsupportedOperationException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1659624044465989612L, -8276610468816340732L, -8763074274333307520L, -7229055528338840262L, -8395422178028837881L, 2953388134117807222L, -7782965854301057009L, -4544191023832113452L, 5985735622053796013L, -8243011426265225174L, 2891915354525998885L, -5105691845234618899L, -8685666750118495718L, 6096073221847245678L, -922643446605018039L, -6611629902490316401L}), sb));
                    }
                };
            }
        } catch (Exception unused3) {
            final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod(new ObfuscatedString(new long[]{-2890851874064604751L, 8410829842157495533L, 4439269320468276225L}).toString(), Class.class, Class.class);
            declaredMethod3.setAccessible(true);
            return new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.3
                @Override // com.google.gson.internal.UnsafeAllocator
                public <T> T newInstance(Class<T> cls2) {
                    UnsafeAllocator.assertInstantiable(cls2);
                    return (T) declaredMethod3.invoke(null, cls2, Object.class);
                }
            };
        }
    }

    public abstract <T> T newInstance(Class<T> cls);
}
