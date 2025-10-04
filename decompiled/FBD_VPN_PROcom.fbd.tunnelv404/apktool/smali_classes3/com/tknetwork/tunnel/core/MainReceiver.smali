.class public Lcom/tknetwork/tunnel/core/MainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_SERVICE_RESTART:Ljava/lang/String;

.field public static final ACTION_SERVICE_STOP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/core/MainReceiver;->ACTION_SERVICE_RESTART:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/core/MainReceiver;->ACTION_SERVICE_STOP:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x6ce2b8ab392f6830L    # 3.226891447871305E216
        -0x56aed26c128d815fL
        -0x1a26b5bb629ab003L    # -4.197668120901512E182
        0x705b090cfa556153L    # 1.6789150658415866E233
    .end array-data

    :array_1
    .array-data 8
        -0x4372ed6e7e7b8880L    # -5.043280505756456E-17
        -0x29e60e979ed0a42aL    # -5.950023220191416E106
        -0x7b913be354d5b0bL
        -0x5b65087180b57769L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, -0x7f86e239

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const v2, 0x7371d1dc

    .line 20
    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v0, v0, [J

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_0
    const/4 p2, -0x1

    .line 70
    :goto_1
    if-eqz p2, :cond_5

    .line 71
    .line 72
    if-eq p2, v3, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 76
    .line 77
    sget-object v0, Lcom/tknetwork/tunnel/service/c_06;->TUNNEL_SSH_RESTART_SERVICE:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-static {p1}, Lcom/tknetwork/tunnel/service/c_09;->stopSocksHttp(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0x49d6f36698925d5cL    # 5.24103261648017E47
        0x38d6813a249664abL    # 6.772289934281679E-35
        0x4973d955eea54e7eL    # 7.082348256560737E45
        0x3011cb9e211cf390L    # 3.842097877665513E-77
    .end array-data

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
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x569237dcafcdc40eL    # 1.0696561174165692E109
        -0x4f14ecc937424bb1L    # -4.788730592024835E-73
        0x2f1a749b215643d2L    # 8.715594824901438E-82
        -0xdecb858bc38a0c1L    # -3.2139656210949174E241
    .end array-data
.end method
