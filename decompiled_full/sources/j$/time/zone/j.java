package j$.time.zone;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.AccessController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public abstract class j {
    private static final CopyOnWriteArrayList a;
    private static final ConcurrentHashMap b;

    protected abstract f b(String str);

    protected abstract Set c();

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        a = copyOnWriteArrayList;
        b = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new h(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static f a(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = b;
        j jVar = (j) concurrentHashMap.get(str);
        if (jVar != null) {
            return jVar.b(str);
        }
        if (concurrentHashMap.isEmpty()) {
            throw new RuntimeException("No time-zone data files registered");
        }
        throw new RuntimeException("Unknown time-zone ID: " + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(j jVar) {
        Objects.requireNonNull(jVar, "provider");
        synchronized (j.class) {
            try {
                for (String str : jVar.c()) {
                    Objects.requireNonNull(str, "zoneId");
                    if (((j) b.putIfAbsent(str, jVar)) != null) {
                        throw new RuntimeException("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + jVar);
                    }
                }
                Collections.unmodifiableSet(new HashSet(b.keySet()));
            } catch (Throwable th) {
                throw th;
            }
        }
        a.add(jVar);
    }
}
