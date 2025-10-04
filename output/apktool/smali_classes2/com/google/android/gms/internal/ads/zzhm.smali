.class public final Lcom/google/android/gms/internal/ads/zzhm;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private zza:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:J

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_1

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 16
    .line 17
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 18
    .line 19
    int-to-long v3, p3

    .line 20
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int p3, v0

    .line 25
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:J

    .line 32
    .line 33
    int-to-long v0, p1

    .line 34
    sub-long/2addr p2, v0

    .line 35
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:J

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhl;

    .line 43
    .line 44
    const/16 p3, 0x7d0

    .line 45
    .line 46
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 47
    .line 48
    .line 49
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x7d6

    .line 11
    .line 12
    const/16 v4, 0x7d0

    .line 13
    .line 14
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v7, 0x0

    .line 21
    if-eqz v6, :cond_2

    .line 22
    .line 23
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v9, v0, [J

    .line 26
    .line 27
    fill-array-data v9, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-direct {v5, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .line 39
    .line 40
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 41
    .line 42
    :try_start_1
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 43
    .line 44
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    .line 46
    .line 47
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 48
    .line 49
    const-wide/16 v5, -0x1

    .line 50
    .line 51
    cmp-long v0, v2, v5

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 62
    .line 63
    sub-long/2addr v2, v5

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    const-wide/16 v4, 0x0

    .line 70
    .line 71
    cmp-long v0, v2, v4

    .line 72
    .line 73
    if-ltz v0, :cond_1

    .line 74
    .line 75
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 78
    .line 79
    .line 80
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:J

    .line 81
    .line 82
    return-wide v0

    .line 83
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhl;

    .line 84
    .line 85
    const/16 v0, 0x7d8

    .line 86
    .line 87
    invoke-direct {p1, v7, v7, v0}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhl;

    .line 92
    .line 93
    invoke-direct {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :catch_1
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :catch_2
    move-exception p1

    .line 100
    goto :goto_3

    .line 101
    :catch_3
    move-exception p1

    .line 102
    goto :goto_4

    .line 103
    :cond_2
    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhl;

    .line 105
    .line 106
    invoke-direct {v0, p1, v4}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhl;

    .line 111
    .line 112
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :goto_4
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_4

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_4

    .line 135
    .line 136
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhl;

    .line 137
    .line 138
    sget v2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Ljava/lang/Throwable;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eq v1, v2, :cond_3

    .line 149
    .line 150
    const/16 v3, 0x7d5

    .line 151
    .line 152
    :cond_3
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhl;

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const/4 v6, 0x3

    .line 171
    new-array v6, v6, [Ljava/lang/Object;

    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    aput-object v4, v6, v7

    .line 175
    .line 176
    aput-object v5, v6, v1

    .line 177
    .line 178
    aput-object v2, v6, v0

    .line 179
    .line 180
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    const/16 v1, 0x19

    .line 183
    .line 184
    new-array v1, v1, [J

    .line 185
    .line 186
    fill-array-data v1, :array_1

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const/16 v1, 0x3ec

    .line 201
    .line 202
    invoke-direct {v3, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 203
    .line 204
    .line 205
    throw v3

    .line 206
    nop

    .line 207
    :array_0
    .array-data 8
        0x2e2da54c379dcb0bL    # 2.980525748905054E-86
        0x4e66200fbcc7dedL    # 4.70380232833282E-285
    .end array-data

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
    :array_1
    .array-data 8
        -0x71f3bb1246b935d5L    # -5.299413465002782E-241
        0x4c9eaaaa938e281L
        -0x32a38dc7b6af280aL    # -4.6808304614756875E64
        -0x1c1d465d69712260L    # -1.4472799026254495E173
        0x2ff9f9f0bbbf5e4fL    # 1.4020997527280039E-77
        0x8a3723d56e29cdbL
        0x52c1e820e579ca9eL    # 4.559587244990566E90
        -0x6c79cf8b060dbe08L
        -0x78d97cb85e0cdefdL    # -3.251200096376496E-274
        -0x4240165c7062a6e4L    # -2.9024387906899252E-11
        -0x36d1d94611871140L    # -3.361979460216935E44
        -0x7b3aa85da2a1d094L
        0xc5c76c1f87defc3L
        -0xc978dbeb93825ecL    # -8.546331560578985E247
        0x44028207a8a93263L    # 4.267637954014848E19
        -0x20ac28b4db117b7L    # -5.556374301848768E298
        0x4b7a5479f7497f61L    # 4.035058621718594E55
        -0x4388915b5913b89aL
        -0x71a7ae8c56844091L
        -0x3cb16d9599bdfeb6L    # -1.721046996222018E16
        -0x2474a7c406eef3deL    # -9.704668704984755E132
        -0x1b1d7785429d8e5aL    # -9.387632061704182E177
        -0x11fa0f8b93411848L    # -9.913091693372482E221
        -0x246920be3eed7f2dL    # -1.6234693225663136E133
        0x47b98f48298ed113L    # 3.397466197143913E37
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Landroid/net/Uri;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v2

    .line 14
    goto :goto_2

    .line 15
    :catch_0
    move-exception v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :goto_1
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhl;

    .line 30
    .line 31
    const/16 v4, 0x7d0

    .line 32
    .line 33
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Ljava/lang/Throwable;I)V

    .line 34
    .line 35
    .line 36
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zza:Ljava/io/RandomAccessFile;

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzd:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 47
    .line 48
    .line 49
    :goto_3
    throw v2
.end method
