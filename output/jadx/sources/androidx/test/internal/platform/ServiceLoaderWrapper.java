package androidx.test.internal.platform;

import android.os.StrictMode;
import androidx.annotation.RestrictTo;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ServiceLoaderWrapper {

    /* loaded from: classes.dex */
    public interface Factory<T> {
        T create();
    }

    private ServiceLoaderWrapper() {
    }

    public static <T> List<T> loadService(Class<T> cls) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        ArrayList arrayList = new ArrayList();
        Iterator it = ServiceLoader.load(cls).iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return arrayList;
    }

    public static <T> T loadSingleService(Class<T> cls, Factory<T> factory) {
        T t = (T) loadSingleServiceOrNull(cls);
        if (t == null) {
            return factory.create();
        }
        return t;
    }

    public static <T> T loadSingleServiceOrNull(Class<T> cls) {
        String str;
        List loadService = loadService(cls);
        String str2 = null;
        if (loadService.isEmpty()) {
            return null;
        }
        if (loadService.size() == 1) {
            return (T) loadService.get(0);
        }
        for (Object obj : loadService) {
            if (str2 != null) {
                str = str2.concat(", ");
            } else {
                str = ": ";
            }
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
            m3341xc20437a5.append(obj.getClass().getName());
            str2 = m3341xc20437a5.toString();
        }
        throw new IllegalStateException("Found more than one implementation for " + cls.getName() + str2);
    }
}
