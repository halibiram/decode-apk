.class public final Lcom/google/android/gms/internal/ads/zzeis;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfgp;

.field private zze:Lcom/google/android/gms/internal/ads/zzfgm;

.field private zzf:Lcom/google/android/gms/ads/internal/client/zzu;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzfgm;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzds:Lcom/google/android/gms/internal/ads/zzbfu;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzaq:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgm;->zzx:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method private final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzfgm;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeis;->zzj(Lcom/google/android/gms/internal/ads/zzfgm;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzw:Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :catch_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :try_start_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzw:Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v11, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzgO:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzG:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzH:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzI:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzJ:Ljava/lang/String;

    .line 83
    .line 84
    move-object v12, v2

    .line 85
    move-object v13, v3

    .line 86
    move-object v14, v4

    .line 87
    move-object v15, v6

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v6, v3, [J

    .line 92
    .line 93
    const-wide v7, -0x2ec2af1a6120f028L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    aput-wide v7, v6, v2

    .line 99
    .line 100
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v7, v3, [J

    .line 110
    .line 111
    const-wide v8, 0x4e2d1ae278632239L    # 3.923348686965386E68

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    aput-wide v8, v7, v2

    .line 117
    .line 118
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 126
    .line 127
    new-array v8, v3, [J

    .line 128
    .line 129
    const-wide v9, -0x4411165240ce026aL    # -5.236833274803269E-20

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    aput-wide v9, v8, v2

    .line 135
    .line 136
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v3, v3, [J

    .line 146
    .line 147
    const-wide v9, 0x56cdd68ce1361af7L    # 1.4015203653989412E110

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    aput-wide v9, v3, v2

    .line 153
    .line 154
    invoke-direct {v8, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    move-object v15, v2

    .line 162
    move-object v12, v4

    .line 163
    move-object v13, v6

    .line 164
    move-object v14, v7

    .line 165
    :goto_1
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 166
    .line 167
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfgm;->zzF:Ljava/lang/String;

    .line 168
    .line 169
    const-wide/16 v8, 0x0

    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    move-object v6, v2

    .line 173
    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/ads/internal/client/zzu;-><init>(Ljava/lang/String;JLcom/google/android/gms/ads/internal/client/zze;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .line 175
    .line 176
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 177
    .line 178
    move/from16 v3, p2

    .line 179
    .line 180
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_1
    move-exception v0

    .line 185
    :try_start_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 186
    .line 187
    const/16 v4, 0xa

    .line 188
    .line 189
    new-array v4, v4, [J

    .line 190
    .line 191
    fill-array-data v4, :array_0

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 209
    .line 210
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    .line 212
    .line 213
    monitor-exit p0

    .line 214
    return-void

    .line 215
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 216
    throw v0

    .line 217
    :array_0
    .array-data 8
        -0x161b60ebdd3f0620L    # -1.2627729648487284E202
        0x6f703a6a09b4d023L    # 6.151011681439973E228
        0x7d48cf47abddfac1L    # 3.1690351434375026E295
        0x68d650902c48ad72L
        0x63a507026232427L
        -0x35a841e410c0c62eL    # -1.3879947546615456E50
        -0x5ef5d4c72311ea56L    # -1.5988825988269E-149
        -0x6237937f6154154L
        -0x2e62c650c68a56e7L    # -1.4193784846011767E85
        -0x7eef9e0ff8cc89eaL    # -1.493091350392258E-303
    .end array-data
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzfgm;JLcom/google/android/gms/ads/internal/client/zze;Z)V
    .locals 2
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeis;->zzj(Lcom/google/android/gms/internal/ads/zzfgm;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 19
    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 27
    .line 28
    iput-wide p2, p1, Lcom/google/android/gms/ads/internal/client/zzu;->zzb:J

    .line 29
    .line 30
    iput-object p4, p1, Lcom/google/android/gms/ads/internal/client/zzu;->zzc:Lcom/google/android/gms/ads/internal/client/zze;

    .line 31
    .line 32
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zzgP:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    if-eqz p5, :cond_2

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lcom/google/android/gms/ads/internal/client/zzu;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdaq;
    .locals 9

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdaq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zze:Lcom/google/android/gms/internal/ads/zzfgm;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzfgp;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [J

    .line 13
    .line 14
    const-wide v7, 0x72aa58fcf19d1de9L    # 2.248783887261917E244

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-wide v7, v2, v3

    .line 21
    .line 22
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v0, v6

    .line 30
    move-object v3, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdaq;-><init>(Lcom/google/android/gms/internal/ads/zzfgm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeis;Lcom/google/android/gms/internal/ads/zzfgp;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v6
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeis;->zzk(Lcom/google/android/gms/internal/ads/zzfgm;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfgm;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeis;->zzj(Lcom/google/android/gms/internal/ads/zzfgm;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lt p1, v0, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :cond_1
    if-ltz p1, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lt p1, v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzf:Lcom/google/android/gms/ads/internal/client/zzu;

    .line 55
    .line 56
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge p1, v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 73
    .line 74
    const-wide/16 v1, 0x0

    .line 75
    .line 76
    iput-wide v1, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzb:J

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzu;->zzc:Lcom/google/android/gms/ads/internal/client/zze;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfgm;JLcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-object v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeis;->zzl(Lcom/google/android/gms/internal/ads/zzfgm;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzfgm;JLcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeis;->zzl(Lcom/google/android/gms/internal/ads/zzfgm;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final declared-synchronized zzh(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzu;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zza:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception v1

    .line 34
    :try_start_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v3, 0x9

    .line 37
    .line 38
    new-array v3, v3, [J

    .line 39
    .line 40
    fill-array-data v3, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzb:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfgm;

    .line 77
    .line 78
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzeis;->zzk(Lcom/google/android/gms/internal/ads/zzfgm;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_2
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    throw p1

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        -0x5dfca28515603ee7L    # -7.754130615752188E-145
        0x4199a41dee849632L    # 1.075464916294792E8
        0x5e25b1186ecf2d9bL    # 3.385813992603979E145
        0x27bf93e75f61a654L
        -0x5ade5ac14fe9c725L    # -7.955098216318795E-130
        0x32ebc551e22ee317L    # 2.109594635420661E-63
        -0x4a829b88b0c5bfd1L    # -4.909943195276695E-51
        0x798d9560a869298dL    # 3.2775978617418983E277
        0x4bc204487ceb9e73L    # 8.835379212482423E56
    .end array-data
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzfgp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeis;->zzd:Lcom/google/android/gms/internal/ads/zzfgp;

    return-void
.end method
