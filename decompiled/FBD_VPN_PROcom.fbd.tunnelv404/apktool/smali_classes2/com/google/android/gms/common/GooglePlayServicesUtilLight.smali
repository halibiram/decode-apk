.class public Lcom/google/android/gms/common/GooglePlayServicesUtilLight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field static final GMS_AVAILABILITY_NOTIFICATION_ID:I = 0x28c4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field static final GMS_GENERAL_ERROR_NOTIFICATION_ID:I = 0x9b6d
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_GAMES_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field static final sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static zza:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static zzb:Z

.field private static final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_GAMES_PACKAGE:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String;

    .line 34
    .line 35
    const v0, 0xbdfcb8

    .line 36
    .line 37
    .line 38
    sput v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z

    .line 42
    .line 43
    sput-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 8
        0x4a099b2b5d8ee777L    # 4.67792519810802E48
        -0x65371d3617ae6db8L    # -1.199460175568518E-179
        0x64441a1a9967b74bL    # 9.943655815779155E174
        -0x78d892b05c888b4cL    # -3.383222577020185E-274
        0x3fd8ac620b1100c9L    # 0.38552142220215707
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
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x2fdb2dd7e2493568L    # -1.2054491809550455E78
        -0x487d883bec26c958L    # -2.650004453761165E-41
        0x1cad457a9569e9e3L
        -0x2e4758d1c0ee2dd9L    # -4.789271219418548E85
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAvailabilityErrorNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/NotificationManager;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x28c4

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void

    .line 40
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [J

    .line 44
    .line 45
    fill-array-data v0, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/16 v0, 0xb

    .line 57
    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x4d90fc496243209bL    # -9.203135491155428E-66
        0x3f3c56a34de33a21L    # 4.324101154339639E-4
        0x3fed79ffd6d05fd6L    # 0.9211425014100267
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x28cdd5f17a0250b6L
        0x1599f564c72d1a87L
        -0x1fa9138039271b5bL    # -1.229432955377518E156
        0x402aabfe726efa6aL    # 13.33592565159525
    .end array-data

    :array_2
    .array-data 8
        -0xddb6a5b60e591bfL    # -6.862901549156452E241
        -0x55a8de536625ceb2L
        0x5915e0c55c1f4355L    # 1.412362311431599E121
        -0x29964988544f231fL    # -1.887110002179952E108
        0x30ac26b397649634L
        -0x1333ebb966661685L    # -1.2099618402330124E216
        -0x563422369e5f78cbL
        -0x48fcfde2bed2dd6aL
        0xcce2729e3f840e8L    # 5.39068370546999E-247
        0x3d8d06871514bb40L
        -0xd29cddfdc80feedL    # -1.515539804840339E245
    .end array-data
.end method

.method public static enableUsingApkIndependentContext()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static ensurePlayServicesAvailable(Landroid/content/Context;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    if-nez p0, :cond_0

    .line 63
    .line 64
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    new-array v1, v1, [J

    .line 74
    .line 75
    fill-array-data v1, :array_3

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    .line 86
    .line 87
    invoke-direct {v1, p1, v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :cond_1
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x71f923b94964c37bL    # 1.0476928472993188E241
        0x228a1a9148676cd2L    # 2.675811089257573E-142
    .end array-data

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
    :array_1
    .array-data 8
        0x2ecb20e92a5b636dL    # 2.7929162742131814E-83
        0x2c15cacd563a91e2L    # 2.5506001821306264E-96
        -0x5d7c846f5b8e2cd2L
        -0x41d68b60bb89032L    # -5.661714433857287E288
        0x73c49cacc50c65a8L    # 4.611761015216672E249
        0x52a132d04667e91L
        -0x67708132f2b1188aL
    .end array-data

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
    .line 124
    .line 125
    .line 126
    .line 127
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
    :array_2
    .array-data 8
        -0x680fc476b636fd8dL
        0x3daed0d0cc43dfa6L    # 1.4013351575738668E-11
        -0x6febca66b2103287L
        0x339b069ed6e9d8c5L    # 4.204558678392455E-60
    .end array-data

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
    :array_3
    .array-data 8
        0x75d54d64c5e8a6dL    # 3.3887276268163E-273
        0x1625379362f458d3L    # 5.413757417935896E-202
        -0x1cce458f42156923L    # -6.690587315993406E169
        -0x1831f5eff768cdf2L    # -1.070723086551158E192
        -0x6788f664a6730472L    # -8.079018623834576E-191
        -0x4766c8440881cf8cL
    .end array-data
.end method

.method public static getApkVersion(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    new-array v3, v0, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 26
    .line 27
    return p0

    .line 28
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    new-array v0, v0, [J

    .line 45
    .line 46
    fill-array-data v0, :array_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    return v1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x2450e474343b494eL    # -4.4160565736461717E133
        0x94745010d589b1cL
        -0x57268fe786dfa5cL
        -0x6c1d8a44d458d162L
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
        0x353a02c919738dfdL    # 2.7156626916043833E-52
        -0x1f37d8d023e4d47dL    # -1.6580596610281287E158
        0x9027f8cc72f3264L
        -0x6a3480f232e0ba29L
    .end array-data

    :array_2
    .array-data 8
        0x136f703a6b0409b9L
        0x3a4ace7a3a9726d1L    # 6.7669252230105595E-28
        0x4f714e95416cdcc0L    # 4.892601638146867E74
        0x18eafd613c662789L
        -0x5303b3dd5aa72ca9L    # -5.4263515376600565E-92
    .end array-data
.end method

.method public static getClientVersion(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getClientVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.android.gms.common.GoogleApiAvailabilityLight"
        }
        replacement = "GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, errorCode, requestCode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p0, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getGooglePlayServicesAvailabilityRecoveryIntent(I)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.android.gms.common.GoogleApiAvailabilityLight"
        }
        replacement = "GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, errorCode, null)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x556b85d9aa318668L    # 3.082208214603131E103
        -0x3dde11b977f63e07L    # -3.850602189287885E10
        -0x300c78196251aa66L    # -1.4134496207292936E77
        0x565bb7219dd19ea3L    # 1.0170421156115637E108
    .end array-data
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    const/4 p0, 0x0

    .line 26
    return-object p0

    :array_0
    .array-data 8
        -0x555e2af836958a33L    # -2.488027671613321E-103
        -0x41ab54f6e8d9c8b9L    # -1.9248675051057927E-8
        -0x3ce9782ae8662970L    # -1.585449695344036E15
        -0x344dbf84c6eb0daeL    # -4.475348011215729E56
    .end array-data
.end method

.method public static honorsDebugCertificates(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    sget-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v5, v0, [J

    .line 15
    .line 16
    fill-array-data v5, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0x40

    .line 27
    .line 28
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 33
    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    invoke-static {v1, v3}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    sput-boolean v3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    :goto_0
    sput-boolean v3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catch_0
    :try_start_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v0, v0, [J

    .line 62
    .line 63
    fill-array-data v0, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    const/4 v0, 0x7

    .line 75
    new-array v0, v0, [J

    .line 76
    .line 77
    fill-array-data v0, :array_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    sput-boolean v3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_1
    sput-boolean v3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza:Z

    .line 90
    .line 91
    throw p0

    .line 92
    :cond_1
    :goto_2
    sget-boolean p0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzb:Z

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/common/util/DeviceProperties;->isUserBuild()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_2

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_2
    return v2

    .line 104
    :cond_3
    :goto_3
    return v3

    .line 105
    :array_0
    .array-data 8
        -0x26691645034fe01fL    # -3.7866954143300934E123
        0xa75f1bd20bc3decL
        -0x2c957100b2f8ae10L    # -6.924901020091621E93
        -0x7c438bbba0b95a1cL
    .end array-data

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
    .line 124
    .line 125
    :array_1
    .array-data 8
        -0xb71758abebbe06cL
        -0x2860b180677feb19L    # -1.2046330125206415E114
        -0x5f13a76eda6ffe13L    # -4.329755925696516E-150
        0x7157f4f56d43cdb0L    # 9.750046042883422E237
    .end array-data

    .line 126
    .line 127
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
    :array_2
    .array-data 8
        0x51c5b578081fde5eL    # 8.434626485135891E85
        -0x18799880d0cdb3feL    # -4.991123891073285E190
        0x2216310d5b7237e3L
        0x4514730e64634c42L    # 6.180463506487224E24
        -0x6bdbda8ac1574cb8L    # -1.196874985751118E-211
        0x7f68348c6bdc0729L    # 5.311724059912014E305
        -0x684bab49d6802e9eL    # -1.740682293642547E-194
    .end array-data
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/HideFirstParty;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/4 v3, 0x4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3
    sget v5, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v3, [J

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x11

    new-array v5, v5, [J

    fill-array-data v5, :array_1

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_2

    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zza(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    sget v5, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;

    .line 9
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;-><init>(I)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/GooglePlayServicesMissingManifestValueException;-><init>()V

    throw p0

    .line 12
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzb(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ltz p1, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 13
    :goto_3
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v4, :cond_6

    :try_start_1
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    new-array v10, v3, [J

    fill-array-data v10, :array_3

    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2040

    .line 16
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 17
    :catch_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :goto_4
    const/16 v1, 0x9

    goto/16 :goto_8

    :cond_6
    const/4 v9, 0x0

    .line 18
    :goto_5
    :try_start_2
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v3, [J

    fill-array-data v11, :array_6

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    .line 19
    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 21
    invoke-static {v0, v5}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v2, [J

    fill-array-data v0, :array_7

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    .line 22
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v9, v5}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v2, [J

    fill-array-data v0, :array_9

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v9, :cond_9

    .line 24
    iget-object p0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v6

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v6

    .line 25
    invoke-virtual {p0, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v0, 0xd

    new-array v0, v0, [J

    fill-array-data v0, :array_b

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 26
    :cond_9
    iget p0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/google/android/gms/common/util/zza;->zza(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/common/util/zza;->zza(I)I

    move-result p1

    if-ge p0, p1, :cond_a

    .line 27
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p1, 0x6

    new-array p1, p1, [J

    fill-array-data p1, :array_d

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v1, [J

    fill-array-data p1, :array_e

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v1, [J

    fill-array-data p1, :array_f

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v3, [J

    fill-array-data p1, :array_10

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    const/4 v1, 0x2

    goto :goto_8

    .line 28
    :cond_a
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_b

    :try_start_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    new-array p1, v3, [J

    fill-array-data p1, :array_11

    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {v8, p0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    .line 30
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_12

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v3, [J

    fill-array-data v2, :array_13

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    const/4 v1, 0x1

    goto :goto_8

    .line 32
    :cond_b
    :goto_7
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_c

    goto :goto_8

    :cond_c
    return v6

    .line 33
    :catch_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_14

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v3, [J

    fill-array-data v1, :array_15

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :goto_8
    return v1

    nop

    :array_0
    .array-data 8
        -0x37c8706c9393dedL    # -6.072516502342765E291
        0x6969fb8dab2cd564L    # 6.215130597643336E199
        0xbf64687cf5920a2L
        0x50a36acaead54944L    # 2.8778923280956784E80
    .end array-data

    :array_1
    .array-data 8
        0x5dae00c18e676733L    # 1.8293296169626388E143
        0x12fb070f3c94c3e7L
        -0x716317344d531aa2L
        -0x5b155dc85aee7ac8L
        0x2a589b57556712a5L
        0x636353ee37a75790L    # 5.835407476925679E170
        -0x5bf96787e66bad4L    # -7.447892596951471E280
        -0x5cb4b84e3de14b45L
        -0x12f0cae42ce23dd9L    # -2.1516184290465593E217
        -0x303406b98a1d4f13L    # -2.5305756262618813E76
        0x4ea3dafd93bdbf57L    # 6.851857687472826E70
        0x61a2fd298c2cdb4eL    # 2.1357373151545116E162
        0x69df0c4064112149L    # 9.506239441903523E201
        -0x106099ff544a7f33L    # -4.76041583771564E229
        -0x36af544ccf95daf5L    # -1.4870763958743136E45
        0x3b6a1e0edb2753a7L    # 1.7283054931490198E-22
        -0x7f1497adcde9320eL
    .end array-data

    :array_2
    .array-data 8
        0x2d09940c85c3121fL    # 9.809870649478645E-92
        -0x44c38eb802503dbaL    # -2.3527088497445834E-23
        0xd6c5ebf7b1d2a2eL
        -0x75c5b3c21a370594L
    .end array-data

    :array_3
    .array-data 8
        0x3d8787b9574ae169L    # 2.6750708262869847E-12
        0x434ddbcf1fcb986fL    # 1.6808913925517534E16
        -0x51f364b1e7d1d386L    # -7.190157799412967E-87
        0x25e4a762ffa310f5L
    .end array-data

    :array_4
    .array-data 8
        0x16bba5734f8e2c15L
        -0x3b94c912ff62d345L    # -4.016159282501974E21
        0x6c2462be37387965L    # 8.578530491744326E212
        -0x6e95f216eb6c485cL
        0x2d21e1f7ea440916L    # 2.7433685115868694E-91
        -0x6febebad672e4be6L    # -3.23335770272385E-231
        0x752562f134885fe4L    # 2.0069932012724046E256
        -0xf4de307ef9eea1L    # -9.30311975199897E303
    .end array-data

    :array_5
    .array-data 8
        -0x58d7da8ec0cc69a0L
        0x4f4a19a65a587354L    # 9.223010441709436E73
        0x740e64e67a6ad20dL    # 1.0880686340171268E251
        0x2e38adf1bf4bd7ecL    # 4.962460672152144E-86
    .end array-data

    :array_6
    .array-data 8
        0x4feb53d6bf37c0eL
        -0x184220f59ccf0bd1L    # -5.323664631457637E191
        -0x35e62f29bc9759c0L    # -9.432447311302481E48
        -0x1a9781dbbad51d81L    # -3.1760315578566423E180
    .end array-data

    :array_7
    .array-data 8
        0x50d7dd6c121af0cdL    # 2.8296910197103847E81
        0x7abe91effbbd4fdfL    # 1.7757112564879266E283
        0x53dfceb2a8b98672L    # 1.0615659865800024E96
        -0x486aa46177f486faL    # -6.129413181828783E-41
        0x2b43abb3d1205bf3L    # 2.810422051080044E-100
        -0xe8e2059a86b4b8aL    # -2.909707902147576E238
        0x542f54029ac8a2dL
        -0x4f6bcc5c4cf448abL    # -1.1165787500759853E-74
        0x1cd9adc5e9d9ff44L    # 1.0631565000320182E-169
    .end array-data

    :array_8
    .array-data 8
        -0x2e2e4c6c18a90baeL    # -1.375524238301149E86
        0x313a51de29f5c692L
        -0x36a05dc6cb454728L    # -2.8218190306387242E45
        0x355fc891f65ec524L    # 1.3273399413879421E-51
    .end array-data

    :array_9
    .array-data 8
        -0x625b6b48b8654fceL    # -6.980350283420354E-166
        -0x17493c0567e1d969L    # -2.658980757733194E196
        0x5e5496a0e2feb072L    # 2.570871369641661E146
        0x264e4b75ee26a1d1L    # 3.580300124617852E-124
        0x54a0d096d4ed7b53L    # 4.597273348684208E99
        -0x55e0354d37f4a213L    # -8.663562696958661E-106
        0x6451b823b02edd10L    # 1.7530080948337177E175
        -0x25e06be6ecd29010L    # -1.3360103003472498E126
        0x6c7e18ae048fd6a1L    # 4.052766260029991E214
    .end array-data

    :array_a
    .array-data 8
        -0x4cf705d84a569dbeL    # -7.589516634737672E-63
        0x42f9dbc2811e873dL    # 4.549064283853958E14
        0x493c340fb18a89e5L    # 6.2895604465550185E44
        -0x41458881802d673eL    # -1.5775426612046438E-6
    .end array-data

    :array_b
    .array-data 8
        -0x6fb6bc5d10d0538eL
        -0x2b424dd8a765b814L    # -1.6238101739134656E100
        -0x352a48c7b4fcbf1fL    # -3.249923591297984E52
        -0x5cc55e74298ea654L    # -5.590750854966921E-139
        -0x7144463b5eb07cdcL
        0x341d02aca1700ed0L
        0x1e9500171865da2bL    # 2.333935852676916E-161
        -0x627f84624c34e31cL    # -1.397607987869422E-166
        0x32e3d531c7c2c556L    # 1.506588871867341E-63
        0x2d24d1f819bca35dL    # 3.194008384855109E-91
        0x4cd4f1025cf50055L    # 1.3460640138712212E62
        0x69f91e9e453218fcL    # 3.076450038038983E202
        -0x2073aec3701c205dL    # -1.8538736644206088E152
    .end array-data

    :array_c
    .array-data 8
        -0x69fb243533024472L
        0x4212d66dafa5135fL    # 2.0226730985268917E10
        0x5cc2de2735fdb9a6L    # 7.021484732965576E138
        0x408ac16d97029023L    # 856.1785106849896
    .end array-data

    :array_d
    .array-data 8
        0x2e503fdbeba93d89L    # 1.3069527648542253E-85
        -0x7ddc7aee99577d54L    # -2.331790869049835E-298
        0x2c8d0087c43ad05eL    # 4.34490601600095E-94
        -0x412e6adef2731847L    # -4.192003154207822E-6
        0x7f43efc0fe268502L    # 1.0937432418535371E305
        0x4b1dbffc88378fa4L    # 7.123697069881904E53
    .end array-data

    :array_e
    .array-data 8
        0xd3f9d9947bb5b3L
        -0x79eb02eab6237f15L    # -2.312531351659171E-279
        -0x5cd6e5d1d8dcb696L
    .end array-data

    :array_f
    .array-data 8
        0x270aa85d9f070fbeL
        -0x6ebd17d5f8cc7dedL
        -0xc5887a20ba63eeaL
    .end array-data

    :array_10
    .array-data 8
        -0x7b6745059e297688L
        -0x15e1139a2ed227e5L    # -1.5149026830496352E203
        0x67cf6b09ff4cc91bL    # 1.1198696307109343E192
        0x46e1c23cad5eccd4L    # 2.881520043858261E33
    .end array-data

    :array_11
    .array-data 8
        -0x6dd2890f1dbb35b7L    # -4.075622379680412E-221
        -0x7d44ebfc5c74feL
        0x1a7722075a5250edL    # 3.484280922541742E-181
        -0x59b50a4f62f6e39dL
    .end array-data

    :array_12
    .array-data 8
        -0x4f57ba87b4dd2a8eL    # -2.683028666902672E-74
        0x30656439eba77940L    # 1.4779254049536406E-75
        0xa35671e96973db1L
        0x7bf308358b7eb708L    # 1.1592091843559975E289
        -0x277df9542aadc3e8L    # -2.2728413019181546E118
        -0x387c065274a0069aL    # -3.318966717120897E36
        -0x48d713a9e6243b74L    # -5.587972190002496E-43
        0x560d3b973ced96f3L    # 3.3522666174839715E106
        -0x7bdb713459b05912L    # -1.054752823923775E-288
        0x28142b65d644f9e3L    # 1.279726884883509E-115
        0x4e10c4b60bb3c306L    # 1.130188112758768E68
        0x317abacdc64f5cdL
    .end array-data

    :array_13
    .array-data 8
        0x222a7e21e820e16fL    # 4.243247726228718E-144
        -0x40754f91e67f9e5bL    # -0.013031826165431701
        -0x161a818d89b276deL    # -1.3162034351793112E202
        -0x6b96fce8c11dcf66L    # -2.377512094596053E-210
    .end array-data

    :array_14
    .array-data 8
        -0x483901ad63f9afb2L    # -5.279036768363475E-40
        0x1f35f6a34178688fL
        -0x2e92d48185434e7aL    # -1.7708579606765932E84
        -0xf6bf6b9d1ceb6a1L    # -1.990822726589042E234
        -0x370564db8fb3587L    # -9.874069582706059E291
        -0x2a2d19284d92869bL    # -2.7094430490463313E105
        0x5945bec6a817ed54L    # 1.123031769807935E122
        0x6aa88633bdb9ddf9L    # 6.151235911186588E205
    .end array-data

    :array_15
    .array-data 8
        -0x73460975380e503fL    # -2.320808831345315E-247
        -0x1b128ea40ca5062aL    # -1.491374458036382E178
        -0x292ed6af549a1c04L    # -1.6121699418573803E110
        -0x65b8eda57a3e7c9bL
    .end array-data
.end method

.method public static isGooglePlayServicesUid(Landroid/content/Context;I)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.android.gms.common.util.UidVerifier"
        }
        replacement = "UidVerifier.isGooglePlayServicesUid(context, uid)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/UidVerifier;->isGooglePlayServicesUid(Landroid/content/Context;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :array_0
    .array-data 8
        0x1a3f8807b8ee325bL
        -0x2cccff3cc9ac837eL    # -6.193560203744443E92
        -0x45c15d72d53e4370L    # -3.8666763895029304E-28
        -0x37ef1d95f4d3046cL    # -1.436368501979954E39
    .end array-data
.end method

.method public static isPlayStorePossiblyUpdating(Landroid/content/Context;I)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :array_0
    .array-data 8
        -0xb1bbd2a2e479ad9L
        0x2ef5c749051c01dbL    # 1.7936938638014842E-82
        -0x563b38ff66ae5d42L
        0x3ada27408a53bc32L    # 3.3802384900689687E-25
    .end array-data
.end method

.method public static isRestrictedUserProfile(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR2()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v2, v0, [J

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
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    check-cast v1, Landroid/os/UserManager;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    new-array v2, v2, [J

    .line 45
    .line 46
    fill-array-data v2, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v0, v0, [J

    .line 59
    .line 60
    fill-array-data v0, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_0

    .line 79
    .line 80
    const/4 p0, 0x1

    .line 81
    return p0

    .line 82
    :cond_0
    const/4 p0, 0x0

    .line 83
    return p0

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        0x25ea53fa4b6057feL    # 4.861724226973881E-126
        -0x4440be0a8970d079L    # -6.619065215161369E-21
    .end array-data

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
    :array_1
    .array-data 8
        0x19d74bc7629ba825L
        -0x79189f0d14c81fa7L
        0x56b14c154f4b4e78L    # 4.062321114056774E109
        0x2930f9d8570b0560L
    .end array-data

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
    :array_2
    .array-data 8
        0x355ae19944483757L    # 1.1226131683006142E-51
        0x5621199f68c4ddc7L    # 7.843805926829706E106
    .end array-data
.end method

.method public static isSidewinderDevice(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.android.gms.common.util.DeviceProperties"
        }
        replacement = "DeviceProperties.isSidewinder(context)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/InlineMe;
        imports = {
            "com.google.android.gms.common.util.UidVerifier"
        }
        replacement = "UidVerifier.uidHasPackageName(context, uid, packageName)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/UidVerifier;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    return v2

    .line 67
    :catch_0
    return v3

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/16 v4, 0x2000

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 81
    .line 82
    return p0

    .line 83
    :cond_2
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->isRestrictedUserProfile(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    if-nez p0, :cond_3

    .line 92
    .line 93
    return v2

    .line 94
    :catch_1
    :cond_3
    return v3

    .line 95
    :array_0
    .array-data 8
        -0x960200ed0f29c07L
        -0xead87ef53ba50faL    # -7.516576413520678E237
        -0x2ed8e55f7e246f54L    # -8.766297795122118E82
        0x4bf585e15196d373L    # 8.443866762422293E57
    .end array-data
.end method
