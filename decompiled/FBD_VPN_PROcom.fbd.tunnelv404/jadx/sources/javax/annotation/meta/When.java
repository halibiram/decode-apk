package javax.annotation.meta;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class When {
    public static final When ALWAYS;
    public static final When MAYBE;
    public static final When NEVER;
    public static final When UNKNOWN;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final /* synthetic */ When[] f1140xfbe0c504;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Enum, javax.annotation.meta.When] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, javax.annotation.meta.When] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, javax.annotation.meta.When] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, javax.annotation.meta.When] */
    static {
        ?? r4 = new Enum("ALWAYS", 0);
        ALWAYS = r4;
        ?? r5 = new Enum("UNKNOWN", 1);
        UNKNOWN = r5;
        ?? r6 = new Enum("MAYBE", 2);
        MAYBE = r6;
        ?? r7 = new Enum("NEVER", 3);
        NEVER = r7;
        f1140xfbe0c504 = new When[]{r4, r5, r6, r7};
    }

    public static When valueOf(String str) {
        return (When) Enum.valueOf(When.class, str);
    }

    public static When[] values() {
        return (When[]) f1140xfbe0c504.clone();
    }
}
