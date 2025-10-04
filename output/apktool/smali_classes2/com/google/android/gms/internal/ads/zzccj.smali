.class public final Lcom/google/android/gms/internal/ads/zzccj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    new-array v3, v1, [J

    .line 26
    .line 27
    fill-array-data v3, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_0
    if-eq v0, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v3, v1, [J

    .line 61
    .line 62
    fill-array-data v3, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array p2, v1, [J

    .line 81
    .line 82
    fill-array-data p2, :array_3

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        -0x492f925951abc16cL    # -1.151049301656976E-44
        -0x6b596a2102ae702L
    .end array-data

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
        -0x1b92b6d447c9090dL    # -5.794619558880045E175
        0x17b0671d42e6fabbL
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
    :array_2
    .array-data 8
        0x46606baad1f1d050L    # 1.0407776040829748E31
        0x744594658d5c261aL    # 1.2360364528266449E252
    .end array-data

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
    :array_3
    .array-data 8
        0x2433dc8de48f52feL
        0x1bd76232ba237f66L
    .end array-data
.end method

.method public static zzb(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zzp(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzae:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbgc;->zzad:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcch;->zzj(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 89
    .line 90
    new-array v4, v0, [J

    .line 91
    .line 92
    fill-array-data v4, :array_0

    .line 93
    .line 94
    .line 95
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_3

    .line 111
    .line 112
    :goto_0
    return-object v3

    .line 113
    :cond_3
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_1

    .line 122
    .line 123
    .line 124
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcch;->zzj(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :array_0
    .array-data 8
        -0x155c8eb8067b98a7L    # -4.876623912695381E205
        0x4691bae23106b4f0L    # 8.990185109274706E31
    .end array-data

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
    :array_1
    .array-data 8
        0x693d95396f8173fdL    # 8.845410922469856E198
        -0xd5e5a56add86a6fL
    .end array-data
.end method

.method public static zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzal:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    if-eqz p2, :cond_5

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zzp(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzae:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/String;

    .line 61
    .line 62
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzad:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzi(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcch;->zzj(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzj(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcch;->zzk(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v2, v0, [J

    .line 141
    .line 142
    fill-array-data v2, :array_0

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_5

    .line 157
    .line 158
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzi(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcch;->zzj(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v0, v0, [J

    .line 182
    .line 183
    fill-array-data v0, :array_1

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzj(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_5

    .line 211
    .line 212
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcch;->zzk(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 224
    .line 225
    new-array v0, v0, [J

    .line 226
    .line 227
    fill-array-data v0, :array_2

    .line 228
    .line 229
    .line 230
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :cond_5
    :goto_0
    return-object p0

    .line 246
    nop

    .line 247
    :array_0
    .array-data 8
        0x179896072c62d7baL
        0xcc70ee4825e1974L
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_1
    .array-data 8
        -0x8be6785936e1f9bL    # -2.836812983505212E266
        -0x26c9489b59351329L    # -5.865936837656277E121
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_2
    .array-data 8
        -0x47a14e48040163dcL    # -3.608087472316988E-37
        0x28c0096607bed28eL
    .end array-data
.end method

.method private static zzd(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zzd(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzn()Lcom/google/android/gms/internal/ads/zzcch;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzcch;->zzb(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    new-array v4, v3, [J

    .line 22
    .line 23
    fill-array-data v4, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v3, [J

    .line 48
    .line 49
    fill-array-data v3, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v2, v0, [J

    .line 70
    .line 71
    fill-array-data v2, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_1

    .line 86
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    .line 93
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v0, v0, [J

    .line 96
    .line 97
    fill-array-data v0, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    :cond_1
    return-object p0

    .line 116
    nop

    .line 117
    :array_0
    .array-data 8
        0x5956b193fd1a7d92L    # 2.344028482951385E122
        -0x2f595ea5fbc95094L    # -3.3541214427647857E80
        -0x2e7213f17e7b284bL    # -7.2660907194600616E84
    .end array-data

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
    :array_1
    .array-data 8
        0x5874dad309b5bd05L    # 1.3147524424156925E118
        -0x5f2fe29581005effL
        0x9285a8734b79316L
    .end array-data

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
    :array_2
    .array-data 8
        0x1e86d95ed5cf9520L    # 1.269701108076733E-161
        -0x1673e35d8887481L    # -6.631832203400121E301
    .end array-data

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
    :array_3
    .array-data 8
        0x42bbc0aab72e0b59L    # 3.0514311802379348E13
        -0x54887b959c3a887dL    # -2.6879918374252497E-99
    .end array-data
.end method
