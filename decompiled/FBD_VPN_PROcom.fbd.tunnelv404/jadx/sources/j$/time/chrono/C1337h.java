package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* renamed from: j$.time.chrono.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class C1337h implements Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    private final n a;
    final int b;
    final int c;
    final int d;

    static {
        j$.com.android.tools.r8.a.g(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1337h(n nVar, int i, int i2, int i3) {
        Objects.requireNonNull(nVar, "chrono");
        this.a = nVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final String toString() {
        n nVar = this.a;
        int i = this.d;
        int i2 = this.c;
        int i3 = this.b;
        if (i3 == 0 && i2 == 0 && i == 0) {
            return nVar.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(nVar.toString());
        sb.append(" P");
        if (i3 != 0) {
            sb.append(i3);
            sb.append('Y');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('D');
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1337h)) {
            return false;
        }
        C1337h c1337h = (C1337h) obj;
        return this.b == c1337h.b && this.c == c1337h.c && this.d == c1337h.d && this.a.equals(c1337h.a);
    }

    public final int hashCode() {
        return this.a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    protected Object writeReplace() {
        return new G((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeUTF(this.a.i());
        objectOutput.writeInt(this.b);
        objectOutput.writeInt(this.c);
        objectOutput.writeInt(this.d);
    }
}
