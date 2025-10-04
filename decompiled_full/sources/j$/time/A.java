package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.mmkv.MMKV;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* loaded from: classes4.dex */
public final class A extends z implements j$.time.temporal.n, j$.time.temporal.o, Comparable {
    private static final ConcurrentHashMap c = new ConcurrentHashMap(16, 0.75f, 4);
    private static final ConcurrentHashMap d = new ConcurrentHashMap(16, 0.75f, 4);
    public static final A e = L(0);
    public static final A f = L(-64800);
    public static final A g = L(64800);
    private static final long serialVersionUID = 2357656521762053153L;
    private final int a;
    private final transient String b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static A J(String str) {
        int M;
        int i;
        int i2;
        char charAt;
        Objects.requireNonNull(str, "offsetId");
        A a = (A) d.get(str);
        if (a != null) {
            return a;
        }
        int length = str.length();
        if (length == 2) {
            str = str.charAt(0) + "0" + str.charAt(1);
        } else if (length != 3) {
            if (length == 5) {
                M = M(str, 1, false);
                i = M(str, 3, false);
            } else if (length == 6) {
                M = M(str, 1, false);
                i = M(str, 4, true);
            } else {
                if (length == 7) {
                    M = M(str, 1, false);
                    i = M(str, 3, false);
                    i2 = M(str, 5, false);
                } else if (length == 9) {
                    M = M(str, 1, false);
                    i = M(str, 4, true);
                    i2 = M(str, 7, true);
                } else {
                    throw new RuntimeException("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                }
                charAt = str.charAt(0);
                if (charAt == '+' && charAt != '-') {
                    throw new RuntimeException("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
                }
                if (charAt == '-') {
                    return K(-M, -i, -i2);
                }
                return K(M, i, i2);
            }
            i2 = 0;
            charAt = str.charAt(0);
            if (charAt == '+') {
            }
            if (charAt == '-') {
            }
        }
        M = M(str, 1, false);
        i = 0;
        i2 = 0;
        charAt = str.charAt(0);
        if (charAt == '+') {
        }
        if (charAt == '-') {
        }
    }

    private static int M(String str, int i, boolean z) {
        if (z && str.charAt(i - 1) != ':') {
            throw new RuntimeException("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
        }
        char charAt = str.charAt(i);
        char charAt2 = str.charAt(i + 1);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            return (charAt2 - '0') + ((charAt - '0') * 10);
        }
        throw new RuntimeException("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str));
    }

    public static A K(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new RuntimeException("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new RuntimeException("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new RuntimeException("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new RuntimeException("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new RuntimeException("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        }
        if (i3 < -59 || i3 > 59) {
            throw new RuntimeException("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        }
        if (Math.abs(i) == 18 && (i2 | i3) != 0) {
            throw new RuntimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
        return L((i2 * 60) + (i * MMKV.ExpireInHour) + i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static A L(int i) {
        if (i < -64800 || i > 64800) {
            throw new RuntimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % TypedValues.Custom.TYPE_INT == 0) {
            Integer valueOf = Integer.valueOf(i);
            ConcurrentHashMap concurrentHashMap = c;
            A a = (A) concurrentHashMap.get(valueOf);
            if (a != null) {
                return a;
            }
            concurrentHashMap.putIfAbsent(valueOf, new A(i));
            A a2 = (A) concurrentHashMap.get(valueOf);
            d.putIfAbsent(a2.b, a2);
            return a2;
        }
        return new A(i);
    }

    private A(int i) {
        String sb;
        this.a = i;
        if (i == 0) {
            sb = "Z";
        } else {
            int abs = Math.abs(i);
            StringBuilder sb2 = new StringBuilder();
            int i2 = abs / MMKV.ExpireInHour;
            int i3 = (abs / 60) % 60;
            sb2.append(i < 0 ? "-" : "+");
            sb2.append(i2 < 10 ? "0" : "");
            sb2.append(i2);
            sb2.append(i3 < 10 ? ":0" : ":");
            sb2.append(i3);
            int i4 = abs % 60;
            if (i4 != 0) {
                sb2.append(i4 < 10 ? ":0" : ":");
                sb2.append(i4);
            }
            sb = sb2.toString();
        }
        this.b = sb;
    }

    public final int I() {
        return this.a;
    }

    @Override // j$.time.z
    public final String i() {
        return this.b;
    }

    @Override // j$.time.z
    public final j$.time.zone.f C() {
        return j$.time.zone.f.h(this);
    }

    @Override // j$.time.temporal.n
    public final boolean f(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.OFFSET_SECONDS : qVar != null && qVar.m(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v n(j$.time.temporal.q qVar) {
        return j$.time.temporal.m.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final int k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.a;
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return j$.time.temporal.m.d(this, qVar).a(s(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final long s(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.a;
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(AbstractC1342d.a("Unsupported field: ", qVar));
        }
        return qVar.k(this);
    }

    @Override // j$.time.temporal.n
    public final Object v(j$.time.temporal.s sVar) {
        return (sVar == j$.time.temporal.m.h() || sVar == j$.time.temporal.m.j()) ? this : j$.time.temporal.m.c(this, sVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.l w(j$.time.temporal.l lVar) {
        return lVar.d(this.a, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // java.lang.Comparable
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final int compareTo(A a) {
        return a.a - this.a;
    }

    @Override // j$.time.z
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof A) {
            return this.a == ((A) obj).a;
        }
        return false;
    }

    @Override // j$.time.z
    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.z
    public final String toString() {
        return this.b;
    }

    private Object writeReplace() {
        return new u((byte) 8, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.z
    public final void G(ObjectOutput objectOutput) {
        objectOutput.writeByte(8);
        O(objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void O(DataOutput dataOutput) {
        int i = this.a;
        int i2 = i % TypedValues.Custom.TYPE_INT == 0 ? i / TypedValues.Custom.TYPE_INT : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static A N(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        return readByte == Byte.MAX_VALUE ? L(objectInput.readInt()) : L(readByte * 900);
    }
}
