package j$.time;

import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class u implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    private byte a;
    private Object b;

    public u() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                ((Duration) obj).writeExternal(objectOutput);
                return;
            case 2:
                ((Instant) obj).H(objectOutput);
                return;
            case 3:
                ((h) obj).Z(objectOutput);
                return;
            case 4:
                ((l) obj).W(objectOutput);
                return;
            case 5:
                ((j) obj).T(objectOutput);
                return;
            case 6:
                ((D) obj).G(objectOutput);
                return;
            case 7:
                ((B) obj).I(objectOutput);
                return;
            case 8:
                ((A) obj).O(objectOutput);
                return;
            case 9:
                ((s) obj).writeExternal(objectOutput);
                return;
            case 10:
                ((r) obj).writeExternal(objectOutput);
                return;
            case 11:
                ((w) obj).G(objectOutput);
                return;
            case 12:
                ((y) obj).J(objectOutput);
                return;
            case 13:
                ((p) obj).D(objectOutput);
                return;
            case 14:
                ((t) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.a = readByte;
        this.b = b(readByte, objectInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Serializable a(ObjectInput objectInput) {
        return b(objectInput.readByte(), objectInput);
    }

    private static Serializable b(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                Duration duration = Duration.ZERO;
                return Duration.n(objectInput.readLong(), objectInput.readInt());
            case 2:
                Instant instant = Instant.c;
                return Instant.ofEpochSecond(objectInput.readLong(), objectInput.readInt());
            case 3:
                h hVar = h.d;
                return h.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return l.R(objectInput);
            case 5:
                j jVar = j.c;
                h hVar2 = h.d;
                return j.K(h.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), l.R(objectInput));
            case 6:
                return D.E(objectInput);
            case 7:
                int i = B.c;
                return z.D(objectInput.readUTF());
            case 8:
                return A.N(objectInput);
            case 9:
                return s.E(objectInput);
            case 10:
                return r.E(objectInput);
            case 11:
                int i2 = w.b;
                return w.C(objectInput.readInt());
            case 12:
                return y.G(objectInput);
            case 13:
                return p.C(objectInput);
            case 14:
                return t.a(objectInput);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }
}
