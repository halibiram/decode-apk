.class public final enum Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/view/DurationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

.field public static final enum BOTTOM:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

.field public static final enum TOP:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->TOP:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->BOTTOM:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->TOP:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->BOTTOM:Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 45
    .line 46
    invoke-static {}, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->$values()[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->$VALUES:[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0xdb792d4ae7a3ac8L
        -0x6408076c324bd828L    # -6.057435003976048E-174
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_1
    .array-data 8
        0x1b5e51923366e687L    # 7.481905748265132E-177
        -0x165056fb25d6f52dL    # -1.2117169825939204E201
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->$VALUES:[Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/view/DurationView$LabelPosition;

    .line 8
    .line 9
    return-object v0
.end method
