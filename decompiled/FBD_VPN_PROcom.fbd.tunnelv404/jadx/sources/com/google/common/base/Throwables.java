package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Throwables {

    @GwtIncompatible
    private static final String JAVA_LANG_ACCESS_CLASSNAME = new ObfuscatedString(new long[]{196930526666064908L, 9157751552505539789L, -8467837679113644409L, -9073112018109750359L}).toString();

    @VisibleForTesting
    @GwtIncompatible
    static final String SHARED_SECRETS_CLASSNAME = new ObfuscatedString(new long[]{-4112489798717195820L, -3922591120470926570L, -4915065806373716014L, 8162568525422993606L}).toString();

    @CheckForNull
    @GwtIncompatible
    private static final Method getStackTraceDepthMethod;

    @CheckForNull
    @GwtIncompatible
    private static final Method getStackTraceElementMethod;

    @CheckForNull
    @GwtIncompatible
    private static final Object jla;

    static {
        Method getMethod;
        Object jla2 = getJLA();
        jla = jla2;
        Method method = null;
        if (jla2 == null) {
            getMethod = null;
        } else {
            getMethod = getGetMethod();
        }
        getStackTraceElementMethod = getMethod;
        if (jla2 != null) {
            method = getSizeMethod(jla2);
        }
        getStackTraceDepthMethod = method;
    }

    private Throwables() {
    }

    public static List<Throwable> getCausalChain(Throwable th) {
        Preconditions.checkNotNull(th);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(th);
        boolean z = false;
        Throwable th2 = th;
        while (true) {
            th = th.getCause();
            if (th != null) {
                arrayList.add(th);
                if (th != th2) {
                    if (z) {
                        th2 = th2.getCause();
                    }
                    z = !z;
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7354432748871032249L, 6454872424429420579L, 8289753220363505069L, -3896728218454299205L, 2529714700065041548L}).toString(), th);
                }
            } else {
                return DesugarCollections.unmodifiableList(arrayList);
            }
        }
    }

    @CheckForNull
    @GwtIncompatible
    public static <X extends Throwable> X getCauseAs(Throwable th, Class<X> cls) {
        try {
            return cls.cast(th.getCause());
        } catch (ClassCastException e) {
            e.initCause(th);
            throw e;
        }
    }

    @CheckForNull
    @GwtIncompatible
    private static Method getGetMethod() {
        return getJlaMethod(new ObfuscatedString(new long[]{-6399402967139285984L, -4514266238955132923L, -7548617525978848057L, 1357549235402759271L}).toString(), Throwable.class, Integer.TYPE);
    }

    @CheckForNull
    @GwtIncompatible
    private static Object getJLA() {
        try {
            return Class.forName(new ObfuscatedString(new long[]{6236856454459663854L, 1586509721200324056L, -6166581769802685249L, -6763061658186284549L}).toString(), false, null).getMethod(new ObfuscatedString(new long[]{-4732781275345976553L, -8894321073894597657L, -3281248707294702077L, 2955546075385605778L}).toString(), null).invoke(null, null);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    @CheckForNull
    @GwtIncompatible
    private static Method getJlaMethod(String str, Class<?>... clsArr) {
        try {
            return Class.forName(new ObfuscatedString(new long[]{-4065053004946766130L, -5482642796618225871L, 5611442834275696804L, 7699168401741434789L}).toString(), false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Throwable getRootCause(Throwable th) {
        boolean z = false;
        Throwable th2 = th;
        while (true) {
            Throwable cause = th.getCause();
            if (cause != null) {
                if (cause != th2) {
                    if (z) {
                        th2 = th2.getCause();
                    }
                    z = !z;
                    th = cause;
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{3767387697097875309L, 6118121426141059472L, -8992603816240874727L, 106141550521657439L, -4120326729400147174L}).toString(), cause);
                }
            } else {
                return th;
            }
        }
    }

    @CheckForNull
    @GwtIncompatible
    private static Method getSizeMethod(Object obj) {
        try {
            Method jlaMethod = getJlaMethod(new ObfuscatedString(new long[]{5428262664565489475L, 979145384747497111L, 3893154464861128886L, 4792582063783660339L}).toString(), Throwable.class);
            if (jlaMethod == null) {
                return null;
            }
            jlaMethod.invoke(obj, new Throwable());
            return jlaMethod;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    @GwtIncompatible
    public static String getStackTraceAsString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GwtIncompatible
    public static Object invokeAccessibleNonThrowingMethod(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw propagate(e2.getCause());
        }
    }

    @GwtIncompatible
    private static List<StackTraceElement> jlaStackTrace(final Throwable th) {
        Preconditions.checkNotNull(th);
        return new AbstractList<StackTraceElement>() { // from class: com.google.common.base.Throwables.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                Method method = Throwables.getStackTraceDepthMethod;
                j$.util.Objects.requireNonNull(method);
                Object obj = Throwables.jla;
                j$.util.Objects.requireNonNull(obj);
                return ((Integer) Throwables.invokeAccessibleNonThrowingMethod(method, obj, th)).intValue();
            }

            @Override // java.util.AbstractList, java.util.List
            public StackTraceElement get(int i) {
                Method method = Throwables.getStackTraceElementMethod;
                j$.util.Objects.requireNonNull(method);
                Object obj = Throwables.jla;
                j$.util.Objects.requireNonNull(obj);
                return (StackTraceElement) Throwables.invokeAccessibleNonThrowingMethod(method, obj, th, Integer.valueOf(i));
            }
        };
    }

    @GwtIncompatible
    @Deprecated
    public static List<StackTraceElement> lazyStackTrace(Throwable th) {
        if (lazyStackTraceIsLazy()) {
            return jlaStackTrace(th);
        }
        return DesugarCollections.unmodifiableList(Arrays.asList(th.getStackTrace()));
    }

    @GwtIncompatible
    @Deprecated
    public static boolean lazyStackTraceIsLazy() {
        if (getStackTraceElementMethod != null && getStackTraceDepthMethod != null) {
            return true;
        }
        return false;
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    @Deprecated
    public static RuntimeException propagate(Throwable th) {
        throwIfUnchecked(th);
        throw new RuntimeException(th);
    }

    @GwtIncompatible
    @Deprecated
    public static <X extends Throwable> void propagateIfInstanceOf(@CheckForNull Throwable th, Class<X> cls) {
        if (th != null) {
            throwIfInstanceOf(th, cls);
        }
    }

    @GwtIncompatible
    @Deprecated
    public static void propagateIfPossible(@CheckForNull Throwable th) {
        if (th != null) {
            throwIfUnchecked(th);
        }
    }

    @GwtIncompatible
    public static <X extends Throwable> void throwIfInstanceOf(Throwable th, Class<X> cls) {
        Preconditions.checkNotNull(th);
        if (!cls.isInstance(th)) {
        } else {
            throw cls.cast(th);
        }
    }

    public static void throwIfUnchecked(Throwable th) {
        Preconditions.checkNotNull(th);
        if (!(th instanceof RuntimeException)) {
            if (!(th instanceof Error)) {
                return;
            } else {
                throw ((Error) th);
            }
        }
        throw ((RuntimeException) th);
    }

    @GwtIncompatible
    public static <X extends Throwable> void propagateIfPossible(@CheckForNull Throwable th, Class<X> cls) {
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th);
    }

    @GwtIncompatible
    public static <X1 extends Throwable, X2 extends Throwable> void propagateIfPossible(@CheckForNull Throwable th, Class<X1> cls, Class<X2> cls2) {
        Preconditions.checkNotNull(cls2);
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th, cls2);
    }
}
