package com.google.gson.internal;

import com.google.gson.ReflectionAccessFilter;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ReflectionAccessFilterHelper {

    /* loaded from: classes3.dex */
    public static abstract class AccessChecker {
        public static final AccessChecker INSTANCE;

        /* JADX WARN: Removed duplicated region for block: B:5:0x002c  */
        static {
            AccessChecker accessChecker;
            if (JavaVersion.isJava9OrLater()) {
                try {
                    final Method declaredMethod = AccessibleObject.class.getDeclaredMethod(new ObfuscatedString(new long[]{7504516960302381735L, -1759770454940996763L, -8997038850539103089L}).toString(), Object.class);
                    accessChecker = new AccessChecker() { // from class: com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                        }

                        @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                        public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                            try {
                                return ((Boolean) declaredMethod.invoke(accessibleObject, obj)).booleanValue();
                            } catch (Exception e) {
                                throw new RuntimeException(new ObfuscatedString(new long[]{-6431888897633109394L, -191402633128219539L, -44400658769131782L, -8224705225361479519L, -2877981727011717592L}).toString(), e);
                            }
                        }
                    };
                } catch (NoSuchMethodException unused) {
                }
                if (accessChecker == null) {
                    accessChecker = new AccessChecker() { // from class: com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.2
                        @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                        public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                            return true;
                        }
                    };
                }
                INSTANCE = accessChecker;
            }
            accessChecker = null;
            if (accessChecker == null) {
            }
            INSTANCE = accessChecker;
        }

        private AccessChecker() {
        }

        public abstract boolean canAccess(AccessibleObject accessibleObject, Object obj);
    }

    private ReflectionAccessFilterHelper() {
    }

    public static boolean canAccess(AccessibleObject accessibleObject, Object obj) {
        return AccessChecker.INSTANCE.canAccess(accessibleObject, obj);
    }

    public static ReflectionAccessFilter.FilterResult getFilterResult(List<ReflectionAccessFilter> list, Class<?> cls) {
        Iterator<ReflectionAccessFilter> it = list.iterator();
        while (it.hasNext()) {
            ReflectionAccessFilter.FilterResult check = it.next().check(cls);
            if (check != ReflectionAccessFilter.FilterResult.INDECISIVE) {
                return check;
            }
        }
        return ReflectionAccessFilter.FilterResult.ALLOW;
    }

    public static boolean isAndroidType(Class<?> cls) {
        return isAndroidType(cls.getName());
    }

    public static boolean isAnyPlatformType(Class<?> cls) {
        String name = cls.getName();
        if (!isAndroidType(name) && !name.startsWith(new ObfuscatedString(new long[]{-5182840107747309509L, 4815748820286848989L}).toString()) && !name.startsWith(new ObfuscatedString(new long[]{-9069813582901557592L, -6304639994463322335L}).toString()) && !name.startsWith(new ObfuscatedString(new long[]{375613221886461603L, 3174041810982342975L}).toString())) {
            return false;
        }
        return true;
    }

    public static boolean isJavaType(Class<?> cls) {
        return isJavaType(cls.getName());
    }

    private static boolean isAndroidType(String str) {
        return str.startsWith(new ObfuscatedString(new long[]{-7568609480472949732L, -3154731623635390665L}).toString()) || str.startsWith(new ObfuscatedString(new long[]{1121075908984810902L, 8438321185471768688L, -8909614130093512390L}).toString()) || isJavaType(str);
    }

    private static boolean isJavaType(String str) {
        return str.startsWith(new ObfuscatedString(new long[]{-2956813148729215534L, -8117682183911650289L}).toString()) || str.startsWith(new ObfuscatedString(new long[]{1477957679479781827L, -3526867276387994492L}).toString());
    }
}
