.class public Lcom/github/mikephil/charting/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/utils/FileUtils;->LOG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x65feb1f79043f8d2L    # -2.036290058355961E-183
        -0x5bd26008955fa3f5L
        -0x6c16938f89f8c87L
        0x1aff8a0f20194d53L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static loadBarEntriesFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x4

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v5, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v6, v0, [J

    .line 20
    .line 21
    fill-array-data v6, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v5, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    if-eqz p0, :cond_0

    .line 42
    .line 43
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    new-array v3, v0, [J

    .line 46
    .line 47
    fill-array-data v3, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance p1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    aget-object v3, p0, v3

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/4 v5, 0x0

    .line 71
    aget-object p0, p0, v5

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-direct {p1, v3, p0}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    move-object v3, v4

    .line 90
    goto :goto_4

    .line 91
    :catch_0
    move-exception p0

    .line 92
    move-object v3, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catch_1
    move-exception p0

    .line 99
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v0, v1, [J

    .line 102
    .line 103
    fill-array-data v0, :array_2

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    goto :goto_4

    .line 118
    :catch_2
    move-exception p0

    .line 119
    :goto_2
    :try_start_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v1, [J

    .line 122
    .line 123
    fill-array-data v0, :array_3

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .line 134
    .line 135
    if-eqz v3, :cond_1

    .line 136
    .line 137
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :catch_3
    move-exception p0

    .line 142
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v0, v1, [J

    .line 145
    .line 146
    fill-array-data v0, :array_4

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    :goto_3
    return-object v2

    .line 154
    :goto_4
    if-eqz v3, :cond_2

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catch_4
    move-exception p1

    .line 161
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v1, v1, [J

    .line 164
    .line 165
    fill-array-data v1, :array_5

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_5
    throw p0

    .line 178
    nop

    .line 179
    :array_0
    .array-data 8
        -0x15a6828bcfc242acL    # -1.99796481341352E204
        0x444b4d9c9953aaa9L    # 1.0073092068241395E21
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
        -0x6a8a085f1c30ec17L    # -2.736904362974217E-205
        0x3dec24945a06f127L    # 2.0476646508043334E-10
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
    :array_2
    .array-data 8
        0x41a991d2cc1ef2edL    # 2.1449354206044713E8
        0x327e071df1252e08L    # 1.7820688445112507E-65
        0x18b82a7d2247f835L
        0x256f963b5fde22ceL
    .end array-data

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
    .line 222
    .line 223
    :array_3
    .array-data 8
        -0x752cf83e0d8df22cL
        0x3152f19c84a8dfbcL    # 4.288723094571179E-71
        -0x650cdcf717177022L    # -7.3789258085944E-179
        -0x52d637b9ae5e850fL    # -3.9552447895400216E-91
    .end array-data

    .line 224
    .line 225
    .line 226
    :array_4
    .array-data 8
        0x9789b3ff66ccc08L
        -0x7581825ac593b3f6L
        0x3a6624065ae39919L    # 2.2356415968786815E-27
        -0x1308fec11326c40bL    # -7.930427718049519E216
    .end array-data

    :array_5
    .array-data 8
        0x4c7349b9d7deb816L    # 1.9371630081651837E60
        0x7b639cd9742d6beaL    # 2.3331524986905068E286
        -0x37f36ea40308bdeaL    # -1.2151402453682807E39
        0x5709842c6b3c9d68L
    .end array-data
.end method

.method public static loadEntriesFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 11
    .line 12
    new-instance v6, Ljava/io/InputStreamReader;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v7, v1, [J

    .line 21
    .line 22
    fill-array-data v7, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v6, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    if-eqz p0, :cond_2

    .line 43
    .line 44
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v4, v1, [J

    .line 47
    .line 48
    fill-array-data v4, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    array-length p1, p0

    .line 63
    const/4 v4, 0x0

    .line 64
    if-gt p1, v1, :cond_0

    .line 65
    .line 66
    new-instance p1, Lcom/github/mikephil/charting/data/Entry;

    .line 67
    .line 68
    aget-object v6, p0, v0

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    aget-object p0, p0, v4

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-direct {p1, v6, p0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    move-object v4, v5

    .line 89
    goto :goto_6

    .line 90
    :catch_0
    move-exception p0

    .line 91
    move-object v4, v5

    .line 92
    goto :goto_4

    .line 93
    :cond_0
    array-length p1, p0

    .line 94
    sub-int/2addr p1, v0

    .line 95
    new-array v6, p1, [F

    .line 96
    .line 97
    :goto_1
    if-ge v4, p1, :cond_1

    .line 98
    .line 99
    aget-object v7, p0, v4

    .line 100
    .line 101
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    aput v7, v6, v4

    .line 106
    .line 107
    add-int/2addr v4, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 110
    .line 111
    array-length v4, p0

    .line 112
    sub-int/2addr v4, v0

    .line 113
    aget-object p0, p0, v4

    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    int-to-float p0, p0

    .line 120
    invoke-direct {p1, p0, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    .line 133
    .line 134
    goto :goto_5

    .line 135
    :catch_1
    move-exception p0

    .line 136
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 137
    .line 138
    new-array v0, v2, [J

    .line 139
    .line 140
    fill-array-data v0, :array_2

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    goto :goto_6

    .line 155
    :catch_2
    move-exception p0

    .line 156
    :goto_4
    :try_start_3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v0, v2, [J

    .line 159
    .line 160
    fill-array-data v0, :array_3

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    .line 172
    if-eqz v4, :cond_3

    .line 173
    .line 174
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :catch_3
    move-exception p0

    .line 179
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 180
    .line 181
    new-array v0, v2, [J

    .line 182
    .line 183
    fill-array-data v0, :array_4

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_3
    :goto_5
    return-object v3

    .line 191
    :goto_6
    if-eqz v4, :cond_4

    .line 192
    .line 193
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :catch_4
    move-exception p1

    .line 198
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 199
    .line 200
    new-array v1, v2, [J

    .line 201
    .line 202
    fill-array-data v1, :array_5

    .line 203
    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    :cond_4
    :goto_7
    throw p0

    .line 215
    :array_0
    .array-data 8
        -0x5ae1b919be7af16bL    # -6.824864270473113E-130
        0xaa5dc3f531a82edL
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
    :array_1
    .array-data 8
        -0x7076625f30db38afL    # -8.056384765465644E-234
        0x4bf0b627991572cL
    .end array-data

    :array_2
    .array-data 8
        0x9b62e34f923a174L
        -0x7867ebb2386c91ecL    # -4.451106639514321E-272
        -0x45c4e3e949724d90L    # -3.4217279202348363E-28
        -0x427eb84b9475f90bL    # -1.9645195541062546E-12
    .end array-data

    :array_3
    .array-data 8
        -0x538606dfa20397c7L    # -1.9455661253713184E-94
        -0x6d8636c50f36c4b6L
        0x38494b17891aa659L    # 1.4866082014802922E-37
        -0x4337a7eeffc9a4c4L    # -6.756819940242879E-16
    .end array-data

    :array_4
    .array-data 8
        -0x527724ad0411dbc9L    # -2.4404807058580943E-89
        -0x2cb9fe5faedda816L    # -1.4344874155057651E93
        0x2ccad1c4d34145cdL    # 6.428661534956308E-93
        0x5fdc17a1e969fffaL    # 5.885255543938329E153
    .end array-data

    :array_5
    .array-data 8
        0xbbe96f13f16de03L
        -0x6187e23d077b24f2L    # -6.700577453054861E-162
        0x7e663e2e6e24c7dL
        0x5f19409be7d73185L    # 1.2915765628130594E150
    .end array-data
.end method

.method public static loadEntriesFromFile(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 18
    .line 19
    new-instance v4, Ljava/io/FileReader;

    .line 20
    .line 21
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v5, v1, [J

    .line 36
    .line 37
    fill-array-data v5, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    array-length v4, v3

    .line 52
    const/4 v5, 0x0

    .line 53
    if-gt v4, v1, :cond_0

    .line 54
    .line 55
    new-instance v4, Lcom/github/mikephil/charting/data/Entry;

    .line 56
    .line 57
    aget-object v5, v3, v5

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    aget-object v3, v3, v0

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    int-to-float v3, v3

    .line 70
    invoke-direct {v4, v5, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :cond_0
    array-length v4, v3

    .line 80
    sub-int/2addr v4, v0

    .line 81
    new-array v6, v4, [F

    .line 82
    .line 83
    :goto_1
    if-ge v5, v4, :cond_1

    .line 84
    .line 85
    aget-object v7, v3, v5

    .line 86
    .line 87
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    aput v7, v6, v5

    .line 92
    .line 93
    add-int/2addr v5, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    new-instance v4, Lcom/github/mikephil/charting/data/BarEntry;

    .line 96
    .line 97
    array-length v5, v3

    .line 98
    sub-int/2addr v5, v0

    .line 99
    aget-object v3, v3, v5

    .line 100
    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    int-to-float v3, v3

    .line 106
    invoke-direct {v4, v3, v6}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(F[F)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :goto_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    const/4 v2, 0x4

    .line 116
    new-array v2, v2, [J

    .line 117
    .line 118
    fill-array-data v2, :array_1

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    :cond_2
    return-object p0

    .line 131
    :array_0
    .array-data 8
        0x785c68b2701369b8L    # 6.00332197448145E271
        0x5eeb6c6503050a5dL    # 1.753272527553296E149
    .end array-data

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
    .line 142
    .line 143
    :array_1
    .array-data 8
        0xaf8cdd5e23a7d3eL
        -0x23f16ceed9a62ad7L    # -2.7778395444498832E135
        -0x505b7499ba74fe56L    # -3.4653519110756285E-79
        -0x52c731f69b1d42b0L    # -7.61057706225218E-91
    .end array-data
.end method

.method public static saveToSdCard(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v3, v0, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    .line 39
    .line 40
    new-instance v1, Ljava/io/FileWriter;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    const/4 v4, 0x2

    .line 80
    new-array v4, v4, [J

    .line 81
    .line 82
    fill-array-data v4, :array_1

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_1
    move-exception p0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 120
    .line 121
    new-array v0, v0, [J

    .line 122
    .line 123
    fill-array-data v0, :array_2

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    :goto_3
    return-void

    .line 136
    nop

    .line 137
    :array_0
    .array-data 8
        -0x6c922dd532c92649L
        -0x4b3effddbbefd743L    # -1.386669846858143E-54
        0x66579356cc6a7b2aL    # 1.0017493351600846E185
        -0x6c6b4f64d3d6d40eL
    .end array-data

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
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 8
        0x6327915f5d0d9d24L    # 4.4472111643332615E169
        -0x44c54eef1d1af607L    # -2.2078826906940032E-23
    .end array-data

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
    :array_2
    .array-data 8
        -0x59ad171cff5a3975L    # -4.46958036565727E-124
        -0x42f9ad27e7520608L    # -9.913674267927784E-15
        0x48a1e678c664821bL    # 7.796671713522806E41
        0x893ca7bf30726e6L
    .end array-data
.end method
