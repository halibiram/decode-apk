package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.stream.b3, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class EnumC1370b3 {
    public static final EnumC1370b3 DOUBLE_VALUE;
    public static final EnumC1370b3 INT_VALUE;
    public static final EnumC1370b3 LONG_VALUE;
    public static final EnumC1370b3 REFERENCE;
    private static final /* synthetic */ EnumC1370b3[] a;

    public static EnumC1370b3 valueOf(String str) {
        return (EnumC1370b3) Enum.valueOf(EnumC1370b3.class, str);
    }

    public static EnumC1370b3[] values() {
        return (EnumC1370b3[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Enum, j$.util.stream.b3] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.b3] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, j$.util.stream.b3] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.util.stream.b3] */
    static {
        ?? r4 = new Enum("REFERENCE", 0);
        REFERENCE = r4;
        ?? r5 = new Enum("INT_VALUE", 1);
        INT_VALUE = r5;
        ?? r6 = new Enum("LONG_VALUE", 2);
        LONG_VALUE = r6;
        ?? r7 = new Enum("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = r7;
        a = new EnumC1370b3[]{r4, r5, r6, r7};
    }
}
