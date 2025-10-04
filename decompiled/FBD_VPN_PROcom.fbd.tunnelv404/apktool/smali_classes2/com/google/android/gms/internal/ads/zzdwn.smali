.class public Lcom/google/android/gms/internal/ads/zzdwn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Ljava/lang/String;

.field protected final zzb:Ljava/util/Map;

.field protected final zzc:Landroid/content/Context;

.field protected final zzd:Ljava/util/concurrent/Executor;

.field protected final zze:Lcom/google/android/gms/internal/ads/zzceh;

.field protected final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfmg;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzk:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzceh;Lcom/google/android/gms/internal/ads/zzfmg;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhu;->zzb:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zza:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzb:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzd:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zze:Lcom/google/android/gms/internal/ads/zzceh;

    .line 43
    .line 44
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzbX:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzf:Z

    .line 61
    .line 62
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzg:Lcom/google/android/gms/internal/ads/zzfmg;

    .line 63
    .line 64
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzca:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzh:Z

    .line 81
    .line 82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzhb:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzi:Z

    .line 99
    .line 100
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzc:Landroid/content/Context;

    .line 101
    .line 102
    return-void
.end method

.method private final zza(Ljava/util/Map;Z)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzjZ:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzc:Landroid/content/Context;

    .line 54
    .line 55
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 56
    .line 57
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Lcom/google/android/gms/internal/ads/zzdwn;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/ads/internal/util/zzad;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzg:Lcom/google/android/gms/internal/ads/zzfmg;

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfmg;->zza(Ljava/util/Map;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/4 v2, 0x2

    .line 121
    new-array v2, v2, [J

    .line 122
    .line 123
    fill-array-data v2, :array_1

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzf:Z

    .line 144
    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    if-eqz p2, :cond_3

    .line 148
    .line 149
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzh:Z

    .line 150
    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    :cond_3
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzi:Z

    .line 156
    .line 157
    if-nez p1, :cond_4

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzd:Ljava/util/concurrent/Executor;

    .line 161
    .line 162
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdwl;

    .line 163
    .line 164
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdwl;-><init>(Lcom/google/android/gms/internal/ads/zzdwn;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    return-void

    .line 171
    :cond_6
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 172
    .line 173
    const/4 p2, 0x3

    .line 174
    new-array p2, p2, [J

    .line 175
    .line 176
    fill-array-data p2, :array_2

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    nop

    .line 191
    :array_0
    .array-data 8
        -0x2c554dc3cf38c899L    # -1.1137266246987809E95
        -0x1e13f82b6075f4acL    # -5.0442879829498806E163
        0x1581f1dbc42074d8L
        0x5e072aff9c8b104fL    # 9.040569294135532E144
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
    .line 208
    .line 209
    .line 210
    .line 211
    :array_1
    .array-data 8
        -0x4b8d8cc48c0b224bL    # -4.702839420579082E-56
        0x22a7f4349f83b507L    # 9.821748068685895E-142
    .end array-data

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
    :array_2
    .array-data 8
        -0x3e0528e1f405e92bL    # -7.204888767630574E9
        -0x3f460f2e52561648L    # -6640.81905614811
        0x76bd63b189644dL
    .end array-data
.end method


# virtual methods
.method public final zzb(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzg:Lcom/google/android/gms/internal/ads/zzfmg;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfmg;->zza(Ljava/util/Map;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzc()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 2

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzb:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final synthetic zzd(Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzc:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwn;->zzk:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzad;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zze(Ljava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Ljava/util/Map;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzf(Ljava/util/Map;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Ljava/util/Map;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
