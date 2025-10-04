.class final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg(Lcom/google/android/play/core/appupdate/internal/zzx;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi(Lcom/google/android/play/core/appupdate/internal/zzx;)Ljava/util/concurrent/atomic/AtomicInteger;

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
    if-lez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi(Lcom/google/android/play/core/appupdate/internal/zzx;)Ljava/util/concurrent/atomic/AtomicInteger;

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
    if-gtz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    new-array v4, v4, [J

    .line 45
    .line 46
    fill-array-data v4, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/os/IInterface;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v4, 0x4

    .line 80
    new-array v4, v4, [J

    .line 81
    .line 82
    fill-array-data v4, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-array v4, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v1, v3, v4}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zza(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/content/ServiceConnection;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 111
    .line 112
    invoke-static {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl(Lcom/google/android/play/core/appupdate/internal/zzx;Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-static {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm(Lcom/google/android/play/core/appupdate/internal/zzx;Landroid/os/IInterface;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 122
    .line 123
    invoke-static {v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk(Lcom/google/android/play/core/appupdate/internal/zzx;Landroid/content/ServiceConnection;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzo(Lcom/google/android/play/core/appupdate/internal/zzx;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 133
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw v1

    .line 135
    :array_0
    .array-data 8
        0x2d757a084cbbf96L
        -0x104cb6af360cb47L
        0x19f96ab1e4cd469dL
        -0x1aebbb3b01ebfe6fL    # -8.213378841999879E178
        0x1df5909eda5a5fa7L
        0x1a709211b7890dfbL    # 2.49586104749861E-181
        -0x63bdc29a3162cbf7L
        0x747b7a0526f38b66L    # 1.259041415860551E253
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
        -0x129f439549261004L    # -7.384797971580823E218
        -0xbcb0f48895c7f05L    # -5.997072233945742E251
        -0x4fd93466d67894fL    # -3.424731283549126E284
        -0x4ef4c77a9737db04L    # -1.9258023378952184E-72
    .end array-data
.end method
