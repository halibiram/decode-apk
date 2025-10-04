.class public final Lcom/google/android/gms/internal/ads/zzehh;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgey;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzik:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    new-array v2, v2, [J

    .line 21
    .line 22
    fill-array-data v2, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->zza:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 39
    .line 40
    return-void

    .line 41
    :array_0
    .array-data 8
        0x76f2944019612c69L    # 9.360540912681278E264
        -0x2960be13aed31308L    # -1.8352399586391597E109
        0x6eb3a7233cb48fbaL    # 1.818624376035116E225
        0xc088d8c8bfaf25bL
        -0x3b56ebd1e05b6d63L    # -5.9215710254607475E22
    .end array-data
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzceh;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzehh;->zzj(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzceh;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic zzf(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzceh;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    new-array v3, v3, [J

    .line 37
    .line 38
    fill-array-data v3, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v2, v2, [J

    .line 51
    .line 52
    fill-array-data v2, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzehh;->zzj(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzceh;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :array_0
    .array-data 8
        0x7a51c0d26c49d60eL    # 1.611286904276243E281
        -0x43084f9996918769L    # -5.2600285639788076E-15
        0x2de5170345fc87d4L    # 1.325212919502191E-87
    .end array-data

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
    :array_1
    .array-data 8
        0x79d2ef759fb0c245L    # 6.713209852555071E278
        -0xa023000334b32f3L    # -2.291894502458032E260
        0x177975d4ab2cbe4cL
        0x1251b8c1a4be775aL
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
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
    .line 102
    .line 103
    .line 104
    .line 105
    :array_2
    .array-data 8
        0x12964afd1a9e37c0L
        0x421c6bb12c629f31L    # 3.051646440865546E10
        -0x762bc91944302f6aL
    .end array-data
.end method

.method public static final zzi(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    new-array v1, v1, [J

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x7ce2d20dbb4edddL    # -9.416172412772973E270
        0x5dc31481c83801b3L    # 4.653382118405292E143
        0x53c4374071a9de9eL    # 3.3734956702385377E95
        0x7d5bd8aea4af4b3eL    # 7.113855644700251E295
    .end array-data

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
        0x3426c9a0955a4d68L    # 1.8151375841101827E-57
        -0x64aed387a6ede231L    # -4.23805626091207E-177
        -0x6a03d44957505cc0L
        -0x670e7b8c6625a9cfL
        -0x5474bb2d61b6c58aL    # -6.23358778015539E-99
        0x16ab4c56330f344cL
    .end array-data
.end method

.method private static zzj(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzceh;)V
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v5, v1, [J

    .line 11
    .line 12
    fill-array-data v5, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    filled-new-array {v4}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v6, v3, [J

    .line 34
    .line 35
    fill-array-data v6, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v5, v3, [J

    .line 58
    .line 59
    fill-array-data v5, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v5, v0, [J

    .line 72
    .line 73
    fill-array-data v5, :array_3

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
    move-result-object v6

    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v13, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    move-object v5, p0

    .line 88
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    new-array v6, v5, [Ljava/lang/String;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v10, v1, [J

    .line 109
    .line 110
    fill-array-data v10, :array_4

    .line 111
    .line 112
    .line 113
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    const/4 v10, -0x1

    .line 125
    if-eq v9, v10, :cond_0

    .line 126
    .line 127
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    aput-object v9, v6, v8

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_3

    .line 136
    :cond_0
    :goto_1
    add-int/2addr v8, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v3, v3, [J

    .line 144
    .line 145
    fill-array-data v3, :array_5

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    filled-new-array {v3}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v0, v0, [J

    .line 166
    .line 167
    fill-array-data v0, :array_6

    .line 168
    .line 169
    .line 170
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p0, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 184
    .line 185
    .line 186
    :goto_2
    if-ge v7, v5, :cond_2

    .line 187
    .line 188
    aget-object p0, v6, v7

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzceh;->zza(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    add-int/2addr v7, v2

    .line 194
    goto :goto_2

    .line 195
    :cond_2
    return-void

    .line 196
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        -0x51161c5edb34a2c6L    # -1.0661282614555804E-82
        -0x2038a49278a3a5e2L    # -2.4466253692439257E153
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_1
    .array-data 8
        -0x580122414138e532L
        0xa73e88c893b6153L
        0x7dc9160f089f2e14L    # 8.203138351468304E297
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
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
    :array_2
    .array-data 8
        0x2727a0523722ab94L
        0x5449c21cf4acb343L    # 1.100385946329709E98
        -0x56b5882b12a770bdL    # -8.804693438636584E-110
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :array_3
    .array-data 8
        0x3d7525ecaad260cdL    # 1.2021327225960952E-12
        -0x46c316847e3f3686L    # -5.568256515884002E-33
        -0x2316484cad9669fdL    # -3.828230764249753E139
        -0x258310b296ff800cL    # -7.834626325144967E127
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_4
    .array-data 8
        0x7816fe4c62a4ea97L    # 3.036815666882508E270
        -0x2ce3573250adce77L    # -2.3352082175090288E92
    .end array-data

    :array_5
    .array-data 8
        -0x3aa1f03abb05ef9L    # -8.528650631955591E290
        -0x43d8dbedbd2ca82bL    # -6.2723545002983565E-19
        0x4e7948b294a8b835L    # 1.0906473848281653E70
    .end array-data

    :array_6
    .array-data 8
        0x7e415647fe0284d8L    # 1.451311196273637E300
        0x79c649631773cbc0L    # 3.9506736455117155E278
        0x1422ee1886b14134L
        -0x52cef17faf78be8L    # -4.429925681545737E283
    .end array-data
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x1e675a144683a9d1L    # -1.3861225451788414E162
        0x6f338a9a6ec0646bL    # 4.629273449186428E227
        0x761f9e012c92bd61L    # 9.722540103150956E260
        0x5c7b4ed5140c699cL    # 3.1757547860687123E137
        0x78601d4ce1c89622L    # 6.810542495140973E271
        0x203b9b647dd4ba5cL    # 2.059024284451741E-153
        -0x3ba9922dea8866a1L    # -1.6549671228810878E21
        0x78490a52268ab948L    # 2.6457324020413962E271
        -0x1784cd1359b5ebacL    # -1.9854955722781498E195
        0x1331f5bf9dacdd12L
        0x2f673c54d2c320e9L    # 2.4495502511130355E-80
        0x6a6998e8d022d981L    # 4.0127423278520977E204
        -0x397d2e155487f8a4L    # -4.771433570208055E31
        -0x653b212d14466c24L
        0x2c41ff1b9b43c183L    # 1.6850771740795005E-95
        0x684bbd5351f72c1fL    # 2.5312012313084957E194
    .end array-data
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p3, 0x7

    .line 4
    new-array p3, p3, [J

    .line 5
    .line 6
    fill-array-data p3, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x6ce93b89bf516e91L    # 4.349190161731434E216
        -0x22b81ccaa83a0d80L
        0x3ca2d24f5144b3ccL    # 1.3060054973804256E-16
        -0x5ad3c0708966f64dL
        -0x5651522f7f71701aL    # -6.53148956415298E-108
        -0x7cadacd8574fb93L    # -1.117094713827697E271
        0x28cc79f3376632f8L
    .end array-data
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 p3, 0x7

    .line 4
    new-array p3, p3, [J

    .line 5
    .line 6
    fill-array-data p3, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x6408b7477417ec86L    # -5.883846521087584E-174
        -0x3430215ca6fa14d3L    # -1.5628845590935058E57
        -0x5dd215e31fe37bb4L    # -4.791305677253495E-144
        0x412afb2ae13660e2L    # 884117.4398679996
        0x24f49c5a21376aa6L    # 1.161490579513421E-130
        0x263243090a9e74a4L
        -0x27137151225be492L    # -2.3044446368263043E120
    .end array-data
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzehj;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzehj;->zza:J

    .line 7
    .line 8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    new-array v5, v4, [J

    .line 12
    .line 13
    fill-array-data v5, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v2, v4, [J

    .line 33
    .line 34
    fill-array-data v2, :array_1

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzehj;->zzb:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    new-array v2, v2, [J

    .line 53
    .line 54
    fill-array-data v2, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzehj;->zzc:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzehj;->zzd:I

    .line 70
    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v2, v4, [J

    .line 76
    .line 77
    fill-array-data v2, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    new-array v1, v1, [J

    .line 98
    .line 99
    fill-array-data v1, :array_4

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->zza:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzy(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_0

    .line 123
    .line 124
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehh;->zza:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbt;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v0, 0x6

    .line 138
    new-array v0, v0, [J

    .line 139
    .line 140
    fill-array-data v0, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_0
    :goto_0
    return-object v1

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        -0x4a7f8408c79b220bL    # -5.507312212954264E-51
        -0x4659c627914d3beaL    # -5.479121855070176E-31
        0x7d772c2fe38c377eL    # 2.367939613945858E296
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
        -0xbc38bcbef1c1254L    # -8.148890656270563E251
        0x74e0193b8b1bc48L
        0x4a7e7c7b215f2b34L    # 7.128913579881336E50
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
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 8
        0x2d67530d3836d177L    # 5.725088004300263E-90
        0x7aa7b06249d2c9e0L    # 6.880067029364049E282
    .end array-data

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
    :array_3
    .array-data 8
        0x6098bbe4b53a33a1L    # 2.1224202602537084E157
        0x1e3eb1ea742aa640L    # 5.330276847870052E-163
        0x2af604dacea29d0eL    # 9.831014810653748E-102
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
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
    :array_4
    .array-data 8
        -0x68da256c70e1a600L
        -0x7874a5b688a7616aL
        0x5e988017c09d73e9L    # 4.894974138055819E147
        -0x52cd344179dc2a22L    # -5.766919476892909E-91
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
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
    .line 232
    .line 233
    .line 234
    .line 235
    :array_5
    .array-data 8
        0x3c7bd4191c3defL
        -0x203c0501259229f3L    # -2.0929222870142044E153
        -0x5b2d3c2aeb929b01L
        -0x3732ccba163f1563L    # -5.0874072463674057E42
        -0x537cd917ed768058L    # -2.8692276980159205E-94
        -0x2c1e9a0fd6d8fa6bL    # -1.161322521980669E96
    .end array-data
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(Lcom/google/android/gms/internal/ads/zzehh;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->zze(Lcom/google/android/gms/internal/ads/zzfkp;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzehj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehb;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzehb;-><init>(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzehj;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->zze(Lcom/google/android/gms/internal/ads/zzfkp;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfkp;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzehd;-><init>(Lcom/google/android/gms/internal/ads/zzehh;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehg;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzehg;-><init>(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzfkp;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgej;Ljava/util/concurrent/Executor;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zzg(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zzceh;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehe;

    .line 2
    .line 3
    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzehe;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzceh;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehh;->zzb:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzceh;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehc;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Lcom/google/android/gms/internal/ads/zzehh;Lcom/google/android/gms/internal/ads/zzceh;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzehh;->zze(Lcom/google/android/gms/internal/ads/zzfkp;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
