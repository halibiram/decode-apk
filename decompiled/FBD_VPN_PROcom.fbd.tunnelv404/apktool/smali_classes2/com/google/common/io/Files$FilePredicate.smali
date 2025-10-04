.class abstract enum Lcom/google/common/io/Files$FilePredicate;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "FilePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/io/Files$FilePredicate;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

.field public static final enum IS_FILE:Lcom/google/common/io/Files$FilePredicate;


# direct methods
.method private static synthetic $values()[Lcom/google/common/io/Files$FilePredicate;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/google/common/io/Files$FilePredicate;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/io/Files$FilePredicate$1;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-direct {v0, v1, v2}, Lcom/google/common/io/Files$FilePredicate$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_DIRECTORY:Lcom/google/common/io/Files$FilePredicate;

    .line 23
    .line 24
    new-instance v0, Lcom/google/common/io/Files$FilePredicate$2;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/google/common/io/Files$FilePredicate$2;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->IS_FILE:Lcom/google/common/io/Files$FilePredicate;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/common/io/Files$FilePredicate;->$values()[Lcom/google/common/io/Files$FilePredicate;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x34c2b4d8e235c942L    # 1.5258147481330352E-54
        0x62ae1879d08291f3L    # 2.2183534481072832E167
        -0xa1bd32d974bbb6dL    # -7.754997481659383E259
    .end array-data

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
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        -0x6ac571e7c1860e73L
        0x264199275ba6ab0aL    # 2.079799408594195E-124
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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/io/Files$FilePredicate;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/io/Files$FilePredicate;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/io/Files$FilePredicate;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/io/Files$FilePredicate;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/io/Files$FilePredicate;->$VALUES:[Lcom/google/common/io/Files$FilePredicate;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/io/Files$FilePredicate;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/io/Files$FilePredicate;

    .line 8
    .line 9
    return-object v0
.end method
