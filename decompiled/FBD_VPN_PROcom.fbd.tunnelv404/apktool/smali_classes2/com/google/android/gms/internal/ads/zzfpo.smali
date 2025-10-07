.class public final Lcom/google/android/gms/internal/ads/zzfpo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static zza:F

.field private static zzb:Landroid/view/WindowManager;

.field private static final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, v1, [J

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v4, v1, [J

    .line 33
    .line 34
    fill-array-data v4, :array_2

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_3

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpo;->zzc:[Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    .line 74
    sput v0, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        -0x3e7e0c91926f5b0bL    # -3.764577369562713E7
        -0x129dbc23eb241a39L    # -8.059505031000649E218
    .end array-data

    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x3b21a4483f763af7L    # -5.73451555724723E23
        0x7d07270a8cce94f2L    # 1.848348088324142E294
    .end array-data

    :array_2
    .array-data 8
        0xb21766aae7cd116L
        0x770b4ecc27b6c2e8L    # 2.751648483784492E265
    .end array-data

    :array_3
    .array-data 8
        0x571033c54dc24bcfL    # 2.435304038559092E111
        -0x6500a3a15545534dL
    .end array-data
.end method

.method public static zza(IIII)Lorg/json/JSONObject;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    int-to-float p0, p0

    .line 22
    sget v3, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 23
    .line 24
    div-float/2addr p0, v3

    .line 25
    float-to-double v3, p0

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v2, v0, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    int-to-float p1, p1

    .line 44
    sget v2, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 45
    .line 46
    div-float/2addr p1, v2

    .line 47
    float-to-double v2, p1

    .line 48
    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array p1, v0, [J

    .line 54
    .line 55
    fill-array-data p1, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    int-to-float p1, p2

    .line 66
    sget p2, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 67
    .line 68
    div-float/2addr p1, p2

    .line 69
    float-to-double p1, p1

    .line 70
    invoke-virtual {v1, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array p1, v0, [J

    .line 76
    .line 77
    fill-array-data p1, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    int-to-float p1, p3

    .line 88
    sget p2, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 89
    .line 90
    div-float/2addr p1, p2

    .line 91
    float-to-double p1, p1

    .line 92
    invoke-virtual {v1, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 98
    .line 99
    const/4 p2, 0x6

    .line 100
    new-array p2, p2, [J

    .line 101
    .line 102
    fill-array-data p2, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-object v1

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        -0x2b55716798f40705L    # -7.26085573552625E99
        -0x2b4decd5bade34edL    # -9.88356470376923E99
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
        -0x357ca55ebb0fbefbL    # -9.051499745288929E50
        -0x54d61f858ec330ffL    # -9.242791943009489E-101
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
        -0x2d36ded976721ee6L    # -6.398710490158315E90
        -0x4c338b2f59303b6dL    # -3.541680884653255E-59
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
    :array_3
    .array-data 8
        -0x5b48a72552eba1acL    # -8.223081687449778E-132
        -0x34819362afca9f55L    # -4.662506640094639E55
    .end array-data

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
    :array_4
    .array-data 8
        0x60311393dfa489cdL    # 2.28958098558063E155
        0x20ce67d34d08397aL
        0x7e914b48a3fe92f4L    # 4.632688131939268E301
        -0x5efbd1cf13bab7d9L
        0x73d49590abc99a36L    # 9.211094311534442E249
        0x41b4a9ceec0548e6L    # 3.466728760206436E8
    .end array-data
.end method

.method public static zzb(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    new-array v0, v0, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        0x53e309b92d2bec9dL    # 1.2707775735695963E96
        0x194ba7a009c8555fL    # 7.944800557898135E-187
        0x4f3eb1c847b2bb25L    # 5.423242058676528E73
    .end array-data

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
    :array_1
    .array-data 8
        0x78376069c1e2b35dL    # 1.2349737189676401E271
        -0x7c7e9e6ea5981fd9L    # -8.708674777226785E-292
        0x77a172ec342ca1e1L    # 1.800423292661439E268
        0x3a43f4ceb2a1fdf5L    # 5.037673050740612E-28
        0x2fbc1bb234063f3fL    # 9.48230658653219E-79
    .end array-data
.end method

.method public static zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    new-array v2, v0, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lorg/json/JSONArray;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v0, v0, [J

    .line 30
    .line 31
    fill-array-data v0, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        0x1461c4de62b4ed6cL
        0xbe9182e9bf4717bL
        0x2e60120462de8fa9L    # 2.585100112231837E-85
    .end array-data

    :array_1
    .array-data 8
        0x4016f634e18a1a0eL    # 5.7404361000576625
        -0x5b3aa34667f74bfcL
        0x2927f43796eb343fL    # 1.992090937834125E-110
    .end array-data
.end method

.method public static zzd(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    sput v0, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

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
    fill-array-data v1, :array_0

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
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/view/WindowManager;

    .line 35
    .line 36
    sput-object p0, Lcom/google/android/gms/internal/ads/zzfpo;->zzb:Landroid/view/WindowManager;

    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :array_0
    .array-data 8
        -0x351a9f573802a165L    # -6.398640423875276E52
        -0x3a3ce7108c3d7765L    # -1.1820720374517812E28
    .end array-data
.end method

.method public static zze(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    goto :goto_0

    .line 7
    :catch_1
    move-exception p0

    .line 8
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x5d2589680341648aL    # 5.1294172177644405E140
        -0x71c2d5524466a1L
        0x6fc6b05473e904e2L    # 2.751933973981417E230
        0x603577c1781b5d02L    # 2.878360835059734E155
        0x343055fbc88e4fe7L    # 2.602454739267014E-57
        0x236615ed01b5d2dfL    # 3.709216122571177E-138
        -0x3ce74d0ab7dd826eL    # -1.7380414970018285E15
    .end array-data

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
    .line 81
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
    :array_1
    .array-data 8
        -0x32ea57af70c3686fL    # -2.227342549416009E63
        -0x433d47880dbeca03L    # -5.196004802922473E-16
    .end array-data
.end method

.method public static zzf(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpo;->zzb:Landroid/view/WindowManager;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Point;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfpo;->zzb:Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 19
    .line 20
    .line 21
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    sget v3, Lcom/google/android/gms/internal/ads/zzfpo;->zza:F

    .line 25
    .line 26
    div-float/2addr v2, v3

    .line 27
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v4, v0, [J

    .line 37
    .line 38
    fill-array-data v4, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    float-to-double v4, v2

    .line 49
    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v0, v0, [J

    .line 55
    .line 56
    fill-array-data v0, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    float-to-double v1, v1

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 8
        -0x224b6735d8e42d75L    # -2.5116460380383816E143
        -0x3c9c4058726cc66cL    # -4.44700073054568E16
    .end array-data

    :array_1
    .array-data 8
        -0x8ea97d30b05c609L    # -4.314104923668818E265
        0x565752f0c4babb63L    # 8.558964860723965E107
    .end array-data
.end method

.method public static zzg(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 11
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return v3

    .line 11
    :cond_1
    :goto_0
    if-eqz p0, :cond_9

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfpo;->zzc:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_1
    if-ge v5, v0, :cond_4

    .line 21
    .line 22
    aget-object v6, v4, v5

    .line 23
    .line 24
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    cmpl-double v6, v7, v9

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_3
    add-int/2addr v5, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v5, v2, [J

    .line 43
    .line 44
    fill-array-data v5, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v6, v3, [J

    .line 57
    .line 58
    const-wide v7, 0x794ddd60e6cd1847L    # 2.0679739706882742E276

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    aput-wide v7, v6, v1

    .line 64
    .line 65
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v6, v2, [J

    .line 79
    .line 80
    fill-array-data v6, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v7, v3, [J

    .line 93
    .line 94
    const-wide v8, 0x7789169d3e357fecL    # 6.471694895856219E267

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    aput-wide v8, v7, v1

    .line 100
    .line 101
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_9

    .line 117
    .line 118
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v5, v2, [J

    .line 121
    .line 122
    fill-array-data v5, :array_2

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v6, v2, [J

    .line 143
    .line 144
    fill-array-data v6, :array_3

    .line 145
    .line 146
    .line 147
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_9

    .line 167
    .line 168
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v5, v2, [J

    .line 171
    .line 172
    fill-array-data v5, :array_4

    .line 173
    .line 174
    .line 175
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v6, v2, [J

    .line 193
    .line 194
    fill-array-data v6, :array_5

    .line 195
    .line 196
    .line 197
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_9

    .line 217
    .line 218
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v5, v0, [J

    .line 221
    .line 222
    fill-array-data v5, :array_6

    .line 223
    .line 224
    .line 225
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v0, v0, [J

    .line 239
    .line 240
    fill-array-data v0, :array_7

    .line 241
    .line 242
    .line 243
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-nez v4, :cond_5

    .line 255
    .line 256
    if-nez v0, :cond_5

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_5
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzfpo;->zzh(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_9

    .line 264
    .line 265
    const/4 v5, 0x0

    .line 266
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-ge v5, v6, :cond_6

    .line 271
    .line 272
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v7, v3, [J

    .line 275
    .line 276
    const-wide v8, 0x75d80714525067fL

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    aput-wide v8, v7, v1

    .line 282
    .line 283
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 295
    .line 296
    new-array v8, v3, [J

    .line 297
    .line 298
    const-wide v9, 0x79f14e2759b5c1dfL    # 2.454114510795224E279

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    aput-wide v9, v8, v1

    .line 304
    .line 305
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-eqz v6, :cond_9

    .line 321
    .line 322
    add-int/2addr v5, v3

    .line 323
    goto :goto_2

    .line 324
    :cond_6
    :goto_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 325
    .line 326
    new-array v4, v2, [J

    .line 327
    .line 328
    fill-array-data v4, :array_8

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array v2, v2, [J

    .line 345
    .line 346
    fill-array-data v2, :array_9

    .line 347
    .line 348
    .line 349
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    if-nez p0, :cond_7

    .line 361
    .line 362
    if-eqz p1, :cond_8

    .line 363
    .line 364
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zzh(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_9

    .line 369
    .line 370
    const/4 v0, 0x0

    .line 371
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-ge v0, v2, :cond_8

    .line 376
    .line 377
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzfpo;->zzg(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_9

    .line 390
    .line 391
    add-int/2addr v0, v3

    .line 392
    goto :goto_4

    .line 393
    :cond_8
    return v3

    .line 394
    :cond_9
    :goto_5
    return v1

    .line 395
    :array_0
    .array-data 8
        -0x3f389e8c0501d0fdL    # -11970.906097195582
        0x71b2212cbed99961L    # 4.722201609217307E239
        0x5f904c19d02edbc5L    # 2.133893075236868E152
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_1
    .array-data 8
        0x6665970b261eddd8L    # 1.834764260989339E185
        0x11c1d2d080dca9dcL
        0x35dac35b50470f70L    # 2.861260060491401E-49
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_2
    .array-data 8
        0x65750d5406f3c329L    # 5.459741552901622E180
        0x591523189aea5686L    # 1.3645314726788285E121
        -0xe7391e1d7dfae2L
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :array_3
    .array-data 8
        -0x43a9bdc87517410eL    # -4.826577508548625E-18
        0x2e95327f93b15262L    # 2.727852807831527E-84
        0x28918d1374d5ac01L
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_4
    .array-data 8
        -0x1df82118238e2e4aL    # -1.718277374029962E164
        -0x5ba1549411242670L
        0x5cdd1abd0e5718e4L    # 2.1661941065788023E139
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_5
    .array-data 8
        -0x4ee00a1021b13c60L    # -4.522277562710927E-72
        -0x70ec006d11cfe39fL    # -4.913797591525205E-236
        0x38ccd90f3f132bbL
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_6
    .array-data 8
        0x336c45792a38fcdfL    # 5.497913442654102E-61
        0x663da30bc2e6019eL
        0x345033da79edb936L    # 1.0324862088620488E-56
        0x7e3e6a33963ebf81L    # 1.2730380152364672E300
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_7
    .array-data 8
        0x56b434e7e8fea790L    # 4.745621007971678E109
        -0x237532dc3ebd9789L    # -6.233677504064993E137
        -0x63296d12faed4568L    # -9.346082526435703E-170
        -0x6b12d8089c1d95c8L    # -7.094841756529907E-208
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_8
    .array-data 8
        -0x50ecf5012c56af7cL    # -6.273579914602828E-82
        0x1b29a3b432f74228L    # 7.90900021185756E-178
        -0x7092bf42d44a7fdbL    # -2.3000756102565825E-234
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_9
    .array-data 8
        0x6d7109f62ddfeaa4L    # 1.5036914735872914E219
        0x4418d7e14d78199eL    # 1.1456941438379121E20
        0x161d4209e3e65e04L    # 3.732733762680013E-202
    .end array-data
.end method

.method private static zzh(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    return v0

    .line 8
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_3

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p0, p1, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    :goto_1
    return v1
.end method
