.class final enum Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnencodedCharsFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;",
        ">;",
        "Lcom/google/common/hash/Funnel<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

.field public static final enum INSTANCE:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->INSTANCE:Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->$values()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0xdc4f3ba57185bf0L
        -0x462123f403418662L    # -6.085974697176535E-30
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->$VALUES:[Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/common/hash/PrimitiveSink;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$UnencodedCharsFunnel;->funnel(Ljava/lang/CharSequence;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x7d42b2e40a2bf0c3L    # -1.792131157312492E-295
        -0x638b6d023325cf1cL
        0x4369cc2f428ad495L    # 5.8091022157522088E16
        -0x474eb18a49e1ef5eL    # -1.301995119591665E-35
        -0x748d5dc4628209f9L    # -1.588485574080036E-253
    .end array-data
.end method
