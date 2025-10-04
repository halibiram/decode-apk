.class public final Lcom/google/android/gms/internal/ads/zzazu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/ads/zzazr;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazu;->zzb:Lcom/google/android/gms/internal/ads/zzazr;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazu;->zza:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    if-ge v5, v3, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    check-cast v6, Ljava/lang/String;

    .line 21
    .line 22
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v6, 0xa

    .line 32
    .line 33
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/2addr v5, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_0

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length v2, p1

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 65
    .line 66
    new-array v0, v1, [J

    .line 67
    .line 68
    const-wide v1, -0x12a55751b6e3ed06L    # -5.881650955683419E218

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    aput-wide v1, v0, v4

    .line 74
    .line 75
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_3

    .line 83
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzazt;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzazt;-><init>()V

    .line 86
    .line 87
    .line 88
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzazu;->zza:I

    .line 89
    .line 90
    new-instance v5, Ljava/util/PriorityQueue;

    .line 91
    .line 92
    new-instance v6, Lcom/google/android/gms/internal/ads/zzazs;

    .line 93
    .line 94
    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(Lcom/google/android/gms/internal/ads/zzazu;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v5, v3, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    :goto_1
    array-length v6, p1

    .line 102
    if-ge v3, v6, :cond_3

    .line 103
    .line 104
    aget-object v6, p1, v3

    .line 105
    .line 106
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzazv;->zzb(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    array-length v7, v6

    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzazu;->zza:I

    .line 114
    .line 115
    invoke-static {v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/zzazz;->zzc([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    add-int/2addr v3, v1

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lcom/google/android/gms/internal/ads/zzazy;

    .line 135
    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazu;->zzb:Lcom/google/android/gms/internal/ads/zzazr;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzazy;->zzb:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzazr;->zzb(Ljava/lang/String;)[B

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzazt;->zzb:Landroid/util/Base64OutputStream;

    .line 145
    .line 146
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catch_0
    move-exception p1

    .line 151
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 152
    .line 153
    new-array v0, v0, [J

    .line 154
    .line 155
    fill-array-data v0, :array_1

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzazt;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :goto_3
    return-object p1

    .line 173
    :array_0
    .array-data 8
        0x453f3012c890b327L    # 3.770372049287276E25
        0x6f0f13c83271ac4bL    # 9.202581289416587E226
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
    :array_1
    .array-data 8
        0x415906d1a994bb77L    # 6560582.649702898
        0x497641af469b0baaL    # 7.941413379495225E45
        -0x6aae453b5fe5b052L
        0x5b3a1710564522c9L    # 2.89356841074477E131
        0x18376d74bb57394L
        0x4adb413b42d31e16L    # 4.0788940977413206E52
    .end array-data
.end method
