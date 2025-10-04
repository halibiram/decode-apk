.class public final Lcom/google/android/gms/ads/ResponseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzdn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/util/List;

.field private zzc:Lcom/google/android/gms/ads/AdapterResponseInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/zzdn;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/internal/client/zzdn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzb:Ljava/util/List;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdn;->zzj()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza(Lcom/google/android/gms/ads/internal/client/zzu;)Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzb:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v2, v0, [J

    .line 56
    .line 57
    fill-array-data v2, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdn;->zzf()Lcom/google/android/gms/ads/internal/client/zzu;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-static {p1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zza(Lcom/google/android/gms/ads/internal/client/zzu;)Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzc:Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 86
    .line 87
    :cond_4
    :goto_2
    return-void

    .line 88
    :catch_1
    move-exception p1

    .line 89
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_1

    .line 94
    .line 95
    .line 96
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :array_0
    .array-data 8
        0x5e20e5432636943cL    # 2.6371838516594786E145
        0x198af80743f46fdeL
        0x1d02bd02bf3477eaL    # 6.206448639047992E-169
        0x7d80e04b44c7dee9L    # 3.449046780274718E296
        -0x60c3300d625051f8L
        0x34079d7ffd1eccf5L    # 4.702654823608385E-58
        0x1130e4e0cd2166cL
        -0x20851e0f557312ecL    # -8.799718005968867E151
        -0x7803b29a61c99cc2L
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
    :array_1
    .array-data 8
        0x5f7b49b24e073972L    # 8.932388016763024E151
        -0x5f77eeecb1e32400L    # -5.743924960411181E-152
        -0x2a2074960d7e8205L    # -4.521716431554768E105
        0x70bcc72b2dd5ae5cL    # 1.1437662646305682E235
        0x27df2d631cad9675L
        -0x1ffad1cda484dd8L
        -0xdf1a68deb221996L
        -0x2c7b2a398de11365L    # -2.1730183857975085E94
        -0x5432dd8651a3f37L
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1
    .param p0    # Lcom/google/android/gms/ads/internal/client/zzdn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/ads/ResponseInfo;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/ResponseInfo;-><init>(Lcom/google/android/gms/ads/internal/client/zzdn;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1
    .param p0    # Lcom/google/android/gms/ads/internal/client/zzdn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/ResponseInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/ResponseInfo;-><init>(Lcom/google/android/gms/ads/internal/client/zzdn;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAdapterResponses()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdapterResponseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public getLoadedAdapterResponseInfo()Lcom/google/android/gms/ads/AdapterResponseInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzc:Lcom/google/android/gms/ads/AdapterResponseInfo;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdn;->zzg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v2, 0x9

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        0x5a6ce3bccab5710eL    # 3.9111971175093416E127
        -0x36754ef7ecd55d4bL    # -1.9047711920235572E46
        -0x2bad8e1fd2fc963L
        -0x6e47e250a87cc114L    # -2.606079874490195E-223
        0x9e2a8035d7e8615L
        0x4e3a0c94341ab7eeL    # 7.022833282430531E68
        -0x304a5f7d5d7e733eL    # -9.782166958792769E75
        -0x56e879e636d08c51L    # -9.781594484022614E-111
        0x65c7e2e6cc48db8L
    .end array-data
.end method

.method public getResponseExtras()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdn;->zze()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0xfee7c014b9dd9afL    # -6.798323505888265E231
        -0x4bd00156b731b202L    # -2.5485305100721852E-57
        0x487eb3b077084e91L    # 1.6715710523817023E41
        0x215b434d40b3caa0L    # 5.330330691129016E-148
        0x2c9840844756d862L    # 7.26656647388506E-94
        0x4c2be35be81c9895L    # 8.752828678577617E58
        -0x3e2c22b478d5941dL    # -1.333079580662835E9
        -0x382e4268ac2a244cL    # -9.432515728232082E37
    .end array-data
.end method

.method public getResponseId()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdn;->zzi()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    new-array v2, v2, [J

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
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :array_0
    .array-data 8
        -0x4b38c752d63f7536L
        0x1f1d03183a56b307L    # 8.254319797354073E-159
        -0x37e62be0b1027837L    # -2.197254517861794E39
        0xd418e5ad25c9379L    # 8.03490821436693E-245
        0x4f107c129d884a83L    # 7.281467863148218E72
        -0x74a240927cb0138aL
        0x46fbadad0d5e4d5dL    # 8.982161415706034E33
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zzd()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 27
    :array_0
    .array-data 8
        -0x5049de616a011cc5L    # -7.466010248708903E-79
        -0x54e57932b9ae06beL    # -4.737427304751872E-101
        0x3dd6c71a6c8369c8L    # 8.286496066435314E-11
        -0x1db34a0f9364bd5dL    # -3.3066742663395813E165
        0x62870ac76b0a26d9L    # 4.24609569772664E166
    .end array-data
.end method

.method public final zzc()Lcom/google/android/gms/ads/internal/client/zzdn;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/ResponseInfo;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    return-object v0
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v6, v3, [J

    .line 19
    .line 20
    fill-array-data v6, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v7, v2, [J

    .line 33
    .line 34
    fill-array-data v7, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v7, v3, [J

    .line 51
    .line 52
    fill-array-data v7, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    fill-array-data v1, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    new-array v2, v2, [J

    .line 88
    .line 89
    fill-array-data v2, :array_4

    .line 90
    .line 91
    .line 92
    invoke-direct {v5, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v1, v1, [J

    .line 106
    .line 107
    fill-array-data v1, :array_5

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    :goto_1
    new-instance v1, Lorg/json/JSONArray;

    .line 121
    .line 122
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzb:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_2

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb()Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v5, v0, [J

    .line 154
    .line 155
    fill-array-data v5, :array_6

    .line 156
    .line 157
    .line 158
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/google/android/gms/ads/ResponseInfo;->zzc:Lcom/google/android/gms/ads/AdapterResponseInfo;

    .line 169
    .line 170
    if-eqz v1, :cond_3

    .line 171
    .line 172
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v0, v0, [J

    .line 175
    .line 176
    fill-array-data v0, :array_7

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdapterResponseInfo;->zzb()Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseExtras()Landroid/os/Bundle;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzh(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v2, v3, [J

    .line 210
    .line 211
    fill-array-data v2, :array_8

    .line 212
    .line 213
    .line 214
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    :cond_4
    return-object v4

    .line 225
    :array_0
    .array-data 8
        -0x11e3a58a77fc2fceL    # -2.5622487294945254E222
        0x70041e2808fba158L    # 3.904155746631896E231
        -0xc76cc39863236f8L
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :array_1
    .array-data 8
        -0x3b07da565726169dL    # -1.8245048060861384E24
        0x43e0050482baeaa9L    # 9.234670712148806E18
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_2
    .array-data 8
        -0x407cacd1b9f0e32cL    # -0.009435998452217133
        0x455212b19d702f88L    # 8.7395775072303E25
        -0x6b9ba65194d3fd61L
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_3
    .array-data 8
        -0x6e62eac18c8ce3c1L    # -7.857098572142465E-224
        0x39e7f3fbbba6f41fL    # 9.447816254211782E-30
        0x4ef29325d9ff5d0eL    # 2.0511765221770973E72
        -0x1a4693d47148723eL    # -1.054912240139605E182
        -0x208938590578803dL    # -7.456748334881265E151
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_4
    .array-data 8
        0x1912191af0b88a4fL    # 6.49912535702222E-188
        -0x41d641900859df57L    # -2.9969839363606633E-9
    .end array-data

    :array_5
    .array-data 8
        0x341555b2a791c449L    # 8.497057321094027E-58
        -0x137953bdf835f3e5L    # -6.106237105312919E214
        0x31a881323ba8ae81L    # 1.7752516185122146E-69
        0x150d777c621495d5L
        0x1b19c169b652906aL    # 3.972399204691303E-178
    .end array-data

    :array_6
    .array-data 8
        -0x2f45ddc8857c4ad8L    # -7.746741706686721E80
        -0xff63b5a4ec0874aL    # -5.000690518635398E231
        0x55546a185aba74b9L    # 1.1430780370511556E103
        -0x5504d63c45826d24L
    .end array-data

    :array_7
    .array-data 8
        0x78d33f637cfbb3fL    # 2.69911283517821E-272
        -0x12aeb6e72a19aca8L    # -3.813640056076656E218
        0x5eb21e9320da57b3L    # 1.4480463907834392E148
        0x7cf751b725c5f275L    # 9.308280212448436E293
    .end array-data

    :array_8
    .array-data 8
        0x20e70a23ca50c57aL
        0x195a48bb95b4a605L
        -0x9d2fc983fb3e4e4L
    .end array-data
.end method
