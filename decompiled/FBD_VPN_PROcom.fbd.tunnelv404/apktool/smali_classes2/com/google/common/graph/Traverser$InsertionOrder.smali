.class abstract enum Lcom/google/common/graph/Traverser$InsertionOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "InsertionOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/Traverser$InsertionOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/graph/Traverser$InsertionOrder;

.field public static final enum BACK:Lcom/google/common/graph/Traverser$InsertionOrder;

.field public static final enum FRONT:Lcom/google/common/graph/Traverser$InsertionOrder;


# direct methods
.method private static synthetic $values()[Lcom/google/common/graph/Traverser$InsertionOrder;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/graph/Traverser$InsertionOrder;->FRONT:Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/graph/Traverser$InsertionOrder;->BACK:Lcom/google/common/graph/Traverser$InsertionOrder;

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
    new-instance v0, Lcom/google/common/graph/Traverser$InsertionOrder$1;

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
    invoke-direct {v0, v1, v3}, Lcom/google/common/graph/Traverser$InsertionOrder$1;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->FRONT:Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 23
    .line 24
    new-instance v0, Lcom/google/common/graph/Traverser$InsertionOrder$2;

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
    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/Traverser$InsertionOrder$2;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->BACK:Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/common/graph/Traverser$InsertionOrder;->$values()[Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->$VALUES:[Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        -0x137d143a68c34e6dL    # -5.095779629788476E214
        -0x6c7a01415b7038e9L
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
        -0x41558b86b7bb5b6dL    # -7.884197122154578E-7
        -0x5b6ca803e98c17b3L    # -1.703261174754084E-132
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

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/graph/Traverser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/Traverser$InsertionOrder;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/Traverser$InsertionOrder;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/Traverser$InsertionOrder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/graph/Traverser$InsertionOrder;->$VALUES:[Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/graph/Traverser$InsertionOrder;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/graph/Traverser$InsertionOrder;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract insertInto(Ljava/util/Deque;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
