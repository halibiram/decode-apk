.class public abstract Lcom/google/android/play/core/appupdate/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:Lcom/google/android/play/core/appupdate/internal/zzm;

.field protected final zzb:Ljava/util/Set;

.field private final zzc:Landroid/content/IntentFilter;

.field private final zzd:Landroid/content/Context;

.field private zze:Lcom/google/android/play/core/appupdate/internal/zzk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzm;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzf:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-static {p3}, Lcom/google/android/play/core/appupdate/internal/zzz;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method private final zze()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/google/android/play/core/appupdate/internal/zzk;-><init>(Lcom/google/android/play/core/appupdate/internal/zzl;Lcom/google/android/play/core/appupdate/internal/zzj;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 20
    .line 21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x21

    .line 24
    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    .line 30
    .line 31
    invoke-static {v2, v0, v3}, L듬땥둡뎰뒻돵딽땥드땨뒉딌뒙듟돤돳돰뒉땧되땳땬땰딄돰땔뒨둥듽뎰뎡딠땹두땡둬뎠딃돶둡돨땩땹둥딝돳뎹돤땟땝듻딹됨둬둡들땮돳땵듨딟땔도뒤뎰듌뒷된땪도땀듸둔될됫땩땔뎠될듨딜땡땻땬둣뒐딄돳드땤땔듐돵돼될딀땤딻뎠땩득둔딐뎰딅땵뒤뎻든딟듔땫듟뎻돰됨뒘딌땵뒛땀딞딜땤듔둠뒋둥땦뒻;->뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzc:Landroid/content/IntentFilter;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zze:Lcom/google/android/play/core/appupdate/internal/zzk;

    .line 60
    .line 61
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized zzb(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzac;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzl;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1

    .line 57
    :array_0
    .array-data 8
        -0x22427b2d10718ac8L    # -3.599625284821028E143
        -0x44d1943fac3829b1L    # -1.2581790767323936E-23
        0x39d0547a77384cd5L    # 3.2205233988345596E-30
    .end array-data

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
    :array_1
    .array-data 8
        -0x16d15a725fd735d9L    # -4.581743449837572E198
        -0x782fb205dcbc7ab4L
        -0x2e021d5e4750366aL    # -9.289152660475122E86
        0x113eb8bbf6035176L
        -0x281f9ddd902b4a94L    # -2.017301199980076E115
        0x12da592fc6934fdcL    # 7.464094904447802E-218
        0x53274e866c473bbL
        -0x24a2dcd8eb766c9fL    # -1.2926104072646138E132
    .end array-data
.end method

.method public final declared-synchronized zzc(Lcom/google/android/play/core/listener/StateUpdatedListener;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzac;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 45
    .line 46
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzl;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1

    .line 57
    :array_0
    .array-data 8
        0x1e3a7c34f4a39cf5L    # 4.599232213350972E-163
        0x2b0c297d92608ce4L
        0x12c86e3f751109cfL    # 3.46041572579148E-218
        -0x773ade98f889829eL
    .end array-data

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
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x53af93ed18f85872L    # 1.317379873804983E95
        0x1edf495f6db9d7e8L
        0x1014c29dc1f01663L    # 3.342991587736341E-231
        -0x46f5ed655715cf5L
        -0x44a335a8dd04e642L    # -9.525941669058839E-23
        0x4a2cbb37db6a51acL    # 2.0995436387082185E49
        0x5604244c6772d973L    # 2.3097584700656062E106
        -0x4cf5aeeba4c0014cL    # -7.996549370712811E-63
    .end array-data
.end method

.method public final declared-synchronized zzd(Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zzb:Ljava/util/Set;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/play/core/listener/StateUpdatedListener;

    .line 24
    .line 25
    invoke-interface {v1, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method
