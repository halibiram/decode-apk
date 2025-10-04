.class final Lcom/google/android/gms/common/zzz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:J

.field private zzc:Lcom/google/android/gms/internal/common/zzag;

.field private zzd:Lcom/google/android/gms/internal/common/zzag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/common/zzag;->zzl()Lcom/google/android/gms/internal/common/zzag;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/common/zzz;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/gms/common/zzz;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    .line 9
    .line 10
    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzz;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzag;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/common/zzag;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    .line 9
    .line 10
    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/common/zzz;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/common/zzab;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-ltz v4, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 v2, 0xa

    .line 35
    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    fill-array-data v2, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/zzab;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/android/gms/common/zzz;->zza:Ljava/lang/String;

    .line 55
    .line 56
    iget-wide v4, p0, Lcom/google/android/gms/common/zzz;->zzb:J

    .line 57
    .line 58
    iget-object v6, p0, Lcom/google/android/gms/common/zzz;->zzc:Lcom/google/android/gms/internal/common/zzag;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/google/android/gms/common/zzz;->zzd:Lcom/google/android/gms/internal/common/zzag;

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v2, v0

    .line 64
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/common/zzab;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/internal/common/zzag;Lcom/google/android/gms/common/zzaa;)V

    .line 65
    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 71
    .line 72
    const/16 v2, 0x9

    .line 73
    .line 74
    new-array v2, v2, [J

    .line 75
    .line 76
    fill-array-data v2, :array_1

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/4 v2, 0x5

    .line 95
    new-array v2, v2, [J

    .line 96
    .line 97
    fill-array-data v2, :array_2

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :array_0
    .array-data 8
        0x73067e40a534fa51L    # 1.2286755493519169E246
        0x3e9b81d4298ffe2eL    # 4.098883806258089E-7
        0x3ed7a46ac846f99aL    # 5.636752693437275E-6
        -0x56493b3e476959afL    # -9.694770329319678E-108
        0x55a6d8f6071fbfc4L    # 4.093806172011878E104
        0x36533482a86cd354L
        0x6f183dc4c2cc5622L
        -0x7a2c1e984ca6bbd4L
        0x2dab11dca0ffd368L    # 1.0631043572872502E-88
        -0x3d4253ee0a840592L    # -3.262487288114643E13
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
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
    :array_1
    .array-data 8
        0x17fdad2f80868870L    # 4.065327716154248E-193
        0x1b640f94b7294c6fL    # 9.901070782014019E-177
        -0x83bdc6757b90126L    # -8.311991392176602E268
        0x1a5dc4bd51e22575L
        0x5f70bfbc38b0128aL    # 5.482590728015038E151
        -0x59d592c2dc6e491L    # -3.385662612089299E281
        -0x386e18c09b211e9bL    # -5.949395571566138E36
        0x3f831c7901832c17L    # 0.009331651075987364
        -0x169188b1468b3a95L    # -7.2875780928348685E199
    .end array-data

    .line 156
    .line 157
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
    :array_2
    .array-data 8
        -0x4302a710531141e0L    # -6.516433428010215E-15
        0x1418b4313b17ce07L    # 7.338176672514998E-212
        -0x43398d0002a04e74L    # -6.230909841827407E-16
        -0x3d70b4c1ae820be1L    # -4.301003567038515E12
        -0x129614df7a029b71L    # -1.1436579218465253E219
    .end array-data
.end method
