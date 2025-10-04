.class public final Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;
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
        "com/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "className",
        "Landroid/content/ComponentName;",
        "service",
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
    iput-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

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
    const/4 v1, 0x3

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
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 38
    .line 39
    check-cast p2, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/tknetwork/tunnel/service/c_05$LocalBinder;->getService()Lcom/tknetwork/tunnel/service/c_05;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p1, p2}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setOpenVPNService$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/tknetwork/tunnel/service/c_05;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array p2, v1, [J

    .line 51
    .line 52
    fill-array-data p2, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getOpenVPNService()Lcom/tknetwork/tunnel/service/c_05;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->getOpenVPNService()Lcom/tknetwork/tunnel/service/c_05;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/tknetwork/tunnel/service/c_05;->client_attach(Lcom/tknetwork/tunnel/service/c_05$EventReceiver;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->post_bind()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        0x4b57f264fc45cdc3L    # 9.17461151926689E54
        -0x682456203bc7b31aL    # -9.473948873414727E-194
        0xf0a8626fea3ec7bL    # 3.258614337495576E-236
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
    :array_1
    .array-data 8
        0x45387c6d5cf5b4daL    # 2.960181050818984E25
        0x606d74a2c1c8fb18L    # 3.159481127066076E156
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_2
    .array-data 8
        0x30533222c947bda1L    # 6.63114153047994E-76
        -0x2af40ec36215493fL    # -4.889350731782632E101
        0x36761dc3b1895b07L    # 2.4212102654921614E-46
    .end array-data
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/tknetwork/tunnel/activities/MainBaseActivity$mConnection$1;->this$0:Lcom/tknetwork/tunnel/activities/MainBaseActivity;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->access$setOpenVPNService$p(Lcom/tknetwork/tunnel/activities/MainBaseActivity;Lcom/tknetwork/tunnel/service/c_05;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 8
        0x799a6fd25293c74cL
        -0x220d83c311a35862L    # -3.6066545786300095E144
        0x7da4a7d7b136fe48L    # 1.688590289190226E297
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
    .line 66
    .line 67
    .line 68
    .line 69
    :array_1
    .array-data 8
        -0x3ffe963336f483dfL    # -2.1766601282720477
        -0x69f6f64a172402L
        0x3c4dd95e7ac9b639L    # 3.2362456784386576E-18
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
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
    :array_2
    .array-data 8
        0x6092de553340e481L    # 1.6191043649660526E157
        -0x740fbad3917f63e5L
        -0x3451e7fa22cad50aL    # -3.6894939847220885E56
        -0x619fc2e97cbec677L    # -2.255909079994243E-162
        -0x702933a8cd4f2723L    # -2.294478649024849E-232
    .end array-data
.end method
