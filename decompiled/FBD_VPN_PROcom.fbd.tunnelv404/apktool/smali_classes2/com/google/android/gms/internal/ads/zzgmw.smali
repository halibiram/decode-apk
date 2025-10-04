.class public final Lcom/google/android/gms/internal/ads/zzgmw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgmw;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmw;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmw;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Ljava/lang/Boolean;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    new-array v2, v0, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object v0

    .line 46
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmw;->zza:Ljava/util/logging/Logger;

    .line 47
    .line 48
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 49
    .line 50
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/16 v3, 0x8

    .line 53
    .line 54
    new-array v3, v3, [J

    .line 55
    .line 56
    fill-array-data v3, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 v4, 0x7

    .line 69
    new-array v4, v4, [J

    .line 70
    .line 71
    fill-array-data v4, :array_3

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/16 v5, 0xa

    .line 84
    .line 85
    new-array v5, v5, [J

    .line 86
    .line 87
    fill-array-data v5, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    return-object v0

    .line 103
    :array_0
    .array-data 8
        0x65e915a4035feaefL    # 8.327093114021651E182
        -0xb1d16cc11e5144cL
        0x5d028ef8935340c7L    # 1.1050207037935496E140
        -0x552e5daf79c2ec5cL    # -1.968309253314907E-102
    .end array-data

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
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        -0x77e9f5b5e0c03f49L
        -0x258e4b08f4a19cL
        0x36832e926c85c2feL    # 4.199937108341244E-46
        -0x4faa7ed5b79936c2L    # -7.428677235638496E-76
    .end array-data

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
    .line 142
    .line 143
    :array_2
    .array-data 8
        -0x17d446fae3b808fdL    # -6.324166434040681E193
        -0x2a0997e68c06cdbL    # -8.021787365289523E295
        -0x4e965268a82c6714L    # -1.1626627374334602E-70
        0x653f15ee7c70d2e7L    # 5.038690340195089E179
        0x5d5b524d375e1d0eL    # 5.20573877375808E141
        0x5a5d4afba9471f66L    # 1.982899002479782E127
        -0x5775dfdc83f73b4dL    # -2.121763349442878E-113
        0x6b884438971c3bdL
    .end array-data

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
    :array_3
    .array-data 8
        -0x5906096deb643644L
        0x209bdf0a12b9412dL
        -0x76bc6dd74a8de3d6L    # -4.855627431975292E-264
        0x6a381254a383df5eL    # 4.716959160825085E203
        -0x2491d9f65551a246L    # -2.6749461746248456E132
        -0x294234d699bb62a2L    # -6.99715393650681E109
        0x74fbf2d43611282aL    # 3.2785033416335047E255
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
    .line 210
    .line 211
    :array_4
    .array-data 8
        -0x6353dd9f654e1a0L
        -0x1be4c9e751f34a00L
        0x211483bc627001a1L    # 2.506831078477676E-149
        0x36e285e99a1f2ecdL    # 2.5956385606914107E-44
        0x71f95cbd240dc1beL
        -0x28a9a8658427408cL    # -5.373092905675959E112
        0x1413ca7b30f3237eL    # 5.878811468439824E-212
        -0x1eb41ae3f0f5d367L    # -4.902227250362727E160
        0x7f5dc3ee8c34be7dL    # 3.26592901546734E305
        0x6d7f095a8aaa8306L    # 2.738987999830082E219
    .end array-data
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmw;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method
