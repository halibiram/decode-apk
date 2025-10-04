.class final enum Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InternalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum CONFIGURED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum PENDING_RELEASE:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum PENDING_START:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum PENDING_START_PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum RELEASED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum STARTED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

.field public static final enum STOPPING:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;


# direct methods
.method private static synthetic $values()[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 4
    .line 5
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->CONFIGURED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->STARTED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->STOPPING:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START_PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_RELEASE:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->RELEASED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 2
    .line 3
    const-string v1, "CONFIGURED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->CONFIGURED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 10
    .line 11
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 12
    .line 13
    const-string v1, "STARTED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->STARTED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 20
    .line 21
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 22
    .line 23
    const-string v1, "PAUSED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 30
    .line 31
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 32
    .line 33
    const-string v1, "STOPPING"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->STOPPING:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 40
    .line 41
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 42
    .line 43
    const-string v1, "PENDING_START"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 50
    .line 51
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 52
    .line 53
    const-string v1, "PENDING_START_PAUSED"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_START_PAUSED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 60
    .line 61
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 62
    .line 63
    const-string v1, "PENDING_RELEASE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->PENDING_RELEASE:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 70
    .line 71
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 72
    .line 73
    const-string v1, "ERROR"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->ERROR:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 80
    .line 81
    new-instance v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 82
    .line 83
    const-string v1, "RELEASED"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->RELEASED:Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 91
    .line 92
    invoke-static {}, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->$values()[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->$VALUES:[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 97
    .line 98
    return-void
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

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;
    .locals 1

    .line 1
    const-class v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->$VALUES:[Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/camera/video/internal/encoder/EncoderImpl$InternalState;

    .line 8
    .line 9
    return-object v0
.end method
