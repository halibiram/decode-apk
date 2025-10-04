.class final Lcom/google/android/gms/internal/ads/zzflz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzflw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzflw;

.field private final zzb:Ljava/util/Queue;

.field private final zzc:I

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzflw;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflz;->zza:Lcom/google/android/gms/internal/ads/zzflw;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zziC:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzc:I

    .line 30
    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zziB:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long v4, p1

    .line 56
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgc;->zzlk:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfly;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfly;-><init>(Lcom/google/android/gms/internal/ads/zzflz;)V

    .line 77
    .line 78
    .line 79
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    .line 81
    move-object v0, p2

    .line 82
    move-wide v2, v4

    .line 83
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfly;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfly;-><init>(Lcom/google/android/gms/internal/ads/zzflz;)V

    .line 90
    .line 91
    .line 92
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    .line 94
    move-object v0, p2

    .line 95
    move-wide v2, v4

    .line 96
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzflz;)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflz;->zza:Lcom/google/android/gms/internal/ads/zzflw;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzflv;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzflw;->zzb(Lcom/google/android/gms/internal/ads/zzflv;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzflv;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflz;->zza:Lcom/google/android/gms/internal/ads/zzflw;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzflw;->zza(Lcom/google/android/gms/internal/ads/zzflv;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzflv;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzc:I

    .line 10
    .line 11
    if-lt v2, v3, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 23
    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v4, v1, [J

    .line 27
    .line 28
    fill-array-data v4, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzflv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzflv;->zzj()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v5, v0, [J

    .line 49
    .line 50
    fill-array-data v5, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v0, v0, [J

    .line 69
    .line 70
    fill-array-data v0, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v1, v1, [J

    .line 89
    .line 90
    fill-array-data v1, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzflv;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflv;

    .line 101
    .line 102
    .line 103
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflz;->zzb:Ljava/util/Queue;

    .line 108
    .line 109
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :array_0
    .array-data 8
        -0x3222c34370e3d24bL    # -1.2316168117667125E67
        -0x10e4ef45fd86657dL    # -1.6029139464374937E227
        -0x416df184dfc1381eL    # -2.6906380434364993E-7
    .end array-data

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
    :array_1
    .array-data 8
        0x28fbfa5561694c67L
        -0x14ac9e76b942bafcL    # -9.955732299788571E208
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
    :array_2
    .array-data 8
        0x5c4ff29f924a3f2aL    # 4.644171988073501E136
        -0x7ad0f8230b347328L
    .end array-data

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
    :array_3
    .array-data 8
        -0x39fcf06e5e7e66dbL    # -1.8876917748173196E29
        -0x56ebf2d6f721f795L    # -8.337703847413485E-111
        -0x3bcaf36c93f9783cL    # -3.8828781227323556E20
    .end array-data
.end method
