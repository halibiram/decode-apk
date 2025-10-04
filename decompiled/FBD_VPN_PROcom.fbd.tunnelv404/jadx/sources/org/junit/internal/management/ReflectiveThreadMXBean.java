package org.junit.internal.management;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.junit.internal.Classes;

/* loaded from: classes3.dex */
final class ReflectiveThreadMXBean implements ThreadMXBean {
    private final Object threadMxBean;

    /* loaded from: classes3.dex */
    public static final class Holder {
        private static final String FAILURE_MESSAGE = "Unable to access ThreadMXBean";
        static final Method getThreadCpuTimeMethod;
        static final Method isThreadCpuTimeSupportedMethod;

        static {
            Method method;
            Method method2 = null;
            try {
                Class<?> cls = Classes.getClass("java.lang.management.ThreadMXBean");
                method = cls.getMethod("getThreadCpuTime", Long.TYPE);
                try {
                    method2 = cls.getMethod("isThreadCpuTimeSupported", null);
                } catch (ClassNotFoundException | NoSuchMethodException | SecurityException unused) {
                }
            } catch (ClassNotFoundException | NoSuchMethodException | SecurityException unused2) {
                method = null;
            }
            getThreadCpuTimeMethod = method;
            isThreadCpuTimeSupportedMethod = method2;
        }

        private Holder() {
        }
    }

    public ReflectiveThreadMXBean(Object obj) {
        this.threadMxBean = obj;
    }

    @Override // org.junit.internal.management.ThreadMXBean
    public long getThreadCpuTime(long j) {
        Method method = Holder.getThreadCpuTimeMethod;
        if (method != null) {
            try {
                return ((Long) method.invoke(this.threadMxBean, Long.valueOf(j))).longValue();
            } catch (ClassCastException | IllegalAccessException | IllegalArgumentException | InvocationTargetException e) {
                throw new UnsupportedOperationException("Unable to access ThreadMXBean", e);
            }
        }
        throw new UnsupportedOperationException("Unable to access ThreadMXBean");
    }

    @Override // org.junit.internal.management.ThreadMXBean
    public boolean isThreadCpuTimeSupported() {
        Method method = Holder.isThreadCpuTimeSupportedMethod;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(this.threadMxBean, null)).booleanValue();
            } catch (ClassCastException | IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                return false;
            }
        }
        return false;
    }
}
