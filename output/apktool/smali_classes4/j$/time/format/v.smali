.class public final enum Lj$/time/format/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALWAYS:Lj$/time/format/v;

.field public static final enum EXCEEDS_PAD:Lj$/time/format/v;

.field public static final enum NEVER:Lj$/time/format/v;

.field public static final enum NORMAL:Lj$/time/format/v;

.field public static final enum NOT_NEGATIVE:Lj$/time/format/v;

.field private static final synthetic a:[Lj$/time/format/v;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    new-instance v5, Lj$/time/format/v;

    .line 76
    const-string v6, "NORMAL"

    invoke-direct {v5, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v5, Lj$/time/format/v;->NORMAL:Lj$/time/format/v;

    .line 92
    new-instance v6, Lj$/time/format/v;

    .line 76
    const-string v7, "ALWAYS"

    invoke-direct {v6, v7, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v6, Lj$/time/format/v;->ALWAYS:Lj$/time/format/v;

    .line 99
    new-instance v7, Lj$/time/format/v;

    .line 76
    const-string v8, "NEVER"

    invoke-direct {v7, v8, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v7, Lj$/time/format/v;->NEVER:Lj$/time/format/v;

    .line 106
    new-instance v8, Lj$/time/format/v;

    .line 76
    const-string v9, "NOT_NEGATIVE"

    invoke-direct {v8, v9, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    sput-object v8, Lj$/time/format/v;->NOT_NEGATIVE:Lj$/time/format/v;

    .line 115
    new-instance v9, Lj$/time/format/v;

    .line 76
    const-string v10, "EXCEEDS_PAD"

    invoke-direct {v9, v10, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    sput-object v9, Lj$/time/format/v;->EXCEEDS_PAD:Lj$/time/format/v;

    const/4 v10, 0x5

    .line 76
    new-array v10, v10, [Lj$/time/format/v;

    aput-object v5, v10, v4

    aput-object v6, v10, v3

    aput-object v7, v10, v2

    aput-object v8, v10, v1

    aput-object v9, v10, v0

    sput-object v10, Lj$/time/format/v;->a:[Lj$/time/format/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/v;
    .locals 1

    .line 76
    const-class v0, Lj$/time/format/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/format/v;

    return-object p0
.end method

.method public static values()[Lj$/time/format/v;
    .locals 1

    .line 76
    sget-object v0, Lj$/time/format/v;->a:[Lj$/time/format/v;

    invoke-virtual {v0}, [Lj$/time/format/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/v;

    return-object v0
.end method
