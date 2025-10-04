.class final Lcom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lcom/google/common/base/CharMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Character;

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public matches(C)Z
    .locals 3

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x85

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2007

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x205f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2029

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x200a

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
        -0x72eccaf9c561e166L
        0x5fea271981b1a5ecL
        -0x30de794773f67faaL    # -1.5483104744759336E73
        0x19e8e15ed386dc7fL    # 7.319294114900286E-184
        -0x3f4f094c8c5a085cL    # -4342.700983403167
    .end array-data
.end method
