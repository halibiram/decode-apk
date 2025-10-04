.class public final Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/v2ray/ang/service/V2RayVpnService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
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
.field final synthetic this$0:Lcom/v2ray/ang/service/V2RayVpnService;


# direct methods
.method public constructor <init>(Lcom/v2ray/ang/service/V2RayVpnService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;->this$0:Lcom/v2ray/ang/service/V2RayVpnService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

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
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v0, v1, [J

    .line 22
    .line 23
    fill-array-data v0, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget-object p1, p0, Lcom/v2ray/ang/service/V2RayVpnService$broadcastReceiver$1;->this$0:Lcom/v2ray/ang/service/V2RayVpnService;

    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    const/4 v0, 0x0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {p1, v1, p2, v0}, Lcom/v2ray/ang/service/V2RayVpnService;->stopV2Ray$default(Lcom/v2ray/ang/service/V2RayVpnService;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x2c33baab8bbf1b65L    # -4.717664440523192E95
        0x737a3cc8d6ae0e7bL    # 1.8345007579251235E248
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    :array_1
    .array-data 8
        -0x7fab25859932dc8fL    # -4.640042239756132E-307
        -0x569430d9e41d97adL    # -3.70032348066627E-109
    .end array-data

    :array_2
    .array-data 8
        0x69922c25f9367008L    # 3.47752866085934E200
        -0x53d727fb2efa562fL    # -5.815537050564175E-96
        -0x448db20db7a8a8c9L    # -2.422577516911081E-22
    .end array-data
.end method
