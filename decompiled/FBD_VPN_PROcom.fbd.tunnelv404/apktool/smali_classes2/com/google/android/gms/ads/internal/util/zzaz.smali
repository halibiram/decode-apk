.class public final Lcom/google/android/gms/ads/internal/util/zzaz;
.super Lcom/google/android/gms/internal/ads/zzaqp;
.source "SourceFile"


# instance fields
.field private final zzc:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaqp;-><init>(Lcom/google/android/gms/internal/ads/zzaqo;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzc:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaqd;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzaz;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzara;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzara;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqo;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v3, v3, [J

    .line 21
    .line 22
    fill-array-data v3, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaqd;

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 38
    .line 39
    const/high16 v3, 0x1400000

    .line 40
    .line 41
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Ljava/io/File;I)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzapk;Lcom/google/android/gms/internal/ads/zzapt;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzd()V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        -0x37450a58cccd2a2dL    # -2.3485108610348936E42
        -0x6408c1a25e414a09L    # -5.873624933917981E-174
        -0x2356128e3c6d78f3L    # -2.412175806667979E138
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzapw;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzk()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzes:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzc:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 32
    .line 33
    .line 34
    const v1, 0xcc77c0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzs(Landroid/content/Context;I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzaz;->zzc:Landroid/content/Context;

    .line 44
    .line 45
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpc;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbpc;->zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzapw;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzk()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    const/4 v2, 0x5

    .line 67
    new-array v2, v2, [J

    .line 68
    .line 69
    fill-array-data v2, :array_0

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzk()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    const/4 v2, 0x6

    .line 98
    new-array v2, v2, [J

    .line 99
    .line 100
    fill-array-data v2, :array_1

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/internal/ads/zzapw;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        0x79808238c3cbf2b7L    # 1.8290195098430493E277
        -0x141859cfce8db97eL    # -6.219893162536309E211
        -0x4b0713f4b9054203L    # -1.6262394514573171E-53
        -0x2add3b250700cca5L    # -1.313677921596657E102
        0x4f4cbf817a5d36aL    # 8.74097085776109E-285
    .end array-data

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
    :array_1
    .array-data 8
        0x634519d5a0811d54L    # 1.592681277652667E170
        0x5098cf71efde653cL    # 1.8386177347736263E80
        0x11df1d5b99a7677L
        -0x11827a27b04b9709L    # -1.7074767745835752E224
        0x4ae3a02db962f37eL    # 5.874276211834292E52
        0x1a7e9630456cd768L
    .end array-data
.end method
