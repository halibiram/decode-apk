.class final enum Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum CANCELLED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

.field public static final enum STARTED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;


# direct methods
.method private static synthetic $values()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->STARTED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

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
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 23
    .line 24
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [J

    .line 30
    .line 31
    fill-array-data v3, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->CANCELLED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 46
    .line 47
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v3, v2, [J

    .line 52
    .line 53
    fill-array-data v3, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->STARTED:Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->$values()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->$VALUES:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 8
        0x15e97adb69ec4014L    # 4.06341176277422E-203
        -0x11204ccec0809be4L    # -1.1733717271048747E226
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x16c4d3e586bb89fcL    # 5.441951000860321E-199
        0x725f8f67605a4585L    # 8.417747068850865E242
        -0x1135dbcaf01aa85eL    # -4.838115009480877E225
    .end array-data

    :array_2
    .array-data 8
        -0x6f0b745cd9a36e91L    # -5.420497015974462E-227
        0x16359ab22bccd5a7L
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->$VALUES:[Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    .line 8
    .line 9
    return-object v0
.end method
