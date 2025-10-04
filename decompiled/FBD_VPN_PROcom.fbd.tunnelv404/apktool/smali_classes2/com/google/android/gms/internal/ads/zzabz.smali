.class public final Lcom/google/android/gms/internal/ads/zzabz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:F

.field public final zzk:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    .locals 0
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabz;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzabz;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzi:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzj:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzabz;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzabz;
    .locals 15

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    and-int/2addr v1, v2

    .line 11
    add-int/lit8 v5, v1, 0x1

    .line 12
    .line 13
    if-eq v5, v2, :cond_3

    .line 14
    .line 15
    new-instance v4, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    and-int/lit8 v2, v2, 0x1f

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    :goto_0
    if-ge v6, v2, :cond_0

    .line 29
    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabz;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x0

    .line 48
    :goto_1
    if-ge v7, v6, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabz;->zzb(Lcom/google/android/gms/internal/ads/zzfp;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    add-int/lit8 v7, v7, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-lez v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, [B

    .line 67
    .line 68
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, [B

    .line 73
    .line 74
    array-length p0, p0

    .line 75
    add-int/lit8 v1, v1, 0x2

    .line 76
    .line 77
    invoke-static {v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzgm;->zze([BII)Lcom/google/android/gms/internal/ads/zzgl;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zze:I

    .line 82
    .line 83
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzf:I

    .line 84
    .line 85
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzh:I

    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x8

    .line 88
    .line 89
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzi:I

    .line 90
    .line 91
    add-int/lit8 v6, v6, 0x8

    .line 92
    .line 93
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzj:I

    .line 94
    .line 95
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzk:I

    .line 96
    .line 97
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzl:I

    .line 98
    .line 99
    iget v10, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzg:F

    .line 100
    .line 101
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:I

    .line 102
    .line 103
    iget v12, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:I

    .line 104
    .line 105
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzc:I

    .line 106
    .line 107
    invoke-static {v11, v12, p0}, Lcom/google/android/gms/internal/ads/zzem;->zza(III)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    move-object v14, p0

    .line 112
    move v11, v8

    .line 113
    move v12, v9

    .line 114
    move v13, v10

    .line 115
    move v8, v3

    .line 116
    move v9, v6

    .line 117
    move v10, v7

    .line 118
    move v6, v1

    .line 119
    move v7, v2

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const/4 p0, -0x1

    .line 122
    const/4 v1, 0x0

    .line 123
    const/high16 v2, 0x3f800000    # 1.0f

    .line 124
    .line 125
    move-object v14, v1

    .line 126
    const/4 v6, -0x1

    .line 127
    const/4 v7, -0x1

    .line 128
    const/4 v8, -0x1

    .line 129
    const/4 v9, -0x1

    .line 130
    const/4 v10, -0x1

    .line 131
    const/4 v11, -0x1

    .line 132
    const/4 v12, -0x1

    .line 133
    const/high16 v13, 0x3f800000    # 1.0f

    .line 134
    .line 135
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzabz;

    .line 136
    .line 137
    move-object v3, p0

    .line 138
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzabz;-><init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 149
    .line 150
    new-array v0, v0, [J

    .line 151
    .line 152
    fill-array-data v0, :array_0

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcc;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    throw p0

    .line 167
    :array_0
    .array-data 8
        -0x3697be3c94dfd98aL    # -4.3275734464494247E45
        0x11a0ffdbf164588cL
        0x97231533a416039L
        0x6a2384a34bf54bd0L    # 1.9123395241292666E203
    .end array-data
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzfp;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfp;->zzM()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzc([BII)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
