.class public final Lcom/google/android/gms/ads/internal/util/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Landroid/os/HandlerThread;

.field private zzb:Landroid/os/Handler;

.field private zzc:I

.field private final zzd:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzc:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb:Landroid/os/Handler;

    return-object v0
.end method

.method public final zzb()Landroid/os/Looper;
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzd:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzc:I

    .line 6
    .line 7
    if-nez v2, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    new-array v0, v0, [J

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    new-array v3, v3, [J

    .line 36
    .line 37
    fill-array-data v3, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftt;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzftt;-><init>(Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    new-array v2, v2, [J

    .line 72
    .line 73
    fill-array-data v2, :array_2

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 90
    .line 91
    new-array v0, v0, [J

    .line 92
    .line 93
    fill-array-data v0, :array_3

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzd:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    .line 113
    .line 114
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    const/16 v3, 0x9

    .line 117
    .line 118
    new-array v3, v3, [J

    .line 119
    .line 120
    fill-array-data v3, :array_4

    .line 121
    .line 122
    .line 123
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :goto_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzc:I

    .line 134
    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    iput v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzc:I

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zza:Landroid/os/HandlerThread;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    monitor-exit v1

    .line 146
    return-object v0

    .line 147
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw v0

    .line 149
    :array_0
    .array-data 8
        -0x45fd60cd5685a9a4L    # -2.938012538749916E-29
        -0x6428ae2a9baf8193L
        0x5e1123885b782bb4L    # 1.3375755543180863E145
        -0x6cd26ea14dc4e6eL    # -6.525609842895291E275
        0x2b968851490b48eaL    # 1.030174093000515E-98
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
    :array_1
    .array-data 8
        0xeef1c0163d8e3eL
        0x1495b9026b16f408L    # 1.651873149834402E-209
        -0x774573e0ed188b38L
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
    :array_2
    .array-data 8
        -0x2ecd083d7a22d9a7L    # -1.4393819608493432E83
        -0x1881435615710025L    # -3.4237204582672786E190
        0x2256ebcf618b5f3dL    # 2.936960842809254E-143
        -0xf2c11d9df66199dL    # -3.1684714124518007E235
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
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_3
    .array-data 8
        0x74d07ae0aae1946cL    # 4.832961217730893E254
        0x3e531c7f264a4dd7L    # 1.7798799228377362E-8
        -0x6964dfe1d28befdL    # -7.117056651377616E276
        0x2d28462e6e1cb453L    # 3.723876604521673E-91
        0x20bb31ed7c6ac92bL
    .end array-data

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
    :array_4
    .array-data 8
        -0x4c89569b9245f8eaL    # -8.814002175631285E-61
        -0x275b6766375a000aL
        0x14cf794f918bfc29L
        -0x583e51847570d68eL    # -3.505843970723317E-117
        -0x5ee655fe1879ce2eL
        -0x457cf6cf6a202528L    # -7.68853781321917E-27
        -0x5c89fa0597073402L    # -7.397507579014928E-138
        0x13fb7d73d8ec4157L
        -0x7cc0c37473c0511aL    # -4.890876067014751E-293
    .end array-data
.end method
