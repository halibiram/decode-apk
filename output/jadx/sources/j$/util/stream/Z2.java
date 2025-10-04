package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
final class Z2 {
    public static final Z2 OP;
    public static final Z2 SPLITERATOR;
    public static final Z2 STREAM;
    public static final Z2 TERMINAL_OP;
    public static final Z2 UPSTREAM_TERMINAL_OP;
    private static final /* synthetic */ Z2[] a;

    public static Z2 valueOf(String str) {
        return (Z2) Enum.valueOf(Z2.class, str);
    }

    public static Z2[] values() {
        return (Z2[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r8v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [j$.util.stream.Z2, java.lang.Enum] */
    static {
        ?? r5 = new Enum("SPLITERATOR", 0);
        SPLITERATOR = r5;
        ?? r6 = new Enum("STREAM", 1);
        STREAM = r6;
        ?? r7 = new Enum("OP", 2);
        OP = r7;
        ?? r8 = new Enum("TERMINAL_OP", 3);
        TERMINAL_OP = r8;
        ?? r9 = new Enum("UPSTREAM_TERMINAL_OP", 4);
        UPSTREAM_TERMINAL_OP = r9;
        a = new Z2[]{r5, r6, r7, r8, r9};
    }
}
