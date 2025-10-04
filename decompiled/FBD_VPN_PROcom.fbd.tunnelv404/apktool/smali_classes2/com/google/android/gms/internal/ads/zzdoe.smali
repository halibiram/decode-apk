.class public final Lcom/google/android/gms/internal/ads/zzdoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzb:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field zzc:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zze:Lcom/google/android/gms/common/util/Clock;

.field private zzf:Lcom/google/android/gms/internal/ads/zzblg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzbng;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrz;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/internal/ads/zzdrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zze:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zza:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Ljava/lang/Long;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzc:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/view/View;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzc:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzc:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v2, :cond_2

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eq v2, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zza:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Ljava/lang/Long;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zza:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    new-array v4, v4, [J

    .line 33
    .line 34
    fill-array-data v4, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 48
    .line 49
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    sub-long/2addr v2, v4

    .line 60
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v5, v1, [J

    .line 63
    .line 64
    fill-array-data v5, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array v3, v0, [J

    .line 98
    .line 99
    fill-array-data v3, :array_3

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 113
    .line 114
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    new-array v0, v0, [J

    .line 117
    .line 118
    fill-array-data v0, :array_4

    .line 119
    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzg(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoe;->zzd()V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_0
    return-void

    .line 135
    :array_0
    .array-data 8
        -0x663fe32f393a6479L
        0x717390820df0bfb4L    # 3.1849674033471656E238
    .end array-data

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
    :array_1
    .array-data 8
        -0x2eeb0aa4979e0813L    # -3.976101783396292E82
        -0x39e0f6836fd1033L
        -0x4a2e69e33cabe33cL
    .end array-data

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
    .line 162
    .line 163
    :array_2
    .array-data 8
        0x542c873802a120d8L    # 3.046793096912827E97
        -0x3f4b4a1eb1305b26L    # -5301.880108812091
        -0x13b9f8801c62b44fL    # -3.708066767307864E213
    .end array-data

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
    :array_3
    .array-data 8
        0x1828a8a427b27449L
        0x67ce7caf4140c542L
        0xe79393419c99c31L    # 6.052404714593782E-239
        0x23cd80d3a4331796L    # 3.17118463720901E-136
    .end array-data

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
    :array_4
    .array-data 8
        -0x4d5b2a70d1041a8dL    # -9.891635500093855E-65
        0x6a2eaf0dec5e538eL
        0x1d9b64ecd190dfdL
        -0x7b0965203f0bd9f7L    # -9.500974981363055E-285
    .end array-data
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzblg;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzblg;

    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzblg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdoe;->zzd()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzblg;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzblg;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    new-array v2, v2, [J

    .line 24
    .line 25
    fill-array-data v2, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :array_0
    .array-data 8
        0x1ddcfb9aa990b2e3L    # 7.86399366465438E-165
        0x7399e9eec216ce99L    # 7.247488393333122E248
        0x285b5712d10d74a3L
        -0x1b8fca5931dcf164L    # -6.414593699826176E175
        -0x2bc8562b034d421L
        -0x12de33c1a7e85171L    # -4.908331044293377E217
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzblg;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzblg;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzg:Lcom/google/android/gms/internal/ads/zzbng;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 9
    .line 10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    new-array v4, v0, [J

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
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzk(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdod;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdod;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzblg;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzg:Lcom/google/android/gms/internal/ads/zzbng;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/internal/ads/zzdrz;

    .line 35
    .line 36
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x6b56c5ea13c552d5L    # 1.1698204746233873E209
        -0x18b66d2e53c50a89L    # -3.5607186649087266E189
        0x72fc5415ae394848L    # 7.737120860695021E245
        0xccfa41de1b6443fL    # 5.65672258156227E-247
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        0x132ee13db4f5a757L
        -0x6cbdb41398fd806L
        0x6632601e5b5b67ecL    # 1.951981329178842E184
        0x522055060c642d64L    # 4.061172268505486E87
    .end array-data
.end method
