.class public Lcom/google/android/gms/common/BlockingServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field zza:Z

.field private final zzb:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/IBinder;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        0x585959fc9137c6e7L    # 3.995601435424197E117
        -0xb401c2b147eb3afL
        0x4bf3d5e36592b54eL    # 7.781841128694035E57
        0x1aa404e7f8399371L    # 2.412229119678829E-180
        0x44662df8ae4f3d6fL    # 3.27312767042318E21
        -0x1049d57a8dcf632L
        -0x23e0a295c91cb8ebL    # -5.6993063308317406E135
        -0x443443b819372e67L    # -1.1746429350817538E-20
        -0x6157e23059c57e1L
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
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        0x68fff056498c9084L    # 5.968648368778212E197
        -0x68ef4023efca4480L
        -0x7a057a3d72239fc8L    # -7.305643870936388E-280
        -0x7d2794e064f302afL    # -5.973960806042376E-295
        0x7f9e599b75b7f7f2L    # 5.32812867769453E306
        0x6779bbf178dd23b8L    # 2.866468417416156E190
        0x62b45494387b69aL
        0x101cd6397d0b4285L    # 4.643555338773044E-231
    .end array-data
.end method

.method public getServiceWithTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;
    .locals 2
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zza:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 28
    .line 29
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/os/IBinder;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 39
    .line 40
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 p3, 0x7

    .line 43
    new-array p3, p3, [J

    .line 44
    .line 45
    fill-array-data p3, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/16 p3, 0x8

    .line 64
    .line 65
    new-array p3, p3, [J

    .line 66
    .line 67
    fill-array-data p3, :array_2

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :array_0
    .array-data 8
        0x66ab4235fa096791L    # 3.706392902466357E186
        0x64b02da4f309f7a6L
        0x31e52299773ce8ddL    # 2.4498326237896754E-68
        0x3ac38897ae242f25L    # 1.2623270166175387E-25
        0x3c0444cde2c7f136L    # 1.373465046729264E-19
        0x164cc9db2b28b3fbL
        0x10f35da1d359cbd9L    # 5.10925537632603E-227
        -0xd9ffeb5b528164eL    # -8.537746943573525E242
        -0x3c9a41ba0eaa71a5L    # -4.8961456974885592E16
        0x8c6528b0b9bb0dfL
    .end array-data

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
    :array_1
    .array-data 8
        -0x7ce5600b62d24e23L
        -0x39c1dbc27d911b4dL    # -2.3880606962097592E30
        0x658ed46ad687b511L    # 1.5991068658062641E181
        0x2e7063c3926e69bdL    # 5.272933735466324E-85
        -0x5861c860775dcdf8L    # -7.489227944454338E-118
        -0x3d4b6443d60998dbL    # -2.2659109353063145E13
        -0x70748b89a454d129L    # -8.634828859198852E-234
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        -0x58fe7ec54fa312ebL    # -8.473619226573357E-121
        -0x6fd766714f3d196aL    # -7.922559374940427E-231
        0x57ac0f593f2c8e36L    # 2.1594112155483517E114
        0x608e2b98ff9a9139L    # 1.2944564227761632E157
        -0x74049a8c62698060L    # -5.97881981659019E-251
        -0x7c7aba16b01af210L
        -0x6ece945c1b9912aeL    # -7.353652739103867E-226
        0x33afe2ab4eb82befL    # 9.921174795409163E-60
    .end array-data
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
