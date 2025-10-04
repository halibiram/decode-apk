.class public final Lcom/google/android/gms/common/internal/zzah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzah;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zzc(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p0, Lcom/google/android/gms/common/internal/zzah;->zzd:I

    .line 5
    .line 6
    return p0
.end method

.method public static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->zzc(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/google/android/gms/common/internal/zzah;->zzc:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method private static zzc(Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    sget-object v2, Lcom/google/android/gms/common/internal/zzah;->zza:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    sget-boolean v3, Lcom/google/android/gms/common/internal/zzah;->zzb:Z

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    monitor-exit v2

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    sput-boolean v3, Lcom/google/android/gms/common/internal/zzah;->zzb:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/16 v4, 0x80

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v4, v1, [J

    .line 40
    .line 41
    fill-array-data v4, :array_0

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sput-object v3, Lcom/google/android/gms/common/internal/zzah;->zzc:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    new-array v4, v0, [J

    .line 60
    .line 61
    fill-array-data v4, :array_1

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    sput p0, Lcom/google/android/gms/common/internal/zzah;->zzd:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    :try_start_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v1, v1, [J

    .line 82
    .line 83
    fill-array-data v1, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    fill-array-data v0, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    :goto_0
    monitor-exit v2

    .line 111
    return-void

    .line 112
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    throw p0

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x3c7ff2eb945a119aL    # 2.771125963929578E-17
        -0x728d6cfbd82d9716L    # -6.800730413535576E-244
        0x6c18385a1e16da0fL    # 5.09604597987369E212
        -0x1dca1281bb36c00cL    # -1.26273110799665E165
    .end array-data

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
    :array_1
    .array-data 8
        0x452f9d53d641bd81L    # 1.9109829232225758E25
        0xdffb892c2683e3cL
        0x119660177b7fb998L    # 6.044957243342301E-224
        -0x69a2ede55fca78e0L    # -5.934152118806222E-201
        -0x5aed112b413661beL
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
    :array_2
    .array-data 8
        -0x6b7293288ace1794L
        0x657aeffb5849cd89L    # 6.986080055637293E180
        0x34a70d3e9804a587L    # 4.700612444948185E-55
        0x7e3aebd1e63861b2L    # 1.1268073062939148E300
    .end array-data

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
    :array_3
    .array-data 8
        -0x253a28eccfa2161bL    # -1.8923588977286154E129
        0x7cf885971b25b03cL    # 9.788334127833084E293
        -0xa493023c14b7621L
        -0x27ceb6448ee71d05L    # -6.811825287122911E116
        0x26d9f72c736bb895L    # 1.571154228520245E-121
    .end array-data
.end method
