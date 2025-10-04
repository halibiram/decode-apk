.class public final Lcom/google/android/gms/ads/internal/util/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    sget v2, Lcom/google/android/gms/internal/ads/zzceb;->zza:I

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhw;->zza:Lcom/google/android/gms/internal/ads/zzbhm;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbhm;->zze()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v4, v1, [J

    .line 27
    .line 28
    fill-array-data v4, :array_0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzl()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzc;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzc;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v2, v0, [J

    .line 63
    .line 64
    fill-array-data v2, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zzi(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v0, v0, [J

    .line 80
    .line 81
    fill-array-data v0, :array_2

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzces;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception p0

    .line 96
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v1, v1, [J

    .line 99
    .line 100
    fill-array-data v1, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 8
        0x524f4fc6a1aedea1L    # 3.114399699379164E88
        0x19ab9d24a5db7c6bL    # 5.077144062631289E-185
        -0x297f4f1f08f180d5L    # -4.899920772397596E108
        -0x33e04d9eb6ee39dL    # -8.971826004569311E292
        0x3add904b8855da84L    # 3.821012533365256E-25
    .end array-data

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
    :array_1
    .array-data 8
        -0x697de0c900271a4L    # -6.68421670639539E276
        0x1114fa4567271896L    # 2.213805767801036E-226
        0x56357d2f97d33a22L
        -0x75fcfd076fc59ce0L
        0x1da0827f41e645c3L    # 5.599548463305722E-166
        -0x503bb23c471f3b55L    # -1.369896566012525E-78
    .end array-data

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
    :array_2
    .array-data 8
        0x7de92274815c46a3L    # 3.287589083198368E298
        0x40ec25f750cebb66L    # 57647.72861420251
        0xd76f43c9f22d8fcL
        0x6a4269df2b8af7aaL    # 7.216471151448149E203
        -0x36a42883dd83efc0L    # -2.483566010748319E45
        -0x5391646cb2a48fe3L    # -1.1463633772343818E-94
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
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 8
        0xf0abe0fe711b71dL    # 3.285445615511992E-236
        -0xc5af099a16112fcL    # -1.178007379048128E249
        -0xe58b7ac6b2bc495L    # -3.0321917005921215E239
        0x14b5a26f409741b9L    # 6.580669543273837E-209
        0x69342d4050b50c75L    # 6.032934916811115E198
    .end array-data
.end method
