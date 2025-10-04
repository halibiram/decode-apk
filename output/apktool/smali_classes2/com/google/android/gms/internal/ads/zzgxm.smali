.class public final Lcom/google/android/gms/internal/ads/zzgxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgse;


# instance fields
.field private final zza:Ljava/lang/ThreadLocal;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/security/Key;

.field private final zzd:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgxl;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzgxl;-><init>(Lcom/google/android/gms/internal/ads/zzgxm;)V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zza:Ljava/lang/ThreadLocal;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_7

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzb:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzc:Ljava/security/Key;

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    array-length p2, p2

    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    if-lt p2, v4, :cond_6

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 v4, 0x1

    .line 38
    sparse-switch p2, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v5, v1, [J

    .line 46
    .line 47
    fill-array-data v5, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    const/4 p2, 0x4

    .line 64
    goto :goto_1

    .line 65
    :sswitch_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v5, v1, [J

    .line 68
    .line 69
    fill-array-data v5, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    const/4 p2, 0x3

    .line 86
    goto :goto_1

    .line 87
    :sswitch_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v5, v1, [J

    .line 90
    .line 91
    fill-array-data v5, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_0

    .line 106
    .line 107
    const/4 p2, 0x2

    .line 108
    goto :goto_1

    .line 109
    :sswitch_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v5, v1, [J

    .line 112
    .line 113
    fill-array-data v5, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_0

    .line 128
    .line 129
    const/4 p2, 0x1

    .line 130
    goto :goto_1

    .line 131
    :sswitch_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v5, v3, [J

    .line 134
    .line 135
    fill-array-data v5, :array_4

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_0

    .line 150
    .line 151
    const/4 p2, 0x0

    .line 152
    goto :goto_1

    .line 153
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 154
    :goto_1
    if-eqz p2, :cond_5

    .line 155
    .line 156
    if-eq p2, v4, :cond_4

    .line 157
    .line 158
    if-eq p2, v3, :cond_3

    .line 159
    .line 160
    if-eq p2, v1, :cond_2

    .line 161
    .line 162
    if-ne p2, v0, :cond_1

    .line 163
    .line 164
    const/16 p1, 0x40

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    new-array v0, v0, [J

    .line 170
    .line 171
    fill-array-data v0, :array_5

    .line 172
    .line 173
    .line 174
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    .line 186
    .line 187
    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p2

    .line 191
    :cond_2
    const/16 p1, 0x30

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_3
    const/16 p1, 0x20

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/16 p1, 0x1c

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    const/16 p1, 0x14

    .line 201
    .line 202
    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzd:I

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 209
    .line 210
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 211
    .line 212
    const/4 v0, 0x7

    .line 213
    new-array v0, v0, [J

    .line 214
    .line 215
    fill-array-data v0, :array_6

    .line 216
    .line 217
    .line 218
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 230
    .line 231
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    const/16 v0, 0xa

    .line 234
    .line 235
    new-array v0, v0, [J

    .line 236
    .line 237
    fill-array-data v0, :array_7

    .line 238
    .line 239
    .line 240
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p1

    .line 251
    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_4
        0x1762408f -> :sswitch_3
        0x176240ee -> :sswitch_2
        0x1762450a -> :sswitch_1
        0x17624bb1 -> :sswitch_0
    .end sparse-switch

    .line 252
    :array_0
    .array-data 8
        0x6d7bbef8aee39b89L    # 2.448595023732904E219
        0x23f2fb02c26e7bbL
        0x7d90aa8c771d7182L    # 6.812279890548532E296
    .end array-data

    :array_1
    .array-data 8
        0x61f0bdff29ac8f08L    # 6.025728065740579E163
        0x4ffac6becfa46dfL
        -0xf4ddb8429951d44L    # -7.210645036525426E234
    .end array-data

    :array_2
    .array-data 8
        -0x44aba673eef54799L    # -6.733181859820203E-23
        0x6d2929858e9685eL
        0x2ca1c0925c02b89bL    # 1.0638106973602105E-93
    .end array-data

    :array_3
    .array-data 8
        -0x552fd4f815b26a61L
        0x24177e5203c956e5L    # 8.080691823747759E-135
        -0x5be4a7525a4e83d2L    # -9.40593791046978E-135
    .end array-data

    :array_4
    .array-data 8
        -0x5d56c70bcc41f6e9L
        -0x3503a84397c50cfcL    # -1.6966831989621316E53
    .end array-data

    :array_5
    .array-data 8
        0x54076d67acec2cf5L    # 6.255068013400062E96
        -0x1d285ceace40a6e1L    # -1.3938329516730943E168
        -0x6cf6353704795998L    # -5.845212864140834E-217
        0x1d456fcf0b8037c1L
    .end array-data

    :array_6
    .array-data 8
        -0x2865485d640bf520L    # -1.028043167963035E114
        0xc50416dfca3d8efL
        0x2745e9aaf8ca0950L
        -0x738706ba4eac3bb9L
        0x435c3e515d160a3dL    # 3.1799274091587828E16
        0x14dc7fd0de999f76L    # 3.467503517570817E-208
        0x2b960d856016e9d7L    # 1.0082436433305528E-98
    .end array-data

    :array_7
    .array-data 8
        0x3f1d204e84962234L    # 1.1110762820554996E-4
        0x8fb6dd6de87d0d0L
        0x468fe6a0a6ba5061L    # 8.087836178182287E31
        -0x7787d7966333398L    # -3.974442821681951E272
        0x6d88ec5cc933bb13L    # 4.3989825699658396E219
        0x3dfcd5e9fabb417dL    # 4.1961322847945336E-10
        0x75576dfe49b37421L    # 1.758985770685849E257
        0x53d0f0bcfa53c5f5L    # 5.653818702418243E95
        0x1440dafce4e1f729L    # 4.005462423592726E-211
        -0x7296346df870cc8cL
    .end array-data
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzgxm;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzgxm;)Ljava/security/Key;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzc:Ljava/security/Key;

    return-object p0
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zzd:I

    .line 2
    .line 3
    if-gt p2, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zza:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/crypto/Mac;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxm;->zza:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljavax/crypto/Mac;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 34
    .line 35
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x3673d557f1bb0621L    # 2.1712871382487217E-46
        -0x7f025f71136064f1L
        -0x39bf69fe01f19e3aL    # -2.6281515207472743E30
    .end array-data
.end method
