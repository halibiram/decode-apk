.class public final Lcom/google/android/gms/internal/ads/zzcbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcch;

.field private zze:Ljava/lang/String;

.field private zzf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcch;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zze:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzf:I

    .line 23
    .line 24
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zza:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzd:Lcom/google/android/gms/internal/ads/zzcch;

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        -0x66cd7bf26fc2d182L    # -2.659658864921232E-187
        0x2b9df4976d754c04L    # 1.3695474077091365E-98
    .end array-data
.end method

.method private final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzH(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zza:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzad;->zzc(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final zzc(Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzaw:Lcom/google/android/gms/internal/ads/zzbfu;

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
    const/16 v1, 0x31

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eq p2, v1, :cond_0

    .line 36
    .line 37
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [J

    .line 41
    .line 42
    fill-array-data v0, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eq p1, v1, :cond_0

    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 74
    .line 75
    invoke-interface {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzH(Z)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgj:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 79
    .line 80
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zza:Landroid/content/Context;

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v0, 0x3

    .line 105
    new-array v0, v0, [J

    .line 106
    .line 107
    fill-array-data v0, :array_1

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    return-void

    .line 121
    :array_0
    .array-data 8
        -0x2e073179072ed5f8L    # -7.710607316880858E86
        -0x679c2ef20df299b1L
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
    :array_1
    .array-data 8
        -0x4f9e213934de5899L    # -1.2346419148678015E-75
        0x2e123c63877793e8L    # 9.167022752763308E-87
        0x5224fef84c9b8930L    # 5.220893429085563E87
    .end array-data
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x5

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzay:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, -0x1

    .line 21
    if-eqz v3, :cond_4

    .line 22
    .line 23
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v5, v2, [J

    .line 26
    .line 27
    fill-array-data v5, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {p2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v2, [J

    .line 46
    .line 47
    fill-array-data v0, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 62
    .line 63
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzb()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eq p1, p2, :cond_0

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbt;->zzb()V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 73
    .line 74
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzE(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v3, v1, [J

    .line 81
    .line 82
    fill-array-data v3, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {p2, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    new-array v3, v3, [J

    .line 102
    .line 103
    fill-array-data v3, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {p2, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_2

    .line 118
    .line 119
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v1, v1, [J

    .line 122
    .line 123
    fill-array-data v1, :array_4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {p2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_a

    .line 138
    .line 139
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v0, v0, [J

    .line 142
    .line 143
    fill-array-data v0, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_3

    .line 158
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 160
    .line 161
    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzn(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_3

    .line 170
    .line 171
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbt;->zzb()V

    .line 172
    .line 173
    .line 174
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 175
    .line 176
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 181
    .line 182
    new-array v5, v1, [J

    .line 183
    .line 184
    fill-array-data v5, :array_6

    .line 185
    .line 186
    .line 187
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 195
    .line 196
    new-array v6, v0, [J

    .line 197
    .line 198
    fill-array-data v6, :array_7

    .line 199
    .line 200
    .line 201
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v6, v2, [J

    .line 215
    .line 216
    fill-array-data v6, :array_8

    .line 217
    .line 218
    .line 219
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    const v6, -0x7781843b

    .line 239
    .line 240
    .line 241
    const/4 v7, 0x1

    .line 242
    if-eq v5, v6, :cond_6

    .line 243
    .line 244
    const v1, -0x1f6d7726

    .line 245
    .line 246
    .line 247
    if-eq v5, v1, :cond_5

    .line 248
    .line 249
    goto :goto_0

    .line 250
    :cond_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v2, v2, [J

    .line 253
    .line 254
    fill-array-data v2, :array_9

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_7

    .line 269
    .line 270
    const/4 p2, 0x1

    .line 271
    goto :goto_1

    .line 272
    :cond_6
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 273
    .line 274
    new-array v1, v1, [J

    .line 275
    .line 276
    fill-array-data v1, :array_a

    .line 277
    .line 278
    .line 279
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    if-eqz p2, :cond_7

    .line 291
    .line 292
    const/4 p2, 0x0

    .line 293
    goto :goto_1

    .line 294
    :cond_7
    :goto_0
    const/4 p2, -0x1

    .line 295
    :goto_1
    if-eqz p2, :cond_9

    .line 296
    .line 297
    if-eq p2, v7, :cond_8

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zzaw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 301
    .line 302
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    check-cast p2, Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    if-eqz p2, :cond_a

    .line 317
    .line 318
    if-eq p1, v4, :cond_a

    .line 319
    .line 320
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzf:I

    .line 321
    .line 322
    if-eq p2, p1, :cond_a

    .line 323
    .line 324
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzf:I

    .line 325
    .line 326
    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzcbt;->zzc(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_9
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    new-array v0, v0, [J

    .line 333
    .line 334
    fill-array-data v0, :array_b

    .line 335
    .line 336
    .line 337
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    if-nez p2, :cond_a

    .line 349
    .line 350
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zze:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-nez p2, :cond_a

    .line 357
    .line 358
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zze:Ljava/lang/String;

    .line 359
    .line 360
    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/ads/zzcbt;->zzc(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    :cond_a
    :goto_2
    return-void

    .line 364
    nop

    .line 365
    :array_0
    .array-data 8
        0x1dc8e3ea1102a46aL
        0x4786e95fe605bb7cL    # 3.806845766058821E36
        -0x7415100f4af1d7d8L
        0x384583a5513a1d51L    # 1.264493455031187E-37
        -0x5bae99d161be6bc1L    # -9.575245927608721E-134
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_1
    .array-data 8
        -0x537dab267bca4ea9L    # -2.7463004191334054E-94
        0x56e7c937cd27b31dL    # 4.468996158789207E110
        -0x34dda09e2c278717L    # -8.7987208918869E53
        0x7e51462881148358L    # 2.892077999662979E300
        -0x735137808df903b9L
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_2
    .array-data 8
        0xc663358e63a7853L    # 6.20151533992132E-249
        0x5d54ecf7ab7674eaL    # 3.987099028240006E141
        -0x25884610ab516cfeL    # -6.424337456581375E127
        -0x4a4cf9333599a18bL    # -5.085352442200217E-50
    .end array-data

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    :array_3
    .array-data 8
        0x40b32cf72a29e3d3L    # 4908.9654871159755
        0x5cf20c7095602b3fL    # 5.37330328778407E139
        -0x640d2afad6a98c20L
    .end array-data

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :array_4
    .array-data 8
        0x55de91ac1130f279L    # 4.381877005890712E105
        0x22e2536d646944f3L    # 1.2022562965050002E-140
        0x4f6b327c5456de30L    # 3.8442647985368417E74
        -0x287aec2bca99b9d6L
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :array_5
    .array-data 8
        -0x3faccfe569203c23L    # -76.75162288524685
        0x3e750fe34595238cL    # 7.846229390264218E-8
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    :array_6
    .array-data 8
        -0x424ac15d0eb95481L    # -1.9321918266543103E-11
        0x536fb314f4bf1783L    # 8.265356849385561E93
        -0x9242de76f2ee050L
        0x6b6f25fbb436cd1bL    # 3.200091202277671E209
    .end array-data

    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_7
    .array-data 8
        -0x13993c5d12176c04L    # -1.5327079836697758E214
        -0x481425ce56b7792cL    # -2.5578316512142672E-39
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_8
    .array-data 8
        -0x305dedc5be609d23L    # -4.086918296067389E75
        -0x11db013283ab6127L    # -3.794629447264413E222
        -0x133a30ebcb271672L    # -9.397681257011807E215
        -0x489f137a21071a1bL    # -6.07115773341696E-42
        0x5f006c7e7e16a31L
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_9
    .array-data 8
        -0x5c629540092ec5eeL    # -3.952394105919704E-137
        -0x1eaf831457d2e553L    # -5.795153082336323E160
        0x3c6eab748546ce4L
        0x6e76652cdb2d76c7L    # 1.2952453477809881E224
        -0x3fecc139d6df0575L    # -4.811302797925815
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    :array_a
    .array-data 8
        0x63799328be826324L    # 1.5442957904764945E171
        -0x697a31a555577ca2L
        -0x5b1ea0d4c8743b98L
        0x6c2c838ddd8775c5L    # 1.199895215946544E213
    .end array-data

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_b
    .array-data 8
        0x1710d60e7bbc6e76L
        0x7e47a07599c2bc8bL    # 1.977837000474924E300
    .end array-data
.end method

.method public final zza()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    new-array v3, v3, [J

    .line 13
    .line 14
    fill-array-data v3, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbt;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzay:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v0, v0, [J

    .line 50
    .line 51
    fill-array-data v0, :array_1

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcbt;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    new-array v2, v2, [J

    .line 70
    .line 71
    fill-array-data v2, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcbt;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbt;->zzb:Landroid/content/SharedPreferences;

    .line 86
    .line 87
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v0, v0, [J

    .line 90
    .line 91
    fill-array-data v0, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcbt;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :array_0
    .array-data 8
        -0x3aba7ff046dc80b8L    # -5.19843903270442E25
        -0x351665815d2128b8L    # -7.663523756829414E52
        0x32d699a3c22a88ddL    # 8.584052116898072E-64
        -0x73c9f26196e8e552L    # -7.700433810356976E-250
        -0x426678ba9e9e2943L    # -5.8044866843546814E-12
    .end array-data

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
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        0x79478f3aa0e1023dL    # 1.6313678366083762E276
        -0x2705b97694480e7eL    # -4.240624714721682E120
        -0x7a3a9d822ba6e7b2L
        -0x39bc26f7eb6eeb32L    # -3.145006206864836E30
    .end array-data

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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        -0x696c1e59a0bc71bfL    # -6.493380185285345E-200
        -0x7a7466aa45a2108L    # -5.22481923479734E271
        -0x62f74f5d6fa12f20L    # -8.177737928240149E-169
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
    :array_3
    .array-data 8
        0x2b0a103cffffa4f1L
        -0x153bab67b7352e99L    # -2.0397362321538033E206
        0x10ae5971dbb3b0e1L
        0x3d0f4c87dc32c37dL    # 1.3899525113709561E-14
    .end array-data
.end method
