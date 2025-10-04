.class public final Lcom/google/android/gms/internal/ads/zzetg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:F

.field public final zzj:Z


# direct methods
.method public constructor <init>(IZZIIIIIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzetg;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzi:F

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzj:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v3, v2, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zza:I

    .line 20
    .line 21
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v3, v2, [J

    .line 27
    .line 28
    fill-array-data v3, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzb:Z

    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v3, v2, [J

    .line 46
    .line 47
    fill-array-data v3, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzc:Z

    .line 58
    .line 59
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v3, v2, [J

    .line 65
    .line 66
    fill-array-data v3, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzd:I

    .line 77
    .line 78
    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzkv:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zze:I

    .line 100
    .line 101
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v4, v2, [J

    .line 104
    .line 105
    fill-array-data v4, :array_4

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzf:I

    .line 119
    .line 120
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 121
    .line 122
    new-array v4, v2, [J

    .line 123
    .line 124
    fill-array-data v4, :array_5

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzg:I

    .line 138
    .line 139
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v4, v2, [J

    .line 142
    .line 143
    fill-array-data v4, :array_6

    .line 144
    .line 145
    .line 146
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzh:I

    .line 157
    .line 158
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 159
    .line 160
    new-array v2, v2, [J

    .line 161
    .line 162
    fill-array-data v2, :array_7

    .line 163
    .line 164
    .line 165
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzi:F

    .line 176
    .line 177
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 178
    .line 179
    new-array v3, v0, [J

    .line 180
    .line 181
    fill-array-data v3, :array_8

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 192
    .line 193
    .line 194
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzj:Z

    .line 195
    .line 196
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 197
    .line 198
    new-array v0, v0, [J

    .line 199
    .line 200
    fill-array-data v0, :array_9

    .line 201
    .line 202
    .line 203
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    nop

    .line 215
    :array_0
    .array-data 8
        0x477eb988be834a77L    # 2.552511768379122E36
        0x20899822d1243d15L    # 6.10850785413861E-152
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_1
    .array-data 8
        -0x3a1a9ab60720ffcL
        -0x57ad38bc2393f5d3L    # -1.906337371091763E-114
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        0x11e5fead4238984aL
        0x3abecdc383cb9e90L    # 9.95323314278337E-26
    .end array-data

    :array_3
    .array-data 8
        -0x74a300f91edc5fdcL    # -6.179662198999722E-254
        0x712b7db1802ffd3dL    # 1.3985467229356844E237
    .end array-data

    :array_4
    .array-data 8
        0x1b90e5c63f0ca11bL    # 6.671852580764579E-176
        -0x10cf77e8cb0d4aa8L    # -3.916261973965124E227
    .end array-data

    :array_5
    .array-data 8
        -0x20cd3644b1b17b12L    # -3.843781849165084E150
        0x2fbc8505c3ef3eacL    # 9.621103075511438E-79
    .end array-data

    :array_6
    .array-data 8
        -0x2108620d90a96dffL    # -3.019828210892838E149
        -0x64e6d37456eec83fL    # -3.882709584729624E-178
    .end array-data

    :array_7
    .array-data 8
        0x47ebeb11767f63cfL    # 2.9687759869808087E38
        -0x66b401c8ca5e1626L    # -8.041972984441673E-187
    .end array-data

    :array_8
    .array-data 8
        -0x214ff22c9cdef87aL    # -1.282984251885833E148
        -0x60d94ed56ab7fd0dL
        0x134715733a7af6caL    # 8.370284563029765E-216
        -0x67fb841ee52dc9fL
    .end array-data

    :array_9
    .array-data 8
        0x748bec21c9cf5660L    # 2.558933314161105E253
        -0xf61eac8045b0e10L    # -2.9890703347390723E234
        0x488e09b9a86bf8d5L    # 3.2708473761626508E41
        -0x13b21d240e80c631L    # -5.0305698640093514E213
    .end array-data
.end method
