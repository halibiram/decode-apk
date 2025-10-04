.class final Lcom/google/android/gms/common/internal/zzr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/android/gms/common/internal/zzp;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzp;->zza()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x3

    .line 41
    if-ne v4, v5, :cond_3

    .line 42
    .line 43
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v4, 0x7

    .line 62
    new-array v4, v4, [J

    .line 63
    .line 64
    fill-array-data v4, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/Exception;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzp;->zzb()Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zza()Landroid/content/ComponentName;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 92
    .line 93
    new-instance v0, Landroid/content/ComponentName;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zzc()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    const/4 v5, 0x2

    .line 105
    new-array v5, v5, [J

    .line 106
    .line 107
    fill-array-data v5, :array_2

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/zzp;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    monitor-exit v1

    .line 124
    return v2

    .line 125
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p1

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    monitor-enter v1

    .line 134
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    .line 139
    .line 140
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lcom/google/android/gms/common/internal/zzp;

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzp;->zzi()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzp;->zzj()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array v0, v0, [J

    .line 167
    .line 168
    fill-array-data v0, :array_3

    .line 169
    .line 170
    .line 171
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/zzp;->zzg(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    goto :goto_3

    .line 184
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzs;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzs;->zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_6
    monitor-exit v1

    .line 194
    return v2

    .line 195
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    throw p1

    .line 197
    :array_0
    .array-data 8
        0x61ab24f0a643e994L    # 3.0529963076116954E162
        -0x3991c4fd462a6944L    # -1.9160862291494769E31
        -0x549fa893acee4096L    # -9.339062313122361E-100
        -0x5a8ba7146da8498L
    .end array-data

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
    :array_1
    .array-data 8
        0xcf7009a3264dfcfL    # 3.28984787865616E-246
        0x6227c270e39c0659L    # 6.841094399531633E164
        0x3c86d97a62ee8d7cL    # 3.963760521034779E-17
        0x4c61c5beeef1f3d4L    # 8.924755458473304E59
        0x4e36b609b3293336L    # 6.122896540467722E68
        -0x7966c8b288a72922L    # -7.112473115388071E-277
        -0x174081acc02719abL    # -3.678387993293952E196
    .end array-data

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
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        -0x79ff4e6aeb08f887L    # -9.196575671542809E-280
        -0x6b1078150e2b966eL    # -7.672727381580464E-208
    .end array-data

    :array_3
    .array-data 8
        -0x5a9ca356bc112e90L
        0x2990a55d0017725aL    # 1.77194469933579E-108
        0x5391eb57d8e4f42eL    # 3.7378332156215616E94
        0x43a1ccbe2ff4e3bbL    # 6.4130455353752717E17
    .end array-data
.end method
