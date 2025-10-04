.class final Lcom/google/android/gms/ads/internal/zzr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/Map;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zza:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p2, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzr;->zzc:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 48
    .line 49
    new-array v3, v0, [J

    .line 50
    .line 51
    fill-array-data v3, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    new-array v2, v2, [J

    .line 77
    .line 78
    fill-array-data v2, :array_1

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v0, v0, [J

    .line 98
    .line 99
    fill-array-data v0, :array_2

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzf:Ljava/lang/String;

    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x3aedecf17a105dcaL    # 7.735575861594408E-25
        -0x619fdfd93c5e161aL
    .end array-data

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
        0x7776f90d335c2328L    # 2.962996844372441E267
        0x269ad27698b01916L
        0x62077f77f817f0fdL    # 1.6914421748284206E164
        0x5aadb5b94cbd6dd6L    # 6.435595690171653E128
        -0x2fcb2386db6a9c6fL    # -2.415564652419867E78
        0x2398a2f7bc69d379L
        0xd542cbb2fed987dL
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
    :array_2
    .array-data 8
        -0x7a2663fa7d095d7eL
        -0x5f0109feb9a7d598L    # -9.45837532403166E-150
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzcei;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzj:Lcom/google/android/gms/ads/internal/client/zzfh;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzfh;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzd:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzm:Landroid/os/Bundle;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbho;->zzc:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzr;->zze:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    new-array v4, v4, [J

    .line 72
    .line 73
    fill-array-data v4, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzr;->zzc:Ljava/util/Map;

    .line 90
    .line 91
    const/4 v4, 0x4

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzc:Ljava/util/Map;

    .line 105
    .line 106
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/4 v1, 0x3

    .line 111
    new-array v1, v1, [J

    .line 112
    .line 113
    fill-array-data v1, :array_1

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbho;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zza:Landroid/content/Context;

    .line 141
    .line 142
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbho;->zzb:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/String;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzc:Ljava/util/Map;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    :goto_3
    return-void

    .line 189
    :array_0
    .array-data 8
        0x42d9c93685130f37L    # 1.1340797524690886E14
        0x1a8f4294be556a61L    # 9.416786618413952E-181
    .end array-data

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
    :array_1
    .array-data 8
        -0x1bf9223b4ae7ce5cL    # -7.06940862111609E173
        0x2b6e5e0ca43cef3bL    # 1.7354766448774713E-99
        0x7948f07a64076ec9L    # 1.726917047541817E276
    .end array-data
.end method
