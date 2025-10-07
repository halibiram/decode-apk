.class public final Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "p1",
        "Landroid/content/ComponentName;",
        "p2",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/activities/MainBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 37
    .line 38
    check-cast p2, Lcom/tknetwork/tunnel/service/TunnelVPN$MyBinder;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/TunnelVPN$MyBinder;->getService()Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/tknetwork/tunnel/service/TunnelVPN;->setInjectorListener(Lcom/tknetwork/tunnel/service/TunnelVPN$InjectorListener;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 8
        0x6a3fcacc29c7fb99L    # 6.2298467660865565E203
        -0x5e73d0cbf386a108L    # -4.408397395614857E-147
    .end array-data

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
        0x517c17ef71c01cd1L    # 3.411022714699705E84
        0x6ce12cbaf704579cL    # 2.96030708058818E216
    .end array-data
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

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
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mInjectorConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->mInjector:Lcom/tknetwork/tunnel/service/TunnelVPN;

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x2f7dc81172b9b1f2L    # 6.279252784521851E-80
        0x5a65b5a299f3714bL    # 2.939126316750052E127
    .end array-data
.end method
