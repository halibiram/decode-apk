package j$.time.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.mmkv.MMKV;
import j$.time.A;
import j$.time.Instant;
import j$.time.chrono.AbstractC1338i;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes4.dex */
public final class f implements Serializable {
    private static final long[] i = new long[0];
    private static final e[] j = new e[0];
    private static final j$.time.j[] k = new j$.time.j[0];
    private static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;
    private final long[] a;
    private final A[] b;
    private final long[] c;
    private final j$.time.j[] d;
    private final A[] e;
    private final e[] f;
    private final TimeZone g;
    private final transient ConcurrentHashMap h = new ConcurrentHashMap();

    public static f h(A a) {
        Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        return new f(a);
    }

    private f(long[] jArr, A[] aArr, long[] jArr2, A[] aArr2, e[] eVarArr) {
        this.a = jArr;
        this.b = aArr;
        this.c = jArr2;
        this.e = aArr2;
        this.f = eVarArr;
        if (jArr2.length == 0) {
            this.d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jArr2.length) {
                int i3 = i2 + 1;
                b bVar = new b(jArr2[i2], aArr2[i2], aArr2[i3]);
                if (bVar.w()) {
                    arrayList.add(bVar.k());
                    arrayList.add(bVar.j());
                } else {
                    arrayList.add(bVar.j());
                    arrayList.add(bVar.k());
                }
                i2 = i3;
            }
            this.d = (j$.time.j[]) arrayList.toArray(new j$.time.j[arrayList.size()]);
        }
        this.g = null;
    }

    private f(A a) {
        this.b = r0;
        A[] aArr = {a};
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = aArr;
        this.f = j;
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(TimeZone timeZone) {
        this.b = r0;
        A[] aArr = {i(timeZone.getRawOffset())};
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = aArr;
        this.f = j;
        this.g = timeZone;
    }

    private static A i(int i2) {
        return A.L(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        long[] jArr = this.a;
        objectOutput.writeInt(jArr.length);
        for (long j2 : jArr) {
            a.c(j2, objectOutput);
        }
        for (A a : this.b) {
            a.d(a, objectOutput);
        }
        long[] jArr2 = this.c;
        objectOutput.writeInt(jArr2.length);
        for (long j3 : jArr2) {
            a.c(j3, objectOutput);
        }
        for (A a2 : this.e) {
            a.d(a2, objectOutput);
        }
        e[] eVarArr = this.f;
        objectOutput.writeByte(eVarArr.length);
        for (e eVar : eVarArr) {
            eVar.writeExternal(objectOutput);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(ObjectOutput objectOutput) {
        objectOutput.writeUTF(this.g.getID());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f j(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        long[] jArr = i;
        long[] jArr2 = readInt == 0 ? jArr : new long[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            jArr2[i2] = a.a(objectInput);
        }
        int i3 = readInt + 1;
        A[] aArr = new A[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            aArr[i4] = a.b(objectInput);
        }
        int readInt2 = objectInput.readInt();
        if (readInt2 != 0) {
            jArr = new long[readInt2];
        }
        long[] jArr3 = jArr;
        for (int i5 = 0; i5 < readInt2; i5++) {
            jArr3[i5] = a.a(objectInput);
        }
        int i6 = readInt2 + 1;
        A[] aArr2 = new A[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            aArr2[i7] = a.b(objectInput);
        }
        int readByte = objectInput.readByte();
        e[] eVarArr = readByte == 0 ? j : new e[readByte];
        for (int i8 = 0; i8 < readByte; i8++) {
            eVarArr[i8] = e.b(objectInput);
        }
        return new f(jArr2, aArr, jArr3, aArr2, eVarArr);
    }

    public final A d(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return i(timeZone.getOffset(instant.G()));
        }
        long[] jArr = this.c;
        if (jArr.length == 0) {
            return this.b[0];
        }
        long epochSecond = instant.getEpochSecond();
        int length = this.f.length;
        A[] aArr = this.e;
        if (length > 0 && epochSecond > jArr[jArr.length - 1]) {
            b[] b = b(c(epochSecond, aArr[aArr.length - 1]));
            b bVar = null;
            for (int i2 = 0; i2 < b.length; i2++) {
                bVar = b[i2];
                if (epochSecond < bVar.B()) {
                    return bVar.s();
                }
            }
            return bVar.n();
        }
        int binarySearch = Arrays.binarySearch(jArr, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return aArr[binarySearch + 1];
    }

    public final List g(j$.time.j jVar) {
        Object e = e(jVar);
        if (e instanceof b) {
            return ((b) e).v();
        }
        return Collections.singletonList((A) e);
    }

    public final b f(j$.time.j jVar) {
        Object e = e(jVar);
        if (e instanceof b) {
            return (b) e;
        }
        return null;
    }

    private Object e(j$.time.j jVar) {
        Object obj = null;
        A[] aArr = this.b;
        int i2 = 0;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            b[] b = b(jVar.G());
            if (b.length == 0) {
                return i(timeZone.getOffset(AbstractC1338i.n(jVar, aArr[0]) * 1000));
            }
            int length = b.length;
            while (i2 < length) {
                b bVar = b[i2];
                Object a = a(jVar, bVar);
                if ((a instanceof b) || a.equals(bVar.s())) {
                    return a;
                }
                i2++;
                obj = a;
            }
            return obj;
        }
        if (this.c.length == 0) {
            return aArr[0];
        }
        int length2 = this.f.length;
        j$.time.j[] jVarArr = this.d;
        if (length2 > 0 && jVar.H(jVarArr[jVarArr.length - 1])) {
            b[] b2 = b(jVar.G());
            int length3 = b2.length;
            while (i2 < length3) {
                b bVar2 = b2[i2];
                Object a2 = a(jVar, bVar2);
                if ((a2 instanceof b) || a2.equals(bVar2.s())) {
                    return a2;
                }
                i2++;
                obj = a2;
            }
            return obj;
        }
        int binarySearch = Arrays.binarySearch(jVarArr, jVar);
        A[] aArr2 = this.e;
        if (binarySearch == -1) {
            return aArr2[0];
        }
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        } else if (binarySearch < jVarArr.length - 1) {
            int i3 = binarySearch + 1;
            if (jVarArr[binarySearch].equals(jVarArr[i3])) {
                binarySearch = i3;
            }
        }
        if ((binarySearch & 1) == 0) {
            j$.time.j jVar2 = jVarArr[binarySearch];
            j$.time.j jVar3 = jVarArr[binarySearch + 1];
            int i4 = binarySearch / 2;
            A a3 = aArr2[i4];
            A a4 = aArr2[i4 + 1];
            if (a4.I() > a3.I()) {
                return new b(jVar2, a3, a4);
            }
            return new b(jVar3, a3, a4);
        }
        return aArr2[(binarySearch / 2) + 1];
    }

    private static Object a(j$.time.j jVar, b bVar) {
        j$.time.j k2 = bVar.k();
        if (bVar.w()) {
            if (jVar.I(k2)) {
                return bVar.s();
            }
            return jVar.I(bVar.j()) ? bVar : bVar.n();
        }
        if (jVar.I(k2)) {
            return jVar.I(bVar.j()) ? bVar.s() : bVar;
        }
        return bVar.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b[] b(int i2) {
        long j2;
        Integer valueOf = Integer.valueOf(i2);
        ConcurrentHashMap concurrentHashMap = this.h;
        b[] bVarArr = (b[]) concurrentHashMap.get(valueOf);
        if (bVarArr != null) {
            return bVarArr;
        }
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            b[] bVarArr2 = l;
            if (i2 < 1800) {
                return bVarArr2;
            }
            long n = AbstractC1338i.n(j$.time.j.J(i2 - 1), this.b[0]);
            int offset = timeZone.getOffset(n * 1000);
            long j3 = 31968000 + n;
            while (n < j3) {
                long j4 = 7776000 + n;
                long j5 = n;
                if (offset != timeZone.getOffset(j4 * 1000)) {
                    n = j5;
                    while (j4 - n > 1) {
                        int i3 = offset;
                        long j6 = j3;
                        long j7 = j$.com.android.tools.r8.a.j(j4 + n, 2L);
                        if (timeZone.getOffset(j7 * 1000) == i3) {
                            n = j7;
                        } else {
                            j4 = j7;
                        }
                        offset = i3;
                        j3 = j6;
                    }
                    j2 = j3;
                    int i4 = offset;
                    if (timeZone.getOffset(n * 1000) == i4) {
                        n = j4;
                    }
                    A i5 = i(i4);
                    offset = timeZone.getOffset(n * 1000);
                    A i6 = i(offset);
                    if (c(n, i6) == i2) {
                        bVarArr2 = (b[]) Arrays.copyOf(bVarArr2, bVarArr2.length + 1);
                        bVarArr2[bVarArr2.length - 1] = new b(n, i5, i6);
                    }
                } else {
                    j2 = j3;
                    n = j4;
                }
                j3 = j2;
            }
            if (1916 <= i2 && i2 < 2100) {
                concurrentHashMap.putIfAbsent(valueOf, bVarArr2);
            }
            return bVarArr2;
        }
        e[] eVarArr = this.f;
        b[] bVarArr3 = new b[eVarArr.length];
        for (int i7 = 0; i7 < eVarArr.length; i7++) {
            bVarArr3[i7] = eVarArr[i7].a(i2);
        }
        if (i2 < 2100) {
            concurrentHashMap.putIfAbsent(valueOf, bVarArr3);
        }
        return bVarArr3;
    }

    private static int c(long j2, A a) {
        return j$.time.h.P(j$.com.android.tools.r8.a.j(j2 + a.I(), MMKV.ExpireInDay)).J();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.g, fVar.g) && Arrays.equals(this.a, fVar.a) && Arrays.equals(this.b, fVar.b) && Arrays.equals(this.c, fVar.c) && Arrays.equals(this.e, fVar.e) && Arrays.equals(this.f, fVar.f);
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.g) ^ Arrays.hashCode(this.a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.c)) ^ Arrays.hashCode(this.e)) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.b[r1.length - 1] + "]";
    }
}
