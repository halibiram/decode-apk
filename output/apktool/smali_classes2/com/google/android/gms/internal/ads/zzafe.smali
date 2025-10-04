.class final Lcom/google/android/gms/internal/ads/zzafe;
.super Lcom/google/android/gms/internal/ads/zzafg;
.source "SourceFile"


# instance fields
.field private zzb:J

.field private zzc:[J

.field private zzd:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzact;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzact;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(Lcom/google/android/gms/internal/ads/zzaea;)V

    .line 7
    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [J

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:[J

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[J

    .line 24
    .line 25
    return-void
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzt()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzfp;I)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_9

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_8

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq p1, v2, :cond_5

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-eq p1, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    if-eq p1, v2, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xb

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance p1, Ljava/util/Date;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzg(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    double-to-long v2, v2

    .line 38
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    if-ge v0, p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzh(Lcom/google/android/gms/internal/ads/zzfp;I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object v1

    .line 73
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzj(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    new-instance p1, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_6
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/16 v2, 0x9

    .line 92
    .line 93
    if-ne v1, v2, :cond_7

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_7
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzh(Lcom/google/android/gms/internal/ads/zzfp;I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-ne p0, v1, :cond_a

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    :cond_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_b
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzg(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/Double;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/util/HashMap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzafe;->zzh(Lcom/google/android/gms/internal/ads/zzfp;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfp;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfp;J)Z
    .locals 9

    .line 1
    const/4 p2, 0x3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafe;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v3, p2, [J

    .line 19
    .line 20
    fill-array-data v3, :array_0

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
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    if-ne p3, v2, :cond_3

    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafe;->zzj(Lcom/google/android/gms/internal/ads/zzfp;)Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v0, [J

    .line 57
    .line 58
    fill-array-data v2, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    instance-of v2, p3, Ljava/lang/Double;

    .line 73
    .line 74
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    check-cast p3, Ljava/lang/Double;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 84
    .line 85
    .line 86
    move-result-wide v5

    .line 87
    const-wide/16 v7, 0x0

    .line 88
    .line 89
    cmpl-double p3, v5, v7

    .line 90
    .line 91
    if-lez p3, :cond_1

    .line 92
    .line 93
    mul-double v5, v5, v3

    .line 94
    .line 95
    double-to-long v5, v5

    .line 96
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:J

    .line 97
    .line 98
    :cond_1
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v2, p2, [J

    .line 101
    .line 102
    fill-array-data v2, :array_2

    .line 103
    .line 104
    .line 105
    invoke-direct {p3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    instance-of p3, p1, Ljava/util/Map;

    .line 117
    .line 118
    if-eqz p3, :cond_3

    .line 119
    .line 120
    check-cast p1, Ljava/util/Map;

    .line 121
    .line 122
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array p2, p2, [J

    .line 125
    .line 126
    fill-array-data p2, :array_3

    .line 127
    .line 128
    .line 129
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v0, v0, [J

    .line 143
    .line 144
    fill-array-data v0, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    instance-of p3, p2, Ljava/util/List;

    .line 159
    .line 160
    if-eqz p3, :cond_3

    .line 161
    .line 162
    instance-of p3, p1, Ljava/util/List;

    .line 163
    .line 164
    if-eqz p3, :cond_3

    .line 165
    .line 166
    check-cast p2, Ljava/util/List;

    .line 167
    .line 168
    check-cast p1, Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    new-array v0, p3, [J

    .line 175
    .line 176
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:[J

    .line 177
    .line 178
    new-array v0, p3, [J

    .line 179
    .line 180
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[J

    .line 181
    .line 182
    const/4 v0, 0x0

    .line 183
    :goto_0
    if-ge v0, p3, :cond_3

    .line 184
    .line 185
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    instance-of v6, v5, Ljava/lang/Double;

    .line 194
    .line 195
    if-eqz v6, :cond_2

    .line 196
    .line 197
    instance-of v6, v2, Ljava/lang/Double;

    .line 198
    .line 199
    if-eqz v6, :cond_2

    .line 200
    .line 201
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:[J

    .line 202
    .line 203
    check-cast v5, Ljava/lang/Double;

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    mul-double v7, v7, v3

    .line 210
    .line 211
    double-to-long v7, v7

    .line 212
    aput-wide v7, v6, v0

    .line 213
    .line 214
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[J

    .line 215
    .line 216
    check-cast v2, Ljava/lang/Double;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v6

    .line 222
    aput-wide v6, v5, v0

    .line 223
    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_2
    new-array p1, v1, [J

    .line 228
    .line 229
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:[J

    .line 230
    .line 231
    new-array p1, v1, [J

    .line 232
    .line 233
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[J

    .line 234
    .line 235
    :cond_3
    :goto_1
    return v1

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        0x6ca0c5386f91060dL    # 1.8066338427817153E215
        -0xd825c2616c67e03L
        0x51bcd5d6e83e4290L    # 5.6017460654797585E85
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
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
    :array_1
    .array-data 8
        0x7efe669bc0258746L    # 5.2119574298017095E303
        -0x3b2b70256808342aL    # -3.8840386156243985E23
    .end array-data

    :array_2
    .array-data 8
        0x613aee97b492e4c5L    # 2.3664991570885098E160
        -0x5562e67b110d664L    # -7.498611034731163E282
        -0x49a7c401846d2a74L    # -6.632726568063011E-47
    .end array-data

    :array_3
    .array-data 8
        0x6fe6e3bb0e51eb9L
        -0x6c039bb37fc9efe5L
        -0x3ffbffa998a050c0L    # -2.500164802177011
    .end array-data

    :array_4
    .array-data 8
        0x32ce19571694ec38L    # 5.716139043930989E-64
        0x43a370ccf19c48c5L    # 7.0042241109671181E17
    .end array-data
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:J

    return-wide v0
.end method

.method public final zzd()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[J

    return-object v0
.end method

.method public final zze()[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:[J

    return-object v0
.end method
