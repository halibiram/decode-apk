.class public final Lcom/google/android/gms/internal/ads/zzgjk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgjv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgxr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgjj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgjk;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzgjk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgjv;)Lcom/google/android/gms/internal/ads/zzgjk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgjm;
    .locals 7

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 8
    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjv;->zzb()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zza()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v3, v2, :cond_7

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjv;->zza()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjv;->zza()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    fill-array-data v0, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjv;->zzc()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjt;->zzc:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-ne v0, v1, :cond_4

    .line 95
    .line 96
    new-array v0, v2, [B

    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_2
    move-object v4, v0

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjv;->zzc()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjt;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 111
    .line 112
    const/4 v3, 0x5

    .line 113
    if-ne v0, v1, :cond_5

    .line 114
    .line 115
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjv;->zzc()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjt;->zza:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 149
    .line 150
    if-ne v0, v1, :cond_6

    .line 151
    .line 152
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    goto :goto_2

    .line 180
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjm;

    .line 181
    .line 182
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 185
    .line 186
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zzc:Ljava/lang/Integer;

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    move-object v1, v0

    .line 190
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgjm;-><init>(Lcom/google/android/gms/internal/ads/zzgjv;Lcom/google/android/gms/internal/ads/zzgxr;Lcom/google/android/gms/internal/ads/zzgxq;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgjl;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjk;->zza:Lcom/google/android/gms/internal/ads/zzgjv;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgjv;->zzc()Lcom/google/android/gms/internal/ads/zzgjt;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    const/4 v3, 0x6

    .line 209
    new-array v3, v3, [J

    .line 210
    .line 211
    fill-array-data v3, :array_2

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 230
    .line 231
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    const/4 v2, 0x4

    .line 234
    new-array v2, v2, [J

    .line 235
    .line 236
    fill-array-data v2, :array_3

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 251
    .line 252
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    const/16 v2, 0x8

    .line 255
    .line 256
    new-array v2, v2, [J

    .line 257
    .line 258
    fill-array-data v2, :array_4

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    nop

    .line 273
    :array_0
    .array-data 8
        -0x7baf655b9b78f50eL    # -6.815202019715114E-288
        0x55042f712ff8a813L    # 3.532028613164677E101
        0x3767449e9bc21360L    # 8.347001847852759E-42
        0x16f9f2f58506ee6dL
        0x2ae7c3844bed6802L    # 5.30501020680453E-102
        0x38355a120eefa9a4L    # 6.27474125141191E-38
        0x3a1d5f79841704b4L    # 9.26846811932585E-29
        -0x156493bc0a5d878cL    # -3.4391461331873414E205
        -0x6998d5de033fdf93L    # -9.457086293420714E-201
        0x2507f565feeb02c3L    # 2.700306724327226E-130
        -0x14c1d10727603ec9L    # -3.8762019270876626E208
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_1
    .array-data 8
        -0x6706335fcbf9b175L
        -0x12228a3f316db9fbL    # -1.6639075136298402E221
        -0x6aaba31849fa8903L    # -6.3425343755285E-206
        -0x574fad7309d748edL    # -1.060491846598228E-112
        -0x771cb74ea60b5145L    # -7.475667436123744E-266
        -0x27968f0d675e55eeL    # -8.019475103939623E117
        -0x26ed8f536600fbd4L    # -1.190425824361777E121
        -0x18d090c868a00b8L
        -0x6c335e2326600295L
        -0x70be434e6032ffbdL
        0x4542b66eb29784c1L    # 4.524435492738827E25
    .end array-data

    :array_2
    .array-data 8
        -0x54318e1953cca54fL    # -1.1135413307849446E-97
        0x530fb8ae23539f87L    # 1.2923529510760959E92
        -0x249b373382aa4f3cL    # -1.8441021933118176E132
        -0x13a29302742e9080L    # -9.9061383316024E213
        0x65eab5b887948befL    # 8.866634060385391E182
        -0x5440d12ed99e39e2L    # -5.702661980418152E-98
    .end array-data

    :array_3
    .array-data 8
        -0x3a05713619eb21f7L    # -1.3150769858652947E29
        0x42ab91fba9007cfbL    # 1.515690318239849E13
        0x402acf8c99f1eb7dL    # 13.40536957815288
        0x47ab99611810584cL    # 1.8342773302907258E37
    .end array-data

    :array_4
    .array-data 8
        -0x385b2fb76c3cf968L    # -1.3833014851331231E37
        0x5463cd3548d7da39L    # 3.383675898529927E98
        0x26bd4ed4f6de8cfcL    # 4.433503131584283E-122
        0x6c9aa3a16dfe6feL
        -0x6d54f6cef7b73077L    # -9.573573225828088E-219
        -0x34748020544cbd7cL    # -8.428574276941645E55
        -0xdf88b72729282f2L    # -1.9550022295904318E241
        0x8b66392af1df34cL    # 1.0849199919318128E-266
    .end array-data
.end method
