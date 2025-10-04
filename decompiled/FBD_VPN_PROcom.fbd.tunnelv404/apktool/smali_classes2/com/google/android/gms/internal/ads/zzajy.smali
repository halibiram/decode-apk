.class final Lcom/google/android/gms/internal/ads/zzajy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public final zzf:[I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzf:[I

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfp;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zza:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacv;Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzajy;->zza()V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 6
    .line 7
    const/16 v2, 0x1b

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {p1, v1, v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;[BIIZ)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const-wide/32 v6, 0x4f676753

    .line 32
    .line 33
    .line 34
    cmp-long v1, v4, v6

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 p2, 0x5

    .line 53
    new-array p2, p2, [J

    .line 54
    .line 55
    fill-array-data p2, :array_0

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zza:I

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzr()J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzb:J

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzs()J

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzc:I

    .line 108
    .line 109
    add-int/2addr v2, v1

    .line 110
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzd:I

    .line 111
    .line 112
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzc:I

    .line 124
    .line 125
    invoke-static {p1, v1, v3, v2, p2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;[BIIZ)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzc:I

    .line 132
    .line 133
    if-ge v3, p1, :cond_3

    .line 134
    .line 135
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzf:[I

    .line 136
    .line 137
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    aput p2, p1, v3

    .line 144
    .line 145
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 146
    .line 147
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzf:[I

    .line 148
    .line 149
    aget p2, p2, v3

    .line 150
    .line 151
    add-int/2addr p1, p2

    .line 152
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajy;->zze:I

    .line 153
    .line 154
    add-int/2addr v3, v0

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    return v0

    .line 157
    :cond_4
    :goto_1
    return v3

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        0x40aebc1b238c82baL    # 3934.0530055913523
        0x673794a7a4ba2f32L    # 1.641623933044732E189
        -0x1de6648dc987c801L    # -3.6865483856259894E164
        0x54e69a0587f5cc32L    # 9.887093711701244E100
        0x7257e9666a769ed9L    # 6.377747494196999E242
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzacv;J)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zze()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    cmp-long v6, v0, v2

    .line 12
    .line 13
    if-nez v6, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzH(I)V

    .line 25
    .line 26
    .line 27
    :goto_1
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v0, p2, v2

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const-wide/16 v6, 0x4

    .line 38
    .line 39
    add-long/2addr v2, v6

    .line 40
    cmp-long v6, v2, p2

    .line 41
    .line 42
    if-ltz v6, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1, v2, v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(Lcom/google/android/gms/internal/ads/zzacv;[BIIZ)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajy;->zzg:Lcom/google/android/gms/internal/ads/zzfp;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzu()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    const-wide/32 v6, 0x4f676753

    .line 69
    .line 70
    .line 71
    cmp-long v0, v2, v6

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/android/gms/internal/ads/zzack;

    .line 77
    .line 78
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzack;->zzo(IZ)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 83
    .line 84
    .line 85
    return v5

    .line 86
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzf()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    cmp-long v3, v1, p2

    .line 93
    .line 94
    if-gez v3, :cond_5

    .line 95
    .line 96
    :cond_4
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzc(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, -0x1

    .line 101
    if-ne v1, v2, :cond_3

    .line 102
    .line 103
    :cond_5
    return v4
.end method
