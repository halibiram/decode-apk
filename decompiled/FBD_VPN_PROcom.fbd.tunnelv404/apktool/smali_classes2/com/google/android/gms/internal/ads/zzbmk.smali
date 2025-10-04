.class final Lcom/google/android/gms/internal/ads/zzbmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v2, v1, [J

    .line 11
    .line 12
    fill-array-data v2, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/view/WindowManager;

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 29
    .line 30
    .line 31
    move-object v0, p1

    .line 32
    check-cast v0, Landroid/view/View;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzt;->zzs(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    .line 40
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 41
    .line 42
    new-array v1, v1, [I

    .line 43
    .line 44
    new-instance v3, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    aget v0, v1, v0

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v5, 0x3

    .line 62
    new-array v6, v5, [J

    .line 63
    .line 64
    fill-array-data v6, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    aget v0, v1, v0

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v4, v5, [J

    .line 87
    .line 88
    fill-array-data v4, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    new-array v4, v2, [J

    .line 109
    .line 110
    fill-array-data v4, :array_3

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v1, v2, [J

    .line 130
    .line 131
    fill-array-data v1, :array_4

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    new-array v0, v5, [J

    .line 147
    .line 148
    fill-array-data v0, :array_5

    .line 149
    .line 150
    .line 151
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-interface {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbqa;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array p2, v2, [J

    .line 164
    .line 165
    fill-array-data p2, :array_6

    .line 166
    .line 167
    .line 168
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :array_0
    .array-data 8
        0x6143a718bcf3ac86L    # 3.453746039532062E160
        -0x63ed37d5187df699L    # -1.898463002953208E-173
    .end array-data

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
    :array_1
    .array-data 8
        0x6556ccd0a6c4c818L
        -0x15ef0b25404da8dfL    # -8.306773282458193E202
        0x22eb3dd9d2e3b6baL    # 1.787165304768083E-140
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_2
    .array-data 8
        -0x974f6bfb7086da6L
        -0x7f3def5a7e1bce1dL    # -5.145090030718131E-305
        -0x71b060296639d9a8L    # -9.48539287514622E-240
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
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
    :array_3
    .array-data 8
        0x18445851f38b5ba1L    # 8.918472450779088E-192
        -0x5570e151a1f64b2dL
        -0x68aa4e7ed66ce1bdL    # -2.902084153154343E-196
        0x7c2f9e2989e3572eL    # 1.5406279860430618E290
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
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_4
    .array-data 8
        0x1e0b2aa2810ed507L    # 5.89694034982595E-164
        0x72d0285780b1e4c0L    # 1.1032474748635812E245
        0xf73fcf5d197b87fL
        -0x773d93c3f8df29b8L    # -1.785456485279285E-266
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_5
    .array-data 8
        -0x341901cd504238e6L    # -4.510286089305781E57
        -0x171db9db8ba3e2f1L    # -1.7074997522485662E197
        -0x7da4669532fbdabL    # -5.73858755526424E270
    .end array-data

    :array_6
    .array-data 8
        0x1022c6e061e8178aL    # 6.047227854399055E-231
        0x740a562f8397040fL    # 9.42816433819602E250
        -0x29f996d843055b3bL    # -2.569952651099371E106
        -0x2b8864dda64a44cL
    .end array-data
.end method
