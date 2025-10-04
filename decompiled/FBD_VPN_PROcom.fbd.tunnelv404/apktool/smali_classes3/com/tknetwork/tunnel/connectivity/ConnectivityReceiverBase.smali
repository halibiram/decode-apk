.class public Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _refHandle:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field private manager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x658e60a785f788c2L    # 1.575651780102233E181
        -0x2236a7e590ee08eeL    # -6.181099529347374E143
        0x7791262267f162fdL    # 8.847366308978467E267
        -0x62615dc278c58bb9L
        -0x7bb526d494b134bcL    # -5.509995623037978E-288
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->manager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->context:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method private registerFor20AndDown()V
    .locals 0

    return-void
.end method

.method private registerFor21AndUp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->getManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xf

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;-><init>(Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->_refHandle:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private unregisterFor20AndDown()V
    .locals 0

    return-void
.end method

.method private unregisterFor21AndUp()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->getManager()Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->_refHandle:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getManager()Landroid/net/ConnectivityManager;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->manager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->manager:Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->manager:Landroid/net/ConnectivityManager;

    .line 31
    .line 32
    return-object v0

    .line 33
    :array_0
    .array-data 8
        -0x5142bd77fc69cff9L    # -1.506169580734443E-83
        -0x3828a332eebbb734L    # -1.2421637790407507E38
        0x24909a74969eb7c0L    # 1.461966486237326E-132
    .end array-data
.end method

.method public onAvailable(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onLosing(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onLost(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public register()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->registerFor21AndUp()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->registerFor20AndDown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public unregister()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->unregisterFor21AndUp()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->unregisterFor20AndDown()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
