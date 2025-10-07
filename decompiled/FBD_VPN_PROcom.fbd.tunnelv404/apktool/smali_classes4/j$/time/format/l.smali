.class final enum Lj$/time/format/l;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/g;


# static fields
.field public static final enum INSENSITIVE:Lj$/time/format/l;

.field public static final enum LENIENT:Lj$/time/format/l;

.field public static final enum SENSITIVE:Lj$/time/format/l;

.field public static final enum STRICT:Lj$/time/format/l;

.field private static final synthetic a:[Lj$/time/format/l;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2490
    new-instance v4, Lj$/time/format/l;

    .line 2489
    const-string v5, "SENSITIVE"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2490
    sput-object v4, Lj$/time/format/l;->SENSITIVE:Lj$/time/format/l;

    .line 2491
    new-instance v5, Lj$/time/format/l;

    .line 2489
    const-string v6, "INSENSITIVE"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2491
    sput-object v5, Lj$/time/format/l;->INSENSITIVE:Lj$/time/format/l;

    .line 2492
    new-instance v6, Lj$/time/format/l;

    .line 2489
    const-string v7, "STRICT"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2492
    sput-object v6, Lj$/time/format/l;->STRICT:Lj$/time/format/l;

    .line 2493
    new-instance v7, Lj$/time/format/l;

    .line 2489
    const-string v8, "LENIENT"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2493
    sput-object v7, Lj$/time/format/l;->LENIENT:Lj$/time/format/l;

    const/4 v8, 0x4

    .line 2489
    new-array v8, v8, [Lj$/time/format/l;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Lj$/time/format/l;->a:[Lj$/time/format/l;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/l;
    .locals 1

    .line 2489
    const-class v0, Lj$/time/format/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/l;

    return-object p0
.end method

.method public static values()[Lj$/time/format/l;
    .locals 1

    .line 2489
    sget-object v0, Lj$/time/format/l;->a:[Lj$/time/format/l;

    invoke-virtual {v0}, [Lj$/time/format/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/l;

    return-object v0
.end method


# virtual methods
.method public final j(Lj$/time/format/q;Ljava/lang/StringBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 2515
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2519
    const-string v0, "ParseStrict(false)"

    return-object v0

    .line 2521
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2518
    :cond_1
    const-string v0, "ParseStrict(true)"

    return-object v0

    .line 2517
    :cond_2
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    .line 2516
    :cond_3
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0
.end method
