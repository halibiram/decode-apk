.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Landroid/webkit/WebView;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzavi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfhl;

.field private final zze:I

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdwk;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgey;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfny;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/zzavi;Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzfny;Lcom/google/android/gms/internal/ads/zzfhl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zze:Lcom/google/android/gms/internal/ads/zzgey;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzh:Lcom/google/android/gms/internal/ads/zzgey;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzf:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjq:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zze:I

    .line 40
    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjr:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzg:Z

    .line 58
    .line 59
    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzi:Lcom/google/android/gms/internal/ads/zzfny;

    .line 60
    .line 61
    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzd:Lcom/google/android/gms/internal/ads/zzfhl;

    .line 62
    .line 63
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 13
    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzavi;->zzc()Lcom/google/android/gms/internal/ads/zzave;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 21
    .line 22
    invoke-interface {v5, v6, p1, v7}, Lcom/google/android/gms/internal/ads/zzave;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-boolean v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzg:Z

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    sub-long/2addr v5, v3

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzf:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 40
    .line 41
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v7, v2, [J

    .line 44
    .line 45
    fill-array-data v7, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v7, Landroid/util/Pair;

    .line 56
    .line 57
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v2, v2, [J

    .line 60
    .line 61
    fill-array-data v2, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v8, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-direct {v7, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-array v2, v1, [Landroid/util/Pair;

    .line 79
    .line 80
    aput-object v7, v2, v0

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static {v3, v5, v4, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    return-object p1

    .line 90
    :goto_1
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v3, 0x6

    .line 93
    new-array v3, v3, [J

    .line 94
    .line 95
    fill-array-data v3, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/4 v3, 0x7

    .line 111
    new-array v3, v3, [J

    .line 112
    .line 113
    fill-array-data v3, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    const-wide v2, -0xd1f3db5f8f97f96L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    aput-wide v2, v1, v0

    .line 140
    .line 141
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :array_0
    .array-data 8
        -0x29029b693742b4a2L    # -1.1044886053525804E111
        -0x3dd5389a4ca4370eL    # -5.750724036589247E10
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
    :array_1
    .array-data 8
        -0x7b15bada1f00eb14L    # -5.520723462830054E-285
        -0x564b38b5fd9ae5aaL    # -8.847390375438105E-108
    .end array-data

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
    :array_2
    .array-data 8
        -0x6debb6f35ca01a7eL
        -0x4283b69af24f21dcL    # -1.6079126341842268E-12
        0x2901a94ccd1a215fL    # 3.67193486104104E-111
        0x2fb683d6355ad459L    # 7.595438493518363E-79
        0x466086612e9c3d9L
        -0xeb6c30345fb2a85L    # -5.1357693659968394E237
    .end array-data

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
    .line 200
    .line 201
    :array_3
    .array-data 8
        -0x442741814dac5b3bL    # -2.0959085514673703E-20
        0x2bcf285b25d1a76eL    # 1.1396092985940218E-97
        0x2dd7305358ab517dL    # 7.28549426802078E-88
        -0x116aba28a4d88466L    # -4.921322132342185E224
        -0x33bedff126e1dc6bL    # -2.149935787709646E59
        -0x70d2396731833aceL    # -1.46324278856469E-235
        0x1ac61ec139961514L
    .end array-data
.end method

.method public getClickSignalsWithTimeout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-gtz p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array p2, v1, [J

    .line 42
    .line 43
    const-wide v1, -0x1f0725d76af92081L    # -1.3648415921476255E159

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    aput-wide v1, p2, v0

    .line 49
    .line 50
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_0
    iget v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zze:I

    .line 59
    .line 60
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 65
    .line 66
    new-instance v4, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzap;

    .line 67
    .line 68
    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzap;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    int-to-long v3, p2

    .line 76
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    invoke-interface {p1, v3, v4, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    return-object p1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    goto :goto_0

    .line 89
    :catch_2
    move-exception p1

    .line 90
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v3, 0x7

    .line 93
    new-array v3, v3, [J

    .line 94
    .line 95
    fill-array-data v3, :array_1

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v2, [J

    .line 111
    .line 112
    fill-array-data v2, :array_2

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    .line 130
    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 p2, 0x2

    .line 136
    new-array p2, p2, [J

    .line 137
    .line 138
    fill-array-data p2, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array p2, v1, [J

    .line 152
    .line 153
    const-wide v1, -0x1081ae0ceb0e6cf8L    # -1.1492316331648144E229

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    aput-wide v1, p2, v0

    .line 159
    .line 160
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x230591b79f1d4a1dL    # -7.868794090403548E139
        0x332e9f7eaa192ad8L    # 3.722022690222612E-62
        -0x1e3a4f64860254aaL    # -9.758086606813873E162
        -0x651d3d460fc86bcfL    # -3.616932990390681E-179
        -0x618dd00a1e297e49L    # -5.053260199264331E-162
        0x63aed92638c81b15L    # 1.4901772368098745E172
        -0x7ae366f431d23419L    # -4.80792051234544E-284
        0x1e890fde602df9f5L
    .end array-data

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
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_1
    .array-data 8
        0x64bdee3265dd447dL    # 1.8950942272381045E177
        0x29ede60b899f2998L
        -0xe158924a684866L
        -0x6445540d0e805470L
        0x2765d762fbe6fc8bL    # 6.766612111777852E-119
        -0x3910e0ad820519f2L    # -5.049890406580097E33
        -0x85bd4955e2b3516L
    .end array-data

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
    :array_2
    .array-data 8
        0x1cbb6da8d6523260L
        -0x6b0f7c29ab41d931L    # -8.037505702709494E-208
        -0x7adef99b8dcfcbccL    # -5.724538197244536E-284
        0x5518b5a1de33dc44L    # 8.647339891168608E101
        -0x2ce9ec5eecff7254L    # -1.798839374619017E92
        -0x3183481aff66ea29L    # -1.2387917794438442E70
        -0x776393300480d508L
        0xd668d295f5c56f1L
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
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
    :array_3
    .array-data 8
        0xcd49d5f0d08058bL    # 7.37091238912667E-247
        -0x1dd296c3046454f9L    # -8.46834841610545E164
    .end array-data
.end method

.method public getQueryInfo()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v4, v3, [J

    .line 21
    .line 22
    fill-array-data v4, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v3, v3, [J

    .line 35
    .line 36
    fill-array-data v3, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;

    .line 50
    .line 51
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzar;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgc;->zzjt:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 55
    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzh:Lcom/google/android/gms/internal/ads/zzgey;

    .line 73
    .line 74
    new-instance v4, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaq;

    .line 75
    .line 76
    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaq;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Landroid/os/Bundle;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 84
    .line 85
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 86
    .line 87
    new-instance v5, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 88
    .line 89
    invoke-direct {v5}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 93
    .line 94
    invoke-virtual {v5, v6, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v4, v1, v2}, Lcom/google/android/gms/ads/query/QueryInfo;->generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-object v0

    .line 108
    nop

    .line 109
    :array_0
    .array-data 8
        0x6ee2c48db43a9d4dL    # 1.38937612675325E226
        0x4c582e09e1040784L    # 6.071172183379304E59
        -0x6eb50cf1bbc6bdabL
    .end array-data

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
    :array_1
    .array-data 8
        0x1bb47f89eca2b7dfL    # 3.237413866891822E-175
        0x421d07b080b9754cL    # 3.1170764846364548E10
        0x7404125e057cfc93L    # 7.185410477489527E250
    .end array-data
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 13
    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzavi;->zzc()Lcom/google/android/gms/internal/ads/zzave;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzave;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-boolean v6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzg:Z

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    sub-long/2addr v6, v3

    .line 40
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzf:Lcom/google/android/gms/internal/ads/zzdwk;

    .line 41
    .line 42
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v9, v2, [J

    .line 45
    .line 46
    fill-array-data v9, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v9, Landroid/util/Pair;

    .line 57
    .line 58
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v2, [J

    .line 61
    .line 62
    fill-array-data v2, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v10, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-direct {v9, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-array v2, v1, [Landroid/util/Pair;

    .line 80
    .line 81
    aput-object v9, v2, v0

    .line 82
    .line 83
    invoke-static {v3, v8, v4, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzc(Lcom/google/android/gms/internal/ads/zzdwk;Lcom/google/android/gms/internal/ads/zzdwa;Ljava/lang/String;[Landroid/util/Pair;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    return-object v5

    .line 90
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v4, 0x5

    .line 93
    new-array v4, v4, [J

    .line 94
    .line 95
    fill-array-data v4, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    const/4 v4, 0x6

    .line 111
    new-array v4, v4, [J

    .line 112
    .line 113
    fill-array-data v4, :array_3

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v1, v1, [J

    .line 133
    .line 134
    const-wide v3, 0x7f02ea1fb9313ba7L    # 6.485471821089467E303

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    aput-wide v3, v1, v0

    .line 140
    .line 141
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    return-object v0

    .line 149
    :array_0
    .array-data 8
        -0x2906f328eb296f6eL    # -9.413017622693454E110
        0x4b8276e09574c918L    # 5.659311214545306E55
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
    :array_1
    .array-data 8
        0x1e6f82814969ad68L    # 4.3774156800014396E-162
        0x6f9ec3c33c88f8d1L    # 4.664331052038757E229
    .end array-data

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
    :array_2
    .array-data 8
        -0x6dbd814b13f2d8f0L
        -0xa15c8bea8a33090L
        0x39a18985753cd862L    # 4.323251773225695E-31
        -0x6d1acab08b53e443L    # -1.201594267373838E-217
        0x152765779f4fc39bL    # 9.10922057795307E-207
    .end array-data

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
    :array_3
    .array-data 8
        -0x59eb8c0f2541260bL    # -3.021458112457587E-125
        0x4242422ff71e2831L    # 1.56839702076314E11
        0x57d77666b620ba9dL    # 1.4444839962924224E115
        0x5feea2bd9b3e7975L    # 1.2836176792078514E154
        0x50a480f0c846afc9L    # 3.0389289662918487E80
        0xb8221d59e340780L
    .end array-data
.end method

.method public getViewSignalsWithTimeout(I)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-gtz p1, :cond_0

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v1, v1, [J

    .line 42
    .line 43
    const-wide v2, -0x335ee1780a8b8856L    # -1.3754796752373158E61

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    aput-wide v2, v1, v0

    .line 49
    .line 50
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_0
    iget v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zze:I

    .line 59
    .line 60
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 65
    .line 66
    new-instance v4, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;

    .line 67
    .line 68
    invoke-direct {v4, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzan;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgey;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    int-to-long v4, p1

    .line 76
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    invoke-interface {v3, v4, v5, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    return-object p1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p1

    .line 88
    goto :goto_0

    .line 89
    :catch_2
    move-exception p1

    .line 90
    :goto_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v4, 0x7

    .line 93
    new-array v4, v4, [J

    .line 94
    .line 95
    fill-array-data v4, :array_1

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v2, [J

    .line 111
    .line 112
    fill-array-data v2, :array_2

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    .line 130
    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 134
    .line 135
    const/4 v0, 0x2

    .line 136
    new-array v0, v0, [J

    .line 137
    .line 138
    fill-array-data v0, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1

    .line 149
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 150
    .line 151
    new-array v1, v1, [J

    .line 152
    .line 153
    const-wide v2, 0x128c58f7e63055b3L

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    aput-wide v2, v1, v0

    .line 159
    .line 160
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    nop

    .line 169
    :array_0
    .array-data 8
        -0x26a60d5bb73c3656L    # -2.6801501267438024E122
        -0x161762e437074db1L    # -1.5072458712097138E202
        0xc5d186bdcc0cfa1L
        0x131c7928192cc151L
        0x22a7aac8a62b1e76L    # 9.70415087550179E-142
        -0x7f50de3f6a585f87L    # -2.2166609331134E-305
        -0x6c3b430bde664496L
        -0x64415c5e304ca06eL
    .end array-data

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
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_1
    .array-data 8
        0x29e49da472e6ab38L    # 7.022496655161681E-107
        0x6f6f64919463709L
        -0x76332a960c135f54L
        0x5d2959ab68baf07bL    # 6.0376872307682215E140
        -0x26815fc18a4948aaL    # -1.2653418169375642E123
        0x4c60ae16b6a6a1afL    # 8.376181669691426E59
        -0x15f50b9b7d0ad3d9L    # -6.602386378721062E202
    .end array-data

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
    :array_2
    .array-data 8
        -0x4dd83c913e0398bL    # -1.374391218011834E285
        0x1c66e810ee9d8373L    # 7.409201045006299E-172
        0xb040ec43931d89bL
        -0x114f7f88e040791dL    # -1.5270334790249987E225
        -0x1aac55ed3253b3c3L    # -1.2749613134200629E180
        0x6848ec5483fc3b61L    # 2.2742091702905216E194
        0x9032aea06a270e8L
        -0x6a5302ba4ebf1951L
    .end array-data

    .line 238
    :array_3
    .array-data 8
        -0x3ce2e2d0de086063L    # -2.0487156487884552E15
        0x6f43d7802ee4f407L    # 9.400864554342368E227
    .end array-data
.end method

.method public recordClick(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzjv:Lcom/google/android/gms/internal/ads/zzbfu;

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
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcep;->zza:Lcom/google/android/gms/internal/ads/zzgey;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzao;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public reportTouchEvent(Ljava/lang/String;)V
    .locals 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v1, [J

    .line 13
    .line 14
    fill-array-data v4, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v5, v1, [J

    .line 31
    .line 32
    fill-array-data v5, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v6, v0, [J

    .line 49
    .line 50
    fill-array-data v6, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v7, v1, [J

    .line 67
    .line 68
    fill-array-data v7, :array_3

    .line 69
    .line 70
    .line 71
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    double-to-float v15, v6

    .line 83
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v7, v1, [J

    .line 86
    .line 87
    fill-array-data v7, :array_4

    .line 88
    .line 89
    .line 90
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    const/4 v6, 0x1

    .line 104
    if-eq v2, v6, :cond_2

    .line 105
    .line 106
    if-eq v2, v1, :cond_1

    .line 107
    .line 108
    if-eq v2, v0, :cond_0

    .line 109
    .line 110
    const/4 v0, -0x1

    .line 111
    const/4 v12, -0x1

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const/4 v12, 0x3

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v12, 0x2

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const/4 v12, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x0

    .line 120
    const/4 v12, 0x0

    .line 121
    :goto_0
    int-to-long v10, v5

    .line 122
    int-to-float v13, v3

    .line 123
    int-to-float v14, v4

    .line 124
    const/16 v20, 0x0

    .line 125
    .line 126
    const/16 v21, 0x0

    .line 127
    .line 128
    const-wide/16 v8, 0x0

    .line 129
    .line 130
    const/high16 v16, 0x3f800000    # 1.0f

    .line 131
    .line 132
    const/16 v17, 0x0

    .line 133
    .line 134
    const/high16 v18, 0x3f800000    # 1.0f

    .line 135
    .line 136
    const/high16 v19, 0x3f800000    # 1.0f

    .line 137
    .line 138
    invoke-static/range {v8 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    .line 139
    .line 140
    .line 141
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    move-object/from16 v1, p0

    .line 143
    .line 144
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzavi;->zzd(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception v0

    .line 153
    goto :goto_2

    .line 154
    :catch_2
    move-exception v0

    .line 155
    :goto_1
    move-object/from16 v1, p0

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_3
    move-exception v0

    .line 159
    goto :goto_1

    .line 160
    :goto_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    const/4 v3, 0x6

    .line 163
    new-array v3, v3, [J

    .line 164
    .line 165
    fill-array-data v3, :array_5

    .line 166
    .line 167
    .line 168
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    const/4 v3, 0x7

    .line 181
    new-array v3, v3, [J

    .line 182
    .line 183
    fill-array-data v3, :array_6

    .line 184
    .line 185
    .line 186
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :array_0
    .array-data 8
        -0x30743947f0776cfbL    # -1.5704441213355343E75
        -0x65992adf447d7680L    # -1.719517791346432E-181
    .end array-data

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
    :array_1
    .array-data 8
        0x154e342f7de8b541L    # 4.70386965489196E-206
        0x2c96201fc5b5bccaL    # 6.629398979617179E-94
    .end array-data

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
    :array_2
    .array-data 8
        0x71de913e6bf880ffL    # 3.1847435810913214E240
        0x75d8f119ffa7b129L    # 4.793625739457963E259
        0x61b8c5f641e4e618L    # 5.572644544857804E162
    .end array-data

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
    :array_3
    .array-data 8
        0x37184bf7a4333915L    # 2.7237595920771463E-43
        -0x7d8792c2f187523L    # -6.214505431179877E270
    .end array-data

    :array_4
    .array-data 8
        0x1beefeb0392252ceL
        0x5c1a499118a16d50L
    .end array-data

    :array_5
    .array-data 8
        -0x5f0d7acbe4e9549L    # -8.837081843139327E279
        -0x416b57c2c2c92c75L    # -3.0781603507371837E-7
        0x759a60bea1b86bd7L    # 3.1685215087009493E258
        -0x2aafdd2fb204edfaL    # -9.035125237159253E102
        -0x7ca4c22254bc7431L    # -1.706152511323325E-292
        0x7d27cf33b0cc3306L    # 7.603156049775197E294
    .end array-data

    :array_6
    .array-data 8
        0x3c7d44df7eccaa25L    # 2.5386841299121478E-17
        -0x69df653e327421c4L    # -4.236812413372935E-202
        0x53621128e131c4f1L    # 4.710808338534571E93
        0x5b6963eea5f91554L    # 2.2527706350453702E132
        -0x43af6582c256718L
        -0xacf825a926b001fL
        -0x36f27994bf9d565bL    # -8.230389410854776E43
    .end array-data
.end method

.method public final synthetic zzb(Landroid/os/Bundle;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzab;->zza(Landroid/content/Context;)Landroid/webkit/CookieManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->acceptThirdPartyCookies(Landroid/webkit/WebView;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 42
    .line 43
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 49
    .line 50
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/ads/query/QueryInfo;->generate(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x3f12b6f22541ee53L    # -59976.43295196011
        0x213e329917661c82L
        0x33a03d49526b0347L    # 5.052901731997637E-60
    .end array-data
.end method

.method public final synthetic zzc(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzlr:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzd:Lcom/google/android/gms/internal/ads/zzfhl;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 31
    .line 32
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfhl;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc:Lcom/google/android/gms/internal/ads/zzavi;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza:Landroid/content/Context;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb:Landroid/webkit/WebView;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzavi;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavj; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    new-array v3, v3, [J

    .line 54
    .line 55
    fill-array-data v3, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v3, 0x6

    .line 71
    new-array v3, v3, [J

    .line 72
    .line 73
    fill-array-data v3, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzi:Lcom/google/android/gms/internal/ads/zzfny;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfny;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmz;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x7281a9c8a4a0aa68L    # -1.11074159127487E-243
        -0x38fc2697d428b174L    # -1.2882897061650128E34
        0x29793fc645c0f5f8L    # 6.719358457953913E-109
        0x6bfa09e2ae00df54L    # 1.3696665415482005E212
        0x37386ae10cce2190L    # 1.0949184107263503E-42
        -0x4394049849f076e9L    # -1.213528030534827E-17
        -0x3aa79e1c79e9c6d3L    # -1.1790594516986842E26
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
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
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 8
        -0x264d9735891decf9L    # -1.2169603666322696E124
        -0x508eb90427ff390eL    # -3.64281018336774E-80
        0x4f900b996426fc64L    # 1.814374890584061E75
        -0x4c637bebcb8afaf1L    # -4.43637721509328E-60
        0x5c2066036034a922L    # 5.959528416446948E135
        0x116d1ba31a55f0aaL    # 9.829806749868667E-225
    .end array-data
.end method
