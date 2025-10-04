.class public final Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;
.super Ljava/lang/IllegalStateException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static of(Lcom/google/android/gms/tasks/Task;)Ljava/lang/IllegalStateException;
    .locals 4
    .param p0    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "*>;)",
            "Ljava/lang/IllegalStateException;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 67
    .line 68
    new-array v0, v0, [J

    .line 69
    .line 70
    fill-array-data v0, :array_2

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 92
    .line 93
    new-array v0, v1, [J

    .line 94
    .line 95
    fill-array-data v0, :array_3

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v0, v1, [J

    .line 109
    .line 110
    fill-array-data v0, :array_4

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v1, v1, [J

    .line 120
    .line 121
    fill-array-data v1, :array_5

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :array_0
    .array-data 8
        -0x7d42944875b0ed65L
        0x653b1dc5165cf27aL    # 4.395291467507793E179
        0x51b3a0095d360ab2L    # 3.8125154588011626E85
        0x77854fd2e66d01a3L    # 5.497516425029973E267
        0x45392171f5355708L    # 3.038108573550516E25
        -0x4b3fb3d4e2440cffL    # -1.329329553139867E-54
        0x3c9aea8861707a65L    # 9.338413203535467E-17
        -0x606af7a72c102ffdL
        -0x6ecd0e59901b8897L    # -7.996753424239012E-226
        -0x6f2051dcfe1db1feL
        -0x318b1ca13804c600L    # -9.010301028264285E69
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
    :array_1
    .array-data 8
        -0x23360988c128d38bL    # -9.66181745010179E138
        -0x58acc2acee331502L    # -2.980276843654833E-119
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
        0x3b83be3c4b96c631L    # 5.225957050457371E-22
        0x11618e8e04b11e7aL    # 5.928979631393616E-225
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
    :array_3
    .array-data 8
        0x487e21889a48a35L    # 7.84235357001993E-287
        0x643500283d66d77eL    # 5.194090294618928E174
        0x754bb0e60a49cf9cL    # 1.0394536229649199E257
    .end array-data

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
    .line 226
    .line 227
    .line 228
    .line 229
    :array_4
    .array-data 8
        0x2b83ee22ac27a749L    # 4.555997246734656E-99
        0x1311b52ff11b39e2L    # 8.02614175960832E-217
        -0x5727c4d3213fe237L    # -6.297319220735341E-112
    .end array-data

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
        -0x6af7623fd5f1943fL    # -2.3960409995771063E-207
        0x662af7219c798061L    # 1.432232538895736E184
        -0x7772b43ba37b9e2dL
    .end array-data
.end method
