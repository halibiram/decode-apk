.class public final Lcom/google/android/gms/internal/ads/zzbgk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final zza:Ljava/util/concurrent/BlockingQueue;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:Ljava/util/LinkedHashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzc:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zze:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzf:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzg:Ljava/util/HashSet;

.field private zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzi:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzb:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzc:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/HashSet;

    .line 43
    .line 44
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    new-array v4, v3, [J

    .line 48
    .line 49
    fill-array-data v4, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v5, v3, [J

    .line 62
    .line 63
    fill-array-data v5, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v3, v3, [J

    .line 76
    .line 77
    fill-array-data v3, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v5, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzg:Ljava/util/HashSet;

    .line 99
    .line 100
    return-void

    .line 101
    :array_0
    .array-data 8
        0x42da1f375bc615a9L    # 1.1488550027887064E14
        0x71f7fafafd4176bfL    # 9.993850119524735E240
    .end array-data

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
    :array_1
    .array-data 8
        -0x197e28951b8281c2L    # -6.06482247330844E185
        -0x7443bfd220b75867L    # -3.853300287275935E-252
        0x1cc21775e20d555fL
        0x1253965779b9dc60L
    .end array-data

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
    :array_2
    .array-data 8
        -0x2fd6613a1f7efa89L    # -1.4833086396752063E78
        -0x427ab5425377d57L    # -3.704855820413575E288
        0xfabcb8b28000aa6L
        0x706759790f0e55bcL    # 2.900042125540814E233
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
    :array_3
    .array-data 8
        0x1a59f530b16920e7L    # 9.774399345342718E-182
        0x754f36ef43f96efbL    # 1.1717202386676255E257
        -0x108acd64ea14088L
        0x53446eadeece7200L    # 1.331885271212102E93
    .end array-data
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbgk;)V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgu;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgu;->zza()Lcom/google/android/gms/internal/ads/zzbgt;

    .line 10
    .line 11
    .line 12
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbgt;->zzb()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzb:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgu;->zzb()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zzb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbgk;->zzg(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbgt;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    fill-array-data v1, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :array_0
    .array-data 8
        -0x2827f2fea90c36d9L    # -1.4807028707479384E115
        0x6302cd9e26f617d2L    # 8.870318670278022E168
        0x5558801403cf26fL
        -0x49f5aa546f531a3eL    # -2.2523622667940145E-48
        0x632c94b851f988d5L    # 5.393169210174369E169
    .end array-data
.end method

.method private final zzg(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbgt;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzd:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgt;->zzb()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v3, v0, [J

    .line 78
    .line 79
    fill-array-data v3, :array_0

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgt;->zzb()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgt;->zza()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_1

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbgt;->zza()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_7

    .line 144
    .line 145
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzi:Ljava/io/File;

    .line 146
    .line 147
    if-eqz p2, :cond_6

    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    .line 155
    .line 156
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 161
    .line 162
    .line 163
    const/16 p1, 0xa

    .line 164
    .line 165
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .line 167
    .line 168
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 174
    .line 175
    new-array v0, v1, [J

    .line 176
    .line 177
    fill-array-data v0, :array_2

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :catchall_0
    move-exception p1

    .line 192
    goto :goto_1

    .line 193
    :catch_1
    move-exception p1

    .line 194
    goto :goto_2

    .line 195
    :goto_1
    move-object v0, v2

    .line 196
    goto :goto_4

    .line 197
    :goto_2
    move-object v0, v2

    .line 198
    goto :goto_3

    .line 199
    :catchall_1
    move-exception p1

    .line 200
    goto :goto_4

    .line 201
    :catch_2
    move-exception p1

    .line 202
    :goto_3
    :try_start_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v2, v1, [J

    .line 205
    .line 206
    fill-array-data v2, :array_3

    .line 207
    .line 208
    .line 209
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 217
    .line 218
    .line 219
    if-eqz v0, :cond_4

    .line 220
    .line 221
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :catch_3
    move-exception p1

    .line 226
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 227
    .line 228
    new-array v0, v1, [J

    .line 229
    .line 230
    fill-array-data v0, :array_4

    .line 231
    .line 232
    .line 233
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    :cond_4
    return-void

    .line 244
    :goto_4
    if-eqz v0, :cond_5

    .line 245
    .line 246
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 247
    .line 248
    .line 249
    goto :goto_5

    .line 250
    :catch_4
    move-exception p2

    .line 251
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 252
    .line 253
    new-array v1, v1, [J

    .line 254
    .line 255
    fill-array-data v1, :array_5

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :cond_5
    :goto_5
    throw p1

    .line 269
    :cond_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    const/16 p2, 0x9

    .line 272
    .line 273
    new-array p2, p2, [J

    .line 274
    .line 275
    fill-array-data p2, :array_6

    .line 276
    .line 277
    .line 278
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zze:Landroid/content/Context;

    .line 293
    .line 294
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzf:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    nop

    .line 301
    :array_0
    .array-data 8
        0x9185d152bef0e44L
        -0x57eb96f5ac108be1L
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_1
    .array-data 8
        0x2be33b816f21ea6dL    # 2.813752411995178E-97
        -0x7b533f9e6f679e67L    # -3.776369393530128E-286
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_2
    .array-data 8
        -0x3114a929ef39cb1L
        -0x7852e1666556d8cL
        -0x64418d918e9ca867L    # -4.808692508316549E-175
        0x14ccc974ece9a13aL
        -0x1e54db148e8310bdL    # -3.0529873728009576E162
        0xfcd76630668d42cL
        -0x43ddc437ac3ca1edL    # -4.94220698992407E-19
        0x542c535f780f60e0L    # 3.025163781634493E97
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_3
    .array-data 8
        -0x34b91c871c802d3fL    # -4.3845776616542184E54
        -0x59f3a015a955caa2L
        -0x8220b2729db62dL
        0x400d43fbf7683a90L    # 3.6581954315836995
        -0x6cd75671c9f0ccbeL
        0x537430a6b7ce0c6aL    # 1.0528728529364795E94
        0x4ea854fd6067a08L
        0x5dd9cb41f0cff327L    # 1.2581609973194796E144
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_4
    .array-data 8
        0x2e7edd7e48d6822eL    # 9.930027294672554E-85
        0x1ec384d6dbfd5c68L
        0x2e42e2d7ef201c2aL    # 7.595103550348842E-86
        0x449dce90e978ccd8L    # 3.5189774823109027E22
        -0x39d8f4550e1cde8dL    # -9.129293663027963E29
        0x4b86e6dec93f7e93L    # 7.019392599626388E55
        0x14e851268b7b324aL    # 5.917290619793991E-208
        -0x6b29277854bc7592L
    .end array-data

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
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_5
    .array-data 8
        -0x418e1dd886a512c4L    # -6.662091175506255E-8
        0x6fc9d33dc634dfeaL    # 3.1323461119307468E230
        0x5b7ec5f78fdbd88eL    # 5.4607501149829214E132
        0x2dfaa331cba89c9dL    # 3.34760632264577E-87
        0x42625641c21cc5abL    # 6.300524914941771E11
        -0x756cda70bad99a72L    # -9.9622640168839E-258
        -0xbf3c18a08d62040L
        -0x25f38118c52fc95bL    # -6.027924161653659E125
    .end array-data

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
    :array_6
    .array-data 8
        -0x6ad7591cc540d9eL
        -0x21c8ec87c4fd3202L    # -7.203763600501346E145
        -0xd89e75f504d9b0aL
        0x598ac1589b35aa82L    # 2.2108403973729688E123
        0x11e9d88a34931710L
        0x57e46993c73f9e0aL    # 2.513406097906105E115
        -0x5dfc954da3c3ed9aL
        0x6ebb7f6e50624a48L    # 2.5445697488220566E225
        -0x159810605ac40992L    # -3.752314132704011E204
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgq;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgq;->zza:Lcom/google/android/gms/internal/ads/zzbgq;

    .line 13
    .line 14
    return-object p1
.end method

.method public final zzb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbgk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgq;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzbgq;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zze:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzf:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhv;->zzc:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array p3, v1, [J

    .line 49
    .line 50
    fill-array-data p3, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance p3, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzi:Ljava/io/File;

    .line 66
    .line 67
    :cond_0
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Ljava/util/Map$Entry;

    .line 86
    .line 87
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzb:Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    check-cast p4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p3, p4, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 106
    .line 107
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 108
    .line 109
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbgj;-><init>(Lcom/google/android/gms/internal/ads/zzbgk;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzc:Ljava/util/Map;

    .line 116
    .line 117
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array p3, v0, [J

    .line 120
    .line 121
    fill-array-data p3, :array_1

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgq;->zzb:Lcom/google/android/gms/internal/ads/zzbgq;

    .line 132
    .line 133
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzc:Ljava/util/Map;

    .line 137
    .line 138
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array p4, v1, [J

    .line 141
    .line 142
    fill-array-data p4, :array_2

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzc:Ljava/util/Map;

    .line 156
    .line 157
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array p3, v0, [J

    .line 160
    .line 161
    fill-array-data p3, :array_3

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbgq;->zzc:Lcom/google/android/gms/internal/ads/zzbgq;

    .line 172
    .line 173
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :array_0
    .array-data 8
        -0x2f03e84125ebef3dL    # -1.3323955815326696E82
        0x32846b6bbbdd555eL    # 2.4236976893325102E-65
        -0x1b5e062cb420ed25L    # -5.690856589339179E176
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_1
    .array-data 8
        0x7998fb3efd39bec1L    # 5.535454845714058E277
        -0x1eb147801049503cL
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_2
    .array-data 8
        -0x7a8ca7f21ad3566aL
        0x2ad1ec4e00ee772fL    # 2.0005700765304136E-102
        0x3fd13f512f953528L    # 0.26948957106363247
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        0x5b3e4a0274e5f90fL    # 3.3592667836532083E131
        -0x516e7d93a639a680L    # -2.253274589185562E-84
    .end array-data
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzg:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzf:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zzb:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zzb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbgk;->zzg(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzbgt;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x553a45d9f208a9dfL    # 3.677780809685846E102
        0x14576283cd5d97dcL
        0xb2465b24a2ff776L
    .end array-data

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
    :array_1
    .array-data 8
        0x1e2eb32b6df5546aL
        0x1e008856ea16dc39L    # 3.588664884701899E-164
    .end array-data
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbgu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgk;->zza:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
