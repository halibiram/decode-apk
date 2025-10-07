.class public final synthetic Lcom/google/android/gms/internal/ads/zzgky;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnf;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgky;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgky;->zza:Lcom/google/android/gms/internal/ads/zzgky;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgpc;Lcom/google/android/gms/internal/ads/zzghc;)Lcom/google/android/gms/internal/ads/zzggc;
    .locals 4

    .line 1
    sget p2, Lcom/google/android/gms/internal/ads/zzgkz;->zza:I

    .line 2
    .line 3
    move-object p2, p1

    .line 4
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgox;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgox;->zzg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgvz;->zzd:Lcom/google/android/gms/internal/ads/zzgvz;

    .line 37
    .line 38
    if-ne v0, v1, :cond_1

    .line 39
    .line 40
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgox;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgox;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzf;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgvo;->zze(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzgvo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvo;->zza()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvo;->zzf()Lcom/google/android/gms/internal/ads/zzgvr;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvr;->zzf()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgku;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgku;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgkt;->zza(Lcom/google/android/gms/internal/ads/zzgku;)Lcom/google/android/gms/internal/ads/zzgkt;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v2, v2, [J

    .line 93
    .line 94
    fill-array-data v2, :array_1

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 119
    .line 120
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    const/4 v1, 0x5

    .line 123
    new-array v1, v1, [J

    .line 124
    .line 125
    fill-array-data v1, :array_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2

    .line 139
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvz;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    const/4 v1, 0x7

    .line 152
    new-array v1, v1, [J

    .line 153
    .line 154
    fill-array-data v1, :array_3

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
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    const/16 v0, 0xa

    .line 177
    .line 178
    new-array v0, v0, [J

    .line 179
    .line 180
    fill-array-data v0, :array_4

    .line 181
    .line 182
    .line 183
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    nop

    .line 195
    :array_0
    .array-data 8
        -0x48c2d46c20c697aeL    # -1.308038132246639E-42
        -0x6d69f11ffb5cc979L    # -3.905452676172245E-219
        0x3c905bda55e0e2f7L    # 5.675598978561638E-17
        0x335de3e11fb4cd82L    # 2.906357565223793E-61
        0x5400bd41990cb1faL    # 4.469361219560448E96
        -0x4aa59c75c64cc9b1L    # -1.102048874334056E-51
        -0x38bce8b99b82c18dL    # -1.9825142560866666E35
        0x23463dbd3d63118fL    # 9.338338538799831E-139
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
    :array_1
    .array-data 8
        0x6159e03b1708afc8L    # 9.094800846962145E160
        0x21cd6b1c239482dbL
        0x1bc1e9f8651e97f8L    # 5.658532305806813E-175
        -0x7bdd6e55c520bc1bL    # -9.527144908553545E-289
        0x778887a1f3e40eeL
        0x7246f30aef6c769bL    # 3.0605366892846427E242
        -0x64f698940fba0114L    # -1.959090623675271E-178
        0x521f8056762b4dd9L    # 3.916584516275241E87
    .end array-data

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
    :array_2
    .array-data 8
        -0x4841ca297d31ab77L    # -3.467972870229643E-40
        0x753f67c643a47fb6L    # 5.894408411195795E256
        0x61143bd1a4ae40eeL    # 4.444801099448135E159
        0x16c995bed8c0c9bbL    # 6.684937239309993E-199
        -0x210f6b7deaadecb9L    # -2.120045940170359E149
    .end array-data

    :array_3
    .array-data 8
        0x610940257eb62995L    # 2.7734410953573816E159
        0xabac747f65d2fc7L
        -0x160ae9e1370b5504L
        0x6f0e2fe35ded5171L    # 8.938972779511137E226
        0x685afd960af71a22L    # 4.9257150461831125E194
        -0x52c495eab81ad816L    # -8.411236822258111E-91
        0x179b523281f3b611L
    .end array-data

    :array_4
    .array-data 8
        0x448af88c80d6ccacL    # 1.5920805676628453E22
        0x18e9097fb3294e43L
        -0x5085171e7f86c125L    # -5.673745758050747E-80
        0x747543ddd319186L
        0x1de64187b77fb7e2L
        0x2ddbe8ad1e5e4819L    # 8.768470866049302E-88
        0x463fd8582f2d088bL    # 2.5230284083176749E30
        0x51d6453716cf0af6L    # 1.7305583439005722E86
        -0xb8f3a15cec9a31fL    # -7.685813360979915E252
        0x1bd614e48d6141L
    .end array-data
.end method
