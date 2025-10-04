.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

.field public static final enum INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

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
    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

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
    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x2d674cabbf7ccfd1L    # 5.7189700960517095E-90
        0x52e9df6e962d5e39L    # 2.6351893023580407E91
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

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 8
    .line 9
    return-object v0
.end method
