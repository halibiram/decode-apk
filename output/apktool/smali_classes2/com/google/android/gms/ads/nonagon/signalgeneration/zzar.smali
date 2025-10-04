.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zza:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aput-object v0, v2, v3

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aput-object p1, v2, v0

    .line 38
    .line 39
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v0, v1, [J

    .line 42
    .line 43
    fill-array-data v0, :array_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Landroid/webkit/WebView;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :array_0
    .array-data 8
        0x46eae4c02afb79dL    # 2.51861333906328E-287
        -0x11fb761c4f949845L    # -9.280220680723325E221
        -0x18ae6492fc4d6b76L    # -4.90304534976673E189
        -0x6ac8e4101c9a1c4eL
        0x7dc4d9ca534209fcL    # 6.81816135057789E297
        -0x373875800cc57f53L    # -4.101423235871502E42
        0x2f4a1d4b14a6b6bfL    # 6.882586436233418E-81
        -0x36f36bdf1ee55cf1L    # -7.966558401588818E43
        -0xc18ed7abb076bf2L
    .end array-data

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0xb8436466db56f49L
        -0x18f0fb141616f64bL    # -2.6993440811365257E188
        -0x8791399f7ff685cL    # -5.913243991020324E267
        0x687039c6305d465eL    # 1.184459250915431E195
        0x418c0c4f317344d9L    # 5.882109418128366E7
        -0x7c0dac4194d9b5acL
        -0x6ab2aa46ac93f0dfL
        -0x58bece884a0213adL
        -0x7a5639dca23ae6c8L
    .end array-data
.end method

.method public final onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v6, v2, [J

    .line 16
    .line 17
    fill-array-data v6, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zza:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v6, v2, [J

    .line 35
    .line 36
    fill-array-data v6, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v5, 0x5

    .line 52
    new-array v5, v5, [J

    .line 53
    .line 54
    fill-array-data v5, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-array v5, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v4, v5, v0

    .line 67
    .line 68
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zza:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object v3, v2, v0

    .line 82
    .line 83
    aput-object p1, v2, v1

    .line 84
    .line 85
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 86
    .line 87
    const/16 v0, 0x9

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Landroid/webkit/WebView;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        -0x52ca2350328e7bbbL    # -6.707680235969503E-91
        0x3d068978f8b8d5e0L    # 1.0008439468156443E-14
    .end array-data

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
    :array_1
    .array-data 8
        -0x192cddf0f809ecbaL    # -2.0812360597642185E187
        -0x730765fc41944f7dL    # -3.518578583742999E-246
    .end array-data

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
    :array_2
    .array-data 8
        -0x7acf2fdc723c96a0L
        -0x47e5c35079d2c1afL    # -1.927594244968498E-38
        -0x32d316cc9b6cdb0L
        0x289ddbc1070a93d7L
        0x7b841d08fc9c6056L    # 9.57087782848763E286
    .end array-data

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
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_3
    .array-data 8
        0x430dee78dc30080aL    # 1.0531221477788172E15
        -0x31e947a6bc6ca234L    # -1.5313325235265295E68
        0x1074af6bc39908f3L    # 2.131787134879724E-229
        0xfb64a6ba4b81357L    # 5.608505747602713E-233
        -0x29d294790cdfabL
        0x36843e1fe8dd5101L    # 4.4321919615195486E-46
        -0x223d6b2ac9dedeffL    # -4.531749290788949E143
        0x6edd20464cb31675L    # 1.0780991269124434E226
        0x7a33e09d187d4b82L    # 4.510196772569716E280
    .end array-data
.end method
