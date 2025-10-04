package j$.util.stream;

import j$.util.AbstractC1344b;
import j$.util.Spliterator;
import java.util.EnumMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: j$.util.stream.a3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
final class EnumC1365a3 {
    public static final EnumC1365a3 DISTINCT;
    public static final EnumC1365a3 ORDERED;
    public static final EnumC1365a3 SHORT_CIRCUIT;
    public static final EnumC1365a3 SIZED;
    public static final EnumC1365a3 SORTED;
    static final int f;
    static final int g;
    static final int h;
    private static final int i;
    private static final int j;
    private static final int k;
    static final int l;
    static final int m;
    static final int n;
    static final int o;
    static final int p;
    static final int q;
    static final int r;
    static final int s;
    static final int t;
    static final int u;
    private static final /* synthetic */ EnumC1365a3[] v;
    private final EnumMap a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;

    public static EnumC1365a3 valueOf(String str) {
        return (EnumC1365a3) Enum.valueOf(EnumC1365a3.class, str);
    }

    public static EnumC1365a3[] values() {
        return (EnumC1365a3[]) v.clone();
    }

    static {
        Z2 z2 = Z2.SPLITERATOR;
        Y2 v2 = v(z2);
        Z2 z22 = Z2.STREAM;
        v2.a(z22);
        Z2 z23 = Z2.OP;
        v2.a.put((EnumMap) z23, (Z2) 3);
        EnumC1365a3 enumC1365a3 = new EnumC1365a3("DISTINCT", 0, 0, v2);
        DISTINCT = enumC1365a3;
        Y2 v3 = v(z2);
        v3.a(z22);
        v3.a.put((EnumMap) z23, (Z2) 3);
        EnumC1365a3 enumC1365a32 = new EnumC1365a3("SORTED", 1, 1, v3);
        SORTED = enumC1365a32;
        Y2 v4 = v(z2);
        v4.a(z22);
        EnumMap enumMap = v4.a;
        enumMap.put((EnumMap) z23, (Z2) 3);
        Z2 z24 = Z2.TERMINAL_OP;
        enumMap.put((EnumMap) z24, (Z2) 2);
        Z2 z25 = Z2.UPSTREAM_TERMINAL_OP;
        enumMap.put((EnumMap) z25, (Z2) 2);
        EnumC1365a3 enumC1365a33 = new EnumC1365a3("ORDERED", 2, 2, v4);
        ORDERED = enumC1365a33;
        Y2 v5 = v(z2);
        v5.a(z22);
        v5.a.put((EnumMap) z23, (Z2) 2);
        EnumC1365a3 enumC1365a34 = new EnumC1365a3("SIZED", 3, 3, v5);
        SIZED = enumC1365a34;
        Y2 v6 = v(z23);
        v6.a(z24);
        EnumC1365a3 enumC1365a35 = new EnumC1365a3("SHORT_CIRCUIT", 4, 12, v6);
        SHORT_CIRCUIT = enumC1365a35;
        v = new EnumC1365a3[]{enumC1365a3, enumC1365a32, enumC1365a33, enumC1365a34, enumC1365a35};
        f = k(z2);
        g = k(z22);
        h = k(z23);
        k(z24);
        k(z25);
        int i2 = 0;
        for (EnumC1365a3 enumC1365a36 : values()) {
            i2 |= enumC1365a36.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        EnumC1365a3 enumC1365a37 = DISTINCT;
        m = enumC1365a37.c;
        n = enumC1365a37.d;
        EnumC1365a3 enumC1365a38 = SORTED;
        o = enumC1365a38.c;
        p = enumC1365a38.d;
        EnumC1365a3 enumC1365a39 = ORDERED;
        q = enumC1365a39.c;
        r = enumC1365a39.d;
        EnumC1365a3 enumC1365a310 = SIZED;
        s = enumC1365a310.c;
        t = enumC1365a310.d;
        u = SHORT_CIRCUIT.c;
    }

    private static Y2 v(Z2 z2) {
        Y2 y2 = new Y2(new EnumMap(Z2.class));
        y2.a(z2);
        return y2;
    }

    private EnumC1365a3(String str, int i2, int i3, Y2 y2) {
        Z2[] values = Z2.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            EnumMap enumMap = y2.a;
            if (i4 < length) {
                AbstractC1344b.v(enumMap, values[i4], 0);
                i4++;
            } else {
                this.a = enumMap;
                int i5 = i3 * 2;
                this.b = i5;
                this.c = 1 << i5;
                this.d = 2 << i5;
                this.e = 3 << i5;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n(int i2) {
        return (i2 & this.e) == this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean s(int i2) {
        int i3 = this.e;
        return (i2 & i3) == i3;
    }

    private static int k(Z2 z2) {
        int i2 = 0;
        for (EnumC1365a3 enumC1365a3 : values()) {
            i2 |= ((Integer) enumC1365a3.a.get(z2)).intValue() << enumC1365a3.b;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i2, int i3) {
        int i4;
        if (i2 == 0) {
            i4 = i;
        } else {
            i4 = ~(((j & i2) << 1) | i2 | ((k & i2) >> 1));
        }
        return i2 | (i3 & i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(int i2) {
        return i2 & ((~i2) >> 1) & j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }
}
