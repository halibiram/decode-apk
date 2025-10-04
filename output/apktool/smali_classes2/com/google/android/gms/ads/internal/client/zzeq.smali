.class public final Lcom/google/android/gms/ads/internal/client/zzeq;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x7721591d2bf31434L    # -5.941296444061329E-266
        0x5dc7737746467598L
        0x5dcc901e9812e50cL    # 6.966125022496988E143
        -0x27327d73a2ea33b5L    # -5.953287174899959E119
        0x90b7548e84ab85cL
        -0x3d4badd1c9c2a2cbL    # -2.2343195180381207E13
        -0x13fd1f0658604c87L    # -1.9861020651863177E212
        -0x3bc74ea9062a2c91L    # -4.555005334585102E20
        -0x4245b41d80f5d77aL    # -2.3916459038885636E-11
    .end array-data
.end method


# virtual methods
.method public final synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzcp;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzcp;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzcp;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzcp;-><init>(Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    move-object p1, v0

    .line 39
    :goto_0
    return-object p1

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x121989fea96d418fL
        -0x17678ff9a66b1537L    # -7.135685418121185E195
        0x3457e438d9230ce9L    # 1.5224537336949484E-56
        -0x4c9381dfb7172bedL    # -5.540949491796696E-61
        0x1d6c8840aadea624L    # 6.048229109960641E-167
        0x5dfe274af33225cfL    # 5.883225347838727E144
        -0x68d9b3f5d909601bL
        -0x10ed401d78bdbf3L
        -0x5f645ae9dd55e930L
        0x43575d64ba842509L    # 2.630644668672106E16
        0x73cf4970d6cf6d3aL    # 7.0001710471966165E249
    .end array-data
.end method

.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzcp;

    .line 11
    .line 12
    const v2, 0xe52bf80

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzcp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    new-array v2, v2, [J

    .line 27
    .line 28
    fill-array-data v2, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    instance-of v2, v1, Lcom/google/android/gms/ads/internal/client/zzco;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzco;

    .line 47
    .line 48
    :goto_0
    move-object v0, v1

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzcm;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/client/zzcm;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    return-object v0

    .line 61
    :goto_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    const/4 v2, 0x7

    .line 64
    new-array v2, v2, [J

    .line 65
    .line 66
    fill-array-data v2, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0x242b1d9d435e03f9L
        -0x2f1f4b450496f79aL    # -3.961692383776989E81
        -0x7c259cc72fe20bd5L    # -4.230813140047963E-290
        -0x6b28c3fd128550f7L
        -0x2bf9c7f0a2bb433fL    # -5.93243283968229E96
        0x5fe7b7af7610a6c0L    # 9.937498973504222E153
        0x1aa1b205339fd867L
        0x3f787324c4420c86L    # 0.0059691845127672945
        0x3a42e7852c20203cL    # 4.772135361747412E-28
        -0x336f16361a97429fL    # -6.794630972794648E60
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
        -0x1cbe937edd5bf463L    # -1.3151387603738897E170
        0x49e44a75c9398e21L    # 9.267226493750544E47
        0x2ba8251e2f789a5cL    # 2.2077936991485574E-98
        0x210a5dd0e0bcbf92L
        0x64deafd13107e510L    # 7.771929642789431E177
        -0x52c35eb0a52367edL    # -8.784245050998392E-91
        -0x31a7aa61b4e53936L    # -2.6242215316875566E69
    .end array-data
.end method
