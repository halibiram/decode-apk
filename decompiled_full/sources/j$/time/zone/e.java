package j$.time.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.work.WorkInfo;
import com.tencent.mmkv.MMKV;
import j$.time.A;
import j$.time.chrono.u;
import j$.time.l;
import j$.time.n;
import j$.time.temporal.o;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    private final n a;
    private final byte b;
    private final j$.time.e c;
    private final l d;
    private final boolean e;
    private final d f;
    private final A g;
    private final A h;
    private final A i;

    e(n nVar, int i, j$.time.e eVar, l lVar, boolean z, d dVar, A a, A a2, A a3) {
        this.a = nVar;
        this.b = (byte) i;
        this.c = eVar;
        this.d = lVar;
        this.e = z;
        this.f = dVar;
        this.g = a;
        this.h = a2;
        this.i = a3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        l lVar = this.d;
        boolean z = this.e;
        int T = z ? MMKV.ExpireInDay : lVar.T();
        int I = this.g.I();
        A a = this.h;
        int I2 = a.I() - I;
        A a2 = this.i;
        int I3 = a2.I() - I;
        int G = T % MMKV.ExpireInHour == 0 ? z ? 24 : lVar.G() : 31;
        int i = I % TypedValues.Custom.TYPE_INT == 0 ? (I / TypedValues.Custom.TYPE_INT) + 128 : 255;
        int i2 = (I2 == 0 || I2 == 1800 || I2 == 3600) ? I2 / 1800 : 3;
        int i3 = (I3 == 0 || I3 == 1800 || I3 == 3600) ? I3 / 1800 : 3;
        j$.time.e eVar = this.c;
        objectOutput.writeInt((this.a.getValue() << 28) + ((this.b + 32) << 22) + ((eVar == null ? 0 : eVar.getValue()) << 19) + (G << 14) + (this.f.ordinal() << 12) + (i << 4) + (i2 << 2) + i3);
        if (G == 31) {
            objectOutput.writeInt(T);
        }
        if (i == 255) {
            objectOutput.writeInt(I);
        }
        if (i2 == 3) {
            objectOutput.writeInt(a.I());
        }
        if (i3 == 3) {
            objectOutput.writeInt(a2.I());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e b(ObjectInput objectInput) {
        int readInt = objectInput.readInt();
        n F = n.F(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        j$.time.e C = i2 == 0 ? null : j$.time.e.C(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        l L = i3 == 31 ? l.L(objectInput.readInt()) : l.J(i3 % 24);
        A L2 = A.L(i4 == 255 ? objectInput.readInt() : (i4 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT) * TypedValues.Custom.TYPE_INT);
        A L3 = i5 == 3 ? A.L(objectInput.readInt()) : A.L((i5 * 1800) + L2.I());
        A L4 = i6 == 3 ? A.L(objectInput.readInt()) : A.L((i6 * 1800) + L2.I());
        boolean z = i3 == 24;
        Objects.requireNonNull(F, "month");
        Objects.requireNonNull(L, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(L2, "standardOffset");
        Objects.requireNonNull(L3, "offsetBefore");
        Objects.requireNonNull(L4, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !L.equals(l.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (L.H() != 0) {
            throw new IllegalArgumentException("Time's nano-of-second must be zero");
        }
        return new e(F, i, C, L, z, dVar, L2, L3, L4);
    }

    public final b a(int i) {
        j$.time.h O;
        j$.time.e eVar = this.c;
        n nVar = this.a;
        byte b = this.b;
        if (b < 0) {
            u.d.getClass();
            O = j$.time.h.O(i, nVar, nVar.D(u.m(i)) + 1 + b);
            if (eVar != null) {
                final int value = eVar.getValue();
                final int i2 = 1;
                O = O.m(new o() { // from class: j$.time.temporal.p
                    @Override // j$.time.temporal.o
                    public final l w(l lVar) {
                        switch (i2) {
                            case 0:
                                int k = lVar.k(a.DAY_OF_WEEK);
                                int i3 = value;
                                if (k == i3) {
                                    return lVar;
                                }
                                return lVar.e(k - i3 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
                            default:
                                int k2 = lVar.k(a.DAY_OF_WEEK);
                                int i4 = value;
                                if (k2 == i4) {
                                    return lVar;
                                }
                                return lVar.j(i4 - k2 >= 0 ? 7 - r1 : -r1, ChronoUnit.DAYS);
                        }
                    }
                });
            }
        } else {
            O = j$.time.h.O(i, nVar, b);
            if (eVar != null) {
                final int value2 = eVar.getValue();
                final int i3 = 0;
                O = O.m(new o() { // from class: j$.time.temporal.p
                    @Override // j$.time.temporal.o
                    public final l w(l lVar) {
                        switch (i3) {
                            case 0:
                                int k = lVar.k(a.DAY_OF_WEEK);
                                int i32 = value2;
                                if (k == i32) {
                                    return lVar;
                                }
                                return lVar.e(k - i32 >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
                            default:
                                int k2 = lVar.k(a.DAY_OF_WEEK);
                                int i4 = value2;
                                if (k2 == i4) {
                                    return lVar;
                                }
                                return lVar.j(i4 - k2 >= 0 ? 7 - r1 : -r1, ChronoUnit.DAYS);
                        }
                    }
                });
            }
        }
        if (this.e) {
            O = O.R(1L);
        }
        j$.time.j K = j$.time.j.K(O, this.d);
        d dVar = this.f;
        dVar.getClass();
        int i4 = c.a[dVar.ordinal()];
        A a = this.h;
        if (i4 == 1) {
            K = K.N(a.I() - A.e.I());
        } else if (i4 == 2) {
            K = K.N(a.I() - this.g.I());
        }
        return new b(K, a, this.i);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.a == eVar.a && this.b == eVar.b && this.c == eVar.c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i);
    }

    public final int hashCode() {
        int T = ((this.d.T() + (this.e ? 1 : 0)) << 15) + (this.a.ordinal() << 11) + ((this.b + 32) << 5);
        j$.time.e eVar = this.c;
        return ((this.g.hashCode() ^ (this.f.ordinal() + (T + ((eVar == null ? 7 : eVar.ordinal()) << 2)))) ^ this.h.hashCode()) ^ this.i.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        A a = this.h;
        A a2 = this.i;
        sb.append(a.compareTo(a2) > 0 ? "Gap " : "Overlap ");
        sb.append(a);
        sb.append(" to ");
        sb.append(a2);
        sb.append(", ");
        n nVar = this.a;
        byte b = this.b;
        j$.time.e eVar = this.c;
        if (eVar == null) {
            sb.append(nVar.name());
            sb.append(' ');
            sb.append((int) b);
        } else if (b == -1) {
            sb.append(eVar.name());
            sb.append(" on or before last day of ");
            sb.append(nVar.name());
        } else if (b < 0) {
            sb.append(eVar.name());
            sb.append(" on or before last day minus ");
            sb.append((-b) - 1);
            sb.append(" of ");
            sb.append(nVar.name());
        } else {
            sb.append(eVar.name());
            sb.append(" on or after ");
            sb.append(nVar.name());
            sb.append(' ');
            sb.append((int) b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(']');
        return sb.toString();
    }
}
