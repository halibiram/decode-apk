.class public final Lcom/google/android/gms/internal/ads/zzdne;
.super Lcom/google/android/gms/internal/ads/zzdnf;
.source "SourceFile"


# instance fields
.field private final zzb:Lorg/json/JSONObject;

.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgm;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdnf;-><init>(Lcom/google/android/gms/internal/ads/zzfgm;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    new-array v1, v0, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v3, v2, [J

    .line 23
    .line 24
    fill-array-data v3, :array_1

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzg(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzb:Lorg/json/JSONObject;

    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    new-array v3, v1, [J

    .line 48
    .line 49
    fill-array-data v3, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v3, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzk(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzc:Z

    .line 69
    .line 70
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v4, v2, [J

    .line 73
    .line 74
    fill-array-data v4, :array_3

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v1, v1, [J

    .line 87
    .line 88
    fill-array-data v1, :array_4

    .line 89
    .line 90
    .line 91
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v3, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzk(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzd:Z

    .line 107
    .line 108
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v1, v2, [J

    .line 111
    .line 112
    fill-array-data v1, :array_5

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    filled-new-array {p1}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v3, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzk(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zze:Z

    .line 131
    .line 132
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v0, v0, [J

    .line 135
    .line 136
    fill-array-data v0, :array_6

    .line 137
    .line 138
    .line 139
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    filled-new-array {p1}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    new-array v4, v1, [J

    .line 154
    .line 155
    const-wide v5, 0x604ed32332c63f2fL    # 8.265848114194964E155

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    aput-wide v5, v4, v3

    .line 161
    .line 162
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzb(Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzg:Ljava/lang/String;

    .line 174
    .line 175
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    const/4 v0, 0x2

    .line 178
    new-array v0, v0, [J

    .line 179
    .line 180
    fill-array-data v0, :array_7

    .line 181
    .line 182
    .line 183
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_0

    .line 195
    .line 196
    const/4 v3, 0x1

    .line 197
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzf:Z

    .line 198
    .line 199
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzeY:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 200
    .line 201
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_1

    .line 216
    .line 217
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v0, v2, [J

    .line 220
    .line 221
    fill-array-data v0, :array_8

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzh:Lorg/json/JSONObject;

    .line 236
    .line 237
    return-void

    .line 238
    :cond_1
    const/4 p1, 0x0

    .line 239
    goto :goto_0

    .line 240
    nop

    .line 241
    :array_0
    .array-data 8
        0x634bec70fe33d20L    # 9.14286215785455E-279
        0x637d5aa86c76216bL    # 1.7725022855513585E171
        -0x7a2a12e0589b3ed0L
        -0x694af75a31109544L    # -2.747895462786796E-199
        -0x63e4a669fd286a78L
    .end array-data

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
    :array_1
    .array-data 8
        -0x2fb954f1a8a98792L    # -5.249593597941544E78
        0x6299f65900a6da65L    # 9.56843046360821E166
        0x44fdf957df170239L    # 2.264771185319565E24
    .end array-data

    :array_2
    .array-data 8
        0xebbb0926ed80411L
        0x47098339ee826556L    # 1.6558625867722952E34
        0x40d2ae9f588e07c1L    # 19130.48977995641
        -0xf8d0929851f166eL    # -4.710764711911143E233
    .end array-data

    :array_3
    .array-data 8
        0x1b99d3a1c416cd32L
        0x4246ff667eb80e7aL    # 1.975483754081131E11
        0x7e89c5196c10dea4L
    .end array-data

    :array_4
    .array-data 8
        -0x60004922bee3ec47L
        -0x24ecad6de39d4484L    # -5.357502654779562E130
        -0x5a979fbbdccceaf4L    # -1.758308228881314E-128
        0x424532aa399ab6f1L    # 1.8208865976542923E11
    .end array-data

    :array_5
    .array-data 8
        0x7d424e969f991442L    # 2.3384204971436163E295
        0x7272b94e72f988c1L    # 1.997614783477551E243
        -0x4ecbed0c62d29c20L    # -1.1361498204575798E-71
    .end array-data

    :array_6
    .array-data 8
        0x7c497382ecbc6f69L    # 4.960601935906019E290
        -0x761d9eaf3e1099L
        0x331dac28df7c49cdL    # 1.8032462165064834E-62
        0x581d74e31a06863aL    # 2.9016218834542814E116
        -0x19b245ffca8c9527L    # -6.315563372701894E184
    .end array-data

    :array_7
    .array-data 8
        -0x4811735c7c2497d8L    # -2.8055165551129046E-39
        0x3efcf97916fbaf0aL    # 2.7632240231874882E-5
    .end array-data

    :array_8
    .array-data 8
        -0x3fefb84df3d4549eL    # -4.070015134969113
        0x2219aab438c42fe0L
        0x99607bfd613c959L
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfhk;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzh:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhk;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfhk;-><init>(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzW:Lcom/google/android/gms/internal/ads/zzfhk;

    .line 14
    .line 15
    :goto_0
    return-object v1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzb:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfgm;->zzA:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zze:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzc:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzd:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdne;->zzf:Z

    return v0
.end method
