.class public final enum Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_05$EventMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

.field public static final enum NO_CHANGE:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

.field public static final enum TO_CONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

.field public static final enum TO_DISCONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;


# direct methods
.method private static synthetic $values()[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 3
    .line 4
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->NO_CHANGE:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_CONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_DISCONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

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
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

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
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->NO_CHANGE:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 23
    .line 24
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v0, v1, v3}, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_CONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 45
    .line 46
    new-instance v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 47
    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v2, v2, [J

    .line 51
    .line 52
    fill-array-data v2, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->TO_DISCONNECTED:Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 67
    .line 68
    invoke-static {}, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->$values()[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->$VALUES:[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 73
    .line 74
    return-void

    .line 75
    :array_0
    .array-data 8
        0x134ec898a68b78c9L    # 1.116226251923621E-215
        -0x61346d62aed160d2L    # -2.4514995599299903E-160
        -0x5846ee908b8a9910L
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 8
        0x6ee092aa8914b524L    # 1.226890080416447E226
        0x4a0aea941436a4fcL    # 4.917281085263238E48
        -0x537c338084501a0bL    # -2.9661333939698836E-94
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_2
    .array-data 8
        0x5c11e96af5dd2984L    # 3.254745346047204E135
        0x17ab8e853bd8464fL
        0x105960999cfc9709L
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

.method public static valueOf(Ljava/lang/String;)Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;
    .locals 1

    .line 1
    const-class v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->$VALUES:[Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/tknetwork/tunnel/service/c_05$EventMsg$Transition;

    .line 8
    .line 9
    return-object v0
.end method
