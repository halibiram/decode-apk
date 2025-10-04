package org.junit.internal.management;

import java.lang.reflect.InvocationTargetException;
import org.junit.internal.Classes;

/* loaded from: classes3.dex */
public class ManagementFactory {

    /* loaded from: classes3.dex */
    public static final class FactoryHolder {
        private static final Class<?> MANAGEMENT_FACTORY_CLASS;

        static {
            Class<?> cls;
            try {
                cls = Classes.getClass("java.lang.management.ManagementFactory");
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
            MANAGEMENT_FACTORY_CLASS = cls;
        }

        private FactoryHolder() {
        }

        public static Object getBeanObject(String str) {
            Class<?> cls = MANAGEMENT_FACTORY_CLASS;
            if (cls != null) {
                try {
                    return cls.getMethod(str, null).invoke(null, null);
                } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
                }
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class RuntimeHolder {
        private static final RuntimeMXBean RUNTIME_MX_BEAN = getBean(FactoryHolder.getBeanObject("getRuntimeMXBean"));

        private RuntimeHolder() {
        }

        private static final RuntimeMXBean getBean(Object obj) {
            if (obj != null) {
                return new ReflectiveRuntimeMXBean(obj);
            }
            return new FakeRuntimeMXBean();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ThreadHolder {
        private static final ThreadMXBean THREAD_MX_BEAN = getBean(FactoryHolder.getBeanObject("getThreadMXBean"));

        private ThreadHolder() {
        }

        private static final ThreadMXBean getBean(Object obj) {
            if (obj != null) {
                return new ReflectiveThreadMXBean(obj);
            }
            return new FakeThreadMXBean();
        }
    }

    public static RuntimeMXBean getRuntimeMXBean() {
        return RuntimeHolder.RUNTIME_MX_BEAN;
    }

    public static ThreadMXBean getThreadMXBean() {
        return ThreadHolder.THREAD_MX_BEAN;
    }
}
