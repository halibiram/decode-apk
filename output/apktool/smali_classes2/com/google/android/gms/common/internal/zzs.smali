.class final Lcom/google/android/gms/common/internal/zzs;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "SourceFile"


# instance fields
.field private final zzb:Ljava/util/HashMap;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "connectionStatus"
    .end annotation
.end field

.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/common/internal/zzr;

.field private final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzg:J

.field private final zzh:J

.field private volatile zzi:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/common/internal/zzr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzr;-><init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzq;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zze:Lcom/google/android/gms/common/internal/zzr;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzc:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/gms/internal/common/zzi;

    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 37
    .line 38
    const-wide/16 p1, 0x1388

    .line 39
    .line 40
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzg:J

    .line 41
    .line 42
    const-wide/32 p1, 0x493e0

    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzh:J

    .line 46
    .line 47
    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    return-void
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/common/internal/zzs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzh:J

    return-wide v0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/common/internal/zzs;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzs;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/common/internal/zzs;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzs;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/common/internal/zzs;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/common/internal/zzp;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzp;->zzh(Landroid/content/ServiceConnection;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzi()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    .line 55
    .line 56
    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzg:J

    .line 57
    .line 58
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/16 v2, 0xb

    .line 80
    .line 81
    new-array v2, v2, [J

    .line 82
    .line 83
    fill-array-data v2, :array_1

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p2

    .line 107
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    const/16 v2, 0x8

    .line 121
    .line 122
    new-array v2, v2, [J

    .line 123
    .line 124
    fill-array-data v2, :array_2

    .line 125
    .line 126
    .line 127
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p2

    .line 148
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p1

    .line 150
    nop

    .line 151
    :array_0
    .array-data 8
        -0x3b09a84fa83698bbL    # -1.6881541792618232E24
        -0x57444b77b37c4038L    # -1.8000434754943618E-112
        -0x76021dd825ced481L
        -0x7acdeaeeb4e6651bL    # -1.2160113999130241E-283
        0x7913e6872612b41fL    # 1.722503194455238E275
        0x7766a156835a3c5fL    # 1.4594024427714545E267
    .end array-data

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
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    :array_1
    .array-data 8
        0x554fb91a4cc9c481L    # 8.881443920701841E102
        -0x4700e82f43628ceeL    # -3.7426872041883762E-34
        0x254d9e1d9bb84aeL
        0x26a4f42e11981bbbL    # 1.584875482732379E-122
        0x108b4b8ab096ba42L    # 5.625974498851052E-229
        -0x6ee0b8914cd54b1fL
        -0x4a313e62c8bc7922L    # -1.6440873416304119E-49
        -0x744620f96af2f668L
        -0x3e8cd6bba6b9b30L
        0x653ae49317dd870dL    # 4.3590773646380194E179
        -0x1ad51f843b7334cdL    # -2.1782435051980984E179
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
    :array_2
    .array-data 8
        -0x7e308cf1661bdabfL    # -5.870123923364758E-300
        0x76bc5bdb93c541abL    # 8.929854100975596E263
        -0x502ce3ad678faceL
        -0x572da660d499c752L    # -4.768916316145E-112
        0x22a1dba27d5d0624L    # 7.322234080849562E-142
        -0x13b48e9d4ff11c0aL    # -4.619310310645282E213
        -0x2e8f74ff23874d5aL    # -2.0085960190337608E84
        -0x2cb715a15bd8dd7dL    # -1.6241210666904637E93
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 4
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/common/internal/zzp;

    .line 29
    .line 30
    if-nez p4, :cond_0

    .line 31
    .line 32
    iget-object p4, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/gms/common/internal/zzp;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzs;Lcom/google/android/gms/common/internal/zzo;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/common/internal/zzp;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzp;->zzh(Landroid/content/ServiceConnection;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzp;->zzd(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zza()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v2, 0x1

    .line 76
    if-eq p1, v2, :cond_3

    .line 77
    .line 78
    const/4 p2, 0x2

    .line 79
    if-eq p1, p2, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/common/internal/zzp;->zze(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzb()Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzc()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzp;->zzj()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    monitor-exit v0

    .line 102
    return p1

    .line 103
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 115
    .line 116
    const/16 v1, 0xc

    .line 117
    .line 118
    new-array v1, v1, [J

    .line 119
    .line 120
    fill-array-data v1, :array_1

    .line 121
    .line 122
    .line 123
    invoke-direct {p4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p4

    .line 130
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p2

    .line 144
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p1

    .line 146
    nop

    .line 147
    :array_0
    .array-data 8
        -0x523266c0e2940d3fL    # -4.6496764359581067E-88
        -0x691a4f3322232749L
        0x1df8bd3845087f96L
        0x6f9890db83edb73dL    # 3.724504478617379E229
        -0x2eb3bd8bcca4a428L    # -4.2889857667733317E83
        0x5ac348455d8be7beL    # 1.670733506962312E129
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
    :array_1
    .array-data 8
        -0x7c34c1c2fb0bd1fbL    # -2.183991851552891E-290
        0x7cf2771790323578L    # 7.370719412744258E293
        0x1fa2793cd9b2cbc7L
        0x7da40b5afd067cc6L    # 1.6386185594387373E297
        0x6d3631e2e3b43624L    # 1.224191756152561E218
        -0x779b4eca15de33b7L
        -0x7e988073df5789acL    # -6.85313904895554E-302
        0x6e9f268db1ffa0aL
        -0x53a51f210ac9236dL    # -5.033439176374954E-95
        -0x5c3a01c04ce0a12eL
        0x43edcab71bcba00eL    # 1.7173836019229815E19
        -0x33beed96f2a25eeL
    .end array-data
.end method

.method public final zzi(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zzi:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public final zzj(Landroid/os/Looper;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zzb:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/common/zzi;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzs;->zze:Lcom/google/android/gms/common/internal/zzr;

    .line 7
    .line 8
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzs;->zzd:Landroid/os/Handler;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
