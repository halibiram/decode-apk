package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class B extends z {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 8386373296231747096L;
    private final String a;
    private final transient j$.time.zone.f b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static B H(String str) {
        j$.time.zone.f fVar;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                fVar = j$.time.zone.j.a(str, true);
            } catch (j$.time.zone.g unused) {
                fVar = null;
            }
            return new B(str, fVar);
        }
        throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public B(String str, j$.time.zone.f fVar) {
        this.a = str;
        this.b = fVar;
    }

    @Override // j$.time.z
    public final String i() {
        return this.a;
    }

    @Override // j$.time.z
    public final j$.time.zone.f C() {
        j$.time.zone.f fVar = this.b;
        return fVar != null ? fVar : j$.time.zone.j.a(this.a, false);
    }

    private Object writeReplace() {
        return new u((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.z
    public final void G(ObjectOutput objectOutput) {
        objectOutput.writeByte(7);
        objectOutput.writeUTF(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void I(DataOutput dataOutput) {
        dataOutput.writeUTF(this.a);
    }
}
