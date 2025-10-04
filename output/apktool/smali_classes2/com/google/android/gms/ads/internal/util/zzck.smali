.class public final Lcom/google/android/gms/ads/internal/util/zzck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zzb:Lcom/google/android/gms/ads/internal/util/zzck;


# instance fields
.field zza:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/util/zzck;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzck;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzck;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x4

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzck;->zza:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v6, v0, [J

    .line 52
    .line 53
    fill-array-data v6, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v7, v0, [J

    .line 75
    .line 76
    fill-array-data v7, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v0, v0, [J

    .line 99
    .line 100
    fill-array-data v0, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/util/SharedPreferencesUtils;->publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzck;->zza:Ljava/lang/String;

    .line 114
    .line 115
    :cond_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array v0, v2, [J

    .line 118
    .line 119
    fill-array-data v0, :array_4

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :array_0
    .array-data 8
        0x2fad2feb70d3cbafL    # 4.9231535244799843E-79
        0x4e8d37ae4f7664f4L    # 2.520647476891717E70
        -0x6adf361bbe7e0997L    # -6.536548416252946E-207
        -0x2b9c0c41b5714f9eL    # -3.4093979766697875E98
    .end array-data

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
    :array_1
    .array-data 8
        0x1dddc58b37f48f9eL    # 8.078028305139544E-165
        -0x2fec34057f6d21ebL    # -5.730779507301695E77
        0x1cf03b4a14e65a1cL
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
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        0x3135a99c4146fc36L    # 1.2260563431753683E-71
        0x162965a2bd54e76fL
        0x66a6aa4dedb27612L    # 3.081824317093917E186
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_3
    .array-data 8
        0x2e3f71ad9b8bd219L    # 6.3226595883150894E-86
        0x609066637c7d2b6fL    # 1.407279705235767E157
        0x2c087f91819e3e63L    # 1.4336647173103634E-96
    .end array-data

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_4
    .array-data 8
        -0x6079857babeda9fcL    # -8.186177795802621E-157
        -0x67433164cfe60843L
        -0x70b9dd078a4ed8a1L
        -0x442b76500a483bbdL    # -1.739622814833309E-20
    .end array-data
.end method
