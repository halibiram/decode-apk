package androidx.test.internal.platform.reflect;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ReflectiveMethod<T> {
    private final String className;
    private final Class<?> clazz;
    private boolean initialized;
    private Method method;
    private final String methodName;
    private final Class<?>[] paramTypes;

    public ReflectiveMethod(String str, String str2, Class<?>... clsArr) {
        this.initialized = false;
        this.className = str;
        this.clazz = null;
        this.paramTypes = clsArr;
        this.methodName = str2;
    }

    @NonNull
    private Class<?> getClazz() {
        Class<?> cls = this.clazz;
        if (cls == null) {
            return Class.forName(this.className);
        }
        return cls;
    }

    private synchronized void initIfNecessary() {
        if (this.initialized) {
            return;
        }
        Method declaredMethod = getClazz().getDeclaredMethod(this.methodName, this.paramTypes);
        this.method = declaredMethod;
        declaredMethod.setAccessible(true);
        this.initialized = true;
    }

    public T invoke(Object obj, Object... objArr) {
        try {
            initIfNecessary();
            return (T) this.method.invoke(obj, objArr);
        } catch (ClassNotFoundException e) {
            throw new ReflectionException(e);
        } catch (IllegalAccessException e2) {
            throw new ReflectionException(e2);
        } catch (NoSuchMethodException e3) {
            throw new ReflectionException(e3);
        } catch (InvocationTargetException e4) {
            throw new ReflectionException(e4);
        }
    }

    public T invokeStatic(Object... objArr) {
        return invoke(null, objArr);
    }

    public ReflectiveMethod(Class<?> cls, String str, Class<?>... clsArr) {
        this.initialized = false;
        this.className = null;
        this.clazz = cls;
        this.paramTypes = clsArr;
        this.methodName = str;
    }
}
