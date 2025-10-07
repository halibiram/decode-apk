.class public final Lcom/google/android/gms/internal/ads/zzpx;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Z

.field public final zzc:Lcom/google/android/gms/internal/ads/zzam;


# direct methods
.method public constructor <init>(IIIILcom/google/android/gms/internal/ads/zzam;ZLjava/lang/Exception;)V
    .locals 5
    .param p7    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    new-array v3, v3, [J

    .line 14
    .line 15
    fill-array-data v3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v4, v3, [J

    .line 35
    .line 36
    fill-array-data v4, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v2, v3, [J

    .line 55
    .line 56
    fill-array-data v2, :array_2

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array p3, v3, [J

    .line 75
    .line 76
    fill-array-data p3, :array_3

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    new-array p3, v3, [J

    .line 95
    .line 96
    fill-array-data p3, :array_4

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    if-eq p2, p6, :cond_0

    .line 114
    .line 115
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 116
    .line 117
    new-array p2, p2, [J

    .line 118
    .line 119
    const-wide v2, -0x105ecb821a01e71L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const/4 p4, 0x0

    .line 125
    aput-wide v2, p2, p4

    .line 126
    .line 127
    invoke-direct {p3, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 p3, 0x3

    .line 138
    new-array p3, p3, [J

    .line 139
    .line 140
    fill-array-data p3, :array_5

    .line 141
    .line 142
    .line 143
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p0, p2, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:I

    .line 161
    .line 162
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:Z

    .line 163
    .line 164
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:Lcom/google/android/gms/internal/ads/zzam;

    .line 165
    .line 166
    return-void

    .line 167
    :array_0
    .array-data 8
        -0x2925718dda35866eL    # -2.4947561980214923E110
        -0x59defd42dbaee5cL
        0xbb957f9c5b14eaL
        0x2c7b61839f1e3476L    # 2.0510172899047263E-94
    .end array-data

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
    :array_1
    .array-data 8
        0x454f7ee66f25d62bL    # 7.615193869015005E25
        -0x30f83e09ad29110bL    # -5.247020050717492E72
    .end array-data

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
    .line 198
    .line 199
    :array_2
    .array-data 8
        0x426af864befc3f17L    # 9.266920140499716E11
        -0x56b8acf825932687L    # -7.75891382588172E-110
    .end array-data

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_3
    .array-data 8
        -0x338d16a54b5934e3L    # -1.8993545998478392E60
        0x4a17e9a6f44dfc4cL    # 8.737113928462637E48
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    :array_4
    .array-data 8
        -0x33d5d8344489c142L    # -8.209021800627526E58
        -0x6eefc1c1663a27a0L    # -1.714167786440427E-226
    .end array-data

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_5
    .array-data 8
        -0x29f8d623ba0137b1L    # -2.65627474983059E106
        -0x68eecf14ae9ccef0L
        0x4331e3a8a09d5b82L    # 5.03538799275917E15
    .end array-data
.end method
