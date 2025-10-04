.class public final Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private zzb:Lcom/google/android/gms/internal/ads/zzbjw;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private zzc:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    instance-of v0, p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/16 p2, 0xe

    .line 29
    .line 30
    new-array p2, p2, [J

    .line 31
    .line 32
    fill-array-data p2, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza:Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/16 p2, 0xb

    .line 57
    .line 58
    new-array p2, p2, [J

    .line 59
    .line 60
    fill-array-data p2, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzc:Ljava/lang/ref/WeakReference;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza(Ljava/util/Map;)Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p3}, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza(Ljava/util/Map;)Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzi(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzbjw;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzb:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 101
    .line 102
    return-void

    .line 103
    :array_0
    .array-data 8
        -0x8b8b276b1680ddbL    # -3.756952562210001E266
        -0x3b8cad9eae6770c9L    # -5.702788046400194E21
        -0x21a27622ac4e055bL    # -3.688474956668302E146
        -0x7e0162aedd99086eL    # -4.571426724097077E-299
        0x767e78d9cc59dc1cL    # 5.9970578911021976E262
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    :array_1
    .array-data 8
        0x2ff3d8ba01645681L    # 1.0712405068242817E-77
        -0x35023039094c750dL    # -1.784616780202951E53
        0x3de44f80582f4679L    # 1.4777871642738955E-10
        0x2587b2190d6c5166L    # 6.836932598225076E-128
        -0x4bf92610fa8fa9a3L    # -4.5505283306032515E-58
        -0x6ff90ba2a6a2b146L
        0x4c1bd5a3abf3f84cL    # 4.3680042073073E58
        0x2388b6c7bfbd898cL
        -0x216330cb270646a0L    # -5.75588499979681E147
        0x13f71c11cec599c5L    # 1.716154472149057E-212
        -0x49ab59aba9917297L    # -5.651645913372403E-47
        0x7b0e26246da9cc4bL    # 5.604007861158419E284
        0x368e723265afca3bL    # 6.666257383014213E-46
        0x3b988509bfb59b40L    # 1.298061051319145E-21
    .end array-data

    :array_2
    .array-data 8
        -0x59dd416ed546f892L    # -5.538133380486124E-125
        0x60234b0d70cbcb05L    # 1.2933958458560935E155
        -0x4cdc4ab5b27e06ebL    # -2.395394766003421E-62
        -0x6fb58e551b967319L    # -3.406596546567398E-230
        -0x28a1af1c766ef447L    # -7.290711147557135E112
        -0x16bfc5d238c1fc05L    # -9.704035424168227E198
        0x7f71e7859fde80edL    # 7.858053188462786E305
        0x26f2f176d6289a59L    # 4.584959929882753E-121
        -0x39d137f0cffec361L    # -1.2193801189879497E30
        -0x346439c1d1688f7L    # -6.420593114495004E292
        -0x10158d92bf5aa6c5L    # -1.283106695483599E231
    .end array-data
.end method

.method private static final zza(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzb:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjw;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    fill-array-data v1, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x473e825353601395L    # -2.6317405451010336E-35
        0x40f5e2eff8499054L    # 89646.99811703089
        -0x7d54b61f757e9eb9L    # -8.345171140215561E-296
        -0x34db5be6ae657f17L    # -9.885080571193959E53
        -0x50932c81eda83417L    # -3.0389089965553723E-80
        0x5038a6ff66dbec95L    # 2.8545453304692E78
        0x16fd4a50185a0f7cL    # 6.122467016323213E-198
        -0x38136345539e826dL    # -3.0425734702008932E38
    .end array-data
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/ads/nativead/NativeAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->zza()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzc:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/16 v0, 0xa

    .line 22
    .line 23
    new-array v0, v0, [J

    .line 24
    .line 25
    fill-array-data v0, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza:Ljava/util/WeakHashMap;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzb:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjw;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    new-array v1, v1, [J

    .line 63
    .line 64
    fill-array-data v1, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        0x4bc6342e88791d95L    # 1.088872901983117E57
        -0x6f656c553d5a4e39L
        0x57d53fbb78af1b8dL    # 1.308205360076167E115
        -0x26356e01f6e22ffcL    # -3.5128887712253217E124
        0x27bab14367726133L    # 2.646244019686174E-117
        0x6ae75b9e547755fbL    # 9.37390501052654E206
        0x723853fffde73ec7L    # 1.622202877915837E242
        -0x2115e33f8cb5464bL    # -1.6694491290840675E149
        0x7f8b23ca8738d21dL    # 2.382277757520652E306
        -0x3742fba8160f0901L    # -2.5277342790168796E42
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
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
    :array_1
    .array-data 8
        0x199625f5bb27958cL    # 2.036116863194842E-185
        -0x279e89bb99277e2eL    # -5.504296740293729E117
        0x4887d9c52a35179cL    # 2.5971074089010066E41
        -0x30650a631acd0497L    # -3.0485236114156388E75
        0x35965ebc40b95b13L    # 1.4947476739475146E-50
        -0x24d78f1ed03c8cd3L    # -1.355332854992215E131
    .end array-data
.end method

.method public unregisterNativeAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzb:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbjw;->zzd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x7

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zzc:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/View;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    sget-object v1, Lcom/google/android/gms/ads/nativead/NativeAdViewHolder;->zza:Ljava/util/WeakHashMap;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 8
        0x1c652982f6884568L
        -0x45cba178ddde2819L    # -2.5709607322136024E-28
        -0x3bba6ce4f1450d5fL    # -7.95963415783889E20
        0x44465ba16a798361L    # 8.248620904408795E20
        -0x3d9374a3c8ee1401L    # -9.807772857753749E11
        -0x7f00a42b9974a58eL
        -0x43157c90cda65229L    # -2.9435804323683323E-15
    .end array-data
.end method
