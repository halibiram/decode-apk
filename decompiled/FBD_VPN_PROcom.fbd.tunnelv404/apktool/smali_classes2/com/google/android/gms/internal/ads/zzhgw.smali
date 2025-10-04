.class public final Lcom/google/android/gms/internal/ads/zzhgw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzhgw;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzhgw;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzhgw;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzhgw;


# instance fields
.field public final zze:D

.field public final zzf:D

.field public final zzg:D

.field public final zzh:D

.field public final zzi:D

.field public final zzj:D

.field public final zzk:D

.field public final zzl:D

.field public final zzm:D


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v19, Lcom/google/android/gms/internal/ads/zzhgw;

    move-object/from16 v0, v19

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>(DDDDDDDDD)V

    sput-object v19, Lcom/google/android/gms/internal/ads/zzhgw;->zza:Lcom/google/android/gms/internal/ads/zzhgw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgw;

    move-object/from16 v20, v0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v21, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzb:Lcom/google/android/gms/internal/ads/zzhgw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgw;

    move-object v1, v0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzc:Lcom/google/android/gms/internal/ads/zzhgw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgw;

    move-object/from16 v20, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzd:Lcom/google/android/gms/internal/ads/zzhgw;

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:D

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzh:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzi:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzj:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzk:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzl:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzm:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_b

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/zzhgw;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhgw;

    .line 18
    .line 19
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzh:D

    .line 20
    .line 21
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzh:D

    .line 22
    .line 23
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzi:D

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzi:D

    .line 33
    .line 34
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    return v1

    .line 41
    :cond_3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzj:D

    .line 42
    .line 43
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzj:D

    .line 44
    .line 45
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzk:D

    .line 53
    .line 54
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzk:D

    .line 55
    .line 56
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    return v1

    .line 63
    :cond_5
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzl:D

    .line 64
    .line 65
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzl:D

    .line 66
    .line 67
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    return v1

    .line 74
    :cond_6
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzm:D

    .line 75
    .line 76
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzm:D

    .line 77
    .line 78
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    return v1

    .line 85
    :cond_7
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zze:D

    .line 86
    .line 87
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:D

    .line 88
    .line 89
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    return v1

    .line 96
    :cond_8
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:D

    .line 97
    .line 98
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:D

    .line 99
    .line 100
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_9

    .line 105
    .line 106
    return v1

    .line 107
    :cond_9
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:D

    .line 108
    .line 109
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:D

    .line 110
    .line 111
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    return v1

    .line 118
    :cond_a
    return v0

    .line 119
    :cond_b
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:D

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    ushr-long v4, v1, v3

    .line 12
    .line 13
    xor-long/2addr v1, v4

    .line 14
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:D

    .line 15
    .line 16
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    ushr-long v6, v4, v3

    .line 21
    .line 22
    xor-long/2addr v4, v6

    .line 23
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:D

    .line 24
    .line 25
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    ushr-long v8, v6, v3

    .line 30
    .line 31
    xor-long/2addr v6, v8

    .line 32
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzh:D

    .line 33
    .line 34
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    ushr-long v10, v8, v3

    .line 39
    .line 40
    xor-long/2addr v8, v10

    .line 41
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzi:D

    .line 42
    .line 43
    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    ushr-long v12, v10, v3

    .line 48
    .line 49
    xor-long/2addr v10, v12

    .line 50
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzj:D

    .line 51
    .line 52
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 53
    .line 54
    .line 55
    move-result-wide v12

    .line 56
    ushr-long v14, v12, v3

    .line 57
    .line 58
    xor-long/2addr v12, v14

    .line 59
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzk:D

    .line 60
    .line 61
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 62
    .line 63
    .line 64
    move-result-wide v14

    .line 65
    ushr-long v16, v14, v3

    .line 66
    .line 67
    xor-long v14, v14, v16

    .line 68
    .line 69
    move-wide/from16 v16, v14

    .line 70
    .line 71
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzl:D

    .line 72
    .line 73
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 74
    .line 75
    .line 76
    move-result-wide v14

    .line 77
    ushr-long v18, v14, v3

    .line 78
    .line 79
    xor-long v14, v14, v18

    .line 80
    .line 81
    move-wide/from16 v18, v14

    .line 82
    .line 83
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzm:D

    .line 84
    .line 85
    invoke-static {v14, v15}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 86
    .line 87
    .line 88
    move-result-wide v14

    .line 89
    ushr-long v20, v14, v3

    .line 90
    .line 91
    xor-long v14, v14, v20

    .line 92
    .line 93
    long-to-int v2, v1

    .line 94
    mul-int/lit8 v2, v2, 0x1f

    .line 95
    .line 96
    long-to-int v1, v4

    .line 97
    add-int/2addr v2, v1

    .line 98
    mul-int/lit8 v2, v2, 0x1f

    .line 99
    .line 100
    long-to-int v1, v6

    .line 101
    add-int/2addr v2, v1

    .line 102
    mul-int/lit8 v2, v2, 0x1f

    .line 103
    .line 104
    long-to-int v1, v8

    .line 105
    add-int/2addr v2, v1

    .line 106
    mul-int/lit8 v2, v2, 0x1f

    .line 107
    .line 108
    long-to-int v1, v10

    .line 109
    add-int/2addr v2, v1

    .line 110
    mul-int/lit8 v2, v2, 0x1f

    .line 111
    .line 112
    long-to-int v1, v12

    .line 113
    add-int/2addr v2, v1

    .line 114
    mul-int/lit8 v2, v2, 0x1f

    .line 115
    .line 116
    move-wide/from16 v3, v16

    .line 117
    .line 118
    long-to-int v1, v3

    .line 119
    add-int/2addr v2, v1

    .line 120
    mul-int/lit8 v2, v2, 0x1f

    .line 121
    .line 122
    move-wide/from16 v3, v18

    .line 123
    .line 124
    long-to-int v1, v3

    .line 125
    add-int/2addr v2, v1

    .line 126
    mul-int/lit8 v2, v2, 0x1f

    .line 127
    .line 128
    long-to-int v1, v14

    .line 129
    add-int/2addr v2, v1

    .line 130
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zza:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 5
    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhgw;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    return-object v1

    .line 27
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zzb:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhgw;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    return-object v1

    .line 50
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zzc:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhgw;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    return-object v1

    .line 73
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zzd:Lcom/google/android/gms/internal/ads/zzhgw;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhgw;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v1, [J

    .line 84
    .line 85
    fill-array-data v1, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    return-object v1

    .line 96
    :cond_3
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:D

    .line 97
    .line 98
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:D

    .line 99
    .line 100
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:D

    .line 101
    .line 102
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzh:D

    .line 103
    .line 104
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzi:D

    .line 105
    .line 106
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzj:D

    .line 107
    .line 108
    move-wide/from16 v16, v3

    .line 109
    .line 110
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzk:D

    .line 111
    .line 112
    move-wide/from16 v18, v2

    .line 113
    .line 114
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzl:D

    .line 115
    .line 116
    move-wide/from16 v20, v5

    .line 117
    .line 118
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzm:D

    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const/16 v3, 0x104

    .line 123
    .line 124
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    const/4 v15, 0x3

    .line 130
    new-array v15, v15, [J

    .line 131
    .line 132
    fill-array-data v15, :array_4

    .line 133
    .line 134
    .line 135
    invoke-direct {v3, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-wide/from16 v22, v4

    .line 146
    .line 147
    move-wide/from16 v3, v16

    .line 148
    .line 149
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    const/4 v4, 0x2

    .line 155
    new-array v5, v4, [J

    .line 156
    .line 157
    fill-array-data v5, :array_5

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-wide/from16 v4, v20

    .line 171
    .line 172
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    const/4 v4, 0x2

    .line 178
    new-array v5, v4, [J

    .line 179
    .line 180
    fill-array-data v5, :array_6

    .line 181
    .line 182
    .line 183
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v5, v4, [J

    .line 199
    .line 200
    fill-array-data v5, :array_7

    .line 201
    .line 202
    .line 203
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 217
    .line 218
    new-array v5, v4, [J

    .line 219
    .line 220
    fill-array-data v5, :array_8

    .line 221
    .line 222
    .line 223
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 237
    .line 238
    new-array v5, v4, [J

    .line 239
    .line 240
    fill-array-data v5, :array_9

    .line 241
    .line 242
    .line 243
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 257
    .line 258
    new-array v5, v4, [J

    .line 259
    .line 260
    fill-array-data v5, :array_a

    .line 261
    .line 262
    .line 263
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-wide/from16 v7, v18

    .line 274
    .line 275
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v5, v4, [J

    .line 281
    .line 282
    fill-array-data v5, :array_b

    .line 283
    .line 284
    .line 285
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 299
    .line 300
    new-array v2, v4, [J

    .line 301
    .line 302
    fill-array-data v2, :array_c

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    move-wide/from16 v1, v22

    .line 316
    .line 317
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 321
    .line 322
    new-array v2, v4, [J

    .line 323
    .line 324
    fill-array-data v2, :array_d

    .line 325
    .line 326
    .line 327
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 328
    .line 329
    .line 330
    invoke-static {v1, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    return-object v1

    .line 335
    :array_0
    .array-data 8
        0x2685fd3fccc9e946L
        0x170f2e782dc30b4aL    # 1.303557393319489E-197
        0x39c8decc35b4b1fdL    # 2.4524012659332782E-30
    .end array-data

    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_1
    .array-data 8
        0x52f286381e1a928bL    # 3.773465287931783E91
        -0x4e66577620f078baL    # -9.294152689878422E-70
        -0x65732cf5088d86c5L    # -8.683057578774177E-181
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_2
    .array-data 8
        0x6583f8ecb88f2238L    # 1.0359453422088494E181
        0x5a618a4e0264b3f6L
        0x5862877bafe5b7e4L    # 5.840711018011708E117
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_3
    .array-data 8
        0x4d165aa46eb19451L    # 2.2989829120338553E63
        -0x7872f930eed907d6L
        0x4e9e542d37676d9aL    # 5.233044694219323E70
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_4
    .array-data 8
        0x7c86e45b316e787aL    # 7.138876451493182E291
        -0x2514844e1504c140L    # -9.52522376991777E129
        -0x1b5f2b68ee8b4eceL    # -5.328226608576351E176
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_5
    .array-data 8
        -0x60638aecb7b2fd2L
        -0x4fcf711d3b519ffaL    # -1.4299895457886072E-76
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_6
    .array-data 8
        -0xee7df31da0542e9L    # -6.137345234987171E236
        -0x203de0d41b255a80L    # -1.898227536019693E153
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    :array_7
    .array-data 8
        -0x5e71cd516288eb85L    # -4.723348366418288E-147
        -0x4435dad30c0b790bL    # -1.1072930181265034E-20
    .end array-data

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_8
    .array-data 8
        -0x315ef83ca388bbeL    # -5.202037077406464E293
        -0x2f333c931ec45b2L
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
    :array_9
    .array-data 8
        0x5c7d3a65e7e4ba55L    # 3.3990604172663386E137
        -0x1104a0f6a4709ee7L    # -4.052576058537466E226
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_a
    .array-data 8
        -0x6b9c92bc13254be4L
        -0x6638d2a1adec75deL
    .end array-data

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
    :array_b
    .array-data 8
        -0x3f6b2ba1799f7162L    # -1333.0923094832465
        -0x125aabd5bf74472eL    # -1.5058185850275104E220
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
    :array_c
    .array-data 8
        -0x4334ec2382799d71L    # -7.515539070374969E-16
        -0x65ab3bd6020c5f1dL    # -7.819536929347415E-182
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_d
    .array-data 8
        0x75fe5d417c499476L    # 2.334313950142634E260
        0x4597fd93e6786e3L
    .end array-data
.end method
