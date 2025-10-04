.class public final Lcom/google/android/gms/internal/ads/zzfsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Ljava/io/File;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Ljava/io/File;

.field private final zzc:Landroid/content/SharedPreferences;

.field private final zzd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzc:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v1, v1, [J

    .line 29
    .line 30
    fill-array-data v1, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsh;->zza(Ljava/io/File;Z)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzb:Ljava/io/File;

    .line 48
    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    new-array v1, v1, [J

    .line 53
    .line 54
    fill-array-data v1, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x1

    .line 69
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfsh;->zza(Ljava/io/File;Z)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 73
    .line 74
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzd:I

    .line 75
    .line 76
    return-void

    .line 77
    :array_0
    .array-data 8
        -0x122f837284c95d77L    # -9.311640335219026E220
        0x50ff827750e72595L    # 1.494452735936409E82
    .end array-data

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
    :array_1
    .array-data 8
        -0x697b7fd94d9030e5L
        -0x725007ca2872558L
    .end array-data

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
    :array_2
    .array-data 8
        0x448505b0a0ae9d1cL    # 1.2409332153145981E22
        -0x6fdfdbfef0f62630L    # -5.198213545850907E-231
        -0x148740c41a55daffL    # -5.08486811323499E209
    .end array-data
.end method

.method private final zzd()Ljava/io/File;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzd:I

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzb:Ljava/io/File;

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v1
.end method

.method private final zze()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzd:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x171d895e4b671c29L
        -0x183fa589ed20b668L    # -5.829004131827339E191
    .end array-data
.end method

.method private final zzf()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzd:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x410a8886ccb44ab5L    # 217360.84995325436
        0x1225667ef7d70301L    # 2.960155848966713E-221
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzayc;Lcom/google/android/gms/internal/ads/zzfsm;)Z
    .locals 9
    .param p1    # Lcom/google/android/gms/internal/ads/zzayc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfsm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzf()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    if-nez v5, :cond_c

    .line 33
    .line 34
    if-eqz v4, :cond_c

    .line 35
    .line 36
    array-length v5, v4

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 42
    .line 43
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfsh;->zzd(Ljava/io/File;)Z

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 49
    .line 50
    .line 51
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 52
    .line 53
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzfsh;->zzc(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 61
    .line 62
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v8, v1, [J

    .line 65
    .line 66
    fill-array-data v8, :array_0

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    array-length v7, v3

    .line 83
    if-lez v7, :cond_1

    .line 84
    .line 85
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zze(Ljava/io/File;[B)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_c

    .line 90
    .line 91
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 92
    .line 93
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v7, v1, [J

    .line 96
    .line 97
    fill-array-data v7, :array_1

    .line 98
    .line 99
    .line 100
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zze(Ljava/io/File;[B)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_c

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 126
    .line 127
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v5, v1, [J

    .line 130
    .line 131
    fill-array-data v5, :array_2

    .line 132
    .line 133
    .line 134
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    if-eqz p2, :cond_3

    .line 152
    .line 153
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzfsm;->zza(Ljava/io/File;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_2

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    return v6

    .line 161
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 179
    .line 180
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v4, v1, [J

    .line 183
    .line 184
    fill-array-data v4, :array_3

    .line 185
    .line 186
    .line 187
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zza:Ljava/io/File;

    .line 199
    .line 200
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v5, v1, [J

    .line 203
    .line 204
    fill-array-data v5, :array_4

    .line 205
    .line 206
    .line 207
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {p2, v4, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v7, v1, [J

    .line 225
    .line 226
    fill-array-data v7, :array_5

    .line 227
    .line 228
    .line 229
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-static {p2, v5, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 245
    .line 246
    new-array v8, v1, [J

    .line 247
    .line 248
    fill-array-data v8, :array_6

    .line 249
    .line 250
    .line 251
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {p2, v7, v5}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_6

    .line 267
    .line 268
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_6

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_4

    .line 280
    .line 281
    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_4

    .line 286
    .line 287
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayf;->zze()Lcom/google/android/gms/internal/ads/zzaye;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaye;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzj()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaye;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zza()J

    .line 318
    .line 319
    .line 320
    move-result-wide v2

    .line 321
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzb(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzd()J

    .line 329
    .line 330
    .line 331
    move-result-wide v2

    .line 332
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayf;->zzc()J

    .line 340
    .line 341
    .line 342
    move-result-wide v2

    .line 343
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Lcom/google/android/gms/internal/ads/zzayf;

    .line 351
    .line 352
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzb(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzc:Landroid/content/SharedPreferences;

    .line 357
    .line 358
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-eqz p2, :cond_7

    .line 363
    .line 364
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-nez v3, :cond_7

    .line 377
    .line 378
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zze()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-static {p2}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    .line 392
    .line 393
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzf()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-interface {v2, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    .line 407
    .line 408
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    if-eqz p1, :cond_4

    .line 413
    .line 414
    const/4 p1, 0x1

    .line 415
    :goto_2
    new-instance p2, Ljava/util/HashSet;

    .line 416
    .line 417
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzb(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    if-eqz v2, :cond_8

    .line 425
    .line 426
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfsg;->zzb(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-eqz v1, :cond_9

    .line 438
    .line 439
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    array-length v2, v1

    .line 455
    :goto_3
    if-ge v6, v2, :cond_b

    .line 456
    .line 457
    aget-object v3, v1, v6

    .line 458
    .line 459
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v4

    .line 467
    if-nez v4, :cond_a

    .line 468
    .line 469
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzc(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zzd(Ljava/io/File;)Z

    .line 478
    .line 479
    .line 480
    :cond_a
    add-int/2addr v6, v0

    .line 481
    goto :goto_3

    .line 482
    :cond_b
    return p1

    .line 483
    :cond_c
    :goto_4
    return v6

    .line 484
    nop

    .line 485
    :array_0
    .array-data 8
        -0x562cca885aeb0588L    # -3.271621647645308E-107
        -0x17025eebbde8f566L    # -5.537035700215456E197
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    :array_1
    .array-data 8
        0x7bbab02f4fe260beL    # 1.0159574338311443E288
        0x34e114d3e19decf7L    # 5.573053100910134E-54
    .end array-data

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
    :array_2
    .array-data 8
        0x291cae5876f709e9L
        0x319398eb55ff230eL    # 7.098689214484572E-70
    .end array-data

    .line 510
    .line 511
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
    :array_3
    .array-data 8
        0x51abaceb44a7041aL    # 2.6882132376776462E85
        0xa83bd57ded40fb6L
    .end array-data

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
    .line 532
    .line 533
    :array_4
    .array-data 8
        0x3c27b18f4390cadeL    # 6.422161057090708E-19
        -0x21c1f2f56d3d3875L    # -9.381148645197427E145
    .end array-data

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
    :array_5
    .array-data 8
        0xd4946e35efbcf1dL
        0x33d3c67908ff2c3cL    # 4.922475865295671E-59
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_6
    .array-data 8
        0x330a955abddf7acdL    # 8.077588038286201E-63
        -0x6ebb40cf732618f9L
    .end array-data
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzayf;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p1, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzc:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzf()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsg;->zzc:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zze()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 39
    .line 40
    array-length v1, p1

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayf;->zzh(Lcom/google/android/gms/internal/ads/zzgyl;)Lcom/google/android/gms/internal/ads/zzayf;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v4, v0, [J

    .line 57
    .line 58
    fill-array-data v4, :array_0

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_2

    .line 81
    .line 82
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v4, v0, [J

    .line 85
    .line 86
    fill-array-data v4, :array_1

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    return-object p1

    .line 139
    :catch_0
    :cond_3
    return-object v2

    .line 140
    nop

    .line 141
    :array_0
    .array-data 8
        -0x629b45ebe72fb36fL    # -4.393656708073079E-167
        -0x69528412e75c0cb3L    # -1.925930278032165E-199
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
    :array_1
    .array-data 8
        -0x58941c6300b3dfd5L    # -8.640252695812551E-119
        -0x3810bfe1754da593L    # -3.3231195463400646E38
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
    :array_2
    .array-data 8
        -0x3bc806992e582155L    # -4.422463955773137E20
        -0x60a2dd6f1fc6d0f1L
    .end array-data
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfsf;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzb(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v4, p1, [J

    .line 22
    .line 23
    fill-array-data v4, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v4, p1, [J

    .line 50
    .line 51
    fill-array-data v4, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v5, p1, [J

    .line 72
    .line 73
    fill-array-data v5, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsg;->zzd()Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array p1, p1, [J

    .line 94
    .line 95
    fill-array-data p1, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v5, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v1, p1, v4}, Lcom/google/android/gms/internal/ads/zzfsh;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsf;

    .line 110
    .line 111
    invoke-direct {v1, v0, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfsf;-><init>(Lcom/google/android/gms/internal/ads/zzayf;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :array_0
    .array-data 8
        0x4fe532007f3c942aL    # 7.669532483024343E76
        -0xbf38231b3d8414dL
    .end array-data

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
    :array_1
    .array-data 8
        0x7aa5808a17aa7653L    # 6.244921261821227E282
        0x7b66d5caafd9f071L    # 2.7164972404412982E286
    .end array-data

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
    :array_2
    .array-data 8
        -0x5dd5d434aa79bb65L    # -4.191732767712359E-144
        0x66a0b9ec2cd362f8L    # 2.2742917533768406E186
    .end array-data

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
    :array_3
    .array-data 8
        0x696ebf44d1d45dd6L    # 7.354817865188259E199
        -0x37df51cb3ab07768L    # -2.8380387716871125E39
    .end array-data
.end method
