.class public final Lcom/google/android/gms/internal/ads/zzakk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzam;)I
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x4

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    sparse-switch v4, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v2, v3, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :sswitch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v4, v3, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v2, v2, [J

    .line 68
    .line 69
    fill-array-data v2, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :sswitch_3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v0, v0, [J

    .line 91
    .line 92
    fill-array-data v0, :array_3

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    goto :goto_1

    .line 110
    :sswitch_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v2, v1, [J

    .line 113
    .line 114
    fill-array-data v2, :array_4

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    const/4 v0, 0x1

    .line 131
    goto :goto_1

    .line 132
    :sswitch_5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 133
    .line 134
    new-array v2, v3, [J

    .line 135
    .line 136
    fill-array-data v2, :array_5

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    .line 152
    const/4 v0, 0x2

    .line 153
    goto :goto_1

    .line 154
    :sswitch_6
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array v2, v2, [J

    .line 157
    .line 158
    fill-array-data v2, :array_6

    .line 159
    .line 160
    .line 161
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :sswitch_7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v2, v3, [J

    .line 178
    .line 179
    fill-array-data v2, :array_7

    .line 180
    .line 181
    .line 182
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    .line 195
    const/4 v0, 0x6

    .line 196
    goto :goto_1

    .line 197
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 198
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :pswitch_0
    return v5

    .line 203
    :pswitch_1
    return v1

    .line 204
    :pswitch_2
    return v5

    .line 205
    :pswitch_3
    return v1

    .line 206
    :pswitch_4
    return v5

    .line 207
    :cond_1
    :goto_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 208
    .line 209
    new-array v1, v3, [J

    .line 210
    .line 211
    fill-array-data v1, :array_8

    .line 212
    .line 213
    .line 214
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v1

    .line 235
    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_7
        -0x4a6813e3 -> :sswitch_6
        -0x3d28a9ba -> :sswitch_5
        -0x3be2f26c -> :sswitch_4
        0x2935f49f -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    .line 236
    .line 237
    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x14605ef1d2365b07L
        -0x65ee1591a6c07a96L
        0x2832f86aab4b21a4L    # 4.814571508611072E-115
        0x665844f49a5114dfL    # 1.0312302196689197E185
    .end array-data

    :array_1
    .array-data 8
        -0x9f40bef5e97dae8L
        -0x357ba468976b2ebbL    # -9.520936777473824E50
        0x71010b1c6a624453L    # 2.167618804339064E236
        -0x5b5d2f4b960079f6L
    .end array-data

    :array_2
    .array-data 8
        0x51eb04fac41fa4a1L    # 4.199187815584717E86
        0x1fd2fb8af3d8fa64L
        0x2299d9680c49b3b6L    # 5.29943902498859E-142
    .end array-data

    :array_3
    .array-data 8
        -0x37dd4d659442f0fbL    # -3.18124349336971E39
        0x3dba441a50dbbc85L    # 2.3888811982077255E-11
        -0x6a25f17cceb9c925L
        0x4eb5f10e2bb14096L    # 1.5143551277547594E71
        0x31fbe44591cfa05dL    # 6.466000955930404E-68
    .end array-data

    :array_4
    .array-data 8
        -0x70af69f75843fa2dL    # -6.520589696704005E-235
        0x19f67d1bc6c31bf4L    # 1.323143972740735E-183
    .end array-data

    :array_5
    .array-data 8
        -0x7a1ef000d5baaeedL
        -0x1f2b8fd0f9a979acL    # -2.8060845590346415E158
        -0x2fc0a3328b5f5960L    # -3.6315305570084575E78
        -0x6eaa55c2283e54d8L    # -3.658154709668628E-225
    .end array-data

    :array_6
    .array-data 8
        -0x6a42c2c5319661b9L    # -5.828651858930257E-204
        0x7aa246e83ffe593cL    # 5.308238341484799E282
        -0xf4e7edfd975d1e8L    # -6.957028549350573E234
    .end array-data

    :array_7
    .array-data 8
        0x20af24dbca98172L    # 8.04741979408861E-299
        -0x7781b850f0bf9fd3L    # -9.170646497377692E-268
        -0x31cf55132e414d70L    # -4.493596580740258E68
        -0x64b2244c2353c390L
    .end array-data

    :array_8
    .array-data 8
        0x5c527528d893e95aL    # 5.366295223190618E136
        -0x5df82bf826bd042aL
        0x451c2fa2ae61523aL    # 8.518718777964819E24
        0x14a060be4063b9b9L    # 2.49087146254412E-209
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzakr;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x4

    .line 5
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v4, :cond_1

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    sparse-switch v5, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v1, v3, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x7

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :sswitch_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v1, v3, [J

    .line 44
    .line 45
    fill-array-data v1, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_2
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v1, v2, [J

    .line 67
    .line 68
    fill-array-data v1, :array_2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :sswitch_3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v1, v1, [J

    .line 90
    .line 91
    fill-array-data v1, :array_3

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    const/4 v0, 0x4

    .line 108
    goto :goto_1

    .line 109
    :sswitch_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 110
    .line 111
    new-array v0, v0, [J

    .line 112
    .line 113
    fill-array-data v0, :array_4

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_1

    .line 131
    :sswitch_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 132
    .line 133
    new-array v2, v3, [J

    .line 134
    .line 135
    fill-array-data v2, :array_5

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :sswitch_6
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 153
    .line 154
    new-array v2, v2, [J

    .line 155
    .line 156
    fill-array-data v2, :array_6

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    .line 172
    const/4 v0, 0x5

    .line 173
    goto :goto_1

    .line 174
    :sswitch_7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    new-array v1, v3, [J

    .line 177
    .line 178
    fill-array-data v1, :array_7

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    .line 194
    const/4 v0, 0x6

    .line 195
    goto :goto_1

    .line 196
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 197
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalr;

    .line 202
    .line 203
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalr;-><init>()V

    .line 204
    .line 205
    .line 206
    return-object p1

    .line 207
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzald;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    .line 210
    .line 211
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzald;-><init>(Ljava/util/List;)V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalf;

    .line 216
    .line 217
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalf;-><init>()V

    .line 218
    .line 219
    .line 220
    return-object p1

    .line 221
    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalw;

    .line 222
    .line 223
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    .line 224
    .line 225
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzalw;-><init>(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :pswitch_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzall;

    .line 230
    .line 231
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzall;-><init>()V

    .line 232
    .line 233
    .line 234
    return-object p1

    .line 235
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzalx;

    .line 236
    .line 237
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalx;-><init>()V

    .line 238
    .line 239
    .line 240
    return-object p1

    .line 241
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzami;

    .line 242
    .line 243
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzami;-><init>()V

    .line 244
    .line 245
    .line 246
    return-object p1

    .line 247
    :pswitch_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalh;

    .line 248
    .line 249
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzo:Ljava/util/List;

    .line 250
    .line 251
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    return-object v0

    .line 255
    :cond_1
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 256
    .line 257
    new-array v0, v3, [J

    .line 258
    .line 259
    fill-array-data v0, :array_8

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 274
    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v1

    .line 283
    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_7
        -0x4a6813e3 -> :sswitch_6
        -0x3d28a9ba -> :sswitch_5
        -0x3be2f26c -> :sswitch_4
        0x2935f49f -> :sswitch_3
        0x310bebca -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_0
    .array-data 8
        -0xdb30bc16f74d83dL    # -3.861324421324717E242
        0x3bd269fe440ab3ecL    # 1.5597295216139166E-20
        -0x726bb1353249c5e7L
        0x33d8bce5e6e67861L    # 6.15776896036625E-59
    .end array-data

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
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_1
    .array-data 8
        0xaaccb2cdbb56beeL
        -0x3d84579edb31fd0fL    # -1.9006248911041838E12
        -0x610e39933dcad129L
        0x2f879b9010d3e24cL    # 9.955067947531901E-80
    .end array-data

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
    :array_2
    .array-data 8
        0x60a9e5b3aecf97a3L    # 4.444488476115721E157
        0x7efc5d1171fd1f1dL    # 4.862685634597131E303
        -0x26c7b77569f4c04fL    # -6.2705715423028935E121
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
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
    :array_3
    .array-data 8
        0x6c255d63b39f6da0L    # 8.99054120495796E212
        -0x142a8c5142450377L    # -2.8209957726965607E211
        -0x50df2f8c983b7b19L    # -1.1078704197469E-81
        -0x6b4c84e5ff1bb3e5L    # -5.925585466622136E-209
        -0x1d01d5ca25d42c7fL    # -7.115071224672307E168
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
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
    .line 416
    .line 417
    :array_4
    .array-data 8
        -0x4a91c1cfe76f5240L    # -2.5260066565870654E-51
        0x7fbb8e4a32f9b989L    # 1.9350354640624712E307
    .end array-data

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
    .line 428
    .line 429
    :array_5
    .array-data 8
        0x20b583edb9cb3b25L    # 4.108000834304218E-151
        -0x7830b7b1b5ab82b3L
        -0x3a324730712c087fL    # -1.839697560040306E28
        -0x6351d7a1b19088dcL
    .end array-data

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
    :array_6
    .array-data 8
        -0x41a4123c708b9e2eL    # -2.6010689571899094E-8
        -0x451116c08c2bb36L    # -5.88752968209852E287
        -0x70628505b7c00790L
    .end array-data

    .line 450
    .line 451
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
    .line 464
    .line 465
    :array_7
    .array-data 8
        0x485500d69e0f7192L    # 2.858817625084689E40
        0x39b83fe354f71176L    # 1.1955957419904623E-30
        0x2a54dee9c7408e74L    # 9.099963927903649E-105
        -0x46aa6a11836bba30L
    .end array-data

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
    :array_8
    .array-data 8
        0x10f05583a0a964c8L    # 4.309400776444391E-227
        0xe21cd641f9579ffL    # 1.334903305223074E-240
        -0x4b3d085930bd53b3L    # -1.547099857461285E-54
        -0x3e928c2fa98ec496L    # -1.5441538701322276E7
    .end array-data
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzam;)Z
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x3

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
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v3, v0, [J

    .line 49
    .line 50
    fill-array-data v3, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v3, v0, [J

    .line 69
    .line 70
    fill-array-data v3, :array_3

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    const/4 v3, 0x5

    .line 89
    new-array v3, v3, [J

    .line 90
    .line 91
    fill-array-data v3, :array_4

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_1

    .line 106
    .line 107
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    new-array v2, v2, [J

    .line 110
    .line 111
    fill-array-data v2, :array_5

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_1

    .line 126
    .line 127
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 128
    .line 129
    new-array v2, v0, [J

    .line 130
    .line 131
    fill-array-data v2, :array_6

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {p1, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_1

    .line 146
    .line 147
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 148
    .line 149
    new-array v0, v0, [J

    .line 150
    .line 151
    fill-array-data v0, :array_7

    .line 152
    .line 153
    .line 154
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {p1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_0

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_0
    const/4 p1, 0x0

    .line 169
    return p1

    .line 170
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 171
    return p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x1ae41ad3ab0e171dL    # -1.1303867055432187E179
        -0x3e26ff8ae9173362L    # -1.6778414996374888E9
        -0xc095e75d9a8740eL    # -4.050796516458055E250
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
    :array_1
    .array-data 8
        -0x79a0c2741bc847faL
        0x20d68cf060918883L
    .end array-data

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
    .line 200
    .line 201
    :array_2
    .array-data 8
        0x3d746b409203c6aeL    # 1.1606831558115873E-12
        -0x55d47b92a94c5138L
        0x1db3206aa1dafc3bL
        -0x169bee6f8e715233L    # -4.800477538535456E199
    .end array-data

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
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_3
    .array-data 8
        -0x26cffd560551a769L    # -4.13428693989535E121
        -0x5e78dee0455afb5eL
        -0x52a7cbfe71493a9dL    # -2.970387986072209E-90
        -0x7f88e106ffe8e1b0L    # -2.0578361452667E-306
    .end array-data

    .line 222
    .line 223
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
    :array_4
    .array-data 8
        -0x5bbc9f58297284d0L    # -5.332011176176046E-134
        0x5fa89fc4349a4b5cL    # 6.448340568328941E152
        0x36a9e117070dedc8L    # 2.266535247778084E-45
        0x33700e032b5843efL    # 6.244304158643348E-61
        -0x3673a8f7b61efcd7L    # -2.0224078556666577E46
    .end array-data

    :array_5
    .array-data 8
        -0x20c3e14d1c079905L    # -5.752967043872023E150
        0x3a5d68e1d4d56ebdL    # 1.484810197794121E-27
        0x23b69d6bbb659ec8L    # 1.215394120575626E-136
    .end array-data

    :array_6
    .array-data 8
        -0x7fd88715cde033adL    # -6.528456689599077E-308
        0x5b6c73cd0cfdc2b1L    # 2.5244467792267312E132
        0x1560299cc03ee56L
        -0x65ae7965c44175a3L    # -6.599336199472143E-182
    .end array-data

    :array_7
    .array-data 8
        -0x178b85c2b98fb8a5L    # -1.494837860335917E195
        -0x6ebb9d9dfcc3967L
        -0x4125db1f0e9b15d1L    # -6.233229006997453E-6
        -0x3dada19292302686L    # -3.155745646713981E11
    .end array-data
.end method
