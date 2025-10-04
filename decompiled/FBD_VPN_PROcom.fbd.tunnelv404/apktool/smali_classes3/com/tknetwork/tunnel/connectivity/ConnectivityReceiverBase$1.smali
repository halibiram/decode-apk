.class Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->registerFor21AndUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;->this$0:Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;->this$0:Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->onAvailable(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        0x51eed0decf02752cL    # 4.789207192623595E86
        0x252f7ba5e29d485bL    # 1.419345046049931E-129
        -0x116cf4dea01a23d2L    # -4.405579588509164E224
        -0x3c61678332e1ef85L    # -5.5116230950309856E17
        -0x1a0b0f82d0c9e0a1L    # -1.3902145355697832E183
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_1
    .array-data 8
        -0x4ef3f80cb3feb386L    # -1.983126944373756E-72
        -0x559a43a8a306857eL
        -0x4e0033896ebfc703L    # -7.371742187430071E-68
    .end array-data
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    fill-array-data v0, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;->this$0:Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->onLosing(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        0x76464c60dc4b1a1cL    # 5.485535566524203E261
        0x7b05a7e90b153c23L    # 4.025336129344934E284
        -0x6da8875e854d72bbL    # -2.597279785259371E-220
        -0x49d56d5d1ded493bL    # -9.090923068469542E-48
        0x633f48ba1d5aeb08L    # 1.1806497971872508E170
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :array_1
    .array-data 8
        -0x74a442bc503345b1L    # -5.911795273966964E-254
        0x606bc19786f6dca2L    # 2.9772003583087865E156
    .end array-data
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    fill-array-data v1, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase$1;->this$0:Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/tknetwork/tunnel/connectivity/ConnectivityReceiverBase;->onLost(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x72f2588de906778L    # -9.117233805046743E273
        0x4a26e370f7fd7882L    # 1.672574810635268E49
        -0x3ea33c50debe950L    # -5.310653916386297E289
        0x6d4c89bb87744b14L
        -0x6dbe14c388e3fbe2L    # -9.914351765133493E-221
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_1
    .array-data 8
        -0x68c5a942beeb5a7eL    # -8.808850633705304E-197
        -0x1c37879df744f8daL    # -4.728309170366557E172
    .end array-data
.end method
