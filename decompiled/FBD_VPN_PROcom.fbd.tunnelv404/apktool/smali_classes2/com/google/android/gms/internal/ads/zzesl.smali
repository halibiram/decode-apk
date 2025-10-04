.class public final Lcom/google/android/gms/internal/ads/zzesl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/client/zzw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcei;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzw;Lcom/google/android/gms/internal/ads/zzcei;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesl;->zza:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesl;->zzb:Lcom/google/android/gms/internal/ads/zzcei;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzesl;->zzc:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    check-cast p1, Landroid/os/Bundle;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzfh:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzesl;->zzb:Lcom/google/android/gms/internal/ads/zzcei;

    .line 22
    .line 23
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcei;->zzc:I

    .line 24
    .line 25
    if-lt v3, v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    new-array v3, v0, [J

    .line 30
    .line 31
    fill-array-data v3, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v1, [J

    .line 44
    .line 45
    fill-array-data v4, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzfi:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzesl;->zzc:Z

    .line 77
    .line 78
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    fill-array-data v0, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesl;->zza:Lcom/google/android/gms/ads/internal/client/zzw;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzw;->zza:I

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    if-ne v0, v2, :cond_2

    .line 103
    .line 104
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v2, v1, [J

    .line 107
    .line 108
    fill-array-data v2, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v1, v1, [J

    .line 121
    .line 122
    fill-array-data v1, :array_4

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_2
    if-ne v0, v1, :cond_3

    .line 137
    .line 138
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v2, v1, [J

    .line 141
    .line 142
    fill-array-data v2, :array_5

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v1, v1, [J

    .line 155
    .line 156
    fill-array-data v1, :array_6

    .line 157
    .line 158
    .line 159
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    return-void

    .line 170
    nop

    .line 171
    :array_0
    .array-data 8
        0x5012dd2bea4eb865L    # 5.460740843408297E77
        -0x48cd676da6cceaedL    # -8.33872721936454E-43
        0x414c061b1bad628dL    # 3673142.216228789
    .end array-data

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
        -0x76a03cd84629ecd3L
        0x13ac8370f3f230c2L
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
        -0x42c9d6b352e47536L    # -7.873284685894416E-14
        0x5e63d0998b8689e6L    # 4.948556570596472E146
        0x7a6a4af41e122e5bL    # 4.7726830431748097E281
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
    .line 212
    .line 213
    .line 214
    .line 215
    :array_3
    .array-data 8
        0x29be05708750e225L
        -0x63f77cba32f77ce9L
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
    :array_4
    .array-data 8
        0x89d4a2d24b1db97L
        0x43f84dd8d4a1eee8L    # 2.8020707806055137E19
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
    :array_5
    .array-data 8
        -0x40090a38a2893d01L    # -1.4350045824941728
        0x1ab8d814599f84f5L    # 5.987219497150934E-180
    .end array-data

    :array_6
    .array-data 8
        -0x648f5a485b99a0f4L
        -0x355f2cf58b440523L    # -3.147373622576856E51
    .end array-data
.end method
