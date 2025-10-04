.class final Lcom/google/android/play/core/review/internal/zzn;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/internal/zzt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzj;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzg(Lcom/google/android/play/core/review/internal/zzt;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzi(Lcom/google/android/play/core/review/internal/zzt;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzi(Lcom/google/android/play/core/review/internal/zzt;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v4, 0x8

    .line 42
    .line 43
    new-array v4, v4, [J

    .line 44
    .line 45
    fill-array-data v4, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzd(Lcom/google/android/play/core/review/internal/zzt;)Landroid/os/IInterface;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    new-array v4, v4, [J

    .line 80
    .line 81
    fill-array-data v4, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-array v4, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1, v3, v4}, Lcom/google/android/play/core/review/internal/zzi;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zza(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzb(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/ServiceConnection;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 110
    .line 111
    invoke-static {v1, v2}, Lcom/google/android/play/core/review/internal/zzt;->zzl(Lcom/google/android/play/core/review/internal/zzt;Z)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-static {v1, v2}, Lcom/google/android/play/core/review/internal/zzt;->zzm(Lcom/google/android/play/core/review/internal/zzt;Landroid/os/IInterface;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/google/android/play/core/review/internal/zzt;->zzk(Lcom/google/android/play/core/review/internal/zzt;Landroid/content/ServiceConnection;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/google/android/play/core/review/internal/zzt;->zzo(Lcom/google/android/play/core/review/internal/zzt;)V

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw v1

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        -0x7bcef38e7a137309L
        0xd459e839585480fL
        -0xf5149a62c2f1959L    # -6.1032210010557776E234
        -0x21784813b9cd2adfL    # -2.3693770818448552E147
        0x40b4801f02ba3550L    # 5248.121135366455
        -0x748a2c3ff465e282L
        0x3d289350ae2f2223L    # 4.365476839628584E-14
        0x3a67750983ab8eb2L    # 2.3685695270825537E-27
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
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_1
    .array-data 8
        -0x1cb37c0d1d1f8fbcL
        -0x1d09479e49f04740L    # -5.359083477763236E168
        0x1453ebb795e8952dL    # 9.467801981018692E-211
        -0x59a843d469d52cdeL
    .end array-data
.end method
