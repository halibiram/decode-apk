.class public final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaoj;


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zzl()Lcom/google/android/gms/internal/ads/zzgaa;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zza:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanz;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zzd(Lcom/google/android/gms/internal/ads/zzaoi;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzanz;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaon;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaon;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzamv;->zzd(Lcom/google/android/gms/internal/ads/zzaoi;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzaoi;)Ljava/util/List;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaoi;->zzd:[B

    .line 6
    .line 7
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zza:Ljava/util/List;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-lez v3, :cond_5

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    add-int/2addr v5, v4

    .line 31
    const/16 v4, 0x86

    .line 32
    .line 33
    if-ne v3, v4, :cond_4

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    and-int/lit8 v3, v3, 0x1f

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_1
    if-ge v6, v3, :cond_4

    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    and-int/lit16 v9, v8, 0x80

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    const/4 v9, 0x0

    .line 68
    :goto_2
    if-eqz v9, :cond_1

    .line 69
    .line 70
    and-int/lit8 v8, v8, 0x3f

    .line 71
    .line 72
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 73
    .line 74
    new-array v11, v0, [J

    .line 75
    .line 76
    fill-array-data v11, :array_0

    .line 77
    .line 78
    .line 79
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    goto :goto_3

    .line 87
    :cond_1
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 88
    .line 89
    new-array v10, v0, [J

    .line 90
    .line 91
    fill-array-data v10, :array_1

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    const/4 v8, 0x1

    .line 102
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    int-to-byte v11, v11

    .line 107
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 108
    .line 109
    .line 110
    if-eqz v9, :cond_3

    .line 111
    .line 112
    and-int/lit8 v9, v11, 0x40

    .line 113
    .line 114
    sget v11, Lcom/google/android/gms/internal/ads/zzem;->zza:I

    .line 115
    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    new-array v9, v1, [B

    .line 119
    .line 120
    aput-byte v1, v9, v4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_2
    new-array v9, v1, [B

    .line 124
    .line 125
    aput-byte v4, v9, v4

    .line 126
    .line 127
    :goto_4
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    goto :goto_5

    .line 132
    :cond_3
    const/4 v9, 0x0

    .line 133
    :goto_5
    new-instance v11, Lcom/google/android/gms/internal/ads/zzak;

    .line 134
    .line 135
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzw(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    add-int/2addr v6, v1

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_5
    return-object p1

    .line 165
    :array_0
    .array-data 8
        0x68987bb0746798ffL    # 7.148990033086133E195
        -0x756a722c4749689L    # -1.714015732384137E273
        0x602014ea85064571L    # 1.0781019576006036E155
        0x5cea8d92dd3f87eL
    .end array-data

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
    :array_1
    .array-data 8
        -0x6a1ea59430102a10L    # -2.767404848334419E-203
        -0x507245eebba2e2fdL    # -1.2535443345763342E-79
        -0x3d6d26a4ab100f89L    # -5.181187374076116E12
        -0x60c13925f2a3493dL
    .end array-data
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaol;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p1, v1, :cond_a

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq p1, v1, :cond_9

    .line 7
    .line 8
    if-eq p1, v0, :cond_9

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-eq p1, v1, :cond_8

    .line 13
    .line 14
    const/16 v1, 0x1b

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq p1, v1, :cond_7

    .line 18
    .line 19
    const/16 v1, 0x24

    .line 20
    .line 21
    if-eq p1, v1, :cond_6

    .line 22
    .line 23
    const/16 v1, 0x59

    .line 24
    .line 25
    if-eq p1, v1, :cond_5

    .line 26
    .line 27
    const/16 v1, 0x8a

    .line 28
    .line 29
    if-eq p1, v1, :cond_4

    .line 30
    .line 31
    const/16 v1, 0xac

    .line 32
    .line 33
    if-eq p1, v1, :cond_3

    .line 34
    .line 35
    const/16 v1, 0x101

    .line 36
    .line 37
    if-eq p1, v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x80

    .line 40
    .line 41
    if-eq p1, v1, :cond_a

    .line 42
    .line 43
    const/16 v1, 0x81

    .line 44
    .line 45
    if-eq p1, v1, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x86

    .line 48
    .line 49
    if-eq p1, v1, :cond_0

    .line 50
    .line 51
    const/16 v0, 0x87

    .line 52
    .line 53
    if-eq p1, v0, :cond_1

    .line 54
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return-object p1

    .line 60
    :pswitch_0
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 61
    .line 62
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanl;

    .line 65
    .line 66
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzanl;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 70
    .line 71
    .line 72
    return-object p2

    .line 73
    :pswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    .line 74
    .line 75
    new-instance v0, Lcom/google/android/gms/internal/ads/zzand;

    .line 76
    .line 77
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zzc(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaon;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzand;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 89
    .line 90
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 91
    .line 92
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamu;

    .line 93
    .line 94
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(ZLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzany;

    .line 102
    .line 103
    new-instance p2, Lcom/google/android/gms/internal/ads/zzano;

    .line 104
    .line 105
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 106
    .line 107
    new-array v0, v0, [J

    .line 108
    .line 109
    fill-array-data v0, :array_0

    .line 110
    .line 111
    .line 112
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Lcom/google/android/gms/internal/ads/zzanx;)V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 127
    .line 128
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 129
    .line 130
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamo;

    .line 131
    .line 132
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 136
    .line 137
    .line 138
    return-object p2

    .line 139
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzany;

    .line 140
    .line 141
    new-instance p2, Lcom/google/android/gms/internal/ads/zzano;

    .line 142
    .line 143
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v0, v0, [J

    .line 146
    .line 147
    fill-array-data v0, :array_1

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Lcom/google/android/gms/internal/ads/zzanx;)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 165
    .line 166
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 167
    .line 168
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamr;

    .line 169
    .line 170
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 174
    .line 175
    .line 176
    return-object p2

    .line 177
    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 178
    .line 179
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 180
    .line 181
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamw;

    .line 182
    .line 183
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 187
    .line 188
    .line 189
    return-object p2

    .line 190
    :cond_5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzc:Ljava/util/List;

    .line 191
    .line 192
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 193
    .line 194
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamx;

    .line 195
    .line 196
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzamx;-><init>(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 200
    .line 201
    .line 202
    return-object p2

    .line 203
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    .line 204
    .line 205
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanj;

    .line 206
    .line 207
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zzb(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanz;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzanz;)V

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 215
    .line 216
    .line 217
    return-object p1

    .line 218
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    .line 219
    .line 220
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanh;

    .line 221
    .line 222
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zzb(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzanz;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-direct {v0, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(Lcom/google/android/gms/internal/ads/zzanz;ZZ)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 230
    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    .line 234
    .line 235
    new-instance p2, Lcom/google/android/gms/internal/ads/zzank;

    .line 236
    .line 237
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzank;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 241
    .line 242
    .line 243
    return-object p1

    .line 244
    :cond_9
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaoi;->zzb:Ljava/lang/String;

    .line 245
    .line 246
    new-instance p2, Lcom/google/android/gms/internal/ads/zzanp;

    .line 247
    .line 248
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanm;

    .line 249
    .line 250
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzanm;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 254
    .line 255
    .line 256
    return-object p2

    .line 257
    :cond_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    .line 258
    .line 259
    new-instance v0, Lcom/google/android/gms/internal/ads/zzana;

    .line 260
    .line 261
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzamv;->zzc(Lcom/google/android/gms/internal/ads/zzaoi;)Lcom/google/android/gms/internal/ads/zzaon;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzana;-><init>(Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Lcom/google/android/gms/internal/ads/zzamy;)V

    .line 269
    .line 270
    .line 271
    return-object p1

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_0
    .array-data 8
        0x2e2ebb64efacf5f7L    # 3.0897419087577306E-86
        0xd444b572699998L
        0x350d86da2d1f1badL    # 3.853422841124142E-53
        0xf0e066eb2efb71aL    # 3.688741826328841E-236
    .end array-data

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
    :array_1
    .array-data 8
        0xd47caf66e8f2025L
        0x2ff19a691c9cbdb8L    # 9.501494496635047E-78
        0x2a6d3b01f32bd230L
        0x359942500e9c6d30L    # 1.6877863721008167E-50
    .end array-data
.end method
