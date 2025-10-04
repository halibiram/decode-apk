.class public final Lcom/google/android/gms/internal/ads/zzhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgw;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgw;

.field private zzd:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/ads/zzgw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zza:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:Lcom/google/android/gms/internal/ads/zzgw;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method private final zzg()Lcom/google/android/gms/internal/ads/zzgw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Lcom/google/android/gms/internal/ads/zzgw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zza:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgp;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgp;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Lcom/google/android/gms/internal/ads/zzgw;

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Lcom/google/android/gms/internal/ads/zzgw;

    .line 18
    .line 19
    return-object v0
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzgw;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhy;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgw;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private static final zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0
    .param p0    # Lcom/google/android/gms/internal/ads/zzgw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzu;->zza([BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 20
    .line 21
    sget v4, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_e

    .line 32
    .line 33
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v5, v1, [J

    .line 36
    .line 37
    fill-array-data v5, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v4, v1, [J

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()Lcom/google/android/gms/internal/ads/zzgw;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v4, v1, [J

    .line 86
    .line 87
    fill-array-data v4, :array_2

    .line 88
    .line 89
    .line 90
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzgw;

    .line 104
    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zza:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgt;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzgw;

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzgw;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v4, v1, [J

    .line 128
    .line 129
    fill-array-data v4, :array_3

    .line 130
    .line 131
    .line 132
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 146
    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    const/4 v1, 0x7

    .line 152
    new-array v1, v1, [J

    .line 153
    .line 154
    fill-array-data v1, :array_4

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgw;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 180
    .line 181
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_0
    move-exception p1

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    .line 187
    .line 188
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    const/4 v2, 0x6

    .line 191
    new-array v2, v2, [J

    .line 192
    .line 193
    fill-array-data v2, :array_5

    .line 194
    .line 195
    .line 196
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :catch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    const/4 v1, 0x4

    .line 210
    new-array v1, v1, [J

    .line 211
    .line 212
    fill-array-data v1, :array_6

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    const/16 v2, 0xa

    .line 225
    .line 226
    new-array v2, v2, [J

    .line 227
    .line 228
    fill-array-data v2, :array_7

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 242
    .line 243
    if-nez v0, :cond_5

    .line 244
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:Lcom/google/android/gms/internal/ads/zzgw;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 248
    .line 249
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 250
    .line 251
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 252
    .line 253
    goto/16 :goto_5

    .line 254
    .line 255
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v4, v1, [J

    .line 258
    .line 259
    fill-array-data v4, :array_8

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_8

    .line 274
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgw;

    .line 276
    .line 277
    if-nez v0, :cond_7

    .line 278
    .line 279
    new-instance v0, Lcom/google/android/gms/internal/ads/zzia;

    .line 280
    .line 281
    const/16 v1, 0x7d0

    .line 282
    .line 283
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzia;-><init>(I)V

    .line 284
    .line 285
    .line 286
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgw;

    .line 287
    .line 288
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 289
    .line 290
    .line 291
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgw;

    .line 292
    .line 293
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 294
    .line 295
    goto/16 :goto_5

    .line 296
    .line 297
    :cond_8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 298
    .line 299
    new-array v1, v1, [J

    .line 300
    .line 301
    fill-array-data v1, :array_9

    .line 302
    .line 303
    .line 304
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_a

    .line 316
    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Lcom/google/android/gms/internal/ads/zzgw;

    .line 318
    .line 319
    if-nez v0, :cond_9

    .line 320
    .line 321
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgu;

    .line 322
    .line 323
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgu;-><init>()V

    .line 324
    .line 325
    .line 326
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Lcom/google/android/gms/internal/ads/zzgw;

    .line 327
    .line 328
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 329
    .line 330
    .line 331
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Lcom/google/android/gms/internal/ads/zzgw;

    .line 332
    .line 333
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 334
    .line 335
    goto/16 :goto_5

    .line 336
    .line 337
    :cond_a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 338
    .line 339
    new-array v3, v0, [J

    .line 340
    .line 341
    fill-array-data v3, :array_a

    .line 342
    .line 343
    .line 344
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_c

    .line 356
    .line 357
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 358
    .line 359
    new-array v0, v0, [J

    .line 360
    .line 361
    fill-array-data v0, :array_b

    .line 362
    .line 363
    .line 364
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_b

    .line 376
    .line 377
    goto :goto_3

    .line 378
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:Lcom/google/android/gms/internal/ads/zzgw;

    .line 379
    .line 380
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Lcom/google/android/gms/internal/ads/zzgw;

    .line 384
    .line 385
    if-nez v0, :cond_d

    .line 386
    .line 387
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zza:Landroid/content/Context;

    .line 388
    .line 389
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhw;

    .line 390
    .line 391
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Landroid/content/Context;)V

    .line 392
    .line 393
    .line 394
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Lcom/google/android/gms/internal/ads/zzgw;

    .line 395
    .line 396
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 397
    .line 398
    .line 399
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Lcom/google/android/gms/internal/ads/zzgw;

    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_e
    :goto_4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 403
    .line 404
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    if-eqz v1, :cond_f

    .line 409
    .line 410
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 411
    .line 412
    new-array v0, v0, [J

    .line 413
    .line 414
    fill-array-data v0, :array_c

    .line 415
    .line 416
    .line 417
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzg()Lcom/google/android/gms/internal/ads/zzgw;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:Lcom/google/android/gms/internal/ads/zzgw;

    .line 438
    .line 439
    if-nez v0, :cond_10

    .line 440
    .line 441
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhm;

    .line 442
    .line 443
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhm;-><init>()V

    .line 444
    .line 445
    .line 446
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:Lcom/google/android/gms/internal/ads/zzgw;

    .line 447
    .line 448
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhd;->zzh(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 449
    .line 450
    .line 451
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:Lcom/google/android/gms/internal/ads/zzgw;

    .line 452
    .line 453
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 454
    .line 455
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 456
    .line 457
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzb(Lcom/google/android/gms/internal/ads/zzhb;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v0

    .line 461
    return-wide v0

    .line 462
    nop

    .line 463
    :array_0
    .array-data 8
        -0x3fb075ce93650e2L    # -2.554641309860327E289
        -0x1dad81f6fe911efL
    .end array-data

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
    :array_1
    .array-data 8
        -0x59a8ff1d6f2e1733L    # -5.437194949328405E-124
        -0x71209929fbd08556L
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
    :array_2
    .array-data 8
        0x76718772873459c4L    # 3.44981367709375E262
        0x70a85523cd8ff792L    # 4.835426162476659E234
    .end array-data

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
    .line 498
    .line 499
    :array_3
    .array-data 8
        -0x6f6ec15605361140L
        -0xd3050f3f5733519L
    .end array-data

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
    :array_4
    .array-data 8
        0x28d3fc8677617e31L    # 5.194177406707908E-112
        -0x6743326c9701e82bL
        0x1f001cc1fc1a58a8L
        0x6ee682587c1891a5L    # 1.6663495201073903E226
        -0x1d749460a52ba055L    # -5.052908225024878E166
        -0x7c988bae44f3af68L    # -2.93790690552764E-292
        0x425c8f8e7a5612b4L    # 4.9067025442429224E11
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
    :array_5
    .array-data 8
        0x72bd31eb193ab816L    # 4.983619545276831E244
        -0x53bcad01b2bd5952L    # -1.809392333616529E-95
        0x44c55676b789c447L    # 2.0152934117618976E23
        -0x382d5a922821970aL    # -9.914024316528413E37
        0x3074450b7e9a5d92L    # 2.8008416500734356E-75
        0x48858316c2bab953L    # 2.3424565609278963E41
    .end array-data

    .line 544
    .line 545
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
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_6
    .array-data 8
        -0x34f792884aac10fbL    # -2.9246250086010876E53
        -0x2859cd20a53d785eL    # -1.708347905094385E114
        -0x60b9613380e4fe4dL    # -5.148619492553677E-158
        -0x3383f3981d331b9aL    # -2.817008608492906E60
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_7
    .array-data 8
        0x5ad67156b5169b9dL    # 3.8891422113911276E129
        0x42e30600f5fd497L
        -0x251d4fa5a86351f3L    # -6.477260883797117E129
        -0x7660589460dddf3bL
        0x6fc7a3c560a73beL
        -0x45330296a09b8bdcL    # -1.8734276742783997E-25
        0x36b82860887fb7c2L    # 4.231522514132951E-45
        0x6aaa24c728e35298L    # 6.557427657532176E205
        0x64886036a6e99605L    # 1.9292431329625376E176
        -0x7325e708a76c10e3L    # -9.331315492184184E-247
    .end array-data

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_8
    .array-data 8
        -0x3f266601e55a2902L    # -26215.970376453355
        0x210396508358e14dL
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_9
    .array-data 8
        0x5ce15c313bb3d575L    # 2.584168859508185E139
        -0x35dce4705f03f7a4L    # -1.3962938445195403E49
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_a
    .array-data 8
        0x6a89a048ed23c602L    # 1.6069035027641212E205
        -0x2a38c23d7ac3bf8cL    # -1.6657429164002705E105
        -0x64263e14e3be712fL    # -1.627219449937431E-174
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_b
    .array-data 8
        -0x44fd916fb2e9bcbfL    # -1.905812691452157E-24
        0x56aff7c3c5669e8eL    # 3.753890616757666E109
        0x70f2b8c75f224737L    # 1.1905401267551516E236
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_c
    .array-data 8
        0x3ae3983e5bb32703L    # 5.065111624493362E-25
        0x743ce987c7e7866dL    # 8.280145226751613E251
        0x1799c100a877598fL    # 5.512468212988434E-195
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzc()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Lcom/google/android/gms/internal/ads/zzgw;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgw;->zze()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:Lcom/google/android/gms/internal/ads/zzgw;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgw;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:Lcom/google/android/gms/internal/ads/zzgw;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Lcom/google/android/gms/internal/ads/zzgw;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzgw;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzgw;

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgw;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Lcom/google/android/gms/internal/ads/zzgw;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Lcom/google/android/gms/internal/ads/zzgw;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zzi(Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
