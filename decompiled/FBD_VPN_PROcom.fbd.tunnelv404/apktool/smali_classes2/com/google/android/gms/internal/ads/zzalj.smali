.class final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Ljava/util/regex/Pattern;

.field private static final zze:Ljava/util/regex/Pattern;

.field private static final zzf:Ljava/util/regex/Pattern;


# instance fields
.field public final zza:I

.field public final zzb:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

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
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    new-array v3, v2, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v3, 0x1

    .line 38
    new-array v4, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v0, v4, v5

    .line 42
    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v7, v2, [J

    .line 48
    .line 49
    fill-array-data v7, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static {v0, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sput-object v4, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_3

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-array v3, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v2, v3, v5

    .line 86
    .line 87
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    const/4 v4, 0x7

    .line 90
    new-array v4, v4, [J

    .line 91
    .line 92
    fill-array-data v4, :array_4

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zze:Ljava/util/regex/Pattern;

    .line 111
    .line 112
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v1, v1, [J

    .line 115
    .line 116
    fill-array-data v1, :array_5

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zzf:Ljava/util/regex/Pattern;

    .line 131
    .line 132
    return-void

    .line 133
    :array_0
    .array-data 8
        0x24166fe0a2b9b819L    # 7.717331461558993E-135
        0x7b17337b56009f3eL    # 8.625107261725179E284
        -0x1df4127dd12b28bcL    # -2.0103139085457575E164
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
    :array_1
    .array-data 8
        0x7bba4c2d65a2259eL    # 1.0010861523632779E288
        -0x133f3602d1235ee1L    # -7.234561991655331E215
        0x21ca34e622319d40L    # 6.558483004696325E-146
        0x320612c222fe6b7fL    # 1.0234290827514873E-67
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
        -0x47bf5c84baf8ad58L    # -9.779289973815185E-38
        0x20ccff2cdb145696L
        0x207a525bffada79L
        -0x645897a56f31600bL    # -1.848459826440093E-175
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
    :array_3
    .array-data 8
        0x103d681d1734854fL    # 1.894128901547272E-230
        0x7e2b12ede74c95d1L    # 5.666008310014527E299
        0x79a584e2696ea3ffL    # 9.536515317478551E277
        -0x4c512658056d0c9fL    # -9.599069333558303E-60
    .end array-data

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
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_4
    .array-data 8
        -0x1c0e62f70a89bf25L    # -2.722708583206455E173
        0x6c266311a13ca103L    # 9.420687843460724E212
        -0x6447abb6f9b030f6L
        -0x5539995bf0b0b2f8L
        -0x4b5729949b4dc4b1L    # -5.0647733407021575E-55
        0x463ba12497001340L    # 2.1890317088746058E30
        -0x32ab79dade2d1f1bL    # -3.377234226662695E64
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
    :array_5
    .array-data 8
        -0x374aebfded6e9f85L    # -1.8361664067713123E42
        -0x51ec2be6da14b886L    # -9.96761626956248E-87
        -0x554e816db8471d73L    # -4.881811760937873E-103
    .end array-data
.end method

.method private constructor <init>(ILandroid/graphics/PointF;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Landroid/graphics/PointF;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalj;
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    move-object v4, v1

    .line 11
    const/4 v3, -0x1

    .line 12
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_9

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :try_start_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzalj;->zzd:Ljava/util/regex/Pattern;

    .line 27
    .line 28
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    sget-object v8, Lcom/google/android/gms/internal/ads/zzalj;->zze:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eqz v9, :cond_2

    .line 47
    .line 48
    if-eqz v10, :cond_1

    .line 49
    .line 50
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v9, 0x4

    .line 53
    new-array v9, v9, [J

    .line 54
    .line 55
    fill-array-data v9, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/16 v11, 0xc

    .line 73
    .line 74
    new-array v11, v11, [J

    .line 75
    .line 76
    fill-array-data v11, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array v11, v0, [J

    .line 95
    .line 96
    fill-array-data v11, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzff;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    invoke-virtual {v7, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    if-eqz v10, :cond_5

    .line 126
    .line 127
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    move-object v12, v8

    .line 136
    move-object v8, v7

    .line 137
    move-object v7, v12

    .line 138
    :goto_1
    new-instance v9, Landroid/graphics/PointF;

    .line 139
    .line 140
    if-eqz v8, :cond_4

    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v7, :cond_3

    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    invoke-direct {v9, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    throw v1

    .line 165
    :cond_4
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_5
    move-object v9, v1

    .line 167
    :goto_2
    if-eqz v9, :cond_6

    .line 168
    .line 169
    move-object v4, v9

    .line 170
    :catch_0
    :cond_6
    :try_start_1
    sget-object v7, Lcom/google/android/gms/internal/ads/zzalj;->zzf:Ljava/util/regex/Pattern;

    .line 171
    .line 172
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_8

    .line 181
    .line 182
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    if-eqz v5, :cond_7

    .line 187
    .line 188
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    goto :goto_3

    .line 193
    :catch_1
    nop

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_7
    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    :cond_8
    const/4 v5, -0x1

    .line 198
    :goto_3
    if-eq v5, v2, :cond_0

    .line 199
    .line 200
    move v3, v5

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzalj;

    .line 204
    .line 205
    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzalj;-><init>(ILandroid/graphics/PointF;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :array_0
    .array-data 8
        -0x26610761e75953f3L    # -5.118417934280243E123
        0x1e398587416a40ddL
        0x31055df444ebd7e3L    # 1.5116622802635374E-72
        -0x515a9e77a2f61716L    # -5.502993092753812E-84
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
    .line 226
    .line 227
    .line 228
    .line 229
    :array_1
    .array-data 8
        0x2c507352e515f3cbL    # 3.080633608468599E-95
        0x57ce52fb3ca5c83fL    # 9.334626495212936E114
        -0x7b164ba714185701L    # -5.401855572371137E-285
        0x589850d7c92e3a4bL    # 6.1317824762543905E118
        -0x11914a06028c69f6L    # -8.880932578287881E223
        0x32f84266cadde51dL    # 3.6857055303115587E-63
        -0x1350b3341853f4a6L    # -3.3718718849088257E215
        -0x4e0b9ea183575f36L    # -4.724682011157791E-68
        -0x573ed85520ca523cL
        0x6da85c1f80282b2bL    # 1.7198143104842165E220
        0xb02c8cf10135e7aL
        -0x285229e832e33fd8L    # -2.2961134847342836E114
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
    :array_2
    .array-data 8
        -0x4b30fe5550dd4cf3L    # -2.5290865337129534E-54
        -0x24ed35f1e6f02afdL    # -5.209646062266031E130
    .end array-data
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    const-wide v2, 0x1d4678a3775e6da3L    # 1.19085681138536E-167

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-wide v2, v1, v4

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
