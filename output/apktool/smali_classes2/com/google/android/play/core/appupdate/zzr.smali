.class final Lcom/google/android/play/core/appupdate/zzr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

.field private static final zzc:Landroid/content/Intent;


# instance fields
.field zza:Lcom/google/android/play/core/appupdate/internal/zzx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/play/core/appupdate/zzt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzm;

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
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    new-array v2, v2, [J

    .line 48
    .line 49
    fill-array-data v2, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzc:Landroid/content/Intent;

    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x49a0ac4cf2c7bf5eL    # 4.759314182745116E46
        0x524751ebad26c2d0L    # 2.3195158119436602E88
        -0x579574b4d6a92e1aL    # -5.389393725969904E-114
    .end array-data

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
        -0x62dddc7de0561c47L
        0x5b2bea68569ba454L    # 1.5480177887050496E131
        -0x31f10b4967f2e861L    # -1.0432121424697119E68
        -0x7a042121a0aa325bL    # -7.676973787207838E-280
        0x1a91c904d20effa0L
        0x3291cd1c6ab82170L    # 4.2258160408003465E-65
        0x799adefac0361c71L    # 5.954154081846798E277
        -0x2758ce41d0d51064L
    .end array-data

    :array_2
    .array-data 8
        -0x4b9d9cf0c1c1044bL    # -2.343368276264609E-56
        -0x73f0c2fb4ad4801bL
        -0x7e6650ac7e38757cL    # -5.992688204436811E-301
        0x714b62370e3c77beL    # 5.572344685100047E237
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/zzt;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzr;->zze:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zzf:Lcom/google/android/play/core/appupdate/zzt;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzab;->zza(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    new-instance p2, Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/internal/zzz;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 27
    .line 28
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [J

    .line 32
    .line 33
    fill-array-data v0, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lcom/google/android/play/core/appupdate/zzr;->zzc:Landroid/content/Intent;

    .line 44
    .line 45
    sget-object v5, Lcom/google/android/play/core/appupdate/zzl;->zza:Lcom/google/android/play/core/appupdate/zzl;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v0, p2

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/appupdate/internal/zzx;-><init>(Landroid/content/Context;Lcom/google/android/play/core/appupdate/internal/zzm;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/appupdate/zzl;Lcom/google/android/play/core/appupdate/internal/zzs;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :array_0
    .array-data 8
        -0x38e92c3f49c905d4L    # -2.963134687851866E34
        -0x69879fa3e996e8a1L
        -0x39e71d26041dc073L    # -4.929207597380888E29
    .end array-data
.end method

.method public static bridge synthetic zza(Landroid/os/Bundle;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    const/4 v1, -0x2

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x1f13ec6273c14a17L    # 5.66846222411288E-159
        0x2a9bfadd042a803L
        0x7d1b8c69806324a2L    # 4.398590118479876E294
    .end array-data
.end method

.method public static bridge synthetic zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzi()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    new-array v3, v2, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzr;->zze:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zze:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 49
    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    sget-object p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 56
    .line 57
    new-array p1, p1, [Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    new-array v3, v3, [J

    .line 64
    .line 65
    fill-array-data v3, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0, v1, p1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    :goto_0
    if-eqz p0, :cond_0

    .line 80
    .line 81
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v2, [J

    .line 84
    .line 85
    fill-array-data v1, :array_2

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    :cond_0
    return-object v0

    .line 103
    :array_0
    .array-data 8
        0x71f257c0fe81b5beL    # 7.644373698288042E240
        -0x130d0fec2326fe5L
        -0x7db3fcfa2f5834f8L
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
    :array_1
    .array-data 8
        -0x334f9a82431b69feL    # -2.63480790668464E61
        0x4dba4f8c07e83bfcL    # 2.770843319349858E66
        -0x3d9feb399fbf95bcL    # -5.525441745953208E11
        0x5b4e84964e5b5af5L    # 6.769288617721826E131
        -0x5286053b87b8cc07L    # -1.275360901506531E-89
        0x5e8229db7fff72aeL    # 1.8144607082264527E147
        -0x270e3bf16a0c94feL    # -2.8672411061264283E120
        0x11801739d17529c1L    # 2.173546211767592E-224
    .end array-data

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
    :array_2
    .array-data 8
        0x4e3b6b6da6c72e3dL    # 7.3923208322278225E68
        0x3266ef2a587e8197L    # 6.805425894035057E-66
        0x4efbdcdcb8ba24abL    # 3.0768253492258516E72
    .end array-data
.end method

.method public static bridge synthetic zzc()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzi()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/play/core/appupdate/zzr;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 29

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x5

    .line 5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v4, 0x4

    .line 8
    new-array v5, v4, [J

    .line 9
    .line 10
    fill-array-data v5, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    new-array v7, v6, [J

    .line 24
    .line 25
    fill-array-data v7, :array_1

    .line 26
    .line 27
    .line 28
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v8, v6, [J

    .line 38
    .line 39
    fill-array-data v8, :array_2

    .line 40
    .line 41
    .line 42
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v9, v4, [J

    .line 52
    .line 53
    fill-array-data v9, :array_3

    .line 54
    .line 55
    .line 56
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const/4 v9, -0x1

    .line 64
    invoke-virtual {v0, v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual {v0, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    invoke-virtual {v0, v3, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ne v3, v9, :cond_0

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_0
    move-object v14, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v7, v4, [J

    .line 89
    .line 90
    fill-array-data v7, :array_4

    .line 91
    .line 92
    .line 93
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    goto :goto_0

    .line 109
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v7, v4, [J

    .line 112
    .line 113
    fill-array-data v7, :array_5

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v5, v6, [J

    .line 130
    .line 131
    fill-array-data v5, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v16

    .line 145
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v5, v4, [J

    .line 148
    .line 149
    fill-array-data v5, :array_7

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v18

    .line 163
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 164
    .line 165
    new-array v5, v4, [J

    .line 166
    .line 167
    fill-array-data v5, :array_8

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 178
    .line 179
    .line 180
    move-result-wide v20

    .line 181
    move-object/from16 v3, p0

    .line 182
    .line 183
    iget-object v3, v3, Lcom/google/android/play/core/appupdate/zzr;->zzf:Lcom/google/android/play/core/appupdate/zzt;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/zzt;->zza()J

    .line 186
    .line 187
    .line 188
    move-result-wide v22

    .line 189
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 190
    .line 191
    new-array v5, v6, [J

    .line 192
    .line 193
    fill-array-data v5, :array_9

    .line 194
    .line 195
    .line 196
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    move-object/from16 v24, v3

    .line 208
    .line 209
    check-cast v24, Landroid/app/PendingIntent;

    .line 210
    .line 211
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 212
    .line 213
    new-array v5, v4, [J

    .line 214
    .line 215
    fill-array-data v5, :array_a

    .line 216
    .line 217
    .line 218
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    move-object/from16 v25, v3

    .line 230
    .line 231
    check-cast v25, Landroid/app/PendingIntent;

    .line 232
    .line 233
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 234
    .line 235
    new-array v5, v2, [J

    .line 236
    .line 237
    fill-array-data v5, :array_b

    .line 238
    .line 239
    .line 240
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    move-object/from16 v26, v3

    .line 252
    .line 253
    check-cast v26, Landroid/app/PendingIntent;

    .line 254
    .line 255
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v5, v2, [J

    .line 258
    .line 259
    fill-array-data v5, :array_c

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    move-object/from16 v27, v3

    .line 274
    .line 275
    check-cast v27, Landroid/app/PendingIntent;

    .line 276
    .line 277
    new-instance v3, Ljava/util/HashMap;

    .line 278
    .line 279
    move-object/from16 v28, v3

    .line 280
    .line 281
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 285
    .line 286
    const/16 v7, 0x8

    .line 287
    .line 288
    new-array v7, v7, [J

    .line 289
    .line 290
    fill-array-data v7, :array_d

    .line 291
    .line 292
    .line 293
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v5}, Lcom/google/android/play/core/appupdate/zzr;->zzk(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 309
    .line 310
    new-array v8, v2, [J

    .line 311
    .line 312
    fill-array-data v8, :array_e

    .line 313
    .line 314
    .line 315
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 326
    .line 327
    const/16 v7, 0x9

    .line 328
    .line 329
    new-array v7, v7, [J

    .line 330
    .line 331
    fill-array-data v7, :array_f

    .line 332
    .line 333
    .line 334
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v5}, Lcom/google/android/play/core/appupdate/zzr;->zzk(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 350
    .line 351
    new-array v2, v2, [J

    .line 352
    .line 353
    fill-array-data v2, :array_10

    .line 354
    .line 355
    .line 356
    invoke-direct {v7, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v5, v1, [J

    .line 369
    .line 370
    fill-array-data v5, :array_11

    .line 371
    .line 372
    .line 373
    invoke-direct {v2, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/zzr;->zzk(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 389
    .line 390
    new-array v6, v6, [J

    .line 391
    .line 392
    fill-array-data v6, :array_12

    .line 393
    .line 394
    .line 395
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 406
    .line 407
    new-array v1, v1, [J

    .line 408
    .line 409
    fill-array-data v1, :array_13

    .line 410
    .line 411
    .line 412
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/zzr;->zzk(Ljava/util/ArrayList;)Ljava/util/HashSet;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 428
    .line 429
    new-array v2, v4, [J

    .line 430
    .line 431
    fill-array-data v2, :array_14

    .line 432
    .line 433
    .line 434
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-object/from16 v10, p2

    .line 445
    .line 446
    invoke-static/range {v10 .. v28}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/util/Map;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :array_0
    .array-data 8
        0x6a03156f6720c2e0L    # 4.67444859505245E202
        0x7e2d08d3de40f755L    # 6.076308257999756E299
        0x2525ea4d76b72d7aL    # 9.880028510619421E-130
        -0x4824d6718f739290L    # -1.2472330126999827E-39
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_1
    .array-data 8
        0x4c4fd1e244af8ccfL    # 3.9947298216708906E59
        0x1b9066b07db505c8L    # 6.47584322314819E-176
        0xa0fc7f015d237cbL
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_2
    .array-data 8
        -0x425402324b547372L
        0x32aba1d55e99c8acL    # 1.3119153316726552E-64
        0x3e3599f5262f9342L    # 5.029467150888821E-9
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_3
    .array-data 8
        -0x657d26ed86b74a67L    # -5.677752566661916E-181
        0x3e9164207bc3bd2eL    # 2.591478922694227E-7
        0x6b752d27280bb3L
        0x7f2e9c1f0fe87bfcL    # 4.1982357295019498E304
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :array_4
    .array-data 8
        -0x23227c5ec34c5c89L    # -2.1966897394771848E139
        -0x5e09b10d6bdfc429L
        0x6b9459faa6fabf50L    # 1.6726805520603492E210
        -0x49b5fed58d48e1cL    # -2.453611758041451E286
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_5
    .array-data 8
        -0x391d905e37856219L    # -2.9914221468448005E33
        -0x3a67efc8272a85f0L    # -1.8618116947155046E27
        0x458d16c9d8194923L    # 1.1253268543540414E27
        0x6e5aab1d18631bdeL    # 3.855972850959899E223
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_6
    .array-data 8
        -0xa6cd28cfc4c4ddeL
        -0x1b92f3a40e05c5b0L    # -5.747617802488958E175
        -0x2895e8c9edc82c7fL    # -1.2549129567126998E113
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_7
    .array-data 8
        -0x25e380382ed93824L    # -1.205729817435895E126
        0x46b1ceece96066b2L    # 3.611952853372922E32
        0x4ff5298f6aaf169L
        -0x42ab6ed37266c3e7L    # -2.9227587215034717E-13
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_8
    .array-data 8
        -0x5694a209e3e25f67L    # -3.641491960358497E-109
        0x38c8ae1d80d34508L    # 3.713454390327319E-35
        0x2695b6a92001e16eL    # 8.211679180083048E-123
        -0x12bda323cf13807fL    # -2.025649200607661E218
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :array_9
    .array-data 8
        -0xb3235a0b5e74a1dL    # -4.368218827607034E254
        0x3ab3736a38370885L    # 6.28490521836339E-26
        -0x21c25f0b5d23f7baL    # -9.24934538275379E145
    .end array-data

    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_a
    .array-data 8
        -0x264f8dd08c7c630dL    # -1.087175062317226E124
        -0x7cb29edb35dcb461L    # -9.20021866053359E-293
        0x4c3bd0458afbb5bdL    # 1.7458855290226634E59
        -0x1a48b21f0d244f71L    # -9.670119754471431E181
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_b
    .array-data 8
        -0x30bbd3252c13d02aL    # -7.129303544251018E73
        0x7b96099c3fad7fe3L    # 2.097292494126114E287
        0x272562ea4f0850fcL    # 4.14103761778241E-120
        0x6afbe7259418276cL    # 2.2395803263973614E207
        -0x3fc139859f052d9eL    # -30.775304852710526
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    :array_c
    .array-data 8
        0x67f87daf73573113L    # 6.98365896422542E192
        0x7621c7d10baefc8aL    # 1.0935308675189258E261
        0x27e40962584223b4L
        0x77460df3f40b0eefL    # 3.5556865484719455E266
        0x2caf3e2ccf7bd5b7L    # 1.8722433484953552E-93
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    :array_d
    .array-data 8
        0x7b622e2480cabae7L    # 2.1627464769083923E286
        0xd34edc481351d32L
        0x1a7fa7c4e6ca9b12L    # 4.767928283348074E-181
        0x6827c01794977b19L    # 5.417980313764551E193
        0x83a36e2c333228dL
        -0x1a2f7beea8cf7ae0L    # -2.741317640553166E182
        0x2e6bf813d51e5ce9L    # 4.499134658860762E-85
        0x30242d815ba6bc3fL    # 8.712924703896857E-77
    .end array-data

    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_e
    .array-data 8
        -0x1ee11e29f3e9ad7fL    # -6.7839956639052715E159
        -0x7fcc124fd189230fL
        0x7704cd3fb20c2830L    # 2.0960717078629842E265
        0x690408be4ed17e0L
        0x5a6849c21c788903L    # 3.288228961302587E127
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    :array_f
    .array-data 8
        -0x1f67cae38fbd5fc5L    # -2.0772418796956532E157
        0x481b3bd9114e90ddL    # 2.316793859515136E39
        -0x3ccc1b2b31cb50b5L    # -5.599627201261387E15
        -0x23a066002ec901c5L    # -9.187694938550033E136
        0x51700580a8f2e95aL    # 1.9452786790960047E84
        -0x597d7ddac9e93c38L
        0x7140f57207f4a11aL    # 3.450968362421509E237
        0x29a63b457b0529a4L    # 4.73304787021602E-108
        -0x5bd317f4d7e1b660L
    .end array-data

    :array_10
    .array-data 8
        -0x5fbe21a9a68acccfL    # -2.665387986063879E-153
        0x2264046c356d8872L    # 5.129760020355606E-143
        -0x673ca79845b06b70L
        -0x602d1420392c1ffL    # -4.138469647844496E279
        0x16474d595c232b56L
    .end array-data

    :array_11
    .array-data 8
        0x1855433cd1437b1bL    # 1.864146717289885E-191
        -0x38f3688d940d6c17L    # -1.8557002663475973E34
        -0x37b9bf332c1b0ea9L    # -1.514469238055432E40
        0x6eea3404dd71ecffL    # 1.9398184245788333E226
        -0x480145d3aaabe493L    # -5.643702473245453E-39
        0x5a1ae90abd7f8036L    # 1.1385105757363149E126
        0x51bc44da1650194bL    # 5.491721511538971E85
    .end array-data

    :array_12
    .array-data 8
        -0x637d2aebf8ec95feL
        0x74904b254be6c378L    # 2.986426015727041E253
        -0x284b1d4c46f7e840L    # -3.214581100363586E114
    .end array-data

    :array_13
    .array-data 8
        -0x53eb57d6effa3d1cL    # -2.417720264446885E-96
        -0xf9296e97d6f1b12L    # -3.652826634220221E233
        -0x10bb2ae9a45736d7L    # -9.87018892423023E227
        -0x3a78be7848c53386L    # -8.99672037954017E26
        0x1d6893d6e48a6f53L
        0x15e14b015684f608L    # 2.757801508835323E-203
        0x11b412702094e104L
    .end array-data

    :array_14
    .array-data 8
        0x4838e704e81392b8L    # 8.473853949386043E39
        -0x617bc88ba6e621f5L    # -1.123416673647337E-161
        -0x54d80c27d5eb6f25L    # -8.555445343590657E-101
        -0x32a56ba854ba2346L    # -4.3736627042353676E64
    .end array-data
.end method

.method public static bridge synthetic zzg()Lcom/google/android/play/core/appupdate/internal/zzm;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    return-object v0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/play/core/appupdate/zzr;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method private static zzi()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/google/android/play/core/appupdate/internal/zzi;->zza(Ljava/lang/String;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    new-array v5, v4, [J

    .line 34
    .line 35
    fill-array-data v5, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    new-array v7, v6, [J

    .line 59
    .line 60
    fill-array-data v7, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v5, v4, [J

    .line 76
    .line 77
    fill-array-data v5, :array_3

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v5, v4, [J

    .line 96
    .line 97
    fill-array-data v5, :array_4

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v7, v6, [J

    .line 120
    .line 121
    fill-array-data v7, :array_5

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array v5, v4, [J

    .line 137
    .line 138
    fill-array-data v5, :array_6

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_1

    .line 153
    .line 154
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v4, v4, [J

    .line 157
    .line 158
    fill-array-data v4, :array_7

    .line 159
    .line 160
    .line 161
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v4, v6, [J

    .line 181
    .line 182
    fill-array-data v4, :array_8

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v2, v6, [J

    .line 201
    .line 202
    fill-array-data v2, :array_9

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const/16 v2, 0x2afc

    .line 213
    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    return-object v0

    .line 218
    nop

    .line 219
    :array_0
    .array-data 8
        -0x4783d271df84344cL    # -1.3249208386171047E-36
        -0x432f2411892422c5L    # -9.35868461967364E-16
        -0x16d7ec3b5882ac96L    # -3.5995937670626776E198
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_1
    .array-data 8
        0x6bae08cc7a788e13L    # 4.937027137673459E210
        0x5d9c0138c734c90bL    # 8.537486163604339E142
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_2
    .array-data 8
        0x52da19c8ddbad678L    # 1.3292027035360997E91
        -0x7454f4dc4da78fc8L    # -1.844322056934516E-252
        -0x63ef985355192752L
        0x61da72d60bed41c8L    # 2.379797501449783E163
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_3
    .array-data 8
        0x36833b117ebf890dL    # 4.210625064081926E-46
        0x4334363b6e6bdaeL
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_4
    .array-data 8
        0x556bae9283cf9631L    # 3.1000220902806007E103
        0x1e07beaef4b79df4L    # 5.154207901262948E-164
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_5
    .array-data 8
        0x7869340d994dcdb3L    # 1.0651826181711055E272
        0x5aa42ed2061ba04fL    # 4.371913560134185E128
        -0x784272151ba55149L
        -0x506b27715870ef9fL    # -1.758095087631629E-79
    .end array-data

    :array_6
    .array-data 8
        -0x77720dd7e5243fdbL
        -0x4ec82db850dfa0c2L    # -1.3482438173199442E-71
    .end array-data

    :array_7
    .array-data 8
        0xf51245be4d3e6f2L    # 6.739156941945461E-235
        0x7c2cdb8c82759bdeL    # 1.4061324896552065E290
    .end array-data

    :array_8
    .array-data 8
        -0x12e548e81c61afcfL    # -3.6837949737400316E217
        0x60db711d06be39aaL    # 3.767654837625286E158
        -0x76f62314cdbdbf80L
        -0x1d24bed3bad042b8L
    .end array-data

    :array_9
    .array-data 8
        0x791d08eaeaaea838L    # 2.5131326345122692E275
        -0x710e2e6b9d662dc1L
        0xac1b20aab30f6f7L
        -0x7ade627f30d2bceeL    # -5.923014937917577E-284
    .end array-data
.end method

.method private static zzj()Lcom/google/android/gms/tasks/Task;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 2
    .line 3
    const/16 v1, -0x9

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v2, v3, v4

    .line 14
    .line 15
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    new-array v4, v4, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :array_0
    .array-data 8
        -0x14e04c289b510e22L    # -1.0178191331507377E208
        0x4878ad00778d2339L    # 1.3434777078659405E41
        -0x1a634cd43ad03b6eL    # -2.9772656600286245E181
    .end array-data
.end method

.method private static zzk(Ljava/util/ArrayList;)Ljava/util/HashSet;
    .locals 1
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzj()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 42
    .line 43
    new-instance v2, Lcom/google/android/play/core/appupdate/zzn;

    .line 44
    .line 45
    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/play/core/appupdate/zzn;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzs(Lcom/google/android/play/core/appupdate/internal/zzn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x4fb38e4606993750L    # -4.912985710650372E-76
        -0x30714f3fc8cfb814L    # -1.7352096455099018E75
        -0x30fa88085d50abfcL    # -4.741471551894752E72
        0x65cc2b45842ca15L
    .end array-data
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzj()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v1, v2

    .line 17
    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    new-array v3, v3, [J

    .line 22
    .line 23
    fill-array-data v3, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 42
    .line 43
    new-instance v2, Lcom/google/android/play/core/appupdate/zzm;

    .line 44
    .line 45
    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzs(Lcom/google/android/play/core/appupdate/internal/zzn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        -0x40ab26f6cc80eb08L    # -0.0012724485259110723
        0x40e9982ebaf0ec44L    # 52417.46031995912
        0x33674716b3577249L    # 4.526794416583488E-61
        -0x7ab43c1c9cbbee9cL    # -3.734347370703102E-283
    .end array-data
.end method
