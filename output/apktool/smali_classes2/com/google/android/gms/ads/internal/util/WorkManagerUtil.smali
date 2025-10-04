.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbs;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbs;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static zzb(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/work/Configuration$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p0, v0}, Landroidx/work/WorkManager;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v2, v0, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Landroidx/work/WorkManager;->cancelAllWorkByTag(Ljava/lang/String;)Landroidx/work/Operation;

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroidx/work/Constraints$Builder;

    .line 33
    .line 34
    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 48
    .line 49
    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    .line 50
    .line 51
    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 59
    .line 60
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v0, v0, [J

    .line 63
    .line 64
    fill-array-data v0, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    const/4 v1, 0x6

    .line 94
    new-array v1, v1, [J

    .line 95
    .line 96
    fill-array-data v1, :array_2

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    nop

    .line 111
    :array_0
    .array-data 8
        0x35e82f27ccdd2c5eL    # 5.171094329430539E-49
        -0x34828a7695be3210L    # -4.5145982355289327E55
        0x584bae11acf7f190L    # 2.181291690941081E117
        -0x511f8f423b51a6d4L    # -6.770230665669824E-83
    .end array-data

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
    :array_1
    .array-data 8
        -0x302d14c19b14ac00L    # -3.422908385509131E76
        0x26e04c66859ddd41L
        0x507542c4f0e4964aL    # 3.938935178554641E79
        -0x5ba14d0686b2ec6L    # -9.946737670744896E280
    .end array-data

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
    :array_2
    .array-data 8
        -0x2e82e810318d0afdL    # -3.5324401913241806E84
        0x3570024e70f15240L    # 2.6742697134065554E-51
        0x4dd5674d2672900eL    # 9.016215371836262E66
        -0x35dc9b7d3e1a70b9L    # -1.4171173087015822E49
        -0x4d9339cedaa02380L    # -8.538351433288344E-66
        0x7d21b1bfad4a2848L    # 5.650409452028709E294
    .end array-data
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, 0x6da2e0115340e387L    # 1.3326002507942557E220

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/ads/internal/offline/buffering/zza;

    .line 22
    .line 23
    invoke-direct {v1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/offline/buffering/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/offline/buffering/zza;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/offline/buffering/zza;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/work/Constraints$Builder;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Landroidx/work/Data$Builder;

    .line 26
    .line 27
    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    new-array v3, v3, [J

    .line 34
    .line 35
    fill-array-data v3, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zza:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    new-array v4, v3, [J

    .line 55
    .line 56
    fill-array-data v4, :array_1

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v4, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zzb:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v2, v4}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v3, v3, [J

    .line 75
    .line 76
    fill-array-data v3, :array_2

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object p2, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zzc:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2, p2}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 97
    .line 98
    const-class v2, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 114
    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    const/4 v1, 0x5

    .line 118
    new-array v1, v1, [J

    .line 119
    .line 120
    fill-array-data v1, :array_3

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p2, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 135
    .line 136
    invoke-virtual {p2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Landroidx/work/OneTimeWorkRequest;

    .line 141
    .line 142
    :try_start_0
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 143
    .line 144
    .line 145
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p1, p2}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    return p1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    const/4 v0, 0x6

    .line 155
    new-array v0, v0, [J

    .line 156
    .line 157
    fill-array-data v0, :array_4

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    const/4 p1, 0x0

    .line 171
    return p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x301bb3af5d30f17L
        -0x55919c4c2f9214d3L
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
    :array_1
    .array-data 8
        -0x65a8e0ad5bd9ccf4L    # -8.706722195538985E-182
        0x4118220f28556172L    # 395395.7893882013
        -0x416d9c2175260492L    # -2.740340602005389E-7
    .end array-data

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
    :array_2
    .array-data 8
        0x6bf8ebf389e3c166L    # 1.310914492307925E212
        -0x7eaf963007add39eL    # -2.393431780193677E-302
        0x5b6e215741bcae4bL    # 2.673318300799398E132
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
    .line 214
    .line 215
    .line 216
    .line 217
    :array_3
    .array-data 8
        0x142d4b2d57712f59L
        0x54bf808a7403552eL    # 1.7225754669340848E100
        -0x2df386886d77549L    # -5.358321908221233E294
        0x43d2e0e0a816ac81L    # 5.4413364000216852E18
        0x61c983ad98d26206L    # 1.1478694048694238E163
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
    .line 239
    .line 240
    .line 241
    :array_4
    .array-data 8
        -0x349658b56cb0795cL    # -1.9656923141747325E55
        -0x2b22c55531d7f3e2L    # -6.393152060328194E100
        -0xec7f0498a779185L    # -2.448144757276982E237
        0x5f2bad7363b38b1L
        -0x65ced16288df075aL
        0x62ecfa1cd27b88b2L    # 3.417441182291885E168
    .end array-data
.end method
