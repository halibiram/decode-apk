.class final Lcom/google/android/gms/internal/ads/zzgdb$zzj;
.super Lcom/google/android/gms/internal/ads/zzgdb$zza;
.source "SourceFile"


# static fields
.field static final zza:Lsun/misc/Unsafe;

.field static final zzb:J

.field static final zzc:J

.field static final zzd:J

.field static final zze:J

.field static final zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const-class v1, Lcom/google/android/gms/internal/ads/zzgdb$zzk;

    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgdb$zzj$1;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgdb$zzj$1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 19
    .line 20
    :goto_0
    :try_start_2
    const-class v3, Lcom/google/android/gms/internal/ads/zzgdb;

    .line 21
    .line 22
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v5, v0, [J

    .line 25
    .line 26
    fill-array-data v5, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sput-wide v4, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzc:J

    .line 45
    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v5, 0x3

    .line 49
    new-array v5, v5, [J

    .line 50
    .line 51
    fill-array-data v5, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    sput-wide v4, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzb:J

    .line 70
    .line 71
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v5, v0, [J

    .line 74
    .line 75
    fill-array-data v5, :array_2

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    sput-wide v3, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzd:J

    .line 94
    .line 95
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v4, v0, [J

    .line 98
    .line 99
    fill-array-data v4, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    sput-wide v3, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zze:J

    .line 118
    .line 119
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    sput-wide v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzf:J

    .line 142
    .line 143
    sput-object v2, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .line 145
    return-void

    .line 146
    :catch_1
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    .line 148
    .line 149
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :catch_2
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    .line 155
    .line 156
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    const/4 v3, 0x5

    .line 159
    new-array v3, v3, [J

    .line 160
    .line 161
    fill-array-data v3, :array_5

    .line 162
    .line 163
    .line 164
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw v1

    .line 179
    :array_0
    .array-data 8
        -0x3f316cbce72b5004L    # -15654.524195276193
        0x46cef5de4592fff4L    # 1.2559039554155876E33
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
    :array_1
    .array-data 8
        -0x69283d883094744dL
        0x77a39e6393f13328L    # 2.024307731129407E268
        -0x660e662866900c3dL
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
    .line 204
    .line 205
    .line 206
    .line 207
    :array_2
    .array-data 8
        0x5e055aa3046882c4L    # 8.332746807541404E144
        -0x45fda90349566d41L    # -2.8935092365465726E-29
    .end array-data

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
    :array_3
    .array-data 8
        0x6028c8a7dbadc101L    # 1.6614829091924334E155
        0x1b10a1d95dfd9785L    # 2.565268776410964E-178
    .end array-data

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
    :array_4
    .array-data 8
        -0x2606dfe753fb4d55L    # -2.6574848127438734E125
        0x3156839d7434ae66L    # 5.097016432287842E-71
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
    :array_5
    .array-data 8
        -0x71ff4a87e88df37L
        -0x7f9bdf624cd13ee9L    # -8.956993123986801E-307
        -0x2a08c7826452389L    # -8.034784728373792E295
        -0x2e284396033679d7L    # -1.844446950041486E86
        -0x7dcfdc7bf32c7f4fL
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgdb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgda;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdf;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzgda;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)Lcom/google/android/gms/internal/ads/zzgdb$zzd;
    .locals 2

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzh(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzd;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zze(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)Lcom/google/android/gms/internal/ads/zzgdb$zzk;
    .locals 2

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzi(Lcom/google/android/gms/internal/ads/zzgdb;)Lcom/google/android/gms/internal/ads/zzgdb$zzk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzg(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgdb$zzk;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)V
    .locals 3
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzf:J

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdb$zzk;Ljava/lang/Thread;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v1, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zze:J

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzd;Lcom/google/android/gms/internal/ads/zzgdb$zzd;)Z
    .locals 6
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzd;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzb:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgde;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgdb;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzd:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgde;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/internal/ads/zzgdb$zzk;Lcom/google/android/gms/internal/ads/zzgdb$zzk;)Z
    .locals 6
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzgdb$zzk;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zza:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lcom/google/android/gms/internal/ads/zzgdb$zzj;->zzc:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgde;->zza(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
