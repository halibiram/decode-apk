.class public final Lcom/google/android/play/core/appupdate/zzc;
.super Lcom/google/android/play/core/appupdate/internal/zzl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/content/IntentFilter;

    .line 22
    .line 23
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v3, 0x9

    .line 26
    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/appupdate/internal/zzl;-><init>(Lcom/google/android/play/core/appupdate/internal/zzm;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x485d07e6caa2a35L    # -6.230141873556138E286
        0x288c6939e861b729L
        -0x4f333cce3a84d25aL    # -1.2717957622273415E-73
        0x5456d196d7726de0L    # 1.9496185708890905E98
        0x46017437096e1f5L
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        -0x15638d59b3f6bed2L    # -3.567685057163389E205
        -0x421bb4903bc3295L    # -4.608987962751305E288
        0x57660347f7c37f6L
        0x36fb146e602e5d96L    # 7.589379009132384E-44
        -0x46065a40f975305cL    # -2.0232267522328854E-29
        0x7d90cb486dbac1c5L    # 6.864545729993006E296
        0x7883e9fedb6e312fL    # 3.3665539516086746E272
        -0x51d44173fdfa21deL    # -2.789365328205108E-86
        -0x6744fa6899bfff52L    # -1.516204151182263E-189
    .end array-data
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    new-array v4, v3, [J

    .line 7
    .line 8
    fill-array-data v4, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v3, v3, [J

    .line 37
    .line 38
    fill-array-data v3, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p2, v0, v1

    .line 55
    .line 56
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    const/16 v1, 0xb

    .line 59
    .line 60
    new-array v1, v1, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2, v0}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 77
    .line 78
    new-array v2, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/4 v4, 0x6

    .line 83
    new-array v4, v4, [J

    .line 84
    .line 85
    fill-array-data v4, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const/4 v5, 0x2

    .line 133
    new-array v5, v5, [Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v2, v5, v1

    .line 136
    .line 137
    aput-object v4, v5, v0

    .line 138
    .line 139
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    const/4 v4, 0x4

    .line 142
    new-array v4, v4, [J

    .line 143
    .line 144
    fill-array-data v4, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v3, v2, v5}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 159
    .line 160
    invoke-static {p2, p1}, Lcom/google/android/play/core/install/InstallState;->zzb(Landroid/content/Intent;Lcom/google/android/play/core/appupdate/internal/zzm;)Lcom/google/android/play/core/install/InstallState;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzl;->zza:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 165
    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object p1, v0, v1

    .line 169
    .line 170
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    const/4 v2, 0x7

    .line 173
    new-array v2, v2, [J

    .line 174
    .line 175
    fill-array-data v2, :array_5

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p2, v1, v0}, Lcom/google/android/play/core/appupdate/internal/zzm;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/appupdate/internal/zzl;->zzd(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :array_0
    .array-data 8
        0x47a67e48a0cd758eL    # 1.4949359192513772E37
        -0x7f6996f39e752e56L    # -7.97834771146327E-306
        0x2e4a9522d67c588aL    # 1.0690255707766694E-85
    .end array-data

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
    .line 208
    .line 209
    :array_1
    .array-data 8
        -0x5abf97cf0051891dL    # -2.958700363131889E-129
        0x619a397f88d2be10L    # 1.4747778114463104E162
        0x43524a9682795653L    # 2.0594239501326668E16
    .end array-data

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
    .line 224
    .line 225
    :array_2
    .array-data 8
        -0x624b7b2224115e6eL
        -0x29643e2026eb923fL    # -1.6297313115846669E109
        0x5eadc48c933aef25L    # 1.1894719086412662E148
        -0x343619a5c89a93f4L    # -1.2701231874112689E57
        0x39e56b07d5164f0cL    # 8.447946247432377E-30
        -0x171e3c7812d6a556L    # -1.6598271978738505E197
        -0x3bb74a26b9027a04L    # -9.116508808290579E20
        0x3463c292c406954fL    # 2.518366316206156E-56
        0x4489a99ad344af91L    # 1.5148477269552602E22
        -0x77f7fd17fccde4fbL    # -5.681336667901371E-270
        -0x69d34e46a9e72509L    # -7.321626286581432E-202
    .end array-data

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
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    :array_3
    .array-data 8
        -0x4e942a72bda6d62eL    # -1.260287310601637E-70
        -0x7eda8fc8904becfL
        0x123c073cf0eca9a6L    # 7.753888295000047E-221
        0x5daa3ff7fe2d9f55L    # 1.6004983991014142E143
        0xc7740c04e926fc8L
        0x7600bca213141f8cL    # 2.573356410452325E260
    .end array-data

    :array_4
    .array-data 8
        0x20bfde228249316bL    # 6.084614907322998E-151
        0x5b05fa737e5d8d92L    # 3.0469317540144797E130
        -0x2ef038e188b36d45L    # -3.014343763565805E82
        -0x3cd3ebb4e65ed46cL    # -3.95180606649697E15
    .end array-data

    :array_5
    .array-data 8
        -0x6579480c72e0074L
        -0x61c277354d6fd814L
        -0x6a678e960e7deeb8L
        -0x67aa76e7699f7b5dL    # -1.888071164448843E-191
        -0x57a6c8d69e5bcf9aL
        -0x28d55f8e1ac4caabL    # -8.004355560136916E111
        -0x739f33297e10a846L    # -4.692958410254544E-249
    .end array-data
.end method
