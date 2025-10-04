.class public final Lcom/google/android/gms/ads/internal/util/zzbz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/view/View;)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-int v0, v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aget v1, p1, v1

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    float-to-int p0, p0

    .line 19
    const/4 v1, 0x1

    .line 20
    aget p1, p1, v1

    .line 21
    .line 22
    sub-int/2addr p0, p1

    .line 23
    new-instance p1, Landroid/graphics/Point;

    .line 24
    .line 25
    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public static zzb()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, -0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move v1, v5

    .line 8
    move v2, v5

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzhT:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 32
    .line 33
    const v0, 0x800033

    .line 34
    .line 35
    .line 36
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    .line 38
    return-object v6
.end method

.method public static zzc(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    .line 7
    .line 8
    :try_start_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    new-array v4, v4, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v6, v0, [J

    .line 31
    .line 32
    fill-array-data v6, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget v6, p3, Landroid/graphics/Point;->x:I

    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v7, p1, v6}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v6, v0, [J

    .line 58
    .line 59
    fill-array-data v6, :array_2

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6, p1, p3}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v5, v0, [J

    .line 85
    .line 86
    fill-array-data v5, :array_3

    .line 87
    .line 88
    .line 89
    invoke-direct {p3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget v5, p2, Landroid/graphics/Point;->x:I

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-virtual {v4, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v5, v0, [J

    .line 112
    .line 113
    fill-array-data v5, :array_4

    .line 114
    .line 115
    .line 116
    invoke-direct {p3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 124
    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {v4, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .line 135
    .line 136
    move-object v1, v4

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception p0

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    move-exception p1

    .line 141
    :try_start_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    const/16 p3, 0x8

    .line 144
    .line 145
    new-array p3, p3, [J

    .line 146
    .line 147
    fill-array-data p3, :array_5

    .line 148
    .line 149
    .line 150
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array p2, v0, [J

    .line 166
    .line 167
    fill-array-data p2, :array_6

    .line 168
    .line 169
    .line 170
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :goto_1
    move-object v1, v2

    .line 182
    goto :goto_2

    .line 183
    :catch_2
    move-exception p0

    .line 184
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 185
    .line 186
    const/4 p2, 0x7

    .line 187
    new-array p2, p2, [J

    .line 188
    .line 189
    fill-array-data p2, :array_7

    .line 190
    .line 191
    .line 192
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    move-object v2, v1

    .line 203
    :goto_3
    return-object v2

    .line 204
    nop

    .line 205
    :array_0
    .array-data 8
        0x1614a03e273e480eL
        -0x15d1e430630dd41cL    # -2.9499739541825376E203
        0x14172aa55d645914L    # 6.881531378296959E-212
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
    :array_1
    .array-data 8
        -0x277376a7b5c478dbL    # -3.5980655541860775E118
        0x73e3ff7b019e2529L    # 1.789749877490125E250
    .end array-data

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
    :array_2
    .array-data 8
        0x4f2944cfc20202bL
        0x607d47daa08f6c50L    # 6.28143567936783E156
    .end array-data

    .line 234
    :array_3
    .array-data 8
        0x765f847a327775f2L    # 1.550700271539775E262
        0x44ee22067c98af12L    # 1.1383892096074761E24
    .end array-data

    :array_4
    .array-data 8
        -0x326776cbb52e8663L    # -6.4598439038844175E65
        0x2e04525a1c90f7c0L    # 5.107766439891887E-87
    .end array-data

    :array_5
    .array-data 8
        -0x700e1b9262a7ef54L    # -7.20293441151076E-232
        0x74a261d85957d52fL    # 6.738512302704594E253
        -0x7ad37b2c8db3b01bL    # -9.589282830140587E-284
        -0x636ae44b2f38bbfbL    # -5.462032041472368E-171
        -0x4570cd94e1787b9fL    # -1.2600346551570655E-26
        0x4aa61037c3b66c5fL    # 4.127439803336981E51
        0x1b03c6d78cb99a55L
        0x51b999bb9d9847dfL    # 4.973333195789503E85
    .end array-data

    :array_6
    .array-data 8
        0x737367f7ebdaca29L    # 1.3568608369619164E248
        -0x5801ba0ec210623fL
    .end array-data

    :array_7
    .array-data 8
        -0x2742b61657f63e39L    # -2.954328034656056E119
        0x65175d9e0886c132L    # 9.468389200774756E178
        -0xad47ecfea61b371L
        -0x94429801e07fe33L    # -8.765819328959531E263
        0x6c9d09c350f65f3bL    # 1.564104135946472E215
        -0x6bc0a26c4a124440L    # -3.726797144935903E-211
        0x258133e52a613548L
    .end array-data
.end method

.method public static zzd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 18
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/view/View;)[I

    move-result-object v6

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    if-eqz v9, :cond_1

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/view/View;)[I

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    new-instance v12, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v4, [J

    fill-array-data v14, :array_0

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v15

    invoke-virtual {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v14

    .line 10
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v4, [J

    fill-array-data v14, :array_1

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v15

    invoke-virtual {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v14

    .line 13
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v14, v4, [J

    fill-array-data v14, :array_2

    invoke-direct {v13, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget v15, v10, v14

    aget v16, v6, v14

    sub-int v15, v15, v16

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v2

    invoke-virtual {v2, v0, v15}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v2

    .line 15
    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_3

    invoke-direct {v2, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    aget v15, v10, v13

    aget v17, v6, v13

    sub-int v15, v15, v17

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v13

    invoke-virtual {v13, v0, v15}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v13

    .line 17
    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v3, [J

    fill-array-data v13, :array_4

    invoke-direct {v2, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_5

    invoke-direct {v13, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v13}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v13

    .line 18
    invoke-virtual {v12, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_6

    invoke-direct {v2, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 21
    invoke-virtual {v9, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 22
    invoke-static {v0, v2}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v13, 0x1

    goto/16 :goto_1

    :catch_0
    const/4 v10, 0x4

    goto/16 :goto_5

    .line 23
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_7

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 25
    invoke-virtual {v2, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_8

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-virtual {v2, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_9

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    aget v13, v10, v14

    aget v15, v6, v14

    sub-int/2addr v13, v15

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v15

    invoke-virtual {v15, v0, v13}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v13

    .line 28
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_a

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget v10, v10, v13

    aget v15, v6, v13

    sub-int/2addr v10, v15

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    move-result-object v15

    invoke-virtual {v15, v0, v10}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    move-result v10

    .line 30
    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v3, [J

    fill-array-data v12, :array_b

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_c

    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 31
    invoke-virtual {v2, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :goto_1
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v3, [J

    fill-array-data v12, :array_d

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 33
    invoke-virtual {v11, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v4, [J

    fill-array-data v12, :array_e

    invoke-direct {v10, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzhN:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x5

    new-array v10, v10, [J

    fill-array-data v10, :array_f

    invoke-direct {v2, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v9}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzhO:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v12, 0x4

    new-array v15, v12, [J

    fill-array-data v15, :array_10

    invoke-direct {v10, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 42
    iget v12, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzl(I)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v12, 0x4

    new-array v15, v12, [J

    fill-array-data v15, :array_11

    invoke-direct {v10, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 43
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzl(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzhP:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_12

    invoke-direct {v2, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 49
    :goto_2
    instance-of v15, v12, Landroid/view/View;

    if-eqz v15, :cond_5

    .line 50
    move-object v15, v12

    check-cast v15, Landroid/view/View;

    .line 51
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    goto :goto_2

    :cond_5
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v4, [J

    fill-array-data v15, :array_13

    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 53
    invoke-static {v12, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v11, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzhQ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p4, :cond_7

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    :try_start_1
    new-array v12, v10, [J

    fill-array-data v12, :array_14

    invoke-direct {v2, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :cond_7
    const/4 v10, 0x4

    .line 58
    :goto_3
    instance-of v2, v9, Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 59
    move-object v2, v9

    check-cast v2, Landroid/widget/TextView;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v3, [J

    fill-array-data v15, :array_15

    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 60
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v15

    invoke-virtual {v11, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v3, [J

    fill-array-data v15, :array_16

    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 61
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v15

    float-to-double v13, v15

    invoke-virtual {v11, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v4, [J

    fill-array-data v13, :array_17

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 62
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v3, [J

    fill-array-data v12, :array_18

    invoke-direct {v2, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_9

    .line 63
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 64
    invoke-virtual {v9}, Landroid/view/View;->isClickable()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v14, 0x1

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 65
    :goto_4
    invoke-virtual {v11, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 67
    :catch_1
    :goto_5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v8, 0x6

    new-array v8, v8, [J

    fill-array-data v8, :array_19

    invoke-direct {v2, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :goto_6
    return-object v5

    nop

    :array_0
    .array-data 8
        0x4f3872bed324527eL    # 4.319627326391775E73
        0x2d94aba97ea79cdfL    # 4.058947465769852E-89
    .end array-data

    :array_1
    .array-data 8
        0x5557c578f2cd8fd9L    # 1.3310454037582017E103
        0x44ed2d48c6c24aebL    # 1.1022718046318383E24
    .end array-data

    :array_2
    .array-data 8
        0x6de5124bfcd5d41dL    # 2.380245240006959E221
        0x20ab94eaba8c83e3L
    .end array-data

    :array_3
    .array-data 8
        0x488e038e75583d39L    # 3.2682234808967584E41
        0x684da27e3dc86114L    # 2.7041347189587165E194
    .end array-data

    :array_4
    .array-data 8
        0x66e5354d2939b8a5L    # 4.613933205543062E187
        -0x3019feb021721e9L
        -0x4ef1b9755bccd2ddL    # -2.1419194679821684E-72
    .end array-data

    :array_5
    .array-data 8
        -0x69027d6d164bdef6L
        0x5d951d8fb9919660L
    .end array-data

    :array_6
    .array-data 8
        -0x71250a91ee717802L    # -4.140021006171861E-237
        -0x3d97e18bf6ece3efL    # -8.287210886648771E11
    .end array-data

    :array_7
    .array-data 8
        -0x68ccde0bf1b174bbL    # -6.398785071886816E-197
        0x7951471d95ae767L
    .end array-data

    :array_8
    .array-data 8
        0x46e65e160be2d997L    # 3.6293382527707707E33
        -0x1ba3c0957cdfd1d3L    # -2.7946078721247826E175
    .end array-data

    :array_9
    .array-data 8
        -0x315130764c805bc4L    # -1.0632380049460834E71
        -0x73eaaa0c4be4e70dL
    .end array-data

    :array_a
    .array-data 8
        0x1d0521cf6598a5b2L    # 6.999298249486839E-169
        0x7d21390f33ec415dL    # 5.499861531107119E294
    .end array-data

    :array_b
    .array-data 8
        -0x5a5537ea3ce1b8feL    # -3.090922181902979E-127
        -0x4e13472059f5762eL    # -3.3292631938166717E-68
        -0x18737a36c09a597eL    # -6.354134672462465E190
    .end array-data

    :array_c
    .array-data 8
        0x2dab9165c6e093eeL    # 1.082669508520329E-88
        -0x7ff0c73203e780a0L
    .end array-data

    :array_d
    .array-data 8
        0x21e5e0d794e40996L    # 2.190107679398076E-145
        0x7281eaeb8a8ac2eL
        -0x296cbfb1c6a20b14L    # -1.1303061987575475E109
    .end array-data

    :array_e
    .array-data 8
        -0x2bc6dea02a598cf8L    # -5.367814147237652E97
        0x1ac4201663721948L    # 9.700092112782278E-180
    .end array-data

    :array_f
    .array-data 8
        0x23bd9744c9a3500aL
        0x6a3c75a4018576f2L    # 5.5767974029659096E203
        0x441e72378c5c9003L    # 1.404081308461276E20
        -0x9e73c39f7f2ced1L    # -7.615353071230152E260
        0x7c13f7a7aa601e76L    # 4.86471509199924E289
    .end array-data

    :array_10
    .array-data 8
        0x25fa20abd9f46aceL    # 9.649431100514173E-126
        -0x43a99cb14dc55d55L    # -4.854606204621923E-18
        0x33dc80d512fe91eeL    # 7.095046720950432E-59
        -0x388e710539e8db0aL    # -1.4587042736872153E36
    .end array-data

    :array_11
    .array-data 8
        -0x7cb281d74e802658L    # -9.235711485300264E-293
        0x3e1e04c7b188ec86L    # 1.7473166855590911E-9
        0x72788383511b6275L    # 2.6153256854142127E243
        -0x5f4d04b41bdf03eeL    # -3.624228863592282E-151
    .end array-data

    :array_12
    .array-data 8
        0x8aea4dc5869862L
        -0x14831ecc40cd5be2L    # -5.934028317873349E209
        -0x253cc14da52591a6L
    .end array-data

    :array_13
    .array-data 8
        0x3f6d6450930f24ebL    # 0.0035878728599284446
        0x799252460937965eL    # 4.059702691205482E277
    .end array-data

    :array_14
    .array-data 8
        0x6eabd2a50c6b1d8L    # 2.41344802587551E-275
        -0x5e0cea3021e0284bL    # -3.821016241252269E-145
        -0x5e9ac2e8c2d971b5L    # -8.304983162899616E-148
        -0x282f5067afc1bbe1L    # -1.0272791238425696E115
    .end array-data

    :array_15
    .array-data 8
        0x2c58a6813b9aa64L
        0x399696b26a999df6L    # 2.7842672985764637E-31
        -0x6cb092d3630673a3L
    .end array-data

    :array_16
    .array-data 8
        -0x38dd99a1e6197f4eL    # -4.776880234813082E34
        -0xa98c3cecd576f90L
        -0x1d4d52deef82216dL    # -2.7532656540080177E167
    .end array-data

    :array_17
    .array-data 8
        -0xf0fd771f4d48f1bL    # -1.0275322010783958E236
        -0x133f3674a22bb61L
    .end array-data

    :array_18
    .array-data 8
        -0x4c5ffbd24e583384L    # -4.98349089805272E-60
        -0x27d3e6e410b26891L    # -5.535604104032479E116
        -0x2a753dadecdb43d5L    # -1.1986694965937378E104
    .end array-data

    :array_19
    .array-data 8
        0x71f7e0aac7c9294L
        -0x3325ceb6c405b6f6L    # -1.6835905134111834E62
        -0x4bbd8b32bb115b01L    # -5.880502798414649E-57
        -0x14028f8a091e6cb6L    # -1.5485471881270285E212
        -0x5ce4b05def98f52L    # -4.017718758293606E280
        -0x45cb8f578d50945dL    # -2.579899579099188E-28
    .end array-data
.end method

.method public static zze(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v3, v0, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzn(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v0, [J

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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzC(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 p1, 0x6

    .line 61
    new-array p1, p1, [J

    .line 62
    .line 63
    fill-array-data p1, :array_2

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :array_0
    .array-data 8
        -0x4d867ef0982498bL
        -0x35c7ee7882c35375L    # -3.517611364932951E49
        0x7bdf72218484911bL    # 4.7882723223438123E288
        0x4892a5d3255ac389L    # 4.061120995941606E41
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
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_1
    .array-data 8
        0x416ad2ebac2902e4L    # 1.4063453380006261E7
        -0x6177a37a332fe534L
        0x1c8860e6b1c30b22L
        -0x3c518384173b5d94L    # -1.09838347895578368E18
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
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
    .line 114
    .line 115
    .line 116
    .line 117
    :array_2
    .array-data 8
        0x5a91c4f2036a0821L    # 1.9245487903789774E128
        0x53647f6da59ec01L
        -0x554571953a055aa9L    # -7.410531050709094E-103
        0x4039541b575b5da6L    # 25.328542194181544
        -0x14c2b0e1f6b09a6eL    # -3.763906177402143E208
        0x2bcff3bcc1dd74f5L    # 1.1686670794733684E-97
    .end array-data
.end method

.method public static zzf(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzhM:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    new-array v0, v0, [J

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_0
    if-eqz p0, :cond_1

    .line 53
    .line 54
    instance-of v2, p0, Landroid/widget/ScrollView;

    .line 55
    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-nez p0, :cond_2

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    :cond_2
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    if-eqz v2, :cond_4

    .line 78
    .line 79
    instance-of v5, v2, Landroid/widget/AdapterView;

    .line 80
    .line 81
    if-nez v5, :cond_4

    .line 82
    .line 83
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v5, -0x1

    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    const/4 p0, -0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    check-cast v2, Landroid/widget/AdapterView;

    .line 94
    .line 95
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v0, [J

    .line 102
    .line 103
    fill-array-data v0, :array_1

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eq p0, v5, :cond_6

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    const/4 v3, 0x0

    .line 117
    :goto_3
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :goto_4
    return-object v1

    .line 121
    :array_0
    .array-data 8
        0x4e697dbd00c2a2eL
        -0x4a0622619fa4bbe1L    # -1.1061267920132592E-48
        -0x30f6ebe0de02bd99L    # -5.538756360529074E72
        -0x2cbbce106fc7a0faL    # -1.3164181510603158E93
    .end array-data

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
    .line 138
    .line 139
    .line 140
    .line 141
    :array_1
    .array-data 8
        -0x66fcc893173ab533L    # -3.450381645506179E-188
        -0x1522f2cb6c1738a0L    # -5.8294402117444226E206
        -0x2b0aea8fda002f84L    # -1.8446172425100176E101
        -0x66e4b53abff77abeL    # -9.80074810848817E-188
    .end array-data
.end method

.method public static zzg(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x7

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x2

    .line 7
    new-instance v6, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzj(Landroid/view/View;)[I

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    new-array v8, v5, [I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    aput v9, v8, v0

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    aput v9, v8, v1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    :goto_0
    instance-of v10, v9, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v10, :cond_1

    .line 41
    .line 42
    move-object v10, v9

    .line 43
    check-cast v10, Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    aget v12, v8, v0

    .line 50
    .line 51
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    aput v11, v8, v0

    .line 56
    .line 57
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    aget v11, v8, v1

    .line 62
    .line 63
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    aput v10, v8, v1

    .line 68
    .line 69
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v11, v5, [J

    .line 82
    .line 83
    fill-array-data v11, :array_0

    .line 84
    .line 85
    .line 86
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v12, p0, v11}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v11, v5, [J

    .line 111
    .line 112
    fill-array-data v11, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v12, p0, v11}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v11, v5, [J

    .line 140
    .line 141
    fill-array-data v11, :array_2

    .line 142
    .line 143
    .line 144
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    aget v11, v7, v0

    .line 152
    .line 153
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-virtual {v12, p0, v11}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v11, v5, [J

    .line 167
    .line 168
    fill-array-data v11, :array_3

    .line 169
    .line 170
    .line 171
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    aget v11, v7, v1

    .line 179
    .line 180
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v12, p0, v11}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v11, v4, [J

    .line 194
    .line 195
    fill-array-data v11, :array_4

    .line 196
    .line 197
    .line 198
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    aget v11, v8, v0

    .line 206
    .line 207
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-virtual {v12, p0, v11}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 219
    .line 220
    new-array v11, v4, [J

    .line 221
    .line 222
    fill-array-data v11, :array_5

    .line 223
    .line 224
    .line 225
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    aget v8, v8, v1

    .line 233
    .line 234
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    invoke-virtual {v11, p0, v8}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v10, v3, [J

    .line 248
    .line 249
    fill-array-data v10, :array_6

    .line 250
    .line 251
    .line 252
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    new-array v11, v5, [J

    .line 262
    .line 263
    fill-array-data v11, :array_7

    .line 264
    .line 265
    .line 266
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    new-array v10, v5, [J

    .line 279
    .line 280
    fill-array-data v10, :array_8

    .line 281
    .line 282
    .line 283
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    .line 292
    .line 293
    new-instance v8, Landroid/graphics/Rect;

    .line 294
    .line 295
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    if-eqz v9, :cond_2

    .line 303
    .line 304
    invoke-static {p0, v8}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :cond_2
    new-instance v8, Lorg/json/JSONObject;

    .line 311
    .line 312
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .line 314
    .line 315
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 316
    .line 317
    new-array v10, v5, [J

    .line 318
    .line 319
    fill-array-data v10, :array_9

    .line 320
    .line 321
    .line 322
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    .line 331
    .line 332
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 333
    .line 334
    new-array v10, v5, [J

    .line 335
    .line 336
    fill-array-data v10, :array_a

    .line 337
    .line 338
    .line 339
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    .line 348
    .line 349
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 350
    .line 351
    new-array v10, v5, [J

    .line 352
    .line 353
    fill-array-data v10, :array_b

    .line 354
    .line 355
    .line 356
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    aget v10, v7, v0

    .line 364
    .line 365
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    invoke-virtual {v11, p0, v10}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 370
    .line 371
    .line 372
    move-result v10

    .line 373
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    .line 375
    .line 376
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 377
    .line 378
    new-array v10, v5, [J

    .line 379
    .line 380
    fill-array-data v10, :array_c

    .line 381
    .line 382
    .line 383
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    aget v7, v7, v1

    .line 391
    .line 392
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 393
    .line 394
    .line 395
    move-result-object v10

    .line 396
    invoke-virtual {v10, p0, v7}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    invoke-virtual {v8, v9, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    .line 402
    .line 403
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    new-array v7, v3, [J

    .line 406
    .line 407
    fill-array-data v7, :array_d

    .line 408
    .line 409
    .line 410
    invoke-direct {p0, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 418
    .line 419
    new-array v9, v5, [J

    .line 420
    .line 421
    fill-array-data v9, :array_e

    .line 422
    .line 423
    .line 424
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    invoke-virtual {v8, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    .line 433
    .line 434
    move-object p0, v8

    .line 435
    :goto_1
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 436
    .line 437
    new-array v8, v3, [J

    .line 438
    .line 439
    fill-array-data v8, :array_f

    .line 440
    .line 441
    .line 442
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    invoke-virtual {v6, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .line 451
    .line 452
    goto :goto_2

    .line 453
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 454
    .line 455
    new-array v7, v2, [J

    .line 456
    .line 457
    fill-array-data v7, :array_10

    .line 458
    .line 459
    .line 460
    invoke-direct {p0, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object p0

    .line 467
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzgl:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 471
    .line 472
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v7, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    check-cast p0, Ljava/lang/Boolean;

    .line 481
    .line 482
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 483
    .line 484
    .line 485
    move-result p0

    .line 486
    const/4 v7, -0x1

    .line 487
    if-eqz p0, :cond_9

    .line 488
    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 494
    .line 495
    new-array v9, v1, [J

    .line 496
    .line 497
    const-wide v10, -0x4872df55722a39e3L    # -4.179605973000449E-41

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    aput-wide v10, v9, v0

    .line 503
    .line 504
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    if-eqz p0, :cond_3

    .line 512
    .line 513
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    .line 515
    .line 516
    move-result-object v9

    .line 517
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 518
    .line 519
    new-array v11, v4, [J

    .line 520
    .line 521
    fill-array-data v11, :array_11

    .line 522
    .line 523
    .line 524
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    const/4 v11, 0x0

    .line 532
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-virtual {v9, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    .line 542
    move-object v8, p0

    .line 543
    goto :goto_4

    .line 544
    :catch_1
    move-exception p0

    .line 545
    goto :goto_3

    .line 546
    :catch_2
    move-exception p0

    .line 547
    goto :goto_3

    .line 548
    :catch_3
    move-exception p0

    .line 549
    :goto_3
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 550
    .line 551
    new-array v10, v2, [J

    .line 552
    .line 553
    fill-array-data v10, :array_12

    .line 554
    .line 555
    .line 556
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v9

    .line 563
    invoke-static {v9, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    .line 565
    .line 566
    :catch_4
    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 567
    .line 568
    .line 569
    move-result p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    .line 570
    const v9, -0x7b2ddf4e

    .line 571
    .line 572
    .line 573
    if-eq p0, v9, :cond_5

    .line 574
    .line 575
    const v9, 0x78630204

    .line 576
    .line 577
    .line 578
    if-eq p0, v9, :cond_4

    .line 579
    .line 580
    goto :goto_5

    .line 581
    :cond_4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    new-array v3, v3, [J

    .line 584
    .line 585
    fill-array-data v3, :array_13

    .line 586
    .line 587
    .line 588
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object p0

    .line 595
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p0

    .line 599
    if-eqz p0, :cond_6

    .line 600
    .line 601
    const/4 p0, 0x1

    .line 602
    goto :goto_6

    .line 603
    :cond_5
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 604
    .line 605
    new-array v3, v3, [J

    .line 606
    .line 607
    fill-array-data v3, :array_14

    .line 608
    .line 609
    .line 610
    invoke-direct {p0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object p0

    .line 617
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result p0

    .line 621
    if-eqz p0, :cond_6

    .line 622
    .line 623
    const/4 p0, 0x0

    .line 624
    goto :goto_6

    .line 625
    :cond_6
    :goto_5
    const/4 p0, -0x1

    .line 626
    :goto_6
    if-eqz p0, :cond_8

    .line 627
    .line 628
    if-eq p0, v1, :cond_7

    .line 629
    .line 630
    :try_start_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 631
    .line 632
    new-array v1, v4, [J

    .line 633
    .line 634
    fill-array-data v1, :array_15

    .line 635
    .line 636
    .line 637
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    invoke-virtual {v6, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 645
    .line 646
    .line 647
    goto :goto_8

    .line 648
    :catch_5
    move-exception p0

    .line 649
    goto :goto_7

    .line 650
    :cond_7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 651
    .line 652
    new-array v0, v4, [J

    .line 653
    .line 654
    fill-array-data v0, :array_16

    .line 655
    .line 656
    .line 657
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    invoke-virtual {v6, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 665
    .line 666
    .line 667
    goto :goto_8

    .line 668
    :cond_8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 669
    .line 670
    new-array v0, v4, [J

    .line 671
    .line 672
    fill-array-data v0, :array_17

    .line 673
    .line 674
    .line 675
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    invoke-virtual {v6, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 683
    .line 684
    .line 685
    goto :goto_8

    .line 686
    :goto_7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 687
    .line 688
    new-array v1, v2, [J

    .line 689
    .line 690
    fill-array-data v1, :array_18

    .line 691
    .line 692
    .line 693
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 701
    .line 702
    .line 703
    :cond_9
    :goto_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzhO:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 704
    .line 705
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object p0

    .line 713
    check-cast p0, Ljava/lang/Boolean;

    .line 714
    .line 715
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 716
    .line 717
    .line 718
    move-result p0

    .line 719
    if-eqz p0, :cond_a

    .line 720
    .line 721
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 726
    .line 727
    new-array v0, v4, [J

    .line 728
    .line 729
    fill-array-data v0, :array_19

    .line 730
    .line 731
    .line 732
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 740
    .line 741
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzl(I)I

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    add-int/2addr v0, v7

    .line 746
    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    .line 748
    .line 749
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 750
    .line 751
    new-array v0, v4, [J

    .line 752
    .line 753
    fill-array-data v0, :array_1a

    .line 754
    .line 755
    .line 756
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 764
    .line 765
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzl(I)I

    .line 766
    .line 767
    .line 768
    move-result p0

    .line 769
    add-int/2addr p0, v7

    .line 770
    invoke-virtual {v6, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 771
    .line 772
    .line 773
    goto :goto_9

    .line 774
    :catch_6
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 775
    .line 776
    new-array p1, v2, [J

    .line 777
    .line 778
    fill-array-data p1, :array_1b

    .line 779
    .line 780
    .line 781
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object p0

    .line 788
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    :cond_a
    :goto_9
    return-object v6

    .line 792
    nop

    .line 793
    :array_0
    .array-data 8
        -0x62aa8412fec1ad0cL
        -0x6ee93993dc3a7c90L
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :array_1
    .array-data 8
        -0x43d0c711b0fe94c7L    # -8.462844764402776E-19
        0x2b99c4e634efa0caL    # 1.178151977948258E-98
    .end array-data

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    :array_2
    .array-data 8
        0x4dafdc2b8ac0f14fL    # 1.6776268808424104E66
        -0x5847bd199668986eL
    .end array-data

    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_3
    .array-data 8
        -0x149b1d3650f57531L    # -2.1457542883026177E209
        0x312c260ca798f0d7L    # 7.965780161789049E-72
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    :array_4
    .array-data 8
        0x5a6857d8a9b7ca2fL    # 3.2956793755486303E127
        0x752b10025377860L
        -0x29169a70a80e91fL
        -0x6620975f100d5950L    # -4.619901356414686E-184
    .end array-data

    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    :array_5
    .array-data 8
        -0x6b4d6484b30a397dL    # -5.65988423614819E-209
        0x55e8f2dd4c4b4c68L    # 7.152473030300343E105
        -0x6a014f0e6f7d531aL
        0x72edfeb1a482135aL    # 4.096131348841501E245
    .end array-data

    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    :array_6
    .array-data 8
        0x58d43abd8384a963L    # 8.162110276784137E119
        -0x5ae117dc5d6beec2L    # -6.966839985840002E-130
        -0x18b957dfa937fed1L    # -3.1546034728008695E189
    .end array-data

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    :array_7
    .array-data 8
        -0x59fd664b4d3d9788L
        -0x47b89c45c4aa463bL    # -1.3747148071785677E-37
    .end array-data

    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    :array_8
    .array-data 8
        -0xdcdd1acdbb7dbbcL    # -1.212308779587863E242
        -0x64b7b5f9e4bbf92fL    # -2.996987841266894E-177
    .end array-data

    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    :array_9
    .array-data 8
        0x507d1287170a23fcL    # 5.38616144403835E79
        0x7efc2c063e38189bL    # 4.8298413786176886E303
    .end array-data

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    :array_a
    .array-data 8
        -0x3868dd1132249a4L    # -3.967672612734701E291
        0x5726c5eb487f881L
    .end array-data

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :array_b
    .array-data 8
        0x719a8a81f43833aaL
        -0xcc3e5dd39dd73f5L
    .end array-data

    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :array_c
    .array-data 8
        0x58ec29db3cb3a85L
        0x4fd12050d04edf51L    # 3.098566115068525E76
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_d
    .array-data 8
        -0x3e3799f5566adac8L    # -8.186811711651983E8
        -0x7cb39a39fd77c02eL    # -8.892730703924295E-293
        -0x67f96bc42c62c54L    # -1.818218590421507E277
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    :array_e
    .array-data 8
        0x4145047e95abb097L    # 2754813.169302057
        -0x5bcb976b137a351fL
    .end array-data

    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    :array_f
    .array-data 8
        -0x1e5856ae77c11e08L    # -2.6612650088845843E162
        0x6e61b1faad876908L    # 5.117089809065071E223
        -0x51f85df6c4fa29bfL    # -5.940038494315755E-87
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    :array_10
    .array-data 8
        -0x4205a73265dbce2fL    # -3.833976696376386E-10
        -0xe263e36160b28d2L    # -2.683561913651849E240
        -0x7d392b59cef5daeaL
        0x3c381f10d0f82f6dL    # 1.307621022430413E-18
        0x610c914dee4dbbdeL    # 3.137772190806618E159
        -0x1f745300eac16a18L    # -1.1874283894466889E157
        -0x57868a62a747cb3cL
    .end array-data

    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    :array_11
    .array-data 8
        -0x36d4ad15f05b3adL
        0x2f9aca49f83f807L
        -0x35cece915b42da86L    # -2.512773581514563E49
        -0x411ac3f0ce912eafL    # -1.0125449575550687E-5
    .end array-data

    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    :array_12
    .array-data 8
        -0x6de156cbfd1f8fe3L
        -0x12f24454c55ae38cL    # -2.0499667281984693E217
        -0x57e3c34d03823b33L
        -0x140c9dafb0f53233L    # -1.0196267375054932E212
        0x449bed3112f9a48dL    # 3.296982738652304E22
        -0x1f0beb5347de78b9L    # -1.1028028608263153E159
        0x487c91fa3a0e6b3cL    # 1.555510973585898E41
    .end array-data

    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    :array_13
    .array-data 8
        0x3c3f448886a94d75L    # 1.6950258591334129E-18
        0x3bd2daf5cc7def1dL    # 1.5971071419710164E-20
        0x12130f1f1796d666L
    .end array-data

    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    :array_14
    .array-data 8
        -0x7148913c8bbb5e08L    # -8.996326497556106E-238
        0x2a7c523e2117acacL
        0x43abc59cfedbbc70L    # 1.00058911392911974E18
    .end array-data

    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    :array_15
    .array-data 8
        0x21660c740d2c0a4dL    # 8.62172285882044E-148
        -0x24537040e91e9d17L    # -4.054611554652386E133
        0x3b7aeddc3ed7fdd1L    # 3.564042258666345E-22
        0x525be3dd53a90e42L    # 5.548157108461888E88
    .end array-data

    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    :array_16
    .array-data 8
        -0x216d92def0aedbc3L    # -3.6814227635873016E147
        0x364129696b2143f7L    # 2.3485111983365E-47
        0x10c1fb3c3b900f5fL    # 5.93002465695401E-228
        0x29439e6fff7facf8L    # 6.526286969416188E-110
    .end array-data

    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    :array_17
    .array-data 8
        0x4fc037fd9612e94aL    # 1.4671864707408804E76
        -0x46c885349d361509L    # -4.5220191684250256E-33
        0x343fa26f5f3e2292L
        -0x3dba5c7dbb7d590eL    # -1.8587507328530426E11
    .end array-data

    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    :array_18
    .array-data 8
        0x1586686eedb7e7ecL    # 5.583608317629803E-205
        0x7feec260c2fc19b3L    # 1.727992581467843E308
        -0x4296434e09b40402L    # -7.314921073798974E-13
        -0xeff092b4a4a713cL    # -2.1575435329355398E236
        -0x5235a1951512c66L
        -0x35665b06001b4d5cL    # -2.3986809981885992E51
        -0x397d7ef52356770cL    # -4.691339593055687E31
    .end array-data

    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    :array_19
    .array-data 8
        -0x2a73dcd3a1954e1dL    # -1.2604116844376927E104
        -0x6826ce64d666a17bL    # -8.628117038010898E-194
        0xf536bce2908de2L
        0x23798007d783cfdaL    # 8.56533222926429E-138
    .end array-data

    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    :array_1a
    .array-data 8
        -0x3d5c1cac40dc6e63L    # -1.0933541769672807E13
        -0x42062bf7f238107dL    # -3.758504738176127E-10
        -0x4d43ada32d718ad6L
        -0x30b9ec06fa12256cL    # -7.801696451368488E73
    .end array-data

    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    :array_1b
    .array-data 8
        0x320130f5a9429dfcL    # 7.970735580572602E-68
        -0x641fc569f9605459L
        -0x2ee0b67b8dba15b2L    # -5.935607999364999E82
        -0x725412992e4869aL
        0x12367546a1a892baL    # 6.21292880043876E-221
        -0x580ff3383a9487e5L    # -2.545860733930922E-116
        -0x4f8113549d5d09ebL    # -4.273105748182493E-75
    .end array-data
.end method

.method public static zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgm;)Z
    .locals 2

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfgm;->zzO:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhR:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgc;->zzhU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhS:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const/16 v1, 0x3b

    .line 68
    .line 69
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwp;->zzc(C)Lcom/google/android/gms/internal/ads/zzfwp;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfxr;->zzc(Lcom/google/android/gms/internal/ads/zzfwp;)Lcom/google/android/gms/internal/ads/zzfxr;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfxr;->zzd(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    const/4 p0, 0x1

    .line 104
    return p0

    .line 105
    :cond_4
    :goto_0
    return v0
.end method

.method public static zzi(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzdn:Lcom/google/android/gms/internal/ads/zzbfu;

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
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzdo:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const v0, 0xe9759f

    .line 38
    .line 39
    .line 40
    if-gt p0, v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public static zzj(Landroid/view/View;)[I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-object v0
.end method

.method private static zzk(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array v4, v3, [J

    .line 53
    .line 54
    fill-array-data v4, :array_1

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v4, v3, [J

    .line 80
    .line 81
    fill-array-data v4, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzb(Landroid/content/Context;I)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v1, v3, [J

    .line 107
    .line 108
    fill-array-data v1, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    const/4 p1, 0x3

    .line 124
    new-array p1, p1, [J

    .line 125
    .line 126
    fill-array-data p1, :array_4

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v1, v3, [J

    .line 139
    .line 140
    fill-array-data v1, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    return-object v0

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        -0x6892868a03e3b75fL    # -7.886033866552269E-196
        -0x346ad602e8dedab2L    # -1.297350534740551E56
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
    :array_1
    .array-data 8
        0x1bfab6468f5368bL
        0x19a7b6dbcca83045L
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
    :array_2
    .array-data 8
        -0x90d54b00b2dc945L    # -9.405927979290813E264
        0xfb885a696772421L    # 6.169934432606048E-233
    .end array-data

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
    :array_3
    .array-data 8
        0x478744b982015772L    # 3.8661353294108045E36
        -0x3ffbb715b04fcdb1L    # -2.535603163303939
    .end array-data

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
        0x1a027895bb52297aL    # 2.173521167589127E-183
        0x3aa2f2f47911fd55L    # 3.061382984562066E-26
        -0x4f599356742dc69fL    # -2.478866357608641E-74
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
    :array_5
    .array-data 8
        0x7f520d4198aa78dL
        0x3b3cc03956d3eac2L    # 2.3782166332986207E-23
    .end array-data
.end method

.method private static zzl(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0
.end method
