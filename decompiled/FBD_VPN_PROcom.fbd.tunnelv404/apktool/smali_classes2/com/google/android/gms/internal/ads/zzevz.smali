.class public final Lcom/google/android/gms/internal/ads/zzevz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexq;
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Landroid/content/pm/ApplicationInfo;

.field private final zzb:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevz;->zza:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevz;->zzb:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzevz;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevz;->zza:Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevz;->zzb:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    move-object v2, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v5, v0, [J

    .line 24
    .line 25
    fill-array-data v5, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v4, v0, [J

    .line 43
    .line 44
    fill-array-data v4, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevz;->zzb:Landroid/content/pm/PackageInfo;

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    if-eqz v3, :cond_3

    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    new-array v2, v0, [J

    .line 73
    .line 74
    fill-array-data v2, :array_2

    .line 75
    .line 76
    .line 77
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevz;->zzc:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevz;->zza:Landroid/content/pm/ApplicationInfo;

    .line 90
    .line 91
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v0, v0, [J

    .line 110
    .line 111
    fill-array-data v0, :array_3

    .line 112
    .line 113
    .line 114
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    return-void

    .line 125
    :array_0
    .array-data 8
        -0x3a8f6e437203136L
        -0x769149bdb7e5c8f0L    # -3.047903263088131E-263
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
    :array_1
    .array-data 8
        -0x2cd5923299e77788L    # -4.306932116728932E92
        -0x4c28f3aace819413L    # -5.7371657929129345E-59
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
    :array_2
    .array-data 8
        0xd89ea64f4007222L
        -0x47cff13262350729L    # -4.718970630845542E-38
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
    :array_3
    .array-data 8
        0x29d7b74bf8ae2b0eL    # 4.039271530460839E-107
        0x7946803b8ba3eedeL
    .end array-data
.end method
