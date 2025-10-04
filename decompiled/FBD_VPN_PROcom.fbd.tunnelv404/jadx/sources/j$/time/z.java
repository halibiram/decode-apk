package j$.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public abstract class z implements Serializable {
    private static final long serialVersionUID = 8352817235686L;

    public abstract j$.time.zone.f C();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void G(ObjectOutput objectOutput);

    public abstract String i();

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.f("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.f("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.f("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.f("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.f("AST", "America/Anchorage"), j$.com.android.tools.r8.a.f("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.f("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.f("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.f("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.f("CST", "America/Chicago"), j$.com.android.tools.r8.a.f("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.f("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.f("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.f("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.f("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.f("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.f("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.f("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.f("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.f("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.f("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.f("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.f("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.f("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.f("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.f("EST", "-05:00"), j$.com.android.tools.r8.a.f("MST", "-07:00"), j$.com.android.tools.r8.a.f("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        Collections.unmodifiableMap(hashMap);
    }

    public static z E(String str, A a) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(a, TypedValues.CycleType.S_WAVE_OFFSET);
        if (str.isEmpty()) {
            return a;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (a.I() != 0) {
            str = str.concat(a.i());
        }
        return new B(str, j$.time.zone.f.h(a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z D(String str) {
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return A.J(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            return F(str, 3);
        }
        if (str.startsWith("UT")) {
            return F(str, 2);
        }
        return B.H(str);
    }

    private static z F(String str, int i) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return E(substring, A.e);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return B.H(str);
        }
        try {
            A J = A.J(str.substring(i));
            if (J == A.e) {
                return E(substring, J);
            }
            return E(substring, J);
        } catch (C1329c e) {
            throw new RuntimeException("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z() {
        if (getClass() != A.class && getClass() != B.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            return i().equals(((z) obj).i());
        }
        return false;
    }

    public int hashCode() {
        return i().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public String toString() {
        return i();
    }

    private Object writeReplace() {
        return new u((byte) 7, this);
    }
}
