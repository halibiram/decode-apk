.class public final Lcom/google/android/gms/internal/ads/zzegn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzegn;->zzh(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :array_0
    .array-data 8
        0x5e915f4a34b8cb8cL    # 3.470830173763459E147
        0x4c56d01e2b4e03a9L    # 5.727970918795033E59
    .end array-data
.end method

.method public static zzb(Landroid/database/sqlite/SQLiteDatabase;I)J
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzegn;->zzh(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array p1, p1, [J

    .line 18
    .line 19
    fill-array-data p1, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 41
    .line 42
    .line 43
    return-wide v0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x7dce6b9ff706bf61L    # 9.947427595043882E297
        -0x13351c4d068f5fd0L    # -1.1586941718232197E216
    .end array-data
.end method

.method public static zzc(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x4

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
    filled-new-array {v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v3, v2, [J

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    move-object v3, p0

    .line 45
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v3, v2, [J

    .line 58
    .line 59
    fill-array-data v3, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbdy;->zzi([B)Lcom/google/android/gms/internal/ads/zzbdy;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/16 v4, 0x9

    .line 89
    .line 90
    new-array v4, v4, [J

    .line 91
    .line 92
    fill-array-data v4, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :array_0
    .array-data 8
        -0x473cea1d36f9239L
        -0x63d4c2a76c1a54fcL    # -5.506729596635567E-173
        0x1848789cfeeea973L
        -0x69440ced91d47e82L
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
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        0x4f29f9203730e83cL    # 2.2945289995199545E73
        -0x788629ac9e3ff3cfL
        0x59ae865533da8eeL
        0xd968bcf9fde9f8eL    # 3.30198921846312E-243
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        -0x3badd8ad5c388596L    # -1.339499602077956E21
        -0x19ccf1ac537b9746L    # -2.0242693218953362E184
        0x321215acd2b160a1L    # 1.6769940741415054E-67
        0xa11c1841e96c6c5L
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
    .line 174
    .line 175
    .line 176
    .line 177
    :array_3
    .array-data 8
        -0x7322fd1f12520b6bL    # -1.037313250233781E-246
        0x40cbb332c761cfc9L    # 14182.396709658105
        0x29cd5cf5307aabaeL    # 2.500539399053548E-107
        0x1f2c0afab1c003aaL
        0x2cad02c3986464f1L    # 1.738485280850014E-93
        -0x42cd0e7bd3183c3bL    # -6.730055832350441E-14
        0x2f1f3916b2bcec20L    # 1.0286221054977834E-81
        0x665b8cb85ff27a5dL    # 1.1706148932444574E185
        0x40f719582c254a68L    # 94613.51077775063
    .end array-data
.end method

.method public static zzd(Landroid/database/sqlite/SQLiteDatabase;J[B)V
    .locals 5

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
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    new-array v4, v3, [J

    .line 32
    .line 33
    fill-array-data v4, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array p3, v2, [J

    .line 57
    .line 58
    fill-array-data p3, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v1, v3, [J

    .line 71
    .line 72
    fill-array-data v1, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p0, p3, v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_0

    .line 87
    .line 88
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array p2, v3, [J

    .line 91
    .line 92
    fill-array-data p2, :array_4

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 p2, 0x0

    .line 103
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void

    .line 107
    :array_0
    .array-data 8
        0x5177b2c904b714f5L    # 2.877381576814994E84
        -0x611d82b6a04902d6L    # -6.57559640073987E-160
        -0x5f613103470a928aL
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        -0x1b2ec8a9fc7e088fL    # -4.360272720346305E177
        -0x7705c101de37599aL    # -2.034923265567338E-265
        -0x72742a1668fc0db7L
        0x365156db6ed1bffcL    # 4.745608307854666E-47
    .end array-data

    :array_2
    .array-data 8
        0x3a18e400a179738eL    # 7.854099424602985E-29
        0x2726caed3534f8f7L    # 4.413337802396151E-120
        -0x217d7e70607368daL    # -1.8486842840072766E147
    .end array-data

    :array_3
    .array-data 8
        0x41bc1759af2e315eL    # 4.712923351804408E8
        0x55a874386d3b0ecfL    # 4.3816549260128034E104
        -0x3e426d4e387297daL    # -4.961530315523704E8
        -0x5f85df8b7ca91549L
    .end array-data

    :array_4
    .array-data 8
        0x2427873e0ab7d8d1L
        0x2c112cecaf8f92e2L    # 2.0102517301860534E-96
        0x6c53f851fa0cff18L    # 6.722874784622797E213
        -0x63d13bc2b6f65a21L
    .end array-data
.end method

.method public static zze(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzegn;->zzi(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v3, v1, [J

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzegn;->zzi(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    new-array v3, v3, [J

    .line 41
    .line 42
    fill-array-data v3, :array_2

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzegn;->zzi(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/content/ContentValues;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v1, v1, [J

    .line 63
    .line 64
    fill-array-data v1, :array_3

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v3, 0x5

    .line 77
    new-array v4, v3, [J

    .line 78
    .line 79
    fill-array-data v4, :array_4

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    new-array v2, v2, [J

    .line 96
    .line 97
    fill-array-data v2, :array_5

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-wide/16 v4, 0x0

    .line 108
    .line 109
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    new-array v2, v3, [J

    .line 119
    .line 120
    fill-array-data v2, :array_6

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :array_0
    .array-data 8
        0x3aa1050608bb4825L    # 2.7496684464622883E-26
        -0x1334bfd20e087b6bL    # -1.17426086731282E216
        -0x43dd73060ebb2b3fL    # -5.028174279725745E-19
    .end array-data

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
    :array_1
    .array-data 8
        0x77d25c63731579a0L    # 1.5156186068390308E269
        -0xb37cf44fd4a5026L    # -3.547060281433507E254
        -0x471887ac9962ef70L    # -1.412550603517872E-34
    .end array-data

    .line 152
    .line 153
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
    :array_2
    .array-data 8
        0x1b2109cfac20baf0L    # 5.255807753709488E-178
        -0x7096986062b454e3L
        0x272609a739fd90d5L
        -0x2d622c7694ca02d7L    # -9.493324673005564E89
    .end array-data

    .line 168
    .line 169
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
    .line 186
    .line 187
    :array_3
    .array-data 8
        -0x4440c3d37fb4846cL
        0x157c07be3298300aL
        -0x4d9a0cefc47976ceL    # -6.513207673475842E-66
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
    .line 200
    .line 201
    .line 202
    .line 203
    :array_4
    .array-data 8
        0x3d73450b3b62b5ffL    # 1.095355778280501E-12
        0x146830195cc528fdL    # 2.299169399039562E-210
        -0x77702d06ae3624d0L
        0x44b57620f8b7a68fL    # 1.013487877916897E23
        -0x7127b9fe851957fL    # -3.193593422886813E274
    .end array-data

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
    :array_5
    .array-data 8
        -0x429c2ad4cde7b935L    # -5.636789627435021E-13
        -0x5a0f461ff3a1d784L    # -6.177259697102824E-126
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_6
    .array-data 8
        0x4cb78f6ca36a9318L
        0x2cac93cbd868c6a5L    # 1.7125095208593896E-93
        0x729791bcf68c2b16L    # 1.0058263245461392E244
        0x26ccae82bc18058L
        -0x4059cdc2586b6541L    # -0.04335205717716439
    .end array-data
.end method

.method public static zzf(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    new-array v3, v2, [J

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzegn;->zzj(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v2, v2, [J

    .line 42
    .line 43
    fill-array-data v2, :array_2

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzegn;->zzj(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v1, [J

    .line 59
    .line 60
    fill-array-data v1, :array_3

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzegn;->zzj(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        0x6bc0224f6c558e46L    # 1.0608395123886314E211
        0x151d9043a1620a04L    # 5.755185282593807E-207
        -0x505ce64d88dc92adL    # -3.2217596894501435E-79
        0x627da8a36e89459aL    # 2.7326900527221834E166
    .end array-data

    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x49d35cbdde6edb38L    # -9.797364265402238E-48
        -0x1486d01d73fed4a5L    # -5.175285508459039E209
        -0x5a4d273d99d5b330L
    .end array-data

    :array_2
    .array-data 8
        0xe66703d7a08eac9L
        -0x2a255730525ebb3fL    # -3.821458774540699E105
        -0x1f6e99142d50e545L    # -1.4932681892959882E157
    .end array-data

    :array_3
    .array-data 8
        0x52f98039e310226L
        0x639b1dd533195d58L    # 6.549554046989171E171
        0x201928997ca26b78L
        0x60753b727160cffL
    .end array-data
.end method

.method public static zzg(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0xb

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array p2, v0, [J

    .line 11
    .line 12
    fill-array-data p2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-array p2, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p1, p2, v2

    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v0, v1, [J

    .line 29
    .line 30
    fill-array-data v0, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v4, 0x4

    .line 51
    new-array v4, v4, [J

    .line 52
    .line 53
    fill-array-data v4, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-array v4, v3, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object p2, v4, v2

    .line 66
    .line 67
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v5, v1, [J

    .line 70
    .line 71
    fill-array-data v5, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array p2, v0, [J

    .line 93
    .line 94
    fill-array-data p2, :array_4

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-array p2, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    aput-object p1, p2, v2

    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v1, [J

    .line 111
    .line 112
    fill-array-data v0, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 8
        0xfc3becbdeeb09a8L    # 9.936125311445768E-233
        -0x7359a4f45b64c428L    # -9.991732743570752E-248
        0x7a04f5ae3f75a50L
    .end array-data

    .line 132
    .line 133
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
    :array_1
    .array-data 8
        -0x207e62bcbfdd93f1L    # -1.1531701689131603E152
        -0x30ce063053d73aa7L    # -3.176053378102982E73
        0x22c7e57324cc9dc8L    # 3.919245693022434E-141
        -0x3aeec26cf308b013L    # -5.210628973646477E24
        0x7f7e2c96e3ba9736L
        -0xfbab4ed78aa7237L    # -6.611631631691541E232
        -0x6fdf7b21e358efc1L    # -5.320071386259838E-231
        -0x9bed089cf45b0edL    # -4.227716173822687E261
        0xe69d39bf9cef0bdL    # 3.098565428976017E-239
        -0x5fcf04ae128ed59bL
        0x6e09742ffb876ed0L    # 1.1501127665563428E222
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
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
        -0x47d6dfc18804d914L    # -3.6919270051669005E-38
        -0xa2730687b24504dL    # -4.768468286126528E259
        -0x4a6b5908ed672b70L    # -1.3799622867497194E-50
        0x11f8e72f203070abL    # 4.305821014376113E-222
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
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        -0x572ae789c9d1e816L    # -5.482423140896989E-112
        -0x759a40d8090b8799L
        0x39b8243ded93e2edL    # 1.1902712951088237E-30
        0x189651ff98bf847aL    # 3.130998791760292E-190
        -0x7eb4b4376f290e0L
        0x5b98ed0466e15184L    # 1.7692452993759276E133
        0x340678a1a1fbbd8dL    # 4.474839119087396E-58
        -0x1068e9075c127817L    # -3.5007056468107543E229
        0x45f4ad19335947ddL    # 1.0238341391359368E29
        -0x1e875fd68c3a711eL    # -3.462143681330134E161
        0x68f5900035b4cf40L    # 4.0295481517059613E197
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
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_4
    .array-data 8
        0x72b9145c1026d78cL    # 4.281105062014623E244
        0x3f4daa3645465209L    # 9.053006165680731E-4
        0x7cb8134e7b121005L    # 6.006335782842095E292
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_5
    .array-data 8
        -0x67239a9328b2e598L    # -6.373277611248303E-189
        -0x4285f7abe2fc4efdL    # -1.4797782039110775E-12
        -0x6b072b6abcca4e72L
        0x33493749ac330ca3L    # 1.2259324493898249E-61
        0x7c1ee19e85f1d1ddL    # 7.5237052601463056E289
        -0x4be00f000c956498L    # -1.2721398683047376E-57
        -0x7d183ee1f285ad4bL
        0x770761acdbfa0a0cL    # 2.356022216377426E265
        0x5f0010dba4545f0cL    # 4.108578695974838E149
        -0x4251751dcc1a2384L    # -1.388912736714872E-11
        -0x6a3b199db3211286L    # -8.332550038478947E-204
    .end array-data
.end method

.method private static zzh(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    new-array v5, v4, [J

    .line 8
    .line 9
    fill-array-data v5, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    filled-new-array {v3}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    const/4 v3, 0x1

    .line 24
    new-array v9, v3, [Ljava/lang/String;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    if-eq p1, v3, :cond_1

    .line 30
    .line 31
    if-eq p1, v4, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v2, [J

    .line 36
    .line 37
    fill-array-data v0, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    aput-object p1, v9, v5

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v0, v1, [J

    .line 53
    .line 54
    fill-array-data v0, :array_2

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    aput-object p1, v9, v5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    fill-array-data v0, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    aput-object p1, v9, v5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v0, v0, [J

    .line 87
    .line 88
    fill-array-data v0, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    aput-object p1, v9, v5

    .line 99
    .line 100
    :goto_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v0, v1, [J

    .line 103
    .line 104
    fill-array-data v0, :array_5

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v0, v2, [J

    .line 117
    .line 118
    fill-array-data v0, :array_6

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    const/4 v11, 0x0

    .line 129
    const/4 v12, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    move-object v5, p0

    .line 132
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :array_0
    .array-data 8
        -0x4fca5fd5ee83c525L    # -1.8676268865848257E-76
        0x7156d2a5b9577a01L    # 9.28851530988369E237
    .end array-data

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
    :array_1
    .array-data 8
        0x4688b6d8b0c1633dL    # 6.265805231394365E31
        0x1613718b6443a56dL
        0x5d202cdcf2789c67L    # 3.852466732520949E140
        0x5c3d62512070f202L
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
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
        0xf3a391b964dbaedL    # 2.577312338511751E-235
        0x5beb58902a7c3a95L    # 6.211279770559246E134
        -0x20d6dcac10e61754L    # -2.5714528563286554E150
        0x7373ad9b82eb5f40L    # 1.3758807774529204E248
        -0x6225b1f67e112ed1L    # -7.137365326775165E-165
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_3
    .array-data 8
        0x7ca57fcbf30e4866L
        -0x74ad8e9745d6d199L    # -3.930568187734813E-254
        -0x258eb2cad47c2fc3L    # -4.684726694314476E127
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
    .line 206
    .line 207
    .line 208
    .line 209
    :array_4
    .array-data 8
        0x1c74d7ee169af256L
        0x2f5424b3f4c21ae0L    # 1.061777016989451E-80
        0x1a18a4e616550d27L    # 5.799843022407103E-183
    .end array-data

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
    .line 222
    .line 223
    .line 224
    .line 225
    :array_5
    .array-data 8
        0x42bfecd4db858e32L    # 3.5102043899278195E13
        0x5000f5508d9dbc72L    # 2.454540501079917E77
        0x5c757e13ac946fa0L    # 2.499451575102148E137
        0x41e870a550fc56fL
        0x448f979cdbcf85ccL    # 1.8648765272494065E22
    .end array-data

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
    .line 246
    .line 247
    .line 248
    .line 249
    :array_6
    .array-data 8
        -0x3e5e551542a069c1L    # -1.4820694268669316E8
        -0x766dd717f47ca67L    # -8.498352723313497E272
        0x18fe4432691f4a16L
        0x7b40e06dee6e21b7L    # 5.019180936360787E285
    .end array-data
.end method

.method private static zzi(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [J

    .line 28
    .line 29
    fill-array-data v0, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    new-array v0, v0, [J

    .line 51
    .line 52
    fill-array-data v0, :array_2

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        -0x3010520e3581f9cbL    # -1.1463225302670899E77
        0x7a67aa51459db65cL    # 4.295740371988287E281
        0x39996a375f319685L    # 3.132629197421587E-31
    .end array-data

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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        0x3b3fb0922f03b8b9L    # 2.621313075734432E-23
        0x2b1a55e8699aa9e6L    # 4.703317675022803E-101
    .end array-data

    .line 84
    .line 85
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
    :array_2
    .array-data 8
        0x6f712a3eb2a9d47L
        0x1ca40889ca87d49L    # 4.9000230808790896E-300
        0x75a84df3b34537acL    # 5.83892612552034E258
        0x51f817420d013fbcL    # 7.488087680112838E86
        0x98c5149018c5cb2L
    .end array-data
.end method

.method private static zzj(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance p2, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    new-array v1, v1, [J

    .line 37
    .line 38
    fill-array-data v1, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v2, 0x5

    .line 51
    new-array v2, v2, [J

    .line 52
    .line 53
    fill-array-data v2, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 8
        0x2d256780953000f0L
        -0x29647d607813af24L    # -1.61522464882248E109
    .end array-data

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
    .line 78
    .line 79
    :array_1
    .array-data 8
        0x2372d89b8ed611e3L    # 6.330296181370158E-138
        0xf380d05345f033bL    # 2.363817925771994E-235
        -0x65ba2f86e0809769L    # -4.107096175741041E-182
        -0x2fb9847e3609cb62L    # -5.206579521513517E78
    .end array-data

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
    :array_2
    .array-data 8
        -0x30313f6fc8285cb8L    # -2.7819230901831517E76
        0x2ed70c1fcb37e67fL    # 4.745504543250009E-83
        -0x72c33097e9d9236L
        -0x5424cd29eba03e3eL
        -0x5fde08fbb32be106L    # -6.699420762277595E-154
    .end array-data
.end method
