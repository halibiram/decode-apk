package j$.time.chrono;

import androidx.exifinterface.media.ExifInterface;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes4.dex */
public final class u extends AbstractC1330a implements Serializable {
    public static final u d = new u();
    private static final long serialVersionUID = -1440403870442975015L;

    @Override // j$.time.chrono.n
    public final o A(int i) {
        if (i == 0) {
            return v.BCE;
        }
        if (i == 1) {
            return v.CE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    private u() {
    }

    @Override // j$.time.chrono.n
    public final String i() {
        return ExifInterface.TAG_RW2_ISO;
    }

    @Override // j$.time.chrono.n
    public final String r() {
        return "iso8601";
    }

    @Override // j$.time.chrono.n
    public final InterfaceC1331b l(j$.time.temporal.n nVar) {
        return j$.time.h.E(nVar);
    }

    @Override // j$.time.chrono.AbstractC1330a, j$.time.chrono.n
    public final InterfaceC1334e o(j$.time.j jVar) {
        return j$.time.j.D(jVar);
    }

    public static boolean m(long j) {
        return (3 & j) == 0 && (j % 100 != 0 || j % 400 == 0);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    Object writeReplace() {
        return new G((byte) 1, this);
    }
}
