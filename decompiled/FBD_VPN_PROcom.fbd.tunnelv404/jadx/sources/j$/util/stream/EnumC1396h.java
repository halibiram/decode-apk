package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.stream.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class EnumC1396h {
    public static final EnumC1396h CONCURRENT;
    public static final EnumC1396h IDENTITY_FINISH;
    public static final EnumC1396h UNORDERED;
    private static final /* synthetic */ EnumC1396h[] a;

    public static EnumC1396h valueOf(String str) {
        return (EnumC1396h) Enum.valueOf(EnumC1396h.class, str);
    }

    public static EnumC1396h[] values() {
        return (EnumC1396h[]) a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [j$.util.stream.h, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v1, types: [j$.util.stream.h, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [j$.util.stream.h, java.lang.Enum] */
    static {
        ?? r3 = new Enum("CONCURRENT", 0);
        CONCURRENT = r3;
        ?? r4 = new Enum("UNORDERED", 1);
        UNORDERED = r4;
        ?? r5 = new Enum("IDENTITY_FINISH", 2);
        IDENTITY_FINISH = r5;
        a = new EnumC1396h[]{r3, r4, r5};
    }
}
