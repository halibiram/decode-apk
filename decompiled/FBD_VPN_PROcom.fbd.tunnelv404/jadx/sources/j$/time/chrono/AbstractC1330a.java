package j$.time.chrono;

import androidx.exifinterface.media.ExifInterface;
import j$.time.C1329c;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

/* renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1330a implements n {
    private static final ConcurrentHashMap a = new ConcurrentHashMap();
    private static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final /* synthetic */ int c = 0;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return i().compareTo(((n) obj).i());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n k(AbstractC1330a abstractC1330a, String str) {
        String r;
        n nVar = (n) a.putIfAbsent(str, abstractC1330a);
        if (nVar == null && (r = abstractC1330a.r()) != null) {
            b.putIfAbsent(r, abstractC1330a);
        }
        return nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n j(String str) {
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap = a;
            n nVar = (n) concurrentHashMap.get(str);
            if (nVar == null) {
                nVar = (n) b.get(str);
            }
            if (nVar != null) {
                return nVar;
            }
            if (concurrentHashMap.get(ExifInterface.TAG_RW2_ISO) != null) {
                Iterator it = ServiceLoader.load(n.class).iterator();
                while (it.hasNext()) {
                    n nVar2 = (n) it.next();
                    if (str.equals(nVar2.i()) || str.equals(nVar2.r())) {
                        return nVar2;
                    }
                }
                throw new RuntimeException("Unknown chronology: " + str);
            }
            q qVar = q.o;
            k(qVar, qVar.i());
            x xVar = x.d;
            k(xVar, xVar.i());
            C c2 = C.d;
            k(c2, c2.i());
            I i = I.d;
            k(i, i.i());
            try {
                for (AbstractC1330a abstractC1330a : Arrays.asList(new AbstractC1330a[0])) {
                    if (!abstractC1330a.i().equals(ExifInterface.TAG_RW2_ISO)) {
                        k(abstractC1330a, abstractC1330a.i());
                    }
                }
                u uVar = u.d;
                k(uVar, uVar.i());
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    @Override // j$.time.chrono.n
    public InterfaceC1334e o(j$.time.j jVar) {
        try {
            return l(jVar).u(j$.time.l.E(jVar));
        } catch (C1329c e) {
            throw new RuntimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + j$.time.j.class, e);
        }
    }

    @Override // j$.time.chrono.n
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC1330a) && i().compareTo(((AbstractC1330a) obj).i()) == 0;
    }

    @Override // j$.time.chrono.n
    public final int hashCode() {
        return getClass().hashCode() ^ i().hashCode();
    }

    @Override // j$.time.chrono.n
    public final String toString() {
        return i();
    }
}
