.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v2, v1, [J

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzq(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzdwa;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v3, Landroid/util/Pair;

    .line 35
    .line 36
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    new-array v5, v5, [J

    .line 40
    .line 41
    fill-array-data v5, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroid/util/Pair;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 61
    .line 62
    invoke-static {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzF(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v7, 0x2

    .line 77
    new-array v8, v7, [J

    .line 78
    .line 79
    fill-array-data v8, :array_2

    .line 80
    .line 81
    .line 82
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    new-array v5, v7, [Landroid/util/Pair;

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    aput-object v3, v5, v6

    .line 96
    .line 97
    const/4 v3, 0x1

    .line 98
    aput-object v4, v5, v3

    .line 99
    .line 100
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v4, v7, [J

    .line 103
    .line 104
    fill-array-data v4, :array_3

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v2, v0, v3, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v1, v1, [J

    .line 120
    .line 121
    fill-array-data v1, :array_4

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 135
    .line 136
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_0

    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzE(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_0

    .line 163
    .line 164
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzF(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzjx:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/Integer;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-ge p1, v0, :cond_0

    .line 191
    .line 192
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 193
    .line 194
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzJ(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)V

    .line 195
    .line 196
    .line 197
    :cond_0
    return-void

    .line 198
    nop

    .line 199
    :array_0
    .array-data 8
        -0x79b2b48453d64b1aL
        0x2d60a431e4656525L    # 4.0847060355006715E-90
        -0x3591f5f9e29a83f6L    # -3.5121820314316964E50
        -0x422c975d3b68bd44L    # -7.060856166047096E-11
        0x1049cc02cd5c800cL
        0x22a73d9deaf7c6acL
        0x3c96635744572273L    # 7.767415300553818E-17
        -0x2446d7f95512f31L    # -4.508045463610366E297
    .end array-data

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
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        -0x3973ccc74ade5944L    # -7.1495706915688925E31
        -0x2f1dd7c64eca8acaL    # -4.3058218056663836E81
        -0x656a78c95e6e83d0L
    .end array-data

    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x21f3888bb8bb5e64L    # 3.910745385903655E-145
        0x1736b68f6a7a35cbL    # 7.596258787635548E-197
    .end array-data

    :array_3
    .array-data 8
        0x27927cb15c4e5899L    # 4.581946982445651E-118
        -0x6f62883646b63770L
    .end array-data

    :array_4
    .array-data 8
        0x1ebc611eda5df31bL
        -0x663daeec9b55f160L
        -0x5abba51d14ebdb57L    # -3.670654503360158E-129
        0x3bccff9d05979627L    # 1.2281338103847664E-20
        0x27d701e51d5956a6L    # 9.12366387011852E-117
        0x4b77e6ad00165d8fL    # 3.6628294346924537E55
        -0x1715919a089a7fd9L    # -2.469703237384946E197
        -0x3b87aa9ce37442c4L    # -7.181994410743173E21
    .end array-data
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    check-cast p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    new-array v2, v2, [J

    .line 9
    .line 10
    fill-array-data v2, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzq(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzdwk;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzp(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Lcom/google/android/gms/internal/ads/zzdwa;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Landroid/util/Pair;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzF(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v6, v1, [J

    .line 68
    .line 69
    fill-array-data v6, :array_1

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-direct {v4, v5, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-array p1, v0, [Landroid/util/Pair;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    aput-object v4, p1, v5

    .line 86
    .line 87
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v1, v1, [J

    .line 90
    .line 91
    fill-array-data v1, :array_2

    .line 92
    .line 93
    .line 94
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v2, v3, v1, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzE(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x357cc7d92bc1afadL    # 4.807745358762712E-51
        0x30a3f0e0a822feebL    # 2.2043291554658855E-74
        0x24ad9e3ef655125eL    # 5.215906701710808E-132
        0x21e7c4f5d649d838L
        -0x3b759979135a6466L    # -1.5584102347239057E22
        -0x4edf11eedf145d46L    # -4.791005740994742E-72
        -0x336b9d442d4f5c6L
    .end array-data

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
    :array_1
    .array-data 8
        0x2ca9fd3007eaa996L    # 1.557403558381158E-93
        0x4bfd169d7fa23677L    # 1.1411904632656795E58
    .end array-data

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
    :array_2
    .array-data 8
        0x6ae7e96f86704cfeL    # 9.59622365412739E206
        -0x30e3ca8805e8c6b6L    # -1.246018623536367E73
    .end array-data
.end method
