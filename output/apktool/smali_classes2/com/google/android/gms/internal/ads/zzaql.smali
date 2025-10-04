.class final Lcom/google/android/gms/internal/ads/zzaql;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Z


# instance fields
.field private final zzb:Ljava/util/List;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaql;->zza:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzc:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaql;->zzb(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x15da128177415d2L
        0x22cde45472f4945dL
        -0x2c691a122720d6a5L    # -4.776384179187257E94
        -0x2bd8944ade5d4836L    # -2.5013190598049286E97
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        -0x54858b2635a42e9aL    # -3.0239386732135472E-99
        -0x19f538009d91052cL    # -3.556133595459586E183
        0x6b13eb036492032fL    # 6.394744557457503E207
        0xbdd3e6fad2151ceL
        0x634365fafdcceb97L    # 1.4641737159998287E170
        -0x36b403f46324d217L    # -1.2481527360375561E45
        0x50c0375cf5be60L
        0x2f41ff76922e141L
        0x5a1b4c56ce797d99L    # 1.1549208165217364E126
        -0x3f46e7804c02b905L    # -6424.498840169744
    .end array-data
.end method

.method public final declared-synchronized zza(Ljava/lang/String;J)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzc:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 7
    .line 8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    move-object v1, v7

    .line 15
    move-object v2, p1

    .line 16
    move-wide v3, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Ljava/lang/String;JJ)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 p3, 0x5

    .line 32
    new-array p3, p3, [J

    .line 33
    .line 34
    fill-array-data p3, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x452d0daf7b1a0e76L    # -2.4487830457976863E-25
        0x56faae2ef7ac5e3aL    # 1.002561044980664E111
        0x5277192ed0632e96L    # 1.8379770256366342E89
        -0x7c09ebffe64cf22fL
        0x2e8f9bfd6a81f22L    # 1.22205259203731E-294
    .end array-data
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzc:Z

    .line 7
    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    move-wide v9, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 27
    .line 28
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:J

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    add-int/lit8 v9, v9, -0x1

    .line 37
    .line 38
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 43
    .line 44
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:J

    .line 45
    .line 46
    sub-long/2addr v9, v7

    .line 47
    :goto_0
    cmp-long v4, v9, v5

    .line 48
    .line 49
    if-gtz v4, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 59
    .line 60
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:J

    .line 61
    .line 62
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    new-array v7, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object v6, v7, v2

    .line 69
    .line 70
    aput-object p1, v7, v3

    .line 71
    .line 72
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v6, v1, [J

    .line 75
    .line 76
    fill-array-data v6, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaql;->zzb:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 106
    .line 107
    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:J

    .line 108
    .line 109
    sub-long v4, v7, v4

    .line 110
    .line 111
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:J

    .line 116
    .line 117
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Ljava/lang/String;

    .line 122
    .line 123
    new-array v9, v1, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v4, v9, v2

    .line 126
    .line 127
    aput-object v5, v9, v3

    .line 128
    .line 129
    aput-object v6, v9, v0

    .line 130
    .line 131
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v5, v1, [J

    .line 134
    .line 135
    fill-array-data v5, :array_1

    .line 136
    .line 137
    .line 138
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    .line 148
    move-wide v4, v7

    .line 149
    goto :goto_1

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_3

    .line 152
    :cond_2
    :goto_2
    monitor-exit p0

    .line 153
    return-void

    .line 154
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    throw p1

    .line 156
    nop

    .line 157
    :array_0
    .array-data 8
        -0x17f5ccb117bcccf0L    # -1.4942234135991285E193
        0x9b9578c28c5f6abL
        0x1e683df57792020eL
    .end array-data

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
    .line 172
    .line 173
    :array_1
    .array-data 8
        -0x57ddfc5734ad0930L
        0x638e3d061be63d82L    # 3.6517916486755057E171
        -0x4474b7409f77f3b3L    # -7.222059713441912E-22
    .end array-data
.end method
