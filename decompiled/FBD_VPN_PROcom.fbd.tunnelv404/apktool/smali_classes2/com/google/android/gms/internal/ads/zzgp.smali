.class public final Lcom/google/android/gms/internal/ads/zzgp;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/res/AssetManager;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:J

.field private zze:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zza:Landroid/content/res/AssetManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 7

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-eqz v5, :cond_4

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    cmp-long v5, v0, v2

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    int-to-long v5, p3

    .line 21
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int p3, v0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 30
    .line 31
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-ne p1, v4, :cond_2

    .line 38
    .line 39
    return v4

    .line 40
    :cond_2
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 41
    .line 42
    cmp-long v0, p2, v2

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    int-to-long v0, p1

    .line 47
    sub-long/2addr p2, v0

    .line 48
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgo;

    .line 55
    .line 56
    const/16 p3, 0x7d0

    .line 57
    .line 58
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Ljava/lang/Throwable;I)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_4
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    new-array v4, v4, [J

    .line 17
    .line 18
    fill-array-data v4, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/16 v3, 0xf

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    move-exception p1

    .line 44
    goto :goto_4

    .line 45
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    new-array v4, v4, [J

    .line 49
    .line 50
    fill-array-data v4, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzi(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgp;->zza:Landroid/content/res/AssetManager;

    .line 74
    .line 75
    invoke-virtual {v3, v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 80
    .line 81
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 82
    .line 83
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 88
    .line 89
    cmp-long v1, v3, v5

    .line 90
    .line 91
    if-ltz v1, :cond_4

    .line 92
    .line 93
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 94
    .line 95
    const-wide/16 v3, -0x1

    .line 96
    .line 97
    cmp-long v5, v1, v3

    .line 98
    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    int-to-long v1, v1

    .line 111
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 112
    .line 113
    const-wide/32 v5, 0x7fffffff

    .line 114
    .line 115
    .line 116
    cmp-long v7, v1, v5

    .line 117
    .line 118
    if-nez v7, :cond_3

    .line 119
    .line 120
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zze:Z

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 125
    .line 126
    .line 127
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzd:J

    .line 128
    .line 129
    return-wide v0

    .line 130
    :cond_4
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    .line 131
    .line 132
    const/16 v1, 0x7d8

    .line 133
    .line 134
    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Ljava/lang/Throwable;I)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_5
    throw v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgo; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgo;

    .line 140
    .line 141
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    .line 142
    .line 143
    if-eq v0, v2, :cond_6

    .line 144
    .line 145
    const/16 v0, 0x7d0

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    const/16 v0, 0x7d5

    .line 149
    .line 150
    :goto_3
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Ljava/lang/Throwable;I)V

    .line 151
    .line 152
    .line 153
    throw v1

    .line 154
    :goto_4
    throw p1

    .line 155
    :array_0
    .array-data 8
        -0x2fca54a507c3aaaeL    # -2.5091401005868848E78
        -0x23e577742166b4b8L    # -4.8213727879894396E135
        0x40a466ea1684f0a6L    # 2611.4572030586014
    .end array-data

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
    .line 170
    .line 171
    :array_1
    .array-data 8
        0xa0bc6c8a9ac6084L
        -0x3a58d38647a2919bL    # -3.5859613846158733E27
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzb:Landroid/net/Uri;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zze:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zze:Z

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
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgo;

    .line 30
    .line 31
    const/16 v4, 0x7d0

    .line 32
    .line 33
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Ljava/lang/Throwable;I)V

    .line 34
    .line 35
    .line 36
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzc:Ljava/io/InputStream;

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zze:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zze:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 47
    .line 48
    .line 49
    :goto_3
    throw v2
.end method
