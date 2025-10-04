.class final Lcom/google/android/gms/internal/ads/zzalu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:Z

.field private zzd:I

.field private zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:F

.field private zzl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:I

.field private zzn:I

.field private zzo:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzq:I

.field private zzr:Lcom/google/android/gms/internal/ads/zzaln;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    return-void
.end method


# virtual methods
.method public final zzA(Z)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    return-object p0
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzaln;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzaln;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzr:Lcom/google/android/gms/internal/ads/zzaln;

    return-object p0
.end method

.method public final zzC(Z)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    return-object p0
.end method

.method public final zzD()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzE()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzF()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zze:Z

    return v0
.end method

.method public final zzH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Z

    return v0
.end method

.method public final zzI()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzJ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzk:F

    return v0
.end method

.method public final zzb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    return v0
.end method

.method public final zzc()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zze:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x6

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        0x69020b5e7f0ab75aL    # 6.744191145047972E197
        -0x30dce123ac1e85cdL    # -1.6891543321568E73
        0x2e6d85167d1656c9L    # 4.7486016719825667E-85
        -0x1500942a14eeb4c9L    # -2.5219719720424106E207
        0x6a62e0892f2e778fL    # 2.959253668998058E204
        -0xe7bcd74df577290L    # -6.576015179501944E238
    .end array-data
.end method

.method public final zzd()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzb:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x5

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
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        -0x246bb79276b1a56eL    # -1.4396887411731265E133
        0x4260800a812d63a9L    # 5.669411905071144E11
        0x7af2fb67deb3dce6L    # 1.7641646736796375E284
        -0x3ed3c0a362ea0e24L    # -925614.3068080503
        0x30c1f112785d30b6L    # 7.933309053083492E-74
    .end array-data
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    return v0
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    return v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    return v0
.end method

.method public final zzh()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    if-ne v3, v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    return v0
.end method

.method public final zzi()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzp:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final zzj()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzaln;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzr:Lcom/google/android/gms/internal/ads/zzaln;

    return-object v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzalu;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/ads/zzalu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzb:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzalu;->zzo(I)Lcom/google/android/gms/internal/ads/zzalu;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/lang/String;

    .line 42
    .line 43
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    .line 44
    .line 45
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    .line 48
    .line 49
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    .line 50
    .line 51
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    .line 52
    .line 53
    if-ne v0, v1, :cond_5

    .line 54
    .line 55
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    .line 56
    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzg:I

    .line 58
    .line 59
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    .line 64
    .line 65
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Landroid/text/Layout$Alignment;

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Landroid/text/Layout$Alignment;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Landroid/text/Layout$Alignment;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzp:Landroid/text/Layout$Alignment;

    .line 78
    .line 79
    if-nez v0, :cond_8

    .line 80
    .line 81
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzp:Landroid/text/Layout$Alignment;

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzp:Landroid/text/Layout$Alignment;

    .line 86
    .line 87
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    .line 88
    .line 89
    if-ne v0, v1, :cond_9

    .line 90
    .line 91
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    .line 92
    .line 93
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:I

    .line 94
    .line 95
    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 96
    .line 97
    if-ne v0, v1, :cond_a

    .line 98
    .line 99
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 100
    .line 101
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    .line 102
    .line 103
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzk:F

    .line 104
    .line 105
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzk:F

    .line 106
    .line 107
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzr:Lcom/google/android/gms/internal/ads/zzaln;

    .line 108
    .line 109
    if-nez v0, :cond_b

    .line 110
    .line 111
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzr:Lcom/google/android/gms/internal/ads/zzaln;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzr:Lcom/google/android/gms/internal/ads/zzaln;

    .line 114
    .line 115
    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    .line 116
    .line 117
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 118
    .line 119
    .line 120
    cmpl-float v0, v0, v2

    .line 121
    .line 122
    if-nez v0, :cond_c

    .line 123
    .line 124
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    .line 125
    .line 126
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    .line 127
    .line 128
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zze:Z

    .line 129
    .line 130
    if-nez v0, :cond_d

    .line 131
    .line 132
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zze:Z

    .line 133
    .line 134
    if-eqz v0, :cond_d

    .line 135
    .line 136
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzd:I

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzalu;->zzm(I)Lcom/google/android/gms/internal/ads/zzalu;

    .line 139
    .line 140
    .line 141
    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    .line 142
    .line 143
    if-ne v0, v1, :cond_e

    .line 144
    .line 145
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    .line 146
    .line 147
    if-eq p1, v1, :cond_e

    .line 148
    .line 149
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    .line 150
    .line 151
    :cond_e
    return-object p0
.end method

.method public final zzm(I)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zze:Z

    return-object p0
.end method

.method public final zzn(Z)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:I

    return-object p0
.end method

.method public final zzo(I)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzc:Z

    return-object p0
.end method

.method public final zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzq(F)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzk:F

    return-object p0
.end method

.method public final zzr(I)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:I

    return-object p0
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzl:Ljava/lang/String;

    return-object p0
.end method

.method public final zzt(Z)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:I

    return-object p0
.end method

.method public final zzu(Z)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:I

    return-object p0
.end method

.method public final zzv(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzp:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zzw(I)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzn:I

    return-object p0
.end method

.method public final zzx(I)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:I

    return-object p0
.end method

.method public final zzy(F)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzs:F

    return-object p0
.end method

.method public final zzz(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzalu;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Landroid/text/Layout$Alignment;

    return-object p0
.end method
