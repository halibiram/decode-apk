.class public final Lcom/google/android/gms/internal/ads/zzfwe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfvt;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "attachedRemoteTasksLock"
    .end annotation
.end field

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private final zzi:Landroid/content/Intent;

.field private final zzj:Ljava/lang/ref/WeakReference;

.field private final zzk:Landroid/os/IBinder$DeathRecipient;

.field private final zzl:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "attachedRemoteTasksLock"
    .end annotation
.end field

.field private zzm:Landroid/content/ServiceConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwe;->zza:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfvt;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzfvg;Lcom/google/android/gms/internal/ads/zzfvz;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/internal/ads/zzfvz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 10
    .line 11
    new-instance p3, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzf:Ljava/util/Set;

    .line 17
    .line 18
    new-instance p3, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzg:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfvv;

    .line 26
    .line 27
    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfvv;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzk:Landroid/os/IBinder$DeathRecipient;

    .line 31
    .line 32
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    const/4 p6, 0x0

    .line 35
    invoke-direct {p3, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzb:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 p2, 0x4

    .line 47
    new-array p2, p2, [J

    .line 48
    .line 49
    fill-array-data p2, :array_0

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzi:Landroid/content/Intent;

    .line 62
    .line 63
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzo:Lcom/google/android/gms/internal/ads/zzfvg;

    .line 64
    .line 65
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    const/4 p2, 0x0

    .line 68
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzj:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x674417c4d44f60c4L
        0x7031c36666a63077L    # 2.757781554230912E232
        0xf1f5cdd2268e3b0L
        0x68ba201fff4a1ce4L    # 3.051417310627157E196
    .end array-data
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfwe;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfwe;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzm:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfwe;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfwe;)Lcom/google/android/gms/internal/ads/zzfvt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfwe;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzg:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfwe;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzfwe;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfwe;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzj:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfvz;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 35
    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    new-array v2, v2, [J

    .line 41
    .line 42
    fill-array-data v2, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfvz;->zza()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v1, v4, v3

    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v2, v2, [J

    .line 71
    .line 72
    fill-array-data v2, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfvu;

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzv()Landroid/os/RemoteException;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvu;->zzc(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    .line 115
    .line 116
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzg:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzw()V

    .line 120
    .line 121
    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :array_0
    .array-data 8
        0x1cb6d67ea728c128L
        0x8766915df020878L
        0x34ae76fbad8f4354L    # 6.212248459423142E-55
        0x4087d1f9b33bdc15L    # 762.2469238926448
    .end array-data

    .line 128
    .line 129
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
    :array_1
    .array-data 8
        0x22ba755ea2641df2L    # 2.169735824720939E-141
        -0x73f56161c15db74eL
        0x53531d6d61bbd8feL    # 2.4920218504397296E93
        0x3c773daf6e27b164L    # 2.0158317813461114E-17
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
    :array_2
    .array-data 8
        0x52d322a6254cc307L    # 9.744847912092165E90
        -0x369cd35b6b2c16caL    # -3.4208248278984193E45
        0x463f03931c72ee5L
        -0x7545a02f735b8f56L    # -5.489139369098222E-257
    .end array-data
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzfwe;Landroid/content/ServiceConnection;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzm:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzfwe;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzh:Z

    return-void
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfwe;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzf:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvw;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvw;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfwe;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzw()V

    return-void
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/internal/ads/zzfvu;)V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzh:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 12
    .line 13
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v5, v0, [J

    .line 18
    .line 19
    fill-array-data v5, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwd;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzfwd;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/internal/ads/zzfwc;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzm:Landroid/content/ServiceConnection;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzh:Z

    .line 47
    .line 48
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzb:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzi:Landroid/content/Intent;

    .line 51
    .line 52
    invoke-virtual {v3, v4, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 59
    .line 60
    new-array v1, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v0, v0, [J

    .line 65
    .line 66
    fill-array-data v0, :array_1

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzh:Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfvu;

    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwf;

    .line 100
    .line 101
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfwf;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvu;->zzc(Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 111
    .line 112
    .line 113
    :cond_1
    return-void

    .line 114
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzh:Z

    .line 115
    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 119
    .line 120
    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    .line 122
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v0, v0, [J

    .line 125
    .line 126
    fill-array-data v0, :array_2

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zze:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvu;->run()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :array_0
    .array-data 8
        0x7fef95e51406079L
        0x79b27e32138af8e4L    # 1.6390878989251268E278
        -0x16e962c0762c6b5L    # -4.664649496617699E301
        -0x4129db40bc66c8bfL    # -5.27943216750514E-6
        -0x4921aba9cd14248fL    # -2.1250299051809248E-44
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
        -0x5edb3ec5ca0db143L    # -5.072366108746881E-149
        0x2c0cc312eab1a51fL    # 1.683180124303209E-96
        -0x61eea9c86df8faa4L
        -0x26b567dae2b2a3bL    # -8.445612321510457E296
        0x380d7ad7caae4205L    # 1.082918852330976E-38
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
    :array_2
    .array-data 8
        -0x45fd88345b9f96cdL    # -2.9137289215914634E-29
        0xfa54b27e79751f9L    # 2.678810575375456E-233
        0x7cfaf9767da07902L    # 1.0767344625650977E294
        -0x3594b688b823f9f9L    # -3.1903968466180462E50
        0x35e31f1411370a3fL    # 4.088560239914455E-49
    .end array-data
.end method

.method public static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzfwe;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzk:Landroid/os/IBinder$DeathRecipient;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 38
    .line 39
    new-array v1, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    new-array v3, v3, [J

    .line 45
    .line 46
    fill-array-data v3, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        -0x3bd2dc4dc2fcc380L    # -2.687638817794341E20
        -0x491674e6e684ba69L    # -3.5793859564930553E-44
        0x52e7a6c2b7f910cdL    # 2.408938517662122E91
    .end array-data

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
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x6afe5a2b5703508dL    # 2.436169771994935E207
        -0x4b0b7f7605a50e38L    # -1.3378247981624362E-53
        -0x721d7917edc2ab94L    # -8.682765880269663E-242
        0x240e99d2f66625d8L    # 5.262665956585618E-135
    .end array-data
.end method

.method public static bridge synthetic zzr(Lcom/google/android/gms/internal/ads/zzfwe;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzc:Lcom/google/android/gms/internal/ads/zzfvt;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzk:Landroid/os/IBinder$DeathRecipient;

    .line 31
    .line 32
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x5e208fdf6d6a1ce1L    # -1.573537059425209E-145
        -0x40b1bf12bb6c4f4eL    # -9.232672247470235E-4
        -0x22fc91e9aa90c4d1L    # -1.1569149519602491E140
    .end array-data
.end method

.method private final zzv()Landroid/os/RemoteException;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    new-array v2, v2, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/os/RemoteException;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v2, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x134eff506de05ba6L    # -3.6633150348684876E215
        0x1d0163ad04e31f0aL    # 5.759648896288847E-169
        0x35620c575e41e780L    # 1.5074566805570586E-51
        0x2f6ae5cb792fc881L    # 2.8356020299568295E-80
    .end array-data
.end method

.method private final zzw()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "attachedRemoteTasksLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzf:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzv()Landroid/os/RemoteException;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzf:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final zzc()Landroid/os/Handler;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwe;->zza:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v3, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzd:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/os/Handler;

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method

.method public final zze()Landroid/os/IInterface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzn:Landroid/os/IInterface;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzfvu;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/tasks/TaskCompletionSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvx;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvu;->zzb()Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzfvx;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/ads/zzfvu;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzc()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final synthetic zzt(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzg:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwe;->zzf:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit p2

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final zzu()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvy;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvy;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzc()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
