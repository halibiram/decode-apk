.class final Lcom/google/android/gms/internal/ads/zzfjt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjs;

.field private zzc:J

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjs;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfjs;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzd:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zze:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzf:I

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zza:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzc:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzd:I

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zza:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzc:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfjs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjs;->zza()Lcom/google/android/gms/internal/ads/zzfjs;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Z

    .line 9
    .line 10
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:I

    .line 11
    .line 12
    return-object v1
.end method

.method public final zze()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zza:J

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    new-array v3, v2, [J

    .line 32
    .line 33
    fill-array-data v3, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzc:J

    .line 47
    .line 48
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v2, v2, [J

    .line 54
    .line 55
    fill-array-data v2, :array_2

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzd:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    const/4 v2, 0x5

    .line 76
    new-array v2, v2, [J

    .line 77
    .line 78
    fill-array-data v2, :array_3

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zze:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    new-array v2, v2, [J

    .line 100
    .line 101
    fill-array-data v2, :array_4

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzf:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    return-object v0

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        -0x760bdd1b99083fbeL
        -0x6d0927bac57709d3L
        0x595c7991c01729f1L    # 2.941170239468112E122
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
    :array_1
    .array-data 8
        0xe05f5b3ecc89ec2L    # 4.116625891353359E-241
        -0x19ccfec3cfc66ca6L    # -2.0188368838753655E184
        -0x668e05c82f7cf292L    # -4.131710768833991E-186
    .end array-data

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
    :array_2
    .array-data 8
        -0x1fa77d26bfca19e5L    # -1.3145619578326112E156
        -0x15ebd50c2df9e7adL    # -9.879961508203573E202
        -0x1ddc154d9e79b02eL    # -5.734649342612312E164
    .end array-data

    .line 158
    .line 159
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
    :array_3
    .array-data 8
        0x7010b10400ff0bbL
        -0x72d3d8f659db1c84L
        0x640703c6e4d0df3aL    # 7.115310318496486E173
        0x2b6fff58ce48f951L    # 1.828634027664982E-99
        0x255951d094443b99L    # 9.13184465109094E-129
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    :array_4
    .array-data 8
        -0x66ffe065c4044722L    # -2.895013663926949E-188
        0x4e2b746047f580b6L    # 3.7008719679482133E68
    .end array-data
.end method

.method public final zzf()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzc:J

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzd:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzd:I

    .line 16
    .line 17
    return-void
.end method

.method public final zzg()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zzb:I

    return-void
.end method

.method public final zzh()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zze:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjt;->zzb:Lcom/google/android/gms/internal/ads/zzfjs;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfjs;->zza:Z

    return-void
.end method
