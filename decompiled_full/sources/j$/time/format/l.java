package j$.time.format;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class l implements g {
    public static final l INSENSITIVE;
    public static final l LENIENT;
    public static final l SENSITIVE;
    public static final l STRICT;
    private static final /* synthetic */ l[] a;

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb) {
        return true;
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Enum, j$.time.format.l] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.format.l] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, j$.time.format.l] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.format.l] */
    static {
        ?? r4 = new Enum("SENSITIVE", 0);
        SENSITIVE = r4;
        ?? r5 = new Enum("INSENSITIVE", 1);
        INSENSITIVE = r5;
        ?? r6 = new Enum("STRICT", 2);
        STRICT = r6;
        ?? r7 = new Enum("LENIENT", 3);
        LENIENT = r7;
        a = new l[]{r4, r5, r6, r7};
    }

    @Override // java.lang.Enum
    public final String toString() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return "ParseCaseSensitive(true)";
        }
        if (ordinal == 1) {
            return "ParseCaseSensitive(false)";
        }
        if (ordinal == 2) {
            return "ParseStrict(true)";
        }
        if (ordinal == 3) {
            return "ParseStrict(false)";
        }
        throw new IllegalStateException("Unreachable");
    }
}
