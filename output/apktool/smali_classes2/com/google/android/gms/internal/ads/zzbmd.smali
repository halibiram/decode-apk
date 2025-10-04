.class public final synthetic Lcom/google/android/gms/internal/ads/zzbmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzbmd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbmd;->zza:Lcom/google/android/gms/internal/ads/zzbmd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzckn;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbnf;->zza:Lcom/google/android/gms/internal/ads/zzbng;

    .line 6
    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    new-array v4, v3, [J

    .line 11
    .line 12
    fill-array-data v4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 p2, 0x6

    .line 37
    new-array p2, p2, [J

    .line 38
    .line 39
    fill-array-data p2, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 54
    .line 55
    new-array v4, v3, [J

    .line 56
    .line 57
    fill-array-data v4, :array_2

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance v2, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzckn;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    array-length v5, p2

    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    :goto_0
    if-ge v7, v5, :cond_3

    .line 88
    .line 89
    aget-object v8, p2, v7

    .line 90
    .line 91
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v10, v3, [J

    .line 94
    .line 95
    fill-array-data v10, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    aget-object v10, v9, v6

    .line 110
    .line 111
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    array-length v11, v9

    .line 116
    if-le v11, v1, :cond_1

    .line 117
    .line 118
    aget-object v9, v9, v1

    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    const/4 v11, 0x5

    .line 128
    new-array v11, v11, [J

    .line 129
    .line 130
    fill-array-data v11, :array_4

    .line 131
    .line 132
    .line 133
    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    :goto_1
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    new-instance v11, Landroid/content/Intent;

    .line 145
    .line 146
    invoke-direct {v11, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .line 148
    .line 149
    const/high16 v9, 0x10000

    .line 150
    .line 151
    invoke-virtual {v4, v11, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    if-eqz v9, :cond_2

    .line 156
    .line 157
    const/4 v9, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    const/4 v9, 0x0

    .line 160
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v12, v0, [J

    .line 175
    .line 176
    fill-array-data v12, :array_5

    .line 177
    .line 178
    .line 179
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 193
    .line 194
    new-array v11, v3, [J

    .line 195
    .line 196
    fill-array-data v11, :array_6

    .line 197
    .line 198
    .line 199
    invoke-direct {v8, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    add-int/2addr v7, v1

    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqa;

    .line 223
    .line 224
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v0, v0, [J

    .line 227
    .line 228
    fill-array-data v0, :array_7

    .line 229
    .line 230
    .line 231
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbqa;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :array_0
    .array-data 8
        -0x6c9b49cfb53785b5L
        0x15cfdee8152579feL
    .end array-data

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
        0x5e830ebeb81ef959L    # 1.90377689020398E147
        0x6df954306b13d461L    # 5.722325195299909E221
        0x6d367049dad6c52eL    # 1.237636634372462E218
        0x68055e290b55f674L    # 1.2186172690889165E193
        0x17f9f63b4a1f5e4L
        0x106ed321d220cb4L
    .end array-data

    :array_2
    .array-data 8
        0x5e9c12cf4d149670L    # 5.6088532451485596E147
        0xc03b63cfdbd6879L
    .end array-data

    :array_3
    .array-data 8
        -0x6a59c900e6858687L
        0x704a4c7c97be0a90L    # 8.165865150802104E232
    .end array-data

    :array_4
    .array-data 8
        0x78ee6f01e9f96212L    # 3.2927573134605343E274
        0x3be47929a35890afL    # 3.4683105042009905E-20
        -0x3d31247d994476a8L    # -6.785626888373069E13
        0x65497dcc7c46b98L
        -0x6776f34af3656bbdL
    .end array-data

    :array_5
    .array-data 8
        0x393c9970e8ad9019L    # 5.5080400605472264E-33
        -0x2f663a8bfe56c3f9L    # -1.9098322098096778E80
        0x1ff413f471a3f357L    # 9.359261396856643E-155
    .end array-data

    :array_6
    .array-data 8
        -0x582b618b4f955f25L    # -8.176522127770265E-117
        0x1641b67b0feaa47fL    # 1.807842130187379E-201
    .end array-data

    :array_7
    .array-data 8
        -0x77c801f52f97f1cfL
        -0x7bd509b67e2c03d5L
        0x9c859c55ea622f7L
    .end array-data
.end method
