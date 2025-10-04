.class final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:J

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzalu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:Lcom/google/android/gms/internal/ads/zzalo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzj:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Ljava/util/HashMap;

.field private final zzl:Ljava/util/HashMap;

.field private zzm:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalo;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzalu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/internal/ads/zzalo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:Z

    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:J

    .line 22
    .line 23
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzi:Lcom/google/android/gms/internal/ads/zzalo;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzk:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzl:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalo;)Lcom/google/android/gms/internal/ads/zzalo;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzalu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/ads/zzalo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/zzalo;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, v12

    .line 5
    move-object v1, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move-object/from16 v8, p6

    .line 12
    .line 13
    move-object/from16 v9, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    move-object/from16 v11, p9

    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzalo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalo;)V

    .line 20
    .line 21
    .line 22
    return-object v12
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalo;
    .locals 16

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
    new-instance v15, Lcom/google/android/gms/internal/ads/zzalo;

    .line 31
    .line 32
    move-object/from16 v3, p0

    .line 33
    .line 34
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v3, v1, [J

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v4, v1, [J

    .line 55
    .line 56
    fill-array-data v4, :array_3

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v3, v1, [J

    .line 73
    .line 74
    fill-array-data v3, :array_4

    .line 75
    .line 76
    .line 77
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v4, v1, [J

    .line 87
    .line 88
    fill-array-data v4, :array_5

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    new-array v3, v3, [J

    .line 106
    .line 107
    fill-array-data v3, :array_6

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v1, v1, [J

    .line 120
    .line 121
    fill-array-data v1, :array_7

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    new-array v1, v1, [J

    .line 139
    .line 140
    const-wide v2, 0x5f6b6fa38fabbb78L    # 4.490451883691011E151

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    aput-wide v2, v1, v4

    .line 147
    .line 148
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    const/4 v10, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    move-object v3, v15

    .line 166
    move-wide v6, v8

    .line 167
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzalo;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalo;)V

    .line 168
    .line 169
    .line 170
    return-object v15

    .line 171
    :array_0
    .array-data 8
        -0x78bd126ee769dbbcL
        0xb02588138b46170L
    .end array-data

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
    :array_1
    .array-data 8
        0x33c5d7796a0f27adL    # 2.7184242059773184E-59
        -0x28a73df54ce4acddL    # -5.954064419207666E112
    .end array-data

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
    .line 194
    .line 195
    :array_2
    .array-data 8
        0x4b2bfc6490370e83L    # 1.340258796162444E54
        -0x2a58b985a4c8e167L    # -4.1704592717514336E104
    .end array-data

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
    .line 206
    .line 207
    :array_3
    .array-data 8
        -0x1ba51403ccd50427L    # -2.6634335242513527E175
        -0x660c4a05c94574edL
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
    :array_4
    .array-data 8
        0x408204a3d365a3b5L    # 576.5799930515847
        0xd32cb5180798f3fL
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :array_5
    .array-data 8
        -0x17b060ac6836e8e9L    # -2.8855036402613933E194
        0x6b39a49322c465ccL    # 3.293090373702464E208
    .end array-data

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_6
    .array-data 8
        0x16ae52c9ef1048dbL
        0x5f99012d7e474fbfL    # 3.2739929670616583E152
        -0x1fc7ad2a92df895cL    # -3.2612574301926393E155
    .end array-data

    :array_7
    .array-data 8
        0x2664a12f2ad4e0e0L    # 9.752212246395739E-124
        0x10c9a1b892a6886aL    # 8.453004213284735E-228
    .end array-data
.end method

.method private static zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzea;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/gms/internal/ads/zzea;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzea;->zzq()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    return-object p0
.end method

.method private final zzj(Ljava/util/TreeSet;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

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
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzh:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:J

    .line 52
    .line 53
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    const/4 v3, 0x0

    .line 88
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v3, v4, :cond_5

    .line 95
    .line 96
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Lcom/google/android/gms/internal/ads/zzalo;

    .line 103
    .line 104
    if-nez p2, :cond_3

    .line 105
    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    :cond_3
    const/4 v5, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const/4 v5, 0x0

    .line 111
    :goto_1
    invoke-direct {v4, p1, v5}, Lcom/google/android/gms/internal/ads/zzalo;->zzj(Ljava/util/TreeSet;Z)V

    .line 112
    .line 113
    .line 114
    add-int/2addr v3, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    return-void

    .line 117
    :array_0
    .array-data 8
        -0x6ef068efd1314c6L
        0x52ba7634a37a943cL    # 3.368969862789582E90
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
        0x744cf14d3499df7aL
        0x27b6b867184ae76dL    # 2.252455412539207E-117
    .end array-data
.end method

.method private final zzk(JLjava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    const-wide v3, -0x30b8668d6d2340e9L    # -8.339307716257251E73

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-wide v3, v2, v5

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzalo;->zzg(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    new-array v3, v3, [J

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzh:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 66
    .line 67
    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalo;->zza()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-ge v5, v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzalo;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    add-int/2addr v5, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    return-void

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x7b6afa1df605e02bL
        -0x1ab7013d167821c1L    # -8.10295408655876E179
    .end array-data
.end method

.method private final zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzalo;->zzg(J)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v9, [J

    const-wide v10, -0xf229d1f36707096L    # -4.671761727400053E235

    aput-wide v10, v7, v4

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    move-object v10, v5

    goto :goto_0

    :cond_1
    move-object/from16 v10, p5

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzl:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzk:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzk:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 5
    :goto_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v11, v6, :cond_25

    move-object/from16 v12, p6

    .line 6
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzea;

    .line 7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v13, p4

    .line 8
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzals;

    .line 9
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    .line 11
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Lcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzea;->zzq()Ljava/lang/CharSequence;

    move-result-object v15

    .line 12
    check-cast v15, Landroid/text/SpannableStringBuilder;

    if-nez v15, :cond_3

    new-instance v15, Landroid/text/SpannableStringBuilder;

    .line 13
    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    :cond_3
    if-eqz v4, :cond_24

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzi:Lcom/google/android/gms/internal/ads/zzalo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzh()I

    move-result v9

    const/16 v2, 0x21

    if-eq v9, v3, :cond_4

    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzh()I

    move-result v3

    .line 15
    invoke-direct {v9, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    invoke-interface {v15, v9, v11, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v15, v3, v11, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzJ()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v15, v3, v11, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzH()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzd()I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 21
    invoke-static {v15, v3, v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzG()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 22
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzc()I

    move-result v9

    invoke-direct {v3, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 24
    invoke-static {v15, v3, v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzD()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 25
    new-instance v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzD()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-direct {v3, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v15, v3, v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzk()Lcom/google/android/gms/internal/ads/zzaln;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzk()Lcom/google/android/gms/internal/ads/zzaln;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaln;->zza:I

    const/4 v2, -0x1

    if-ne v9, v2, :cond_c

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzals;->zzj:I

    const/4 v9, 0x2

    if-eq v2, v9, :cond_a

    const/4 v9, 0x1

    if-ne v2, v9, :cond_b

    :cond_a
    const/4 v2, 0x3

    goto :goto_3

    :cond_b
    const/4 v2, 0x1

    :goto_3
    move v9, v2

    const/4 v2, 0x1

    goto :goto_4

    .line 30
    :cond_c
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzaln;->zzb:I

    .line 31
    :goto_4
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaln;->zzc:I

    const/4 v14, -0x2

    if-ne v3, v14, :cond_d

    const/4 v3, 0x1

    .line 32
    :cond_d
    new-instance v14, Lcom/google/android/gms/internal/ads/zzej;

    invoke-direct {v14, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzej;-><init>(III)V

    const/16 v2, 0x21

    invoke-static {v15, v14, v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzg()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    const/4 v1, 0x4

    if-eq v2, v1, :cond_11

    :cond_f
    :goto_5
    move-object/from16 v16, v5

    :cond_10
    const/4 v3, 0x0

    const/4 v9, -0x1

    goto/16 :goto_d

    .line 33
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzalm;-><init>()V

    const/16 v2, 0x21

    .line 34
    invoke-interface {v15, v1, v11, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_12
    :goto_6
    if-eqz v1, :cond_14

    .line 35
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    .line 36
    invoke-static {v3, v9, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Lcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzalu;->zzg()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_15

    :cond_13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalo;->zzi:Lcom/google/android/gms/internal/ads/zzalo;

    goto :goto_6

    :cond_14
    const/4 v1, 0x0

    :cond_15
    if-eqz v1, :cond_f

    new-instance v3, Ljava/util/ArrayDeque;

    .line 37
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 39
    :cond_16
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzalo;

    .line 41
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    invoke-static {v14, v2, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Lcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalu;->zzg()I

    move-result v2

    const/4 v14, 0x3

    if-ne v2, v14, :cond_17

    move-object/from16 v16, v5

    move-object v2, v9

    goto :goto_8

    .line 42
    :cond_17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzalo;->zza()I

    move-result v2

    const/4 v14, -0x1

    add-int/2addr v2, v14

    :goto_7
    if-ltz v2, :cond_16

    move-object/from16 v16, v5

    .line 43
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/2addr v2, v14

    move-object/from16 v5, v16

    goto :goto_7

    :cond_18
    move-object/from16 v16, v5

    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_10

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalo;->zza()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzalo;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_1b

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzalo;->zzb:Ljava/lang/String;

    sget v9, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    .line 46
    invoke-static {v9, v2, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Lcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalu;->zzf()I

    move-result v2

    :goto_9
    const/4 v9, -0x1

    goto :goto_a

    :cond_19
    const/4 v2, -0x1

    goto :goto_9

    :goto_a
    if-ne v2, v9, :cond_1a

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzalo;->zzf:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalo;->zzj:[Ljava/lang/String;

    .line 47
    invoke-static {v14, v1, v8}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Lcom/google/android/gms/internal/ads/zzalu;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalu;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalu;->zzf()I

    move-result v2

    .line 48
    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeh;

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzeh;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x21

    invoke-interface {v15, v1, v11, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    :cond_1b
    :goto_b
    const/4 v9, -0x1

    goto :goto_c

    :cond_1c
    const/4 v3, 0x0

    goto :goto_b

    :goto_c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v5, v2, [J

    fill-array-data v5, :array_0

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x8

    new-array v5, v5, [J

    fill-array-data v5, :array_1

    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzff;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzF()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    const/16 v2, 0x21

    .line 51
    invoke-static {v15, v1, v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zze()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    if-eq v1, v5, :cond_20

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1f

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1e

    goto :goto_e

    .line 52
    :cond_1e
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zza()F

    move-result v14

    div-float/2addr v14, v2

    .line 53
    invoke-direct {v1, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v14, 0x21

    .line 54
    invoke-static {v15, v1, v11, v6, v14}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_e

    :cond_1f
    const/4 v5, 0x3

    const/16 v14, 0x21

    .line 55
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zza()F

    move-result v3

    .line 56
    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 57
    invoke-static {v15, v1, v11, v6, v14}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_e

    :cond_20
    const/4 v5, 0x3

    const/16 v14, 0x21

    .line 58
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zza()F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x1

    .line 59
    invoke-direct {v1, v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 60
    invoke-static {v15, v1, v11, v6, v14}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 61
    :goto_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x2

    new-array v6, v5, [J

    fill-array-data v6, :array_2

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzb()F

    move-result v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_21

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzb()F

    move-result v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    .line 63
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzj(F)Lcom/google/android/gms/internal/ads/zzea;

    :cond_21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzj()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzj()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 64
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzea;

    :cond_22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzi()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzalu;->zzi()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 65
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzg(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzea;

    :cond_23
    move-object/from16 v5, v16

    const/4 v3, -0x1

    :cond_24
    const/4 v4, 0x0

    :goto_f
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_25
    move-object/from16 v13, p4

    move-object/from16 v12, p6

    goto :goto_f

    :cond_26
    move-object/from16 v13, p4

    move-object/from16 v12, p6

    const/4 v9, 0x0

    .line 66
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalo;->zza()I

    move-result v1

    if-ge v9, v1, :cond_27

    .line 67
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p6

    .line 68
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzalo;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    goto :goto_10

    :cond_27
    :goto_11
    return-void

    :array_0
    .array-data 8
        0x5406afb292d21cc1L    # 6.057210293625526E96
        0x28362fc578a53419L
        0x5d48571186b99eecL    # 2.318838708179231E141
    .end array-data

    :array_1
    .array-data 8
        -0xf56240f20df3523L    # -5.138789012226612E234
        0x3a376f255ba5a7f8L    # 2.9578073053970794E-28
        0x43dfceb933e0a709L    # 9.1678915713667E18
        -0x6b7a439ca5ef2fdeL
        0x16af454e78596174L    # 2.042635539630771E-199
        0x241ff97cc7e2474aL
        0xbb67ea80dfb69a8L
        0x4f1a70a77d5fa7d2L    # 1.1678883697389705E73
    .end array-data

    :array_2
    .array-data 8
        -0x5c997488f54b0e2bL
        0x270afc709f5b624cL    # 1.30632659293528E-120
    .end array-data
.end method

.method private final zzm(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p5

    .line 3
    .line 4
    const/4 v8, 0x0

    .line 5
    const/4 v9, 0x1

    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzk:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzl:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    fill-array-data v3, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v4, v9, [J

    .line 46
    .line 47
    const-wide v5, -0x5b9138297ec85931L    # -3.387889588590209E-133

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    aput-wide v5, v4, v8

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
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 68
    .line 69
    move-object v10, v1

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move-object/from16 v10, p4

    .line 72
    .line 73
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzc:Z

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    if-eqz p3, :cond_2

    .line 78
    .line 79
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalo;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzb:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    new-array v4, v2, [J

    .line 97
    .line 98
    fill-array-data v4, :array_1

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/16 v11, 0xa

    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    if-nez p3, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalo;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzalo;->zzg(J)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_b

    .line 132
    .line 133
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_5

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/util/Map$Entry;

    .line 152
    .line 153
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzk:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lcom/google/android/gms/internal/ads/zzea;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzea;->zzq()Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalo;->zza:Ljava/lang/String;

    .line 187
    .line 188
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v2, v2, [J

    .line 191
    .line 192
    fill-array-data v2, :array_2

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    const/4 v13, 0x0

    .line 207
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzalo;->zza()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-ge v13, v1, :cond_8

    .line 212
    .line 213
    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzd(I)Lcom/google/android/gms/internal/ads/zzalo;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-nez p3, :cond_6

    .line 218
    .line 219
    if-eqz v12, :cond_7

    .line 220
    .line 221
    :cond_6
    const/4 v4, 0x1

    .line 222
    goto :goto_4

    .line 223
    :cond_7
    const/4 v4, 0x0

    .line 224
    :goto_4
    move-wide v2, p1

    .line 225
    move-object v5, v10

    .line 226
    move-object/from16 v6, p5

    .line 227
    .line 228
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzalo;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 229
    .line 230
    .line 231
    add-int/2addr v13, v9

    .line 232
    goto :goto_3

    .line 233
    :cond_8
    if-eqz v12, :cond_a

    .line 234
    .line 235
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzalo;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 244
    .line 245
    if-ltz v2, :cond_9

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    const/16 v4, 0x20

    .line 252
    .line 253
    if-ne v3, v4, :cond_9

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_9
    if-ltz v2, :cond_a

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eq v2, v11, :cond_a

    .line 263
    .line 264
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 265
    .line 266
    .line 267
    :cond_a
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_b

    .line 280
    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    check-cast v2, Ljava/util/Map$Entry;

    .line 286
    .line 287
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalo;->zzl:Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Ljava/lang/String;

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Lcom/google/android/gms/internal/ads/zzea;

    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzea;->zzq()Ljava/lang/CharSequence;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_b
    :goto_7
    return-void

    .line 321
    :array_0
    .array-data 8
        -0x42138ee5700c135bL    # -2.0694141537222386E-10
        0x5662af232e08de38L    # 1.371264881946655E108
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_1
    .array-data 8
        -0x431ba3aeb5082272L    # -2.260482404633329E-15
        -0x60736955d593f94eL
    .end array-data

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
    :array_2
    .array-data 8
        0x43eb36e610db5d09L    # 1.5688061182724819E19
        0x231a584666e6ebabL    # 1.382666135767328E-139
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzalo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalo;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final zze(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    new-instance v10, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 12
    .line 13
    move-wide/from16 v11, p1

    .line 14
    .line 15
    invoke-direct {v7, v11, v12, v0, v10}, Lcom/google/android/gms/internal/ads/zzalo;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance v13, Ljava/util/TreeMap;

    .line 19
    .line 20
    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 25
    .line 26
    move-object/from16 v0, p0

    .line 27
    .line 28
    move-wide/from16 v1, p1

    .line 29
    .line 30
    move-object v5, v13

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzalo;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzalo;->zzg:Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v3, p3

    .line 37
    .line 38
    move-object/from16 v4, p4

    .line 39
    .line 40
    move-object v6, v13

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzalo;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    :goto_0
    if-ge v3, v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/util/Pair;

    .line 62
    .line 63
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    if-nez v5, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    array-length v11, v5

    .line 81
    invoke-static {v5, v2, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/google/android/gms/internal/ads/zzals;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance v11, Lcom/google/android/gms/internal/ads/zzea;

    .line 97
    .line 98
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzea;

    .line 102
    .line 103
    .line 104
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzb:F

    .line 105
    .line 106
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 110
    .line 111
    .line 112
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzc:F

    .line 113
    .line 114
    invoke-virtual {v11, v5, v2}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 115
    .line 116
    .line 117
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zze:I

    .line 118
    .line 119
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 120
    .line 121
    .line 122
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzf:F

    .line 123
    .line 124
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzk(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 125
    .line 126
    .line 127
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzg:F

    .line 128
    .line 129
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzd(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 130
    .line 131
    .line 132
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzals;->zzj:I

    .line 133
    .line 134
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzo(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :goto_1
    add-int/2addr v3, v9

    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v13}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_d

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Ljava/util/Map$Entry;

    .line 165
    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Lcom/google/android/gms/internal/ads/zzals;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/google/android/gms/internal/ads/zzea;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzea;->zzq()Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    check-cast v5, Landroid/text/SpannableStringBuilder;

    .line 193
    .line 194
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    const-class v10, Lcom/google/android/gms/internal/ads/zzalm;

    .line 199
    .line 200
    invoke-virtual {v5, v2, v6, v10}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, [Lcom/google/android/gms/internal/ads/zzalm;

    .line 205
    .line 206
    array-length v10, v6

    .line 207
    const/4 v11, 0x0

    .line 208
    :goto_3
    if-ge v11, v10, :cond_2

    .line 209
    .line 210
    aget-object v12, v6, v11

    .line 211
    .line 212
    invoke-virtual {v5, v12}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    invoke-virtual {v5, v12}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 221
    .line 222
    new-array v15, v9, [J

    .line 223
    .line 224
    const-wide v16, -0x24ce03fc43622b3bL    # -1.994595584978817E131

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    aput-wide v16, v15, v2

    .line 230
    .line 231
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-virtual {v5, v13, v12, v14}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    .line 240
    .line 241
    add-int/2addr v11, v9

    .line 242
    goto :goto_3

    .line 243
    :cond_2
    const/4 v6, 0x0

    .line 244
    :goto_4
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    const/16 v11, 0x20

    .line 249
    .line 250
    if-ge v6, v10, :cond_5

    .line 251
    .line 252
    add-int/lit8 v10, v6, 0x1

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-ne v12, v11, :cond_4

    .line 259
    .line 260
    move v12, v10

    .line 261
    :goto_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    if-ge v12, v13, :cond_3

    .line 266
    .line 267
    invoke-virtual {v5, v12}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    if-ne v13, v11, :cond_3

    .line 272
    .line 273
    add-int/2addr v12, v9

    .line 274
    goto :goto_5

    .line 275
    :cond_3
    sub-int/2addr v12, v10

    .line 276
    if-lez v12, :cond_4

    .line 277
    .line 278
    add-int/2addr v12, v6

    .line 279
    invoke-virtual {v5, v6, v12}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 280
    .line 281
    .line 282
    :cond_4
    move v6, v10

    .line 283
    goto :goto_4

    .line 284
    :cond_5
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-lez v6, :cond_6

    .line 289
    .line 290
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-ne v6, v11, :cond_6

    .line 295
    .line 296
    invoke-virtual {v5, v2, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 297
    .line 298
    .line 299
    :cond_6
    const/4 v6, 0x0

    .line 300
    :goto_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    add-int/lit8 v10, v10, -0x1

    .line 305
    .line 306
    const/16 v12, 0xa

    .line 307
    .line 308
    if-ge v6, v10, :cond_8

    .line 309
    .line 310
    add-int/lit8 v10, v6, 0x1

    .line 311
    .line 312
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    if-ne v13, v12, :cond_7

    .line 317
    .line 318
    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    if-ne v12, v11, :cond_7

    .line 323
    .line 324
    add-int/lit8 v6, v6, 0x2

    .line 325
    .line 326
    invoke-virtual {v5, v10, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 327
    .line 328
    .line 329
    :cond_7
    move v6, v10

    .line 330
    goto :goto_6

    .line 331
    :cond_8
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    if-lez v6, :cond_9

    .line 336
    .line 337
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    add-int/lit8 v6, v6, -0x1

    .line 342
    .line 343
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-ne v6, v11, :cond_9

    .line 348
    .line 349
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    add-int/lit8 v6, v6, -0x1

    .line 354
    .line 355
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 360
    .line 361
    .line 362
    :cond_9
    const/4 v6, 0x0

    .line 363
    :goto_7
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    add-int/lit8 v10, v10, -0x1

    .line 368
    .line 369
    if-ge v6, v10, :cond_b

    .line 370
    .line 371
    add-int/lit8 v10, v6, 0x1

    .line 372
    .line 373
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-ne v13, v11, :cond_a

    .line 378
    .line 379
    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    if-ne v13, v12, :cond_a

    .line 384
    .line 385
    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 386
    .line 387
    .line 388
    :cond_a
    move v6, v10

    .line 389
    goto :goto_7

    .line 390
    :cond_b
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-lez v6, :cond_c

    .line 395
    .line 396
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    add-int/lit8 v6, v6, -0x1

    .line 401
    .line 402
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-ne v6, v12, :cond_c

    .line 407
    .line 408
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    add-int/lit8 v6, v6, -0x1

    .line 413
    .line 414
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 415
    .line 416
    .line 417
    move-result v10

    .line 418
    invoke-virtual {v5, v6, v10}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 419
    .line 420
    .line 421
    :cond_c
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzc:F

    .line 422
    .line 423
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzals;->zzd:I

    .line 424
    .line 425
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 426
    .line 427
    .line 428
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zze:I

    .line 429
    .line 430
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 431
    .line 432
    .line 433
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzb:F

    .line 434
    .line 435
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 436
    .line 437
    .line 438
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzf:F

    .line 439
    .line 440
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzk(F)Lcom/google/android/gms/internal/ads/zzea;

    .line 441
    .line 442
    .line 443
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzals;->zzi:F

    .line 444
    .line 445
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzals;->zzh:I

    .line 446
    .line 447
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzn(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 448
    .line 449
    .line 450
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzals;->zzj:I

    .line 451
    .line 452
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzo(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto/16 :goto_2

    .line 463
    .line 464
    :cond_d
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzalo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzm:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzg(J)Z
    .locals 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzd:J

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5

    move-wide v0, v3

    :cond_0
    cmp-long v5, v0, p1

    if-gtz v5, :cond_1

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    cmp-long v8, v6, v3

    if-eqz v8, :cond_5

    :cond_1
    cmp-long v6, v0, v3

    if-nez v6, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    cmp-long v3, p1, v0

    if-ltz v3, :cond_5

    :cond_2
    const/4 v0, 0x0

    if-gtz v5, :cond_4

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzalo;->zze:J

    cmp-long v1, p1, v3

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    return v2
.end method

.method public final zzh()[J
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzalo;->zzj(Ljava/util/TreeSet;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    add-int/lit8 v5, v1, 0x1

    .line 37
    .line 38
    aput-wide v3, v2, v1

    .line 39
    .line 40
    move v1, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method
