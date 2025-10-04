.class Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;
.super Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/reflect/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordNotSupportedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;-><init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/gson/internal/reflect/ReflectionHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordNotSupportedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :array_0
    .array-data 8
        -0x28f4f59777c244b9L    # -2.0321963419638396E111
        0x365f3bfdcca2b022L    # 8.548561458446657E-47
        0xf20c82349ee0017L    # 8.24691742840791E-236
        0xaae4c27ac2b78bfL
        0x5a5ea8b4d6c12be2L    # 2.0753736857019102E127
        -0x209e8ad70fbee0b4L    # -2.857286346521627E151
        -0xa02a8268b804241L
        0x100cec971ec4f2f2L
        -0x64e26e6073842978L
        0x63cc5cb12d213094L    # 5.480315828850483E172
    .end array-data
.end method

.method public getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :array_0
    .array-data 8
        -0x4975ad3194077802L    # -5.763598003310252E-46
        -0x173e4d572a1c02d5L    # -4.134172997994544E196
        0x7504224705da56f9L    # 4.723611397584385E255
        0x5ffbefde679030bfL    # 2.3410860053257595E154
        0x1161062b4d378c70L    # 5.749066923789534E-225
        0x374fe8764cd20ae8L    # 2.8616133525501315E-42
        0x4b7c5bbb333c2b50L    # 4.3459006911441507E55
        0x14ae6a076009b807L
        -0xdeeafc274ce1417L    # -2.8861565421726965E241
        -0x72e65ef48b197aa3L
    .end array-data
.end method

.method public getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :array_0
    .array-data 8
        -0x4febd79d5105785cL    # -4.352144417559037E-77
        -0x1696d323fec8f621L    # -6.021998238094919E199
        0x187082b6cf1a0377L    # 5.79009467171802E-191
        -0x649f84487fc0a8c5L    # -8.135343474396633E-177
        -0x3b03c4b2f9bd48deL    # -2.1331227138823044E24
        0xbbb4b17d215c5aaL
        0xbdda6171d00e0feL
        -0x426ef4ab234ebec5L    # -3.875416869635376E-12
        -0x3ee7adfd6cd97c1dL    # -398464.64370161126
        -0x613551bdd0277de6L
    .end array-data
.end method

.method public isRecord(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
