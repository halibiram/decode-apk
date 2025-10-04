.class final Lcom/google/android/gms/ads/internal/client/zzaq;
.super Lcom/google/android/gms/ads/internal/client/zzax;
.source "SourceFile"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zzb:Lcom/google/android/gms/ads/internal/client/zzaw;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzax;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzt(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzey;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzey;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :array_0
    .array-data 8
        0x72489fce1705e5a4L    # 3.283895545375267E242
        0x96e79853386512bL
        -0x3c198c57a6a0e6abL    # -1.2942574343657531E19
        0x69b2fc8a73127ebbL    # 1.4533216733305622E201
    .end array-data
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0xe52bf80

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/ads/internal/client/zzco;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final bridge synthetic zzc()Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzki:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v5, v0, [J

    .line 38
    .line 39
    fill-array-data v5, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget-object v5, Lcom/google/android/gms/ads/internal/client/zzap;->zza:Lcom/google/android/gms/ads/internal/client/zzap;

    .line 50
    .line 51
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzceg;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcee;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/android/gms/ads/internal/client/zzcp;

    .line 56
    .line 57
    const v4, 0xe52bf80

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/internal/client/zzcp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    fill-array-data v0, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    instance-of v3, v0, Lcom/google/android/gms/ads/internal/client/zzco;

    .line 86
    .line 87
    if-eqz v3, :cond_1

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzco;

    .line 90
    .line 91
    :goto_0
    move-object v1, v0

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    goto :goto_1

    .line 97
    :catch_2
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzcm;

    .line 100
    .line 101
    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzcm;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcef; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zzb:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 106
    .line 107
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzs(Lcom/google/android/gms/ads/internal/client/zzaw;Lcom/google/android/gms/internal/ads/zzbxy;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zzb:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzp(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    const/4 v4, 0x7

    .line 125
    new-array v4, v4, [J

    .line 126
    .line 127
    fill-array-data v4, :array_2

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbxy;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zzb:Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzaq;->zza:Landroid/content/Context;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzg(Lcom/google/android/gms/ads/internal/client/zzaw;)Lcom/google/android/gms/ads/internal/client/zzeq;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzeq;->zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzco;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_2
    return-object v1

    .line 154
    nop

    .line 155
    :array_0
    .array-data 8
        0x5b0389ed201fe9a5L    # 2.7087283955136905E130
        0x4c83856c1068401eL    # 3.921165886940266E60
        0x39099063462c2648L    # 6.1543127009150315E-34
        0x462aa4982ad3174cL    # 1.0554358629697444E30
        -0x5565a5941e9b143fL
        -0x48c4d4b7fa8717fdL    # -1.2183031314476684E-42
        0x557b7dfff37e62baL    # 6.157548073450963E103
        -0x7c37137322c2a288L    # -1.998077645656397E-290
        0x66d8b38ac9ba5905L    # 2.686938784050531E187
        0xfe32cd37429d258L
    .end array-data

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
    :array_1
    .array-data 8
        -0xb2c16235a9136b6L    # -5.839887084952372E254
        -0x3baa462674b2fd97L    # -1.6030940547109306E21
        0x707b91976fb957f1L    # 6.848149104469007E233
        0x5dfa9790df503680L    # 5.188356690158855E144
        0x5f9e6f96e9a5662bL    # 3.985143109152758E152
        0x610365c7daa45225L    # 2.13056747453208E159
        -0xcadcc1ee3894735L    # -3.181787412317785E247
        -0x7a9a1452c83aeae4L
        -0x5befeb0da7fd2693L    # -5.531427514546116E-135
        0x142505fac4e3427fL    # 1.2489789995552087E-211
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
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_2
    .array-data 8
        -0x6379809b9f8144dL    # -4.32637759790693E278
        0x4269e35fcfa1aa22L    # 8.895111160453167E11
        -0x70bf435d8c4ad439L    # -3.289934246616421E-235
        0x3b30306dfff24f05L    # 1.339137455825847E-23
        0x3239fb25d0449affL    # 9.636905465614847E-67
        0x31a232a10bfc70efL    # 1.318345311830279E-69
        0x53567146a61807d3L    # 2.9258334621781734E93
    .end array-data
.end method
