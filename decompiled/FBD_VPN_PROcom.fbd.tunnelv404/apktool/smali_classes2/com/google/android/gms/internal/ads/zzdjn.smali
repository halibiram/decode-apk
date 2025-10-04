.class public final Lcom/google/android/gms/internal/ads/zzdjn;
.super Lcom/google/android/gms/internal/ads/zzcwh;
.source "SourceFile"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdhy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdkw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfrc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdbk;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcdp;

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcjk;Lcom/google/android/gms/internal/ads/zzdhy;Lcom/google/android/gms/internal/ads/zzdkw;Lcom/google/android/gms/internal/ads/zzcxc;Lcom/google/android/gms/internal/ads/zzfrc;Lcom/google/android/gms/internal/ads/zzdbk;Lcom/google/android/gms/internal/ads/zzcdp;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzcjk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcwh;-><init>(Lcom/google/android/gms/internal/ads/zzcwg;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzk:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzc:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzd:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zze:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzf:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzg:Lcom/google/android/gms/internal/ads/zzcxc;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzh:Lcom/google/android/gms/internal/ads/zzfrc;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 25
    .line 26
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzj:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzgL:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzk:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcep;->zze:Lcom/google/android/gms/internal/ads/zzgey;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdjm;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzcjk;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzg:Lcom/google/android/gms/internal/ads/zzcxc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxc;->zzg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzc(ZLandroid/app/Activity;)Z
    .locals 5
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zze:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdhy;->zzb()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzaB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzc:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzt;->zzF(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/16 p2, 0x1c

    .line 40
    .line 41
    new-array p2, p2, [J

    .line 42
    .line 43
    fill-array-data p2, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzb()V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzaC:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzh:Lcom/google/android/gms/internal/ads/zzfrc;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwh;->zza:Lcom/google/android/gms/internal/ads/zzfgy;

    .line 82
    .line 83
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgy;->zzb:Lcom/google/android/gms/internal/ads/zzfgx;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgx;->zzb:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfgp;->zzb:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfrc;->zza(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzd:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 101
    .line 102
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzll:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 103
    .line 104
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const/4 v4, 0x0

    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzD()Lcom/google/android/gms/internal/ads/zzfgm;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfgm;->zzar:Z

    .line 130
    .line 131
    if-eqz v3, :cond_1

    .line 132
    .line 133
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfgm;->zzas:I

    .line 134
    .line 135
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzj:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdp;->zzb()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eq v1, v3, :cond_1

    .line 142
    .line 143
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/4 p2, 0x7

    .line 146
    new-array p2, p2, [J

    .line 147
    .line 148
    fill-array-data p2, :array_1

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 162
    .line 163
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v0, v0, [J

    .line 166
    .line 167
    fill-array-data v0, :array_2

    .line 168
    .line 169
    .line 170
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const/16 v0, 0xc

    .line 178
    .line 179
    invoke-static {v0, p2, v4}, Lcom/google/android/gms/internal/ads/zzfij;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdbk;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzk:Z

    .line 188
    .line 189
    if-eqz v1, :cond_2

    .line 190
    .line 191
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v0, v0, [J

    .line 194
    .line 195
    fill-array-data v0, :array_3

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 209
    .line 210
    const/16 v1, 0xa

    .line 211
    .line 212
    invoke-static {v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzfij;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 217
    .line 218
    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzk:Z

    .line 220
    .line 221
    if-nez v0, :cond_4

    .line 222
    .line 223
    if-nez p2, :cond_3

    .line 224
    .line 225
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzc:Landroid/content/Context;

    .line 226
    .line 227
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzf:Lcom/google/android/gms/internal/ads/zzdkw;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 230
    .line 231
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdkw;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbk;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zze:Lcom/google/android/gms/internal/ads/zzdhy;

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhy;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdkv; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .line 238
    .line 239
    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzk:Z

    .line 241
    .line 242
    return p1

    .line 243
    :catch_0
    move-exception p1

    .line 244
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjn;->zzi:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 245
    .line 246
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzc(Lcom/google/android/gms/internal/ads/zzdkv;)V

    .line 247
    .line 248
    .line 249
    :cond_4
    :goto_0
    return v2

    .line 250
    nop

    .line 251
    :array_0
    .array-data 8
        0x19836a41260205e2L    # 8.924242124647726E-186
        0x272b148ee5cd8ae5L
        -0xbcb6d88e8d7a12dL    # -5.891632451952348E251
        0x4a247331ad7709dL
        -0x24c34f242ad5f8f0L    # -3.1820104975564485E131
        0x1deb4f701dc59ce3L
        -0xdb40f8051e3c118L    # -3.726012882753247E242
        0x75ff9ba4697c967fL    # 2.4299256099567148E260
        -0x4fd6a42cd7b4baaeL    # -1.0950096385354365E-76
        0x3104e28638dc195bL    # 1.4775515226511606E-72
        -0xc97551f5181f769L    # -8.623656017038787E247
        -0xaf8339d7f39e40fL    # -5.583335112809267E255
        0x4feb5459b54a553L
        0x7a22a2777281015fL    # 2.1141065603667613E280
        0x3a8b94af4bf598e1L    # 1.1139796331144715E-26
        -0x5bcbd75362d321aL    # -8.740186134859899E280
        -0x3396cb61205c7d38L    # -1.2657423739304829E60
        0x26205ae624b401a3L    # 4.832193614895909E-125
        -0x64aeff0928981f3fL    # -4.196117982519225E-177
        -0x778fa55b832157b4L    # -4.953016598242686E-268
        0x2f2e91b2c770d3f3L    # 2.0141616481947512E-81
        -0x86a3073b5e19555L
        0x4d1332ef2d84d342L    # 1.9744987232305885E63
        -0x5b9b0ab2e00e25a6L
        -0x7e060fd50fad5c66L
        -0x174fa4f5ec993ad0L    # -1.9103118436997436E196
        -0x6c613996e388af2cL
        0x2c90292d36d2cbbbL    # 4.842230486672074E-94
    .end array-data

    .line 252
    :array_1
    .array-data 8
        0x6099b71dea097132L    # 2.2066291584234424E157
        -0x1c1028c57f3c5a4aL    # -2.460994414249011E173
        0x4907e648cd0924f6L    # 6.662221727501837E43
        0x18777b23735a5eaeL    # 8.234543447644402E-191
        0x578d91b229f1f6d2L    # 5.688881050615488E113
        0x161ba73ae4c07e17L
        -0x18fbc2594a2e890fL    # -1.7613899674404922E188
    .end array-data

    :array_2
    .array-data 8
        -0x22c8859a3cbcc62L
        -0x23cbec13e3165933L    # -1.4593338200256125E136
        0x2554f28ed1183831L    # 7.554989963454305E-129
        -0x2f6130f6bf36f6f4L    # -2.283140982740143E80
        0x1afe165331c7c9eaL
        -0x6ca30198f17af8bbL
    .end array-data

    :array_3
    .array-data 8
        -0x579213a81bf1d1fdL
        0x3984926336657012L    # 1.2678366848657155E-31
        -0x799834edf3239692L    # -8.388951282790419E-278
        0x8a8d6f3587133aL
        0x72cb94d667f655bL
        -0x3948fbef74ecdbeeL    # -4.668174534252819E32
    .end array-data
.end method
