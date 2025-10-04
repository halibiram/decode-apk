package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
final class G3 {
    public static final G3 MAYBE_MORE;
    public static final G3 NO_MORE;
    public static final G3 UNLIMITED;
    private static final /* synthetic */ G3[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, j$.util.stream.G3] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, j$.util.stream.G3] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.util.stream.G3] */
    static {
        ?? r3 = new Enum("NO_MORE", 0);
        NO_MORE = r3;
        ?? r4 = new Enum("MAYBE_MORE", 1);
        MAYBE_MORE = r4;
        ?? r5 = new Enum("UNLIMITED", 2);
        UNLIMITED = r5;
        a = new G3[]{r3, r4, r5};
    }

    public static G3 valueOf(String str) {
        return (G3) Enum.valueOf(G3.class, str);
    }

    public static G3[] values() {
        return (G3[]) a.clone();
    }
}
