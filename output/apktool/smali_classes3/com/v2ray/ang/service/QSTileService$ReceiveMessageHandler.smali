.class final Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/v2ray/ang/service/QSTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiveMessageHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;",
        "Landroid/content/BroadcastReceiver;",
        "context",
        "Lcom/v2ray/ang/service/QSTileService;",
        "<init>",
        "(Lcom/v2ray/ang/service/QSTileService;)V",
        "mReference",
        "Ljava/lang/ref/SoftReference;",
        "getMReference",
        "()Ljava/lang/ref/SoftReference;",
        "setMReference",
        "(Ljava/lang/ref/SoftReference;)V",
        "onReceive",
        "",
        "ctx",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "com.fbd.tunnel-404_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/QSTileService;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/v2ray/ang/service/QSTileService;)V
    .locals 2
    .param p1    # Lcom/v2ray/ang/service/QSTileService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;->mReference:Ljava/lang/ref/SoftReference;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x712143faefaead19L
        0x664eea541993eba9L    # 6.568125878284007E184
    .end array-data
.end method


# virtual methods
.method public final getMReference()Ljava/lang/ref/SoftReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/QSTileService;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;->mReference:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x2

    .line 2
    iget-object v0, p0, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;->mReference:Ljava/lang/ref/SoftReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/v2ray/ang/service/QSTileService;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, p1, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    :goto_0
    if-nez p2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0xb

    .line 45
    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    .line 48
    if-eqz v0, :cond_a

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v3, 0xc

    .line 63
    .line 64
    if-ne v2, v3, :cond_4

    .line 65
    .line 66
    if-eqz v0, :cond_a

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_4
    :goto_2
    if-nez p2, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/16 v3, 0x1f

    .line 80
    .line 81
    if-ne v2, v3, :cond_6

    .line 82
    .line 83
    if-eqz v0, :cond_a

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    :goto_3
    if-nez p2, :cond_7

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/16 v2, 0x20

    .line 97
    .line 98
    if-ne p1, v2, :cond_8

    .line 99
    .line 100
    if-eqz v0, :cond_a

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    :goto_4
    if-nez p2, :cond_9

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/16 p2, 0x29

    .line 114
    .line 115
    if-ne p1, p2, :cond_a

    .line 116
    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/v2ray/ang/service/QSTileService;->setState(I)V

    .line 120
    .line 121
    .line 122
    :cond_a
    :goto_5
    return-void

    .line 123
    :array_0
    .array-data 8
        0x2ff936392d2f03c2L    # 1.3608340016033157E-77
        -0xed9b5e7ad1dfe8cL    # -1.1339284155770535E237
    .end array-data
.end method

.method public final setMReference(Ljava/lang/ref/SoftReference;)V
    .locals 2
    .param p1    # Ljava/lang/ref/SoftReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/v2ray/ang/service/QSTileService;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/v2ray/ang/service/QSTileService$ReceiveMessageHandler;->mReference:Ljava/lang/ref/SoftReference;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x74f81f457e2e9ccfL
        0x620bb4fcf4a8cd23L    # 1.994421377783641E164
    .end array-data
.end method
