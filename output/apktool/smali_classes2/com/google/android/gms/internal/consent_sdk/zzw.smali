.class final Lcom/google/android/gms/internal/consent_sdk/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzx;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzck;

.field private zzc:I

.field private zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzx;Lcom/google/android/gms/internal/consent_sdk/zzck;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzz;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x5

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 5
    .line 6
    iget v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzf:I

    .line 7
    .line 8
    add-int/lit8 v5, v4, -0x1

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    if-eqz v4, :cond_a

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    packed-switch v5, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v2

    .line 37
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 38
    .line 39
    iget-object v1, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzc:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :pswitch_1
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzc:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    new-array v2, v2, [J

    .line 78
    .line 79
    fill-array-data v2, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :pswitch_2
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_3
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_4
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:I

    .line 104
    .line 105
    :goto_0
    iget v4, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzg:I

    .line 106
    .line 107
    add-int/lit8 v5, v4, -0x1

    .line 108
    .line 109
    if-eqz v4, :cond_9

    .line 110
    .line 111
    if-eq v5, v0, :cond_1

    .line 112
    .line 113
    if-ne v5, v1, :cond_0

    .line 114
    .line 115
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 116
    .line 117
    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v2, v2, [J

    .line 123
    .line 124
    fill-array-data v2, :array_3

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 135
    .line 136
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v2

    .line 140
    :cond_1
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 141
    .line 142
    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 143
    .line 144
    :goto_1
    iget-object v2, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zza:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_2

    .line 147
    .line 148
    move-object v4, v6

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/consent_sdk/zzbp;

    .line 151
    .line 152
    iget-object v5, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzb:Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 158
    .line 159
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzx;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzx;)Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v5, Ljava/util/HashSet;

    .line 164
    .line 165
    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzd:Ljava/util/List;

    .line 166
    .line 167
    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/consent_sdk/zzap;->zzi(Ljava/util/Set;)V

    .line 171
    .line 172
    .line 173
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 174
    .line 175
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzck;->zze:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_8

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzcj;

    .line 192
    .line 193
    iget v5, v3, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzb:I

    .line 194
    .line 195
    add-int/lit8 v7, v5, -0x1

    .line 196
    .line 197
    if-eqz v5, :cond_7

    .line 198
    .line 199
    if-eqz v7, :cond_4

    .line 200
    .line 201
    if-eq v7, v0, :cond_6

    .line 202
    .line 203
    if-eq v7, v1, :cond_5

    .line 204
    .line 205
    :cond_4
    move-object v5, v6

    .line 206
    goto :goto_5

    .line 207
    :cond_5
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v7, v1, [J

    .line 210
    .line 211
    fill-array-data v7, :array_4

    .line 212
    .line 213
    .line 214
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    :goto_4
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    goto :goto_5

    .line 222
    :cond_6
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 223
    .line 224
    new-array v7, v1, [J

    .line 225
    .line 226
    fill-array-data v7, :array_5

    .line 227
    .line 228
    .line 229
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :goto_5
    if-eqz v5, :cond_3

    .line 234
    .line 235
    iget-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza:Lcom/google/android/gms/internal/consent_sdk/zzx;

    .line 236
    .line 237
    invoke-static {v7}, Lcom/google/android/gms/internal/consent_sdk/zzx;->zza(Lcom/google/android/gms/internal/consent_sdk/zzx;)Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    iget-object v3, v3, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {v7}, Lcom/google/android/gms/internal/consent_sdk/zzx;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzx;)Lcom/google/android/gms/internal/consent_sdk/zzan;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    new-array v9, v0, [Lcom/google/android/gms/internal/consent_sdk/zzd;

    .line 248
    .line 249
    const/4 v10, 0x0

    .line 250
    aput-object v7, v9, v10

    .line 251
    .line 252
    invoke-virtual {v8, v5, v3, v9}, Lcom/google/android/gms/internal/consent_sdk/zze;->zzb(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzd;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_7
    throw v6

    .line 257
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 258
    .line 259
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzc:I

    .line 260
    .line 261
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzw;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 262
    .line 263
    invoke-direct {v0, v1, v2, v4, v6}, Lcom/google/android/gms/internal/consent_sdk/zzz;-><init>(ILcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;Lcom/google/android/gms/internal/consent_sdk/zzbp;Lcom/google/android/gms/internal/consent_sdk/zzy;)V

    .line 264
    .line 265
    .line 266
    return-object v0

    .line 267
    :cond_9
    throw v6

    .line 268
    :cond_a
    throw v6

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :array_0
    .array-data 8
        0x614a4e6b21084bdcL    # 4.6230420174311655E160
        -0x66949305dc419f95L
        0x6623a58eaf600aa7L    # 1.0435113292237812E184
        0x396f1bf5170674bcL    # 4.7931324996712537E-32
        0x40d51e6d3ecb24f9L    # 21625.706957613093
    .end array-data

    .line 288
    .line 289
    .line 290
    :array_1
    .array-data 8
        -0x5d097068466b25e8L
        0x1ab2353494f2d3ebL    # 4.387941985711496E-180
        0x535f2b5f79ef983eL    # 4.0635674441475013E93
        -0x30c2fffa694873b2L    # -5.1238715550657526E73
        0x3aa4bad42888deffL    # 3.3490797811663665E-26
    .end array-data

    :array_2
    .array-data 8
        -0x72824fd20ce1790aL    # -1.086994644891795E-243
        -0x573a5d725b318bccL
        -0x559c0621c24680d8L
        0x3e44f8c9d5097e40L    # 9.765769222099892E-9
        0x6343c8d25748032L
    .end array-data

    :array_3
    .array-data 8
        -0x557efb8886c4ad4bL    # -5.935891272217398E-104
        0x19e7231e2d97e7feL    # 6.806487774882031E-184
        0x6219c0d925f94721L    # 3.707581984105679E164
        -0x4bd1015914a4fb19L    # -2.468873039968231E-57
        -0x54de87779b9aa27fL    # -6.240293672890685E-101
    .end array-data

    :array_4
    .array-data 8
        -0x6e888b9cf093eb43L    # -1.584134129312506E-224
        -0x5c7eba43d92a4a12L
    .end array-data

    :array_5
    .array-data 8
        -0x71bd574ff19e6752L    # -5.596549495171035E-240
        -0x610a1e7cc31fc7c3L
    .end array-data
.end method
