package j$.time.zone;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.time.A;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.TimeZone;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;
    private byte a;
    private Serializable b;

    public a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(byte b, Serializable serializable) {
        this.a = b;
        this.b = serializable;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Serializable serializable = this.b;
        objectOutput.writeByte(b);
        if (b == 1) {
            ((f) serializable).writeExternal(objectOutput);
            return;
        }
        if (b == 2) {
            ((b) serializable).writeExternal(objectOutput);
        } else if (b == 3) {
            ((e) serializable).writeExternal(objectOutput);
        } else {
            if (b == 100) {
                ((f) serializable).k(objectOutput);
                return;
            }
            throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Serializable j;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        if (readByte == 1) {
            j = f.j(objectInput);
        } else if (readByte == 2) {
            long a = a(objectInput);
            A b = b(objectInput);
            A b2 = b(objectInput);
            if (b.equals(b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            j = new b(a, b, b2);
        } else if (readByte == 3) {
            j = e.b(objectInput);
        } else {
            if (readByte != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            j = new f(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.b = j;
    }

    private Object readResolve() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(A a, ObjectOutput objectOutput) {
        int I = a.I();
        int i = I % TypedValues.Custom.TYPE_INT == 0 ? I / TypedValues.Custom.TYPE_INT : 127;
        objectOutput.writeByte(i);
        if (i == 127) {
            objectOutput.writeInt(I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static A b(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        return readByte == Byte.MAX_VALUE ? A.L(objectInput.readInt()) : A.L(readByte * 900);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(long j, ObjectOutput objectOutput) {
        if (j >= -4575744000L && j < 10413792000L && j % 900 == 0) {
            int i = (int) ((j + 4575744000L) / 900);
            objectOutput.writeByte((i >>> 16) & 255);
            objectOutput.writeByte((i >>> 8) & 255);
            objectOutput.writeByte(i & 255);
            return;
        }
        objectOutput.writeByte(255);
        objectOutput.writeLong(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(ObjectInput objectInput) {
        if ((objectInput.readByte() & 255) == 255) {
            return objectInput.readLong();
        }
        return ((((r0 << 16) + ((objectInput.readByte() & 255) << 8)) + (objectInput.readByte() & 255)) * 900) - 4575744000L;
    }
}
