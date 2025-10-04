package j$.time.chrono;

import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes4.dex */
final class G implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;
    private byte a;
    private Object b;

    public G() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public G(byte b, Object obj) {
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
                objectOutput.writeUTF(((AbstractC1330a) obj).i());
                return;
            case 2:
                ((C1336g) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((m) obj).writeExternal(objectOutput);
                return;
            case 4:
                z zVar = (z) obj;
                zVar.getClass();
                objectOutput.writeInt(j$.time.temporal.m.a(zVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(zVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(zVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                ((A) obj).E(objectOutput);
                return;
            case 6:
                ((s) obj).writeExternal(objectOutput);
                return;
            case 7:
                E e = (E) obj;
                e.getClass();
                objectOutput.writeInt(j$.time.temporal.m.a(e, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(e, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(e, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 8:
                K k = (K) obj;
                k.getClass();
                objectOutput.writeInt(j$.time.temporal.m.a(k, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(k, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.m.a(k, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                ((C1337h) obj).writeExternal(objectOutput);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object j;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        switch (readByte) {
            case 1:
                int i = AbstractC1330a.c;
                j = AbstractC1330a.j(objectInput.readUTF());
                break;
            case 2:
                j = ((InterfaceC1331b) objectInput.readObject()).u((j$.time.l) objectInput.readObject());
                break;
            case 3:
                j = ((InterfaceC1334e) objectInput.readObject()).p((j$.time.A) objectInput.readObject()).h((j$.time.z) objectInput.readObject());
                break;
            case 4:
                j$.time.h hVar = z.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                x.d.getClass();
                j = new z(j$.time.h.N(readInt, readByte2, readByte3));
                break;
            case 5:
                A a = A.d;
                j = A.A(objectInput.readByte());
                break;
            case 6:
                q qVar = (q) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                qVar.getClass();
                j = s.K(qVar, readInt2, readByte4, readByte5);
                break;
            case 7:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                C.d.getClass();
                j = new E(j$.time.h.N(readInt3 + 1911, readByte6, readByte7));
                break;
            case 8:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                I.d.getClass();
                j = new K(j$.time.h.N(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i2 = C1337h.e;
                j = new C1337h(AbstractC1330a.j(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = j;
    }

    private Object readResolve() {
        return this.b;
    }
}
