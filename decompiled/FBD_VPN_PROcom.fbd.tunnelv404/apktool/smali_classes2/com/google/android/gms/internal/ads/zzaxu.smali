.class public final Lcom/google/android/gms/internal/ads/zzaxu;
.super Lcom/google/android/gms/internal/ads/zzaxx;
.source "SourceFile"


# instance fields
.field private final zzi:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;IILandroid/view/View;)V
    .locals 7

    .line 1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 p3, 0x9

    .line 4
    .line 5
    new-array p3, p3, [J

    .line 6
    .line 7
    fill-array-data p3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 p3, 0x7

    .line 20
    new-array p3, p3, [J

    .line 21
    .line 22
    fill-array-data p3, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/16 v6, 0x39

    .line 33
    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    move-object v4, p4

    .line 37
    move v5, p5

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxx;-><init>(Lcom/google/android/gms/internal/ads/zzawj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasg;II)V

    .line 39
    .line 40
    .line 41
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzi:Landroid/view/View;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x131fe05f483b32d3L    # -2.779121049666066E216
        -0x3f20a63dd81cb1c7L    # -32103.03368456496
        -0x2519e7db0f7052cfL    # -7.657529235443019E129
        0x252ab39f99086ab2L
        0x9252c80894efd8fL
        0x388954e7d4ceb73dL    # 2.3821780899248046E-36
        0x71e8348ffb60f1e2L    # 5.043794886968159E240
        0xb1c348bfaa156e3L
        -0x7236a19d2785921L
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
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
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        0x63f47e1a3bd5d202L    # 3.167774979096038E173
        0x278bf7a09928c335L
        -0x344984a3ab193d8eL    # -5.512540352253035E56
        0x7750adf5a8fc68bL
        0x420c6aa1c70f8fd0L    # 1.525600892994522E10
        0x7be1b3fa0cf4bfdL
        -0x5a7b37b997620376L    # -5.99633613624255E-128
    .end array-data
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzi:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzdk:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzku:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawj;->zzb()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zzf:Ljava/lang/reflect/Method;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzi:Landroid/view/View;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x4

    .line 49
    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    aput-object v4, v6, v7

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    aput-object v2, v6, v4

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    aput-object v0, v6, v2

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    aput-object v1, v6, v2

    .line 62
    .line 63
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawn;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzawn;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatc;->zza()Lcom/google/android/gms/internal/ads/zzatb;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzawn;->zza:Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzatb;->zzb(J)Lcom/google/android/gms/internal/ads/zzatb;

    .line 85
    .line 86
    .line 87
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzawn;->zzb:Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzatb;->zzd(J)Lcom/google/android/gms/internal/ads/zzatb;

    .line 94
    .line 95
    .line 96
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzawn;->zzc:Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzatb;->zze(J)Lcom/google/android/gms/internal/ads/zzatb;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzawn;->zze:Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzatb;->zzc(J)Lcom/google/android/gms/internal/ads/zzatb;

    .line 118
    .line 119
    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzawn;->zzd:Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v0

    .line 132
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzatb;->zza(J)Lcom/google/android/gms/internal/ads/zzatb;

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxx;->zze:Lcom/google/android/gms/internal/ads/zzasg;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/google/android/gms/internal/ads/zzatc;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzasg;->zzY(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzasg;

    .line 144
    .line 145
    .line 146
    :cond_2
    return-void
.end method
