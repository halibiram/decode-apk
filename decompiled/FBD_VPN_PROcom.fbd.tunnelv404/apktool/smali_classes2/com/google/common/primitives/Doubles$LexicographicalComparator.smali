.class final enum Lcom/google/common/primitives/Doubles$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Doubles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Doubles$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[D>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Doubles$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;


# direct methods
.method private static synthetic $values()[Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

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
    new-instance v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;

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
    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Doubles$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->$values()[Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        -0x1ade917e3b23759fL    # -1.4127534408396322E179
        -0x46e41b010aba9b75L    # -1.3430720600010113E-33
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/primitives/Doubles$LexicographicalComparator;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->compare([D[D)I

    move-result p1

    return p1
.end method

.method public compare([D[D)I
    .locals 6

    .line 2
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
        0x62b5be3fa662b924L    # 3.2053853129000203E167
        -0x2c0ff91646fe3511L    # -2.139592024695548E96
        0x55ea40a64be5ff4dL    # 7.526269797902496E105
        0x129aff73842e1ebdL    # 4.780050096077258E-219
        -0x78518abfc8e1ca21L
        0x63ca18712465585fL    # 5.042347388861224E172
    .end array-data
.end method
