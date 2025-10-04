.class final Lcom/google/android/gms/internal/ads/zzfqv;
.super Lcom/google/android/gms/internal/ads/zzfqs;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Z

.field private zzd:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfqs;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    :array_0
    .array-data 8
        0x60137de82f7a6becL    # 6.533565849789101E154
        0x70e12083d30259aL
        -0x3941a1bbc63537eaL    # -6.159408502329395E32
        0x70f4ac25a516dd80L    # 1.3145846468362993E236
    .end array-data
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzfqs;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzc:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzfqs;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfqt;
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqx;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzb:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzc:Z

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfqx;-><init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzfqw;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zza:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v2, v2, [J

    .line 35
    .line 36
    fill-array-data v2, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    .line 50
    .line 51
    and-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    const/4 v3, 0x4

    .line 58
    new-array v3, v3, [J

    .line 59
    .line 60
    fill-array-data v3, :array_1

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/zzfqv;->zzd:B

    .line 74
    .line 75
    and-int/lit8 v2, v2, 0x2

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    new-array v3, v0, [J

    .line 82
    .line 83
    fill-array-data v3, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v0, v0, [J

    .line 105
    .line 106
    fill-array-data v0, :array_3

    .line 107
    .line 108
    .line 109
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v2

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        0x3c2694afe1948225L    # 6.120540471391551E-19
        0x76aa7cde5c5be859L    # 4.1703411797434015E263
        0x71c1a6b5e087e3fL
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
        -0x4cfae1c6a399441fL    # -6.416895858648537E-63
        0x2211e671983d7835L    # 1.43350517577482E-144
        0xe88f64ef837ebdeL
        0x4830099d57ef1e86L    # 5.457297896818483E39
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
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 8
        -0x67546615e8dc5d0fL    # -7.743568637676634E-190
        0x7660c3db3580b47fL    # 1.6497245843189275E262
        0x3e71dd01bcad43abL    # 6.654600707740905E-8
        0x5d8e2933987c6f49L    # 4.5974063360921935E142
        -0x2cd20df65cf241eeL    # -4.8799982741485157E92
    .end array-data

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
    :array_3
    .array-data 8
        0x14c6af785750ad69L    # 1.380066549377058E-208
        0x1b8e1e284a89379bL    # 5.945875664254185E-176
        0x1e9eb06f37e25cbeL    # 3.410734063605407E-161
        0x2bf8e6c113f30e80L    # 7.286263685301453E-97
        0x102468d0e6102965L    # 6.57301117525499E-231
    .end array-data
.end method
