.class Lcom/tknetwork/tunnel/service/c_04$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/service/c_04;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tknetwork/tunnel/service/c_04;


# direct methods
.method public constructor <init>(Lcom/tknetwork/tunnel/service/c_04;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/service/c_04$2;->this$0:Lcom/tknetwork/tunnel/service/c_04;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p1, 0x5

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

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
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array p1, p1, [J

    .line 31
    .line 32
    fill-array-data p1, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04$2;->this$0:Lcom/tknetwork/tunnel/service/c_04;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_04;->stopAll()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array p1, p1, [J

    .line 60
    .line 61
    fill-array-data p1, :array_2

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/tknetwork/tunnel/service/c_04$2;->this$0:Lcom/tknetwork/tunnel/service/c_04;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/tknetwork/tunnel/service/c_04;->stopAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p1

    .line 86
    nop

    .line 87
    :array_0
    .array-data 8
        0x15e4b8a043ee0a46L    # 3.304515115545891E-203
        0x3dbc10747fb896ceL    # 2.552431181566056E-11
        -0xe4a0753f1b62670L    # -5.72286906379794E239
        -0x5b6abbcc93083803L    # -1.872561511752214E-132
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
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
        0x14e30d84a5a32ea0L    # 4.636304312014887E-208
        -0x513281c159793c15L    # -3.0363530901943772E-83
        0x1ae1be07a4a55ebfL
        0x3588a3de97b7d816L    # 8.232153809688797E-51
        0x20673b9230e9714eL
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
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_2
    .array-data 8
        -0x618120e1a04535d2L
        -0x7a2f6a3b7f439ecL
        0x299d9edf40878100L
        -0x9d6961c1750e5aaL
        0x32a67d69e9171980L
    .end array-data
.end method
