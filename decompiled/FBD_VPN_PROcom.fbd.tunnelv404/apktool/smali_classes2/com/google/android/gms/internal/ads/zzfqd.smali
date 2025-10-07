.class public final Lcom/google/android/gms/internal/ads/zzfqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfpd;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfqd;

.field private static final zzb:Landroid/os/Handler;

.field private static zzc:Landroid/os/Handler;

.field private static final zzd:Ljava/lang/Runnable;

.field private static final zze:Ljava/lang/Runnable;


# instance fields
.field private final zzf:Ljava/util/List;

.field private zzg:I

.field private zzh:Z

.field private final zzi:Ljava/util/List;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfpf;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfpw;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfpx;

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpz;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpz;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzd:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqa;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfqa;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zze:Ljava/lang/Runnable;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzh:Z

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzi:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpw;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpw;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpf;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfpf;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzj:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpx;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqg;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfqg;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpx;-><init>(Lcom/google/android/gms/internal/ads/zzfqg;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzl:Lcom/google/android/gms/internal/ads/zzfpx;

    .line 46
    .line 47
    return-void
.end method

.method public static bridge synthetic zzb()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    return-object v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfqd;)Lcom/google/android/gms/internal/ads/zzfpx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzl:Lcom/google/android/gms/internal/ads/zzfpx;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfqd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zza:Lcom/google/android/gms/internal/ads/zzfqd;

    return-object v0
.end method

.method public static bridge synthetic zze()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zze:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic zzf()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzd:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfqd;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzi:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzh:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfov;->zza()Lcom/google/android/gms/internal/ads/zzfov;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfov;->zzb()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoh;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzm:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzi()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzj:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfpf;->zza()Lcom/google/android/gms/internal/ads/zzfpe;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zze()Ljava/util/HashSet;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x0

    .line 68
    if-lez v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zze()Ljava/util/HashSet;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzfpe;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 97
    .line 98
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzfpw;->zza(Ljava/lang/String;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzj:Lcom/google/android/gms/internal/ads/zzfpf;

    .line 103
    .line 104
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfpf;->zzb()Lcom/google/android/gms/internal/ads/zzfpe;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 109
    .line 110
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    if-eqz v9, :cond_1

    .line 115
    .line 116
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/zzfpe;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzfpo;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    const/4 v10, 0x3

    .line 126
    new-array v10, v10, [J

    .line 127
    .line 128
    fill-array-data v10, :array_0

    .line 129
    .line 130
    .line 131
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_0
    move-exception v8

    .line 143
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    const/4 v10, 0x6

    .line 146
    new-array v10, v10, [J

    .line 147
    .line 148
    fill-array-data v10, :array_1

    .line 149
    .line 150
    .line 151
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 159
    .line 160
    .line 161
    :goto_2
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfpo;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfpo;->zzf(Lorg/json/JSONObject;)V

    .line 165
    .line 166
    .line 167
    new-instance v7, Ljava/util/HashSet;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzl:Lcom/google/android/gms/internal/ads/zzfpx;

    .line 176
    .line 177
    invoke-virtual {v4, v6, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpx;->zzc(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zzf()Ljava/util/HashSet;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-lez v2, :cond_3

    .line 192
    .line 193
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzfpe;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const/4 v7, 0x1

    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v4, 0x0

    .line 200
    move-object v3, p0

    .line 201
    move-object v6, v2

    .line 202
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfqd;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpe;Lorg/json/JSONObject;IZ)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfpo;->zzf(Lorg/json/JSONObject;)V

    .line 206
    .line 207
    .line 208
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzl:Lcom/google/android/gms/internal/ads/zzfpx;

    .line 209
    .line 210
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfpw;->zzf()Ljava/util/HashSet;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzfpx;->zzd(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzl:Lcom/google/android/gms/internal/ads/zzfpx;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpx;->zzb()V

    .line 223
    .line 224
    .line 225
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzg()V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzm:J

    .line 235
    .line 236
    sub-long/2addr v0, v2

    .line 237
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-lez v2, :cond_5

    .line 244
    .line 245
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:Ljava/util/List;

    .line 246
    .line 247
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_5

    .line 256
    .line 257
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfqc;

    .line 262
    .line 263
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 264
    .line 265
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 266
    .line 267
    .line 268
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfqc;->zzb()V

    .line 269
    .line 270
    .line 271
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzfqb;

    .line 272
    .line 273
    if-eqz v3, :cond_4

    .line 274
    .line 275
    check-cast v2, Lcom/google/android/gms/internal/ads/zzfqb;

    .line 276
    .line 277
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfqb;->zza()V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_5
    return-void

    .line 282
    nop

    .line 283
    :array_0
    .array-data 8
        0x7abcdf3c6434d511L    # 1.6770771429195623E283
        -0x3b454608408ab7cdL    # -1.2621202832464792E23
        0x53f4f60de11df1e7L    # 2.798296445308891E96
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_1
    .array-data 8
        -0x66688a6cd42ed36bL
        0x3a193c387ed06336L    # 7.962836777373312E-29
        -0x4e2185892e3f425bL    # -1.7664152814615733E-68
        -0xefc6e48e56cea34L    # -2.488855539753073E236
        0x68ef0d91ca56d313L    # 2.9015551000535703E197
        0x181ae0ab22072251L
    .end array-data
.end method

.method private final zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpe;Lorg/json/JSONObject;IZ)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    const/4 v5, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    move-object v1, p2

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p0

    .line 12
    move v6, p5

    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfpe;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfpd;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final zzl()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfqd;->zze:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpe;Lorg/json/JSONObject;Z)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v8, 0x1

    .line 9
    const/4 v4, 0x3

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfpu;->zza(Landroid/view/View;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    if-nez v5, :cond_6

    .line 15
    .line 16
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 17
    .line 18
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zzk(Landroid/view/View;)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ne v5, v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    move-object/from16 v6, p2

    .line 27
    .line 28
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzfpe;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    move-object/from16 v10, p3

    .line 33
    .line 34
    invoke-static {v10, v9}, Lcom/google/android/gms/internal/ads/zzfpo;->zzc(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 35
    .line 36
    .line 37
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 38
    .line 39
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zzd(Landroid/view/View;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    if-eqz v10, :cond_1

    .line 44
    .line 45
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfpo;->zzb(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zzj(Landroid/view/View;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v2, v4, [J

    .line 61
    .line 62
    fill-array-data v2, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v2, v3, [J

    .line 80
    .line 81
    fill-array-data v2, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzh()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_1
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzk:Lcom/google/android/gms/internal/ads/zzfpw;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfpv;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const/4 v10, 0x0

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfpv;->zza()Lcom/google/android/gms/internal/ads/zzfoy;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    new-instance v12, Lorg/json/JSONArray;

    .line 115
    .line 116
    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfpv;->zzb()Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    const/4 v14, 0x0

    .line 128
    :goto_1
    if-ge v14, v13, :cond_2

    .line 129
    .line 130
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    check-cast v15, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v12, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    .line 138
    .line 139
    add-int/2addr v14, v8

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    :try_start_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v13, v1, [J

    .line 144
    .line 145
    fill-array-data v13, :array_2

    .line 146
    .line 147
    .line 148
    invoke-direct {v4, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v9, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v1, v1, [J

    .line 161
    .line 162
    fill-array-data v1, :array_3

    .line 163
    .line 164
    .line 165
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfoy;->zzd()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v9, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v4, v0, [J

    .line 182
    .line 183
    fill-array-data v4, :array_4

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfoy;->zza()Lcom/google/android/gms/internal/ads/zzfok;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v9, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v0, v0, [J

    .line 203
    .line 204
    fill-array-data v0, :array_5

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfoy;->zzc()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    .line 220
    .line 221
    :goto_2
    const/4 v0, 0x1

    .line 222
    goto :goto_3

    .line 223
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    new-array v3, v3, [J

    .line 227
    .line 228
    fill-array-data v3, :array_6

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpp;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_3
    const/4 v0, 0x0

    .line 243
    :goto_3
    if-nez p4, :cond_4

    .line 244
    .line 245
    if-eqz v0, :cond_5

    .line 246
    .line 247
    :cond_4
    const/4 v10, 0x1

    .line 248
    :cond_5
    move-object/from16 v1, p0

    .line 249
    .line 250
    move-object/from16 v2, p1

    .line 251
    .line 252
    move-object/from16 v3, p2

    .line 253
    .line 254
    move-object v4, v9

    .line 255
    move v6, v10

    .line 256
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfqd;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfpe;Lorg/json/JSONObject;IZ)V

    .line 257
    .line 258
    .line 259
    :goto_4
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    .line 260
    .line 261
    add-int/2addr v0, v8

    .line 262
    iput v0, v7, Lcom/google/android/gms/internal/ads/zzfqd;->zzg:I

    .line 263
    .line 264
    :cond_6
    :goto_5
    return-void

    .line 265
    :array_0
    .array-data 8
        -0x16078a596a3ad799L    # -2.995614865541479E202
        0x3213434813853777L    # 1.786244125789431E-67
        -0x58a8658a9b89bd32L    # -3.656246278351094E-119
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_1
    .array-data 8
        -0x30a97620ac456eaL    # -8.545653418783929E293
        -0x7877d4f4e5eccf03L    # -2.233763177731715E-272
        0x519b6254415571c7L    # 1.3299558895905056E85
        -0x53fc6fa7561c3952L    # -1.1448953440874324E-96
        -0x7f5fd7768d3d1617L
        0x529de019b1fee308L    # 9.508945073783302E89
    .end array-data

    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_2
    .array-data 8
        0x6bf0305f2a9839eL
        0xe948c4e9064faa9L
        0x739d51983944e695L    # 8.199768191668898E248
        -0x72e0309756a28629L
    .end array-data

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_3
    .array-data 8
        -0x2d1da0ddf4dc26edL    # -1.871181852891399E91
        0x26ce6c1f1364b78fL    # 9.204167457733714E-122
        0x4c2ed82c367168f0L    # 9.680679569155886E58
        0x7437df572a47a83fL    # 6.836800510719276E251
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_4
    .array-data 8
        -0x6fef74de582cbd8dL
        0x5666795d469c1c97L    # 1.649416649237093E108
        0x2ede226d97142442L    # 6.204759819564203E-83
        0x371b296e33e04d85L    # 3.044947328783434E-43
        -0x7b3c0c100b25da0L
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_5
    .array-data 8
        0x5ea8d6874805178aL    # 9.924863474049506E147
        0x1b48a78b400fb253L    # 3.042063027106624E-177
        0x4e085782cae95c89L    # 8.203183679390142E67
        -0x51c3351c0919e338L    # -5.7895024510200885E-86
        -0x676e2f9e07ae8af6L
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_6
    .array-data 8
        -0x57faa2fbc8dbf748L    # -6.777366063963394E-116
        -0x56d42cf10e9f2977L
        -0x662e8016f1f00dd3L    # -2.574020623332974E-184
        -0x3a31655438e15ff4L    # -1.8943072137276847E28
        0x592b102ce50f6fc4L    # 3.4941953134803175E121
        -0xd9ba99d068bcf6eL
    .end array-data
.end method

.method public final zzh()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqd;->zzl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzi()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfqd;->zzd:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzc:Landroid/os/Handler;

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfqd;->zze:Ljava/lang/Runnable;

    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqd;->zzl()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqd;->zzf:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqd;->zzb:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpy;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Lcom/google/android/gms/internal/ads/zzfqd;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
