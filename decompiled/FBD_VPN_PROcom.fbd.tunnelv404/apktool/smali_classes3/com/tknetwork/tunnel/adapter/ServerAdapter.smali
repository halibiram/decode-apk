.class public Lcom/tknetwork/tunnel/adapter/ServerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static config:Lconfig/ConfigUtil;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private isPremium:Z

.field private mConnected:Z

.field private mConnection:Lcom/trilead/ssh2/Connection;

.field private myPrefs:Landroid/content/SharedPreferences;

.field private prefs:Lnet/openvpn/openvpn/PrefUtil;

.field private selectedServerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->config:Lconfig/ConfigUtil;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        0x21b7e2990a31826L
        0x6ab2dfccdcd58e5fL    # 9.468170231602936E205
        0x62563f09dc729837L    # 5.124297471629138E165
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d00b0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    sget p2, Lcom/tknetwork/tunnel/utils/ServerType;->OPENVPN:I

    .line 8
    .line 9
    iput p2, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->selectedServerType:I

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->isPremium:Z

    .line 13
    .line 14
    iput-boolean p2, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->mConnected:Z

    .line 15
    .line 16
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sput-object p2, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->config:Lconfig/ConfigUtil;

    .line 21
    .line 22
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->myPrefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->editor:Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    new-instance p1, Lnet/openvpn/openvpn/PrefUtil;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->myPrefs:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    invoke-direct {p1, p2}, Lnet/openvpn/openvpn/PrefUtil;-><init>(Landroid/content/SharedPreferences;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->prefs:Lnet/openvpn/openvpn/PrefUtil;

    .line 42
    .line 43
    return-void
.end method

.method private excludeIps()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public static getPingResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    const-wide v4, 0x6bed797804db3bcfL    # 7.7519905186866295E211

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    aput-wide v4, v3, v6

    .line 14
    .line 15
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v3, v2, [J

    .line 24
    .line 25
    const-wide v4, -0x33adf28bcca57103L    # -4.532708804633939E59

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    aput-wide v4, v3, v6

    .line 31
    .line 32
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x1000

    .line 39
    .line 40
    new-array v1, v1, [C

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v9, 0x4

    .line 60
    new-array v9, v9, [J

    .line 61
    .line 62
    fill-array-data v9, :array_0

    .line 63
    .line 64
    .line 65
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v5, Ljava/io/BufferedReader;

    .line 87
    .line 88
    new-instance v7, Ljava/io/InputStreamReader;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    .line 99
    .line 100
    :goto_0
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/Reader;->read([C)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-lez p0, :cond_0

    .line 105
    .line 106
    invoke-virtual {v3, v1, v6, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    move-object v4, v5

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :catch_0
    nop

    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v3, v0, [J

    .line 124
    .line 125
    fill-array-data v3, :array_1

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    aget-object v1, p0, v0

    .line 140
    .line 141
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v0, v0, [J

    .line 144
    .line 145
    fill-array-data v0, :array_2

    .line 146
    .line 147
    .line 148
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    array-length v1, p0

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    array-length v1, v0

    .line 163
    if-nez v1, :cond_1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_1
    array-length v1, p0

    .line 167
    if-eq v1, v2, :cond_3

    .line 168
    .line 169
    array-length v1, v0

    .line 170
    if-ne v1, v2, :cond_2

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    aget-object p0, p0, v2

    .line 179
    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    aget-object p0, v0, v6

    .line 192
    .line 193
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    aget-object p0, v0, v2

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    .line 215
    .line 216
    :catch_1
    return-object p0

    .line 217
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    .line 219
    .line 220
    :catch_2
    return-object v4

    .line 221
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 222
    .line 223
    .line 224
    :catch_3
    return-object v4

    .line 225
    :catchall_1
    move-exception p0

    .line 226
    goto :goto_3

    .line 227
    :catch_4
    nop

    .line 228
    move-object v5, v4

    .line 229
    goto :goto_4

    .line 230
    :goto_3
    if-eqz v4, :cond_5

    .line 231
    .line 232
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 233
    .line 234
    .line 235
    :catch_5
    :cond_5
    throw p0

    .line 236
    :goto_4
    if-eqz v5, :cond_6

    .line 237
    .line 238
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 239
    .line 240
    .line 241
    :catch_6
    :cond_6
    return-object v4

    .line 242
    nop

    .line 243
    :array_0
    .array-data 8
        -0x6d9a6f0654b546a4L
        0xa7fb5fc6dae08adL
        0x3a77a1cb2f164df2L    # 4.77244572451851E-27
        -0x7bbdea93e027c694L
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
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_1
    .array-data 8
        0x4b50553a449d5319L    # 6.257531901236011E54
        -0x7b735a043ca2bb6L
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_2
    .array-data 8
        -0x3bb7b6eaf8e5e38eL    # -8.959759618340734E20
        0x3f312973ee7d43adL    # 2.6187019692707863E-4
    .end array-data
.end method

.method private getServerType(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

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
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    new-array v0, v1, [J

    .line 25
    .line 26
    fill-array-data v0, :array_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v1, [J

    .line 40
    .line 41
    fill-array-data v2, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne v0, v2, :cond_1

    .line 57
    .line 58
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v1, [J

    .line 61
    .line 62
    fill-array-data v0, :array_3

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 74
    .line 75
    new-array v2, v1, [J

    .line 76
    .line 77
    fill-array-data v2, :array_4

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v1, :cond_2

    .line 92
    .line 93
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 94
    .line 95
    new-array v0, v1, [J

    .line 96
    .line 97
    fill-array-data v0, :array_5

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v0, v1, [J

    .line 111
    .line 112
    fill-array-data v0, :array_6

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    return-object p1

    .line 123
    :array_0
    .array-data 8
        0x51421cf319e494ceL    # 2.7490410673929737E83
        0x613432bc1b10457cL    # 1.7748024036762118E160
    .end array-data

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
    :array_1
    .array-data 8
        0x227a7b4b5d09625L    # 2.8257850000736587E-298
        0x430d929561b7d50aL    # 1.0404930764786252E15
    .end array-data

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
    :array_2
    .array-data 8
        0x4ce86e1306ab0db9L    # 3.1405968616349843E62
        -0x4770637795d006e0L    # -2.97272708527213E-36
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
    :array_3
    .array-data 8
        0x2882a88c55c3477eL
        0x1893058232e82377L
    .end array-data

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
    :array_4
    .array-data 8
        -0x78bd8d65632ce720L
        0x14a0cc8a86b7b87dL
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
    :array_5
    .array-data 8
        0xda0124897396066L
        0x14ef161a55e1464eL    # 7.56454112771301E-208
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    :array_6
    .array-data 8
        0x4a0cdd493df31defL    # 5.273170769574336E48
        0x54ec6504b0d0d58dL    # 1.242122312143001E101
    .end array-data
.end method

.method public static inSomeWhere()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->config:Lconfig/ConfigUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lconfig/ConfigUtil;->getSSHHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getPingResult(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v2, :cond_2

    .line 10
    .line 11
    aget-object v5, v1, v4

    .line 12
    .line 13
    new-instance v6, Ljava/util/Locale;

    .line 14
    .line 15
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array v8, v0, [J

    .line 18
    .line 19
    const-wide v9, -0x564a19c70ffb0ca6L    # -9.32463667428585E-108

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    aput-wide v9, v8, v3

    .line 25
    .line 26
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    add-int/2addr v4, v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_2
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v0, v0, [J

    .line 81
    .line 82
    const-wide v1, 0x6a957c1f24387049L    # 2.694445414028312E205

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    aput-wide v1, v0, v3

    .line 88
    .line 89
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    return-object p1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    return-object p2
.end method

.method public getFlag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v5, v0, [J

    .line 19
    .line 20
    fill-array-data v5, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v0, v0, [J

    .line 43
    .line 44
    fill-array-data v0, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object p1

    .line 70
    :catch_0
    return-object v1

    .line 71
    :array_0
    .array-data 8
        0x50c7cc87ef5b5dbdL    # 1.4109337855506472E81
        -0x1e96113bae12407aL    # -1.8229516524225718E161
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 8
        -0x5b899c8d2e0f52f8L    # -4.928404614007367E-133
        0x41b4f1e452825bb4L    # 3.513969465092118E8
    .end array-data
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 p3, 0x4

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const v2, 0x7f0d00b0

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;

    .line 23
    .line 24
    invoke-direct {v2}, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;-><init>()V

    .line 25
    .line 26
    .line 27
    const v3, 0x7f0a035c

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 37
    .line 38
    const v3, 0x7f0a0359

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 48
    .line 49
    const v3, 0x7f0a02ea

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->png:Landroid/widget/TextView;

    .line 59
    .line 60
    const v3, 0x7f0a03fe

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/widget/ImageView;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 70
    .line 71
    const v3, 0x7f0a035b

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/widget/ImageView;

    .line 79
    .line 80
    iput-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;

    .line 91
    .line 92
    :goto_0
    sget-object v3, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->config:Lconfig/ConfigUtil;

    .line 93
    .line 94
    invoke-virtual {v3}, Lconfig/ConfigUtil;->getServerSelectedPosition()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ne v3, p1, :cond_1

    .line 99
    .line 100
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 101
    .line 102
    const v4, 0x7f080127

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const v5, 0x7f060347

    .line 115
    .line 116
    .line 117
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 126
    .line 127
    const v4, 0x7f080128

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const v5, 0x7f06004a

    .line 140
    .line 141
    .line 142
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 147
    .line 148
    .line 149
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getItem(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/ServerAdapter;->getFlag(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    iget-object v4, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move-exception p1

    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :cond_2
    iget-object v3, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 174
    .line 175
    const v4, 0x7f080160

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    .line 180
    .line 181
    :goto_2
    if-nez p1, :cond_3

    .line 182
    .line 183
    return-object p2

    .line 184
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 189
    .line 190
    new-array v4, v0, [J

    .line 191
    .line 192
    fill-array-data v4, :array_0

    .line 193
    .line 194
    .line 195
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const v4, 0x7f06003c

    .line 207
    .line 208
    .line 209
    if-eqz v3, :cond_4

    .line 210
    .line 211
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 212
    .line 213
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v0, v0, [J

    .line 216
    .line 217
    fill-array-data v0, :array_1

    .line 218
    .line 219
    .line 220
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 237
    .line 238
    .line 239
    move-result p3

    .line 240
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    .line 242
    .line 243
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->png:Landroid/widget/TextView;

    .line 244
    .line 245
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    const/4 v0, 0x5

    .line 248
    new-array v0, v0, [J

    .line 249
    .line 250
    fill-array-data v0, :array_2

    .line 251
    .line 252
    .line 253
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_4

    .line 264
    .line 265
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 266
    .line 267
    new-array v5, v1, [J

    .line 268
    .line 269
    fill-array-data v5, :array_3

    .line 270
    .line 271
    .line 272
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    const v5, 0x7f060044

    .line 284
    .line 285
    .line 286
    if-eqz v3, :cond_5

    .line 287
    .line 288
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 289
    .line 290
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array v0, v0, [J

    .line 293
    .line 294
    fill-array-data v0, :array_4

    .line 295
    .line 296
    .line 297
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_4

    .line 321
    .line 322
    :cond_5
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 323
    .line 324
    new-array v6, v1, [J

    .line 325
    .line 326
    fill-array-data v6, :array_5

    .line 327
    .line 328
    .line 329
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-eqz v3, :cond_6

    .line 341
    .line 342
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 343
    .line 344
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 345
    .line 346
    new-array v1, v0, [J

    .line 347
    .line 348
    fill-array-data v1, :array_6

    .line 349
    .line 350
    .line 351
    invoke-direct {p3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p3

    .line 358
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    .line 360
    .line 361
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->png:Landroid/widget/TextView;

    .line 362
    .line 363
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 364
    .line 365
    new-array v0, v0, [J

    .line 366
    .line 367
    fill-array-data v0, :array_7

    .line 368
    .line 369
    .line 370
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p3

    .line 377
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_4

    .line 381
    .line 382
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 383
    .line 384
    new-array v6, v1, [J

    .line 385
    .line 386
    fill-array-data v6, :array_8

    .line 387
    .line 388
    .line 389
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_7

    .line 401
    .line 402
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 403
    .line 404
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 405
    .line 406
    new-array v0, v0, [J

    .line 407
    .line 408
    fill-array-data v0, :array_9

    .line 409
    .line 410
    .line 411
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p3

    .line 418
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 422
    .line 423
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 424
    .line 425
    .line 426
    move-result-object p3

    .line 427
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 428
    .line 429
    .line 430
    move-result p3

    .line 431
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_7
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 437
    .line 438
    new-array v6, v0, [J

    .line 439
    .line 440
    fill-array-data v6, :array_a

    .line 441
    .line 442
    .line 443
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_8

    .line 455
    .line 456
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 457
    .line 458
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 459
    .line 460
    new-array v0, v0, [J

    .line 461
    .line 462
    fill-array-data v0, :array_b

    .line 463
    .line 464
    .line 465
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p3

    .line 472
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 476
    .line 477
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object p3

    .line 481
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 482
    .line 483
    .line 484
    move-result p3

    .line 485
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_4

    .line 489
    .line 490
    :cond_8
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 491
    .line 492
    new-array v6, v1, [J

    .line 493
    .line 494
    fill-array-data v6, :array_c

    .line 495
    .line 496
    .line 497
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_9

    .line 509
    .line 510
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 511
    .line 512
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 513
    .line 514
    new-array v0, v0, [J

    .line 515
    .line 516
    fill-array-data v0, :array_d

    .line 517
    .line 518
    .line 519
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p3

    .line 526
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 530
    .line 531
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 532
    .line 533
    .line 534
    move-result-object p3

    .line 535
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 536
    .line 537
    .line 538
    move-result p3

    .line 539
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_4

    .line 543
    .line 544
    :cond_9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 545
    .line 546
    new-array v6, v0, [J

    .line 547
    .line 548
    fill-array-data v6, :array_e

    .line 549
    .line 550
    .line 551
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_a

    .line 563
    .line 564
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 565
    .line 566
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 567
    .line 568
    new-array v0, v0, [J

    .line 569
    .line 570
    fill-array-data v0, :array_f

    .line 571
    .line 572
    .line 573
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p3

    .line 580
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 584
    .line 585
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 586
    .line 587
    .line 588
    move-result-object p3

    .line 589
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 590
    .line 591
    .line 592
    move-result p3

    .line 593
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_4

    .line 597
    .line 598
    :cond_a
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 599
    .line 600
    new-array v6, v1, [J

    .line 601
    .line 602
    fill-array-data v6, :array_10

    .line 603
    .line 604
    .line 605
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-eqz v3, :cond_b

    .line 617
    .line 618
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 619
    .line 620
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 621
    .line 622
    new-array v0, v0, [J

    .line 623
    .line 624
    fill-array-data v0, :array_11

    .line 625
    .line 626
    .line 627
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p3

    .line 634
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 638
    .line 639
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 640
    .line 641
    .line 642
    move-result-object p3

    .line 643
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 644
    .line 645
    .line 646
    move-result p3

    .line 647
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_4

    .line 651
    .line 652
    :cond_b
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 653
    .line 654
    new-array v6, v1, [J

    .line 655
    .line 656
    fill-array-data v6, :array_12

    .line 657
    .line 658
    .line 659
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-eqz v3, :cond_c

    .line 671
    .line 672
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 673
    .line 674
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 675
    .line 676
    new-array v0, v0, [J

    .line 677
    .line 678
    fill-array-data v0, :array_13

    .line 679
    .line 680
    .line 681
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object p3

    .line 688
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    .line 690
    .line 691
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 692
    .line 693
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 694
    .line 695
    .line 696
    move-result-object p3

    .line 697
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 698
    .line 699
    .line 700
    move-result p3

    .line 701
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_4

    .line 705
    .line 706
    :cond_c
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 707
    .line 708
    new-array v6, v1, [J

    .line 709
    .line 710
    fill-array-data v6, :array_14

    .line 711
    .line 712
    .line 713
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    if-eqz v3, :cond_d

    .line 725
    .line 726
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 727
    .line 728
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 729
    .line 730
    new-array v0, v0, [J

    .line 731
    .line 732
    fill-array-data v0, :array_15

    .line 733
    .line 734
    .line 735
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p3

    .line 742
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    .line 744
    .line 745
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 746
    .line 747
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 748
    .line 749
    .line 750
    move-result-object p3

    .line 751
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 752
    .line 753
    .line 754
    move-result p3

    .line 755
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    .line 757
    .line 758
    goto/16 :goto_4

    .line 759
    .line 760
    :cond_d
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 761
    .line 762
    new-array v5, v1, [J

    .line 763
    .line 764
    fill-array-data v5, :array_16

    .line 765
    .line 766
    .line 767
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    const v5, 0x7f060037

    .line 779
    .line 780
    .line 781
    if-eqz v3, :cond_e

    .line 782
    .line 783
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 784
    .line 785
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 786
    .line 787
    new-array v0, v1, [J

    .line 788
    .line 789
    fill-array-data v0, :array_17

    .line 790
    .line 791
    .line 792
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object p3

    .line 799
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    .line 801
    .line 802
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 803
    .line 804
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 805
    .line 806
    .line 807
    move-result-object p3

    .line 808
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 809
    .line 810
    .line 811
    move-result p3

    .line 812
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_4

    .line 816
    .line 817
    :cond_e
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 818
    .line 819
    new-array v6, v0, [J

    .line 820
    .line 821
    fill-array-data v6, :array_18

    .line 822
    .line 823
    .line 824
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 832
    .line 833
    .line 834
    move-result v3

    .line 835
    if-eqz v3, :cond_f

    .line 836
    .line 837
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 838
    .line 839
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 840
    .line 841
    new-array v0, v1, [J

    .line 842
    .line 843
    fill-array-data v0, :array_19

    .line 844
    .line 845
    .line 846
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object p3

    .line 853
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    .line 855
    .line 856
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 857
    .line 858
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 859
    .line 860
    .line 861
    move-result-object p3

    .line 862
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 863
    .line 864
    .line 865
    move-result p3

    .line 866
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 867
    .line 868
    .line 869
    goto/16 :goto_4

    .line 870
    .line 871
    :cond_f
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 872
    .line 873
    new-array v6, v1, [J

    .line 874
    .line 875
    fill-array-data v6, :array_1a

    .line 876
    .line 877
    .line 878
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    if-eqz v3, :cond_10

    .line 890
    .line 891
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 892
    .line 893
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 894
    .line 895
    new-array v0, v1, [J

    .line 896
    .line 897
    fill-array-data v0, :array_1b

    .line 898
    .line 899
    .line 900
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object p3

    .line 907
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    .line 909
    .line 910
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 911
    .line 912
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 913
    .line 914
    .line 915
    move-result-object p3

    .line 916
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 917
    .line 918
    .line 919
    move-result p3

    .line 920
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_4

    .line 924
    .line 925
    :cond_10
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 926
    .line 927
    new-array v5, v0, [J

    .line 928
    .line 929
    fill-array-data v5, :array_1c

    .line 930
    .line 931
    .line 932
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    const v5, 0x7f060056

    .line 944
    .line 945
    .line 946
    if-eqz v3, :cond_11

    .line 947
    .line 948
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 949
    .line 950
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 951
    .line 952
    new-array p3, p3, [J

    .line 953
    .line 954
    fill-array-data p3, :array_1d

    .line 955
    .line 956
    .line 957
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object p3

    .line 964
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    .line 966
    .line 967
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 968
    .line 969
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 970
    .line 971
    .line 972
    move-result-object p3

    .line 973
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 974
    .line 975
    .line 976
    move-result p3

    .line 977
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 978
    .line 979
    .line 980
    goto/16 :goto_4

    .line 981
    .line 982
    :cond_11
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 983
    .line 984
    new-array v6, v0, [J

    .line 985
    .line 986
    fill-array-data v6, :array_1e

    .line 987
    .line 988
    .line 989
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 997
    .line 998
    .line 999
    move-result v3

    .line 1000
    if-eqz v3, :cond_12

    .line 1001
    .line 1002
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1003
    .line 1004
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1005
    .line 1006
    new-array p3, p3, [J

    .line 1007
    .line 1008
    fill-array-data p3, :array_1f

    .line 1009
    .line 1010
    .line 1011
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object p3

    .line 1018
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1022
    .line 1023
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1024
    .line 1025
    .line 1026
    move-result-object p3

    .line 1027
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1028
    .line 1029
    .line 1030
    move-result p3

    .line 1031
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_4

    .line 1035
    .line 1036
    :cond_12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1037
    .line 1038
    new-array v6, v1, [J

    .line 1039
    .line 1040
    fill-array-data v6, :array_20

    .line 1041
    .line 1042
    .line 1043
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v3

    .line 1050
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v3

    .line 1054
    if-eqz v3, :cond_13

    .line 1055
    .line 1056
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1057
    .line 1058
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1059
    .line 1060
    new-array p3, p3, [J

    .line 1061
    .line 1062
    fill-array-data p3, :array_21

    .line 1063
    .line 1064
    .line 1065
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object p3

    .line 1072
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    .line 1074
    .line 1075
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1076
    .line 1077
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1078
    .line 1079
    .line 1080
    move-result-object p3

    .line 1081
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1082
    .line 1083
    .line 1084
    move-result p3

    .line 1085
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_4

    .line 1089
    .line 1090
    :cond_13
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1091
    .line 1092
    new-array v6, v1, [J

    .line 1093
    .line 1094
    fill-array-data v6, :array_22

    .line 1095
    .line 1096
    .line 1097
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v3

    .line 1104
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v3

    .line 1108
    if-eqz v3, :cond_14

    .line 1109
    .line 1110
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1111
    .line 1112
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1113
    .line 1114
    new-array p3, p3, [J

    .line 1115
    .line 1116
    fill-array-data p3, :array_23

    .line 1117
    .line 1118
    .line 1119
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object p3

    .line 1126
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    .line 1128
    .line 1129
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1130
    .line 1131
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1132
    .line 1133
    .line 1134
    move-result-object p3

    .line 1135
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1136
    .line 1137
    .line 1138
    move-result p3

    .line 1139
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_4

    .line 1143
    .line 1144
    :cond_14
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1145
    .line 1146
    new-array v6, v1, [J

    .line 1147
    .line 1148
    fill-array-data v6, :array_24

    .line 1149
    .line 1150
    .line 1151
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v3

    .line 1158
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1159
    .line 1160
    .line 1161
    move-result v3

    .line 1162
    if-eqz v3, :cond_15

    .line 1163
    .line 1164
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1165
    .line 1166
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1167
    .line 1168
    new-array p3, p3, [J

    .line 1169
    .line 1170
    fill-array-data p3, :array_25

    .line 1171
    .line 1172
    .line 1173
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object p3

    .line 1180
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    .line 1182
    .line 1183
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1184
    .line 1185
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1186
    .line 1187
    .line 1188
    move-result-object p3

    .line 1189
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1190
    .line 1191
    .line 1192
    move-result p3

    .line 1193
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1194
    .line 1195
    .line 1196
    goto/16 :goto_4

    .line 1197
    .line 1198
    :cond_15
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1199
    .line 1200
    new-array v6, v1, [J

    .line 1201
    .line 1202
    fill-array-data v6, :array_26

    .line 1203
    .line 1204
    .line 1205
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v3

    .line 1212
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1213
    .line 1214
    .line 1215
    move-result v3

    .line 1216
    if-eqz v3, :cond_16

    .line 1217
    .line 1218
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1219
    .line 1220
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1221
    .line 1222
    new-array p3, p3, [J

    .line 1223
    .line 1224
    fill-array-data p3, :array_27

    .line 1225
    .line 1226
    .line 1227
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object p3

    .line 1234
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1235
    .line 1236
    .line 1237
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1238
    .line 1239
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1240
    .line 1241
    .line 1242
    move-result-object p3

    .line 1243
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1244
    .line 1245
    .line 1246
    move-result p3

    .line 1247
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1248
    .line 1249
    .line 1250
    goto/16 :goto_4

    .line 1251
    .line 1252
    :cond_16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1253
    .line 1254
    new-array v6, v1, [J

    .line 1255
    .line 1256
    fill-array-data v6, :array_28

    .line 1257
    .line 1258
    .line 1259
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v3

    .line 1266
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v3

    .line 1270
    if-eqz v3, :cond_17

    .line 1271
    .line 1272
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1273
    .line 1274
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1275
    .line 1276
    new-array p3, p3, [J

    .line 1277
    .line 1278
    fill-array-data p3, :array_29

    .line 1279
    .line 1280
    .line 1281
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p3

    .line 1288
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    .line 1290
    .line 1291
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1292
    .line 1293
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1294
    .line 1295
    .line 1296
    move-result-object p3

    .line 1297
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1298
    .line 1299
    .line 1300
    move-result p3

    .line 1301
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_4

    .line 1305
    .line 1306
    :cond_17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1307
    .line 1308
    new-array v6, v1, [J

    .line 1309
    .line 1310
    fill-array-data v6, :array_2a

    .line 1311
    .line 1312
    .line 1313
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1321
    .line 1322
    .line 1323
    move-result v3

    .line 1324
    if-eqz v3, :cond_18

    .line 1325
    .line 1326
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1327
    .line 1328
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1329
    .line 1330
    new-array p3, p3, [J

    .line 1331
    .line 1332
    fill-array-data p3, :array_2b

    .line 1333
    .line 1334
    .line 1335
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object p3

    .line 1342
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    .line 1344
    .line 1345
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1346
    .line 1347
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1348
    .line 1349
    .line 1350
    move-result-object p3

    .line 1351
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1352
    .line 1353
    .line 1354
    move-result p3

    .line 1355
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1356
    .line 1357
    .line 1358
    goto/16 :goto_4

    .line 1359
    .line 1360
    :cond_18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1361
    .line 1362
    new-array v6, v0, [J

    .line 1363
    .line 1364
    fill-array-data v6, :array_2c

    .line 1365
    .line 1366
    .line 1367
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v3

    .line 1374
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1375
    .line 1376
    .line 1377
    move-result v3

    .line 1378
    if-eqz v3, :cond_19

    .line 1379
    .line 1380
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1381
    .line 1382
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1383
    .line 1384
    new-array p3, p3, [J

    .line 1385
    .line 1386
    fill-array-data p3, :array_2d

    .line 1387
    .line 1388
    .line 1389
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object p3

    .line 1396
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    .line 1398
    .line 1399
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1400
    .line 1401
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1402
    .line 1403
    .line 1404
    move-result-object p3

    .line 1405
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1406
    .line 1407
    .line 1408
    move-result p3

    .line 1409
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1410
    .line 1411
    .line 1412
    goto/16 :goto_4

    .line 1413
    .line 1414
    :cond_19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1415
    .line 1416
    new-array v6, v1, [J

    .line 1417
    .line 1418
    fill-array-data v6, :array_2e

    .line 1419
    .line 1420
    .line 1421
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v3

    .line 1428
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v3

    .line 1432
    if-eqz v3, :cond_1a

    .line 1433
    .line 1434
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1435
    .line 1436
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1437
    .line 1438
    new-array p3, p3, [J

    .line 1439
    .line 1440
    fill-array-data p3, :array_2f

    .line 1441
    .line 1442
    .line 1443
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object p3

    .line 1450
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    .line 1452
    .line 1453
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1454
    .line 1455
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p3

    .line 1459
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1460
    .line 1461
    .line 1462
    move-result p3

    .line 1463
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1464
    .line 1465
    .line 1466
    goto/16 :goto_4

    .line 1467
    .line 1468
    :cond_1a
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1469
    .line 1470
    new-array v5, v1, [J

    .line 1471
    .line 1472
    fill-array-data v5, :array_30

    .line 1473
    .line 1474
    .line 1475
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3

    .line 1482
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v3

    .line 1486
    const v5, 0x7f06034c

    .line 1487
    .line 1488
    .line 1489
    if-eqz v3, :cond_1b

    .line 1490
    .line 1491
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1492
    .line 1493
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1494
    .line 1495
    new-array v0, v0, [J

    .line 1496
    .line 1497
    fill-array-data v0, :array_31

    .line 1498
    .line 1499
    .line 1500
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object p3

    .line 1507
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    .line 1509
    .line 1510
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1511
    .line 1512
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1513
    .line 1514
    .line 1515
    move-result-object p3

    .line 1516
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1517
    .line 1518
    .line 1519
    move-result p3

    .line 1520
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1521
    .line 1522
    .line 1523
    goto/16 :goto_4

    .line 1524
    .line 1525
    :cond_1b
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1526
    .line 1527
    new-array v6, v0, [J

    .line 1528
    .line 1529
    fill-array-data v6, :array_32

    .line 1530
    .line 1531
    .line 1532
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v3

    .line 1539
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v3

    .line 1543
    if-eqz v3, :cond_1c

    .line 1544
    .line 1545
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1546
    .line 1547
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1548
    .line 1549
    new-array v0, v1, [J

    .line 1550
    .line 1551
    fill-array-data v0, :array_33

    .line 1552
    .line 1553
    .line 1554
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object p3

    .line 1561
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    .line 1563
    .line 1564
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1565
    .line 1566
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1567
    .line 1568
    .line 1569
    move-result-object p3

    .line 1570
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1571
    .line 1572
    .line 1573
    move-result p3

    .line 1574
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1575
    .line 1576
    .line 1577
    goto/16 :goto_4

    .line 1578
    .line 1579
    :cond_1c
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1580
    .line 1581
    new-array v6, v1, [J

    .line 1582
    .line 1583
    fill-array-data v6, :array_34

    .line 1584
    .line 1585
    .line 1586
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v3

    .line 1593
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    if-eqz v3, :cond_1d

    .line 1598
    .line 1599
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1600
    .line 1601
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1602
    .line 1603
    new-array v0, v1, [J

    .line 1604
    .line 1605
    fill-array-data v0, :array_35

    .line 1606
    .line 1607
    .line 1608
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object p3

    .line 1615
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1616
    .line 1617
    .line 1618
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1619
    .line 1620
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1621
    .line 1622
    .line 1623
    move-result-object p3

    .line 1624
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1625
    .line 1626
    .line 1627
    move-result p3

    .line 1628
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1629
    .line 1630
    .line 1631
    goto/16 :goto_4

    .line 1632
    .line 1633
    :cond_1d
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1634
    .line 1635
    new-array v5, v1, [J

    .line 1636
    .line 1637
    fill-array-data v5, :array_36

    .line 1638
    .line 1639
    .line 1640
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1641
    .line 1642
    .line 1643
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v3

    .line 1647
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v3

    .line 1651
    const v5, 0x7f060024

    .line 1652
    .line 1653
    .line 1654
    if-eqz v3, :cond_1e

    .line 1655
    .line 1656
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1657
    .line 1658
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1659
    .line 1660
    new-array v0, v1, [J

    .line 1661
    .line 1662
    fill-array-data v0, :array_37

    .line 1663
    .line 1664
    .line 1665
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object p3

    .line 1672
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    .line 1674
    .line 1675
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1676
    .line 1677
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1678
    .line 1679
    .line 1680
    move-result-object p3

    .line 1681
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1682
    .line 1683
    .line 1684
    move-result p3

    .line 1685
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1686
    .line 1687
    .line 1688
    goto/16 :goto_4

    .line 1689
    .line 1690
    :cond_1e
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1691
    .line 1692
    new-array v6, v0, [J

    .line 1693
    .line 1694
    fill-array-data v6, :array_38

    .line 1695
    .line 1696
    .line 1697
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v3

    .line 1708
    if-eqz v3, :cond_1f

    .line 1709
    .line 1710
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1711
    .line 1712
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1713
    .line 1714
    new-array v0, v1, [J

    .line 1715
    .line 1716
    fill-array-data v0, :array_39

    .line 1717
    .line 1718
    .line 1719
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1723
    .line 1724
    .line 1725
    move-result-object p3

    .line 1726
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1727
    .line 1728
    .line 1729
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1730
    .line 1731
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1732
    .line 1733
    .line 1734
    move-result-object p3

    .line 1735
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1736
    .line 1737
    .line 1738
    move-result p3

    .line 1739
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1740
    .line 1741
    .line 1742
    goto/16 :goto_4

    .line 1743
    .line 1744
    :cond_1f
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1745
    .line 1746
    new-array v6, v0, [J

    .line 1747
    .line 1748
    fill-array-data v6, :array_3a

    .line 1749
    .line 1750
    .line 1751
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v3

    .line 1758
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1759
    .line 1760
    .line 1761
    move-result v3

    .line 1762
    if-eqz v3, :cond_20

    .line 1763
    .line 1764
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1765
    .line 1766
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1767
    .line 1768
    new-array v0, v1, [J

    .line 1769
    .line 1770
    fill-array-data v0, :array_3b

    .line 1771
    .line 1772
    .line 1773
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1777
    .line 1778
    .line 1779
    move-result-object p3

    .line 1780
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    .line 1782
    .line 1783
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1784
    .line 1785
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1786
    .line 1787
    .line 1788
    move-result-object p3

    .line 1789
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1790
    .line 1791
    .line 1792
    move-result p3

    .line 1793
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1794
    .line 1795
    .line 1796
    goto/16 :goto_4

    .line 1797
    .line 1798
    :cond_20
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1799
    .line 1800
    new-array v6, v1, [J

    .line 1801
    .line 1802
    fill-array-data v6, :array_3c

    .line 1803
    .line 1804
    .line 1805
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v3

    .line 1812
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v3

    .line 1816
    if-eqz v3, :cond_21

    .line 1817
    .line 1818
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1819
    .line 1820
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1821
    .line 1822
    new-array v0, v1, [J

    .line 1823
    .line 1824
    fill-array-data v0, :array_3d

    .line 1825
    .line 1826
    .line 1827
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1831
    .line 1832
    .line 1833
    move-result-object p3

    .line 1834
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1835
    .line 1836
    .line 1837
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1838
    .line 1839
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1840
    .line 1841
    .line 1842
    move-result-object p3

    .line 1843
    invoke-static {p3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1844
    .line 1845
    .line 1846
    move-result p3

    .line 1847
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1848
    .line 1849
    .line 1850
    goto/16 :goto_4

    .line 1851
    .line 1852
    :cond_21
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1853
    .line 1854
    new-array v5, v1, [J

    .line 1855
    .line 1856
    fill-array-data v5, :array_3e

    .line 1857
    .line 1858
    .line 1859
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1863
    .line 1864
    .line 1865
    move-result-object v3

    .line 1866
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1867
    .line 1868
    .line 1869
    move-result v3

    .line 1870
    if-eqz v3, :cond_22

    .line 1871
    .line 1872
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1873
    .line 1874
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1875
    .line 1876
    new-array v0, v0, [J

    .line 1877
    .line 1878
    fill-array-data v0, :array_3f

    .line 1879
    .line 1880
    .line 1881
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1885
    .line 1886
    .line 1887
    move-result-object p3

    .line 1888
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    .line 1890
    .line 1891
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1892
    .line 1893
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1894
    .line 1895
    .line 1896
    move-result-object p3

    .line 1897
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1898
    .line 1899
    .line 1900
    move-result p3

    .line 1901
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1902
    .line 1903
    .line 1904
    goto/16 :goto_4

    .line 1905
    .line 1906
    :cond_22
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1907
    .line 1908
    new-array v5, p3, [J

    .line 1909
    .line 1910
    fill-array-data v5, :array_40

    .line 1911
    .line 1912
    .line 1913
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v3

    .line 1920
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1921
    .line 1922
    .line 1923
    move-result v3

    .line 1924
    if-eqz v3, :cond_23

    .line 1925
    .line 1926
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1927
    .line 1928
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 1929
    .line 1930
    new-array p3, p3, [J

    .line 1931
    .line 1932
    fill-array-data p3, :array_41

    .line 1933
    .line 1934
    .line 1935
    invoke-direct {v0, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object p3

    .line 1942
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1943
    .line 1944
    .line 1945
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1946
    .line 1947
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1948
    .line 1949
    .line 1950
    move-result-object p3

    .line 1951
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1952
    .line 1953
    .line 1954
    move-result p3

    .line 1955
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1956
    .line 1957
    .line 1958
    goto/16 :goto_4

    .line 1959
    .line 1960
    :cond_23
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1961
    .line 1962
    new-array v3, v1, [J

    .line 1963
    .line 1964
    fill-array-data v3, :array_42

    .line 1965
    .line 1966
    .line 1967
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1968
    .line 1969
    .line 1970
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1971
    .line 1972
    .line 1973
    move-result-object p3

    .line 1974
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1975
    .line 1976
    .line 1977
    move-result p3

    .line 1978
    if-eqz p3, :cond_24

    .line 1979
    .line 1980
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 1981
    .line 1982
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1983
    .line 1984
    new-array v0, v0, [J

    .line 1985
    .line 1986
    fill-array-data v0, :array_43

    .line 1987
    .line 1988
    .line 1989
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1993
    .line 1994
    .line 1995
    move-result-object p3

    .line 1996
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    .line 1998
    .line 1999
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2000
    .line 2001
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 2002
    .line 2003
    .line 2004
    move-result-object p3

    .line 2005
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 2006
    .line 2007
    .line 2008
    move-result p3

    .line 2009
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2010
    .line 2011
    .line 2012
    goto/16 :goto_4

    .line 2013
    .line 2014
    :cond_24
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2015
    .line 2016
    new-array v3, v1, [J

    .line 2017
    .line 2018
    fill-array-data v3, :array_44

    .line 2019
    .line 2020
    .line 2021
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2025
    .line 2026
    .line 2027
    move-result-object p3

    .line 2028
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2029
    .line 2030
    .line 2031
    move-result p3

    .line 2032
    if-eqz p3, :cond_25

    .line 2033
    .line 2034
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2035
    .line 2036
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2037
    .line 2038
    new-array v0, v0, [J

    .line 2039
    .line 2040
    fill-array-data v0, :array_45

    .line 2041
    .line 2042
    .line 2043
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2044
    .line 2045
    .line 2046
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2047
    .line 2048
    .line 2049
    move-result-object p3

    .line 2050
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    .line 2052
    .line 2053
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2054
    .line 2055
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 2056
    .line 2057
    .line 2058
    move-result-object p3

    .line 2059
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 2060
    .line 2061
    .line 2062
    move-result p3

    .line 2063
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2064
    .line 2065
    .line 2066
    goto/16 :goto_4

    .line 2067
    .line 2068
    :cond_25
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2069
    .line 2070
    new-array v3, v1, [J

    .line 2071
    .line 2072
    fill-array-data v3, :array_46

    .line 2073
    .line 2074
    .line 2075
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object p3

    .line 2082
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2083
    .line 2084
    .line 2085
    move-result p3

    .line 2086
    if-eqz p3, :cond_26

    .line 2087
    .line 2088
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2089
    .line 2090
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2091
    .line 2092
    new-array v0, v0, [J

    .line 2093
    .line 2094
    fill-array-data v0, :array_47

    .line 2095
    .line 2096
    .line 2097
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2101
    .line 2102
    .line 2103
    move-result-object p3

    .line 2104
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    .line 2106
    .line 2107
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2108
    .line 2109
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 2110
    .line 2111
    .line 2112
    move-result-object p3

    .line 2113
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 2114
    .line 2115
    .line 2116
    move-result p3

    .line 2117
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2118
    .line 2119
    .line 2120
    goto/16 :goto_4

    .line 2121
    .line 2122
    :cond_26
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2123
    .line 2124
    new-array v3, v1, [J

    .line 2125
    .line 2126
    fill-array-data v3, :array_48

    .line 2127
    .line 2128
    .line 2129
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2133
    .line 2134
    .line 2135
    move-result-object p3

    .line 2136
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result p3

    .line 2140
    if-eqz p3, :cond_27

    .line 2141
    .line 2142
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2143
    .line 2144
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2145
    .line 2146
    new-array v0, v0, [J

    .line 2147
    .line 2148
    fill-array-data v0, :array_49

    .line 2149
    .line 2150
    .line 2151
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2152
    .line 2153
    .line 2154
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2155
    .line 2156
    .line 2157
    move-result-object p3

    .line 2158
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    .line 2160
    .line 2161
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2162
    .line 2163
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 2164
    .line 2165
    .line 2166
    move-result-object p3

    .line 2167
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 2168
    .line 2169
    .line 2170
    move-result p3

    .line 2171
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2172
    .line 2173
    .line 2174
    goto :goto_4

    .line 2175
    :cond_27
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2176
    .line 2177
    new-array v3, v1, [J

    .line 2178
    .line 2179
    fill-array-data v3, :array_4a

    .line 2180
    .line 2181
    .line 2182
    invoke-direct {p3, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2183
    .line 2184
    .line 2185
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2186
    .line 2187
    .line 2188
    move-result-object p3

    .line 2189
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2190
    .line 2191
    .line 2192
    move-result p3

    .line 2193
    if-eqz p3, :cond_28

    .line 2194
    .line 2195
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2196
    .line 2197
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2198
    .line 2199
    new-array v0, v0, [J

    .line 2200
    .line 2201
    fill-array-data v0, :array_4b

    .line 2202
    .line 2203
    .line 2204
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2208
    .line 2209
    .line 2210
    move-result-object p3

    .line 2211
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2212
    .line 2213
    .line 2214
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2215
    .line 2216
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 2217
    .line 2218
    .line 2219
    move-result-object p3

    .line 2220
    invoke-static {p3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 2221
    .line 2222
    .line 2223
    move-result p3

    .line 2224
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2225
    .line 2226
    .line 2227
    goto :goto_4

    .line 2228
    :cond_28
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2229
    .line 2230
    new-array v0, v1, [J

    .line 2231
    .line 2232
    fill-array-data v0, :array_4c

    .line 2233
    .line 2234
    .line 2235
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2239
    .line 2240
    .line 2241
    move-result-object p3

    .line 2242
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2243
    .line 2244
    .line 2245
    move-result p1

    .line 2246
    if-eqz p1, :cond_29

    .line 2247
    .line 2248
    iget-object p1, v2, Lcom/tknetwork/tunnel/adapter/ServerAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 2249
    .line 2250
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 2251
    .line 2252
    new-array v0, v1, [J

    .line 2253
    .line 2254
    fill-array-data v0, :array_4d

    .line 2255
    .line 2256
    .line 2257
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 2258
    .line 2259
    .line 2260
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 2261
    .line 2262
    .line 2263
    move-result-object p3

    .line 2264
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2265
    .line 2266
    .line 2267
    goto :goto_4

    .line 2268
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2269
    .line 2270
    .line 2271
    :cond_29
    :goto_4
    return-object p2

    .line 2272
    nop

    .line 2273
    :array_0
    .array-data 8
        0x25dd3d7146322c3dL    # 2.699723841331675E-126
        0x7204514019ac6c17L    # 1.6934576504487438E241
        -0x694c0c284bfaa7ebL
    .end array-data

    .line 2274
    .line 2275
    .line 2276
    :array_1
    .array-data 8
        -0x3feecb909d31aa97L    # -4.3012061537204795
        0x4ea2976a9eb06fa5L    # 6.415680728641934E70
        0x16db26dba8b1c57L
    .end array-data

    :array_2
    .array-data 8
        -0x4552af0daa7f3409L    # -4.7362871856473726E-26
        0x7285429204682a55L    # 4.5363922305120856E243
        -0x216deb31091dd9ccL
        -0x18654caea98a2cdbL    # -1.1896412363168866E191
        -0x1620527ac70d31a9L    # -9.699119664562092E201
    .end array-data

    :array_3
    .array-data 8
        -0x3691610a0e1e9c3dL    # -5.462958302618157E45
        0x2d544f22e00e8f5bL    # 2.492484931488976E-90
    .end array-data

    :array_4
    .array-data 8
        -0x4f26cbba182b8cb6L    # -2.228916711389273E-73
        -0x3f881f9bdb410c7bL    # -382.0244491061242
        0x55bba664fe742b4L
    .end array-data

    :array_5
    .array-data 8
        -0x269bf78224521c9eL    # -4.138452154634736E122
        -0x3c8ec19efbf33d38L    # -7.7658576076418176E16
    .end array-data

    :array_6
    .array-data 8
        0x77bbc52a8c8ea432L    # 5.7307947207877195E268
        -0x41f77f9bedc86e0fL    # -7.130882867125408E-10
        -0x789076c3bf6879dbL    # -7.28687953398871E-273
    .end array-data

    :array_7
    .array-data 8
        -0x704831942fa8d788L    # -5.989848827726102E-233
        0x4828572b8482766dL    # 4.141322799057554E39
        0x4cc162d585793c36L    # 5.587667650300531E61
    .end array-data

    :array_8
    .array-data 8
        0x6e47c38830e4341L
        0x34e27207dcdcb067L    # 6.018103147467056E-54
    .end array-data

    :array_9
    .array-data 8
        0x10c1b999458dadebL    # 5.84546967929608E-228
        -0x4398ff58b46e36e6L    # -9.975767053590151E-18
        -0x1c8870b99b929b97L    # -1.4226128193853888E171
    .end array-data

    :array_a
    .array-data 8
        0x19efa3a4336b1544L    # 9.307616583423097E-184
        -0x5fc361b6eb97cd4eL
        -0x4fd1dfcd9fd81099L    # -1.3008560804639387E-76
    .end array-data

    :array_b
    .array-data 8
        -0x50cb79572a7c8ba8L    # -2.7048662430256284E-81
        -0x672c4020327a282bL
        0x4487ad53d3cc20abL    # 1.3976469528339938E22
    .end array-data

    :array_c
    .array-data 8
        -0x9847fe63785072bL
        0x62e05f2387edeb9aL    # 1.9308105861199384E168
    .end array-data

    :array_d
    .array-data 8
        -0x28e0b3b3f1bfcd73L    # -4.704305226863164E111
        0x5b45fa3f5b5e5032L    # 4.874914344182122E131
        0x2386e25d69ab699eL
    .end array-data

    :array_e
    .array-data 8
        0x201328b611e66cc3L    # 3.572364003617616E-154
        -0x1b65cde3a2d5dbb6L    # -4.146562689102653E176
        -0x359656449f6f4a5eL    # -3.0005231219932375E50
    .end array-data

    :array_f
    .array-data 8
        -0x49673ad7f88ddcfaL    # -1.0846988127901234E-45
        0x20c073f3cb3d2170L    # 6.282835109118215E-151
        0x1a2c7583f43e3cd6L
    .end array-data

    :array_10
    .array-data 8
        -0x3dd26787614c345bL    # -6.355604668189774E10
        0x3b83906430631b6fL    # 5.178555294779846E-22
    .end array-data

    :array_11
    .array-data 8
        -0x1e80958bd6a519d5L    # -4.4167854180873694E161
        -0x79fb6bd2a8570cbbL
        -0x443c7f7335edb824L    # -8.259481065523916E-21
    .end array-data

    :array_12
    .array-data 8
        -0x5daf97439439041dL
        -0x73efcdfaa658e347L    # -1.41375820315699E-250
    .end array-data

    :array_13
    .array-data 8
        -0x3de8fcfc6be2eaa3L    # -2.4708703495270863E10
        -0x96e8356a7f12647L
        -0x4e0580f13ba8ed8cL    # -6.142519355415388E-68
    .end array-data

    :array_14
    .array-data 8
        0x32189eb4e5a27782L    # 2.2830115423893204E-67
        0x600d78d3659dfd6L    # 9.27828397592633E-280
    .end array-data

    :array_15
    .array-data 8
        -0x3929f8b184546dL
        0x1a61cfcdb232cddbL
        0x5279f888d30bec4aL    # 2.0665441750994758E89
    .end array-data

    :array_16
    .array-data 8
        -0x6fe87f10a6cf0228L    # -3.784763005881547E-231
        0x436574191a0fef1eL    # 4.8309005369440496E16
    .end array-data

    :array_17
    .array-data 8
        0x68950e64eb9ab6edL    # 6.148338383623335E195
        -0x1532ba2deeb8c766L
    .end array-data

    :array_18
    .array-data 8
        -0x743b0638841c7a68L    # -5.722029647448536E-252
        -0x3f4323e8a1a731d3L    # -7388.091283369385
        -0x4b7b66b6df96cf67L    # -1.0501035894227483E-55
    .end array-data

    :array_19
    .array-data 8
        0x50c9801f78f870f5L    # 1.5118099879516648E81
        0x6319da515c2fb1c2L    # 2.4391877677165006E169
    .end array-data

    :array_1a
    .array-data 8
        0xb41060235adeb14L
        0x3bbff637b1cddcaeL    # 6.768171730697466E-21
    .end array-data

    :array_1b
    .array-data 8
        0x783592d95b6162beL    # 1.1397230272352068E271
        0x17a66f7a45a865caL    # 9.604345668913688E-195
    .end array-data

    :array_1c
    .array-data 8
        0x4d3cfc2e85bae551L    # 1.1923772314133105E64
        0x5ea55db672cfa466L    # 8.53753382935599E147
        0x349d2ef0615be19bL    # 2.975473116622534E-55
    .end array-data

    :array_1d
    .array-data 8
        0x47f258c28e6e8e31L    # 3.901915539161118E38
        0x56f343712098eb6dL    # 7.238563315742385E110
        -0x7742c791cf2f6f7cL
        0x36c8a17fe1a339e6L    # 8.628795720300558E-45
    .end array-data

    :array_1e
    .array-data 8
        -0x56bd1190a61a1cb4L    # -6.297584671095204E-110
        -0x379a7e4b3ec3e6fcL    # -5.854670919597587E40
        0x7a1845e618d2999fL    # 1.3768930148116013E280
    .end array-data

    :array_1f
    .array-data 8
        -0x79026652c79d1b9eL    # -5.34342939672059E-275
        -0x79b17ab3ae96928eL
        0xed017b0f645bdf9L    # 2.471315141433972E-237
        0x23a6c8a4c199454fL    # 6.122340147479552E-137
    .end array-data

    :array_20
    .array-data 8
        0x4626cae5c4684423L    # 9.029066594088103E29
        0x5ba4d95d1ab5315dL    # 2.9597493092753776E133
    .end array-data

    :array_21
    .array-data 8
        0x518f74c67c12e99fL    # 7.638611392122514E84
        0x3ec41af07bed1292L    # 2.396730422490127E-6
        0x42667ff9f989be55L    # 7.730909543179479E11
        -0x78fd507208e3de79L    # -6.746285760654653E-275
    .end array-data

    :array_22
    .array-data 8
        -0x20809b770f3c8569L    # -1.0276061695104694E152
        -0xd136d565def901dL
    .end array-data

    :array_23
    .array-data 8
        -0x5bf4abfd6c499f1L    # -7.582120904141018E280
        -0x77e5a8e6a57c23faL    # -1.2464746965211999E-269
        -0x7dfa345b7c1e0b1dL    # -6.509096847132796E-299
        0x57e098a14273a1dcL    # 2.0435124809910397E115
    .end array-data

    :array_24
    .array-data 8
        -0xd08f63fb2d5ba48L    # -6.292206395639465E245
        0x5c4d404d8f3e5f80L    # 4.25217857473031E136
    .end array-data

    :array_25
    .array-data 8
        -0x7abc3ee5931adb1fL
        0x79a17968dd5d0f1bL    # 7.743988832220661E277
        0x5c283f1a7601ddfL
        0x166b5b149982e9d2L
    .end array-data

    :array_26
    .array-data 8
        -0x5fcce85cfb5c30b5L
        -0x300279353b06c214L    # -2.1368367326007778E77
    .end array-data

    :array_27
    .array-data 8
        0x746b3ff5b2d4bfd6L    # 6.2432450408016605E252
        -0x3b84468293adc41L
        0x3abbad4826039180L    # 8.942882941114572E-26
        -0x1205b726c6a486L
    .end array-data

    :array_28
    .array-data 8
        -0x2766405d4b51c5bbL    # -6.493091638812634E118
        0x207c914ddc9d1450L
    .end array-data

    :array_29
    .array-data 8
        -0x74e08b69c4daaeaL    # -2.429777998848139E273
        0x136df89e2440d27bL    # 4.34707071727919E-215
        0x1162ab151f5045beL    # 6.304313635433704E-225
        0x1c705f7bec6c65c5L
    .end array-data

    :array_2a
    .array-data 8
        -0x4c8389edbf8483b8L    # -1.1069661375298991E-60
        0x2eb1eb24cb913f2dL    # 9.223666612295242E-84
    .end array-data

    :array_2b
    .array-data 8
        -0x46eb1fb2581196f4L    # -1.00515174233189E-33
        0x4e6e333bb3ef2767L    # 6.513551097799516E69
        0x5d592fc2f6775fa2L    # 4.798958383598724E141
        0xffe452a22cfeb7fL
    .end array-data

    :array_2c
    .array-data 8
        0x588fbca4953f6853L    # 4.001590374768148E118
        0x3b086d74831a89b5L    # 2.5257504107763784E-24
        -0x2627c1cb62edc8cfL    # -6.41038938073298E124
    .end array-data

    :array_2d
    .array-data 8
        0x6480d677ffcfe8b6L    # 1.332637457207265E176
        0x749d1a4226267710L    # 5.3341808582881266E253
        0x1557fd6b5e757033L    # 7.47225641316925E-206
        -0x18e435d263e14a34L
    .end array-data

    :array_2e
    .array-data 8
        0x44471e63cd5ca9dfL    # 8.52929866674045E20
        0x4146f4a7a53fe739L    # 3008847.2910126713
    .end array-data

    :array_2f
    .array-data 8
        -0x5c8a0e31cd6d05e2L    # -7.371039271742072E-138
        0x783cde2d7ab86777L    # 1.5250743900901296E271
        -0x15a3c52c4d67c6fcL    # -2.212711369026246E204
        -0x7f089e16465710feL    # -5.32763940462278E-304
    .end array-data

    :array_30
    .array-data 8
        0x593425719596c7c3L    # 5.202268881498272E121
        -0x6b7a5331fbb0d94bL    # -8.241238999552852E-210
    .end array-data

    :array_31
    .array-data 8
        0x69afece8f6b245bcL    # 1.221866835586536E201
        0x2e35a4d3094588bL
        -0x1405f85090ae025fL    # -1.369214462616268E212
    .end array-data

    :array_32
    .array-data 8
        0x4743a60bce0f75e5L    # 2.0404291117751642E35
        0x57adfcb4bea8363dL    # 2.3077210901435457E114
        0x1d17ad797f81fb75L
    .end array-data

    :array_33
    .array-data 8
        0x767ab90f8cabc7a1L    # 5.259200372128958E262
        0x414e63df1ac65a6dL    # 3983294.20917826
    .end array-data

    :array_34
    .array-data 8
        -0x1dec0697d22179a7L    # -2.875597133007342E164
        -0x40af005cb16d6588L    # -0.0010375113290962672
    .end array-data

    :array_35
    .array-data 8
        -0x596c9ccc9741efdbL    # -7.332020323051253E-123
        0x3beec79f9872f992L    # 5.214297381753843E-20
    .end array-data

    :array_36
    .array-data 8
        0x66b61f45fad942b7L    # 6.015959289234454E186
        0xdfbcf8a1532c538L
    .end array-data

    :array_37
    .array-data 8
        0x14309d722603f711L
        -0x54af740eb2d49d1L
    .end array-data

    :array_38
    .array-data 8
        -0x275902a1f6f4f249L    # -1.1594763991346682E119
        0x4c8ba0f837018531L    # 5.5497187104353735E60
        -0x487b26cf8e952bc0L    # -2.991598029066276E-41
    .end array-data

    :array_39
    .array-data 8
        0xe3c7e8dcb3ec84aL
        0x6c1718981f620295L    # 4.859538933521393E212
    .end array-data

    :array_3a
    .array-data 8
        -0x4c6b62be7247af58L    # -3.2070747207873943E-60
        0x52099884d41b7b9eL    # 1.5911718197451372E87
        0xfaafd3ee790d7aL
    .end array-data

    :array_3b
    .array-data 8
        0x212231f55e958527L    # 4.446802101057922E-149
        -0x4b8ed954ff2cd23L    # -6.861673104712426E285
    .end array-data

    :array_3c
    .array-data 8
        -0x4d346245220a1950L
        0x555e54461e3de331L    # 1.6982413712897573E103
    .end array-data

    :array_3d
    .array-data 8
        0x6808cf80d44994f4L    # 1.4149588067240744E193
        0x6a19e502d78880a6L    # 1.2685449941485324E203
    .end array-data

    :array_3e
    .array-data 8
        0x270736a3a0683b61L
        0x5f76c484f4e9cbeL
    .end array-data

    :array_3f
    .array-data 8
        -0x728ea02c7e551678L    # -6.361380364307167E-244
        0x3ff6e05e8b8c3f3aL    # 1.4297776652419558
        0x749c04f43b1d97ccL    # 5.135638529795497E253
    .end array-data

    :array_40
    .array-data 8
        -0x23e6982f1848896eL    # -4.61643100630155E135
        -0x7aace6cfbf8acb8dL    # -5.137370639157462E-283
        -0x42cd789e597f2cf2L    # -6.582764121142891E-14
        -0x7b0b09bc3a07935cL
    .end array-data

    :array_41
    .array-data 8
        -0x1492710422cb40d8L
        0x41f14088c675f712L    # 4.63107184737282E9
        -0x29108cf54914f793L    # -5.9088170715294745E110
        0x4e0e804a75a2ecdeL    # 1.0278862552710682E68
    .end array-data

    :array_42
    .array-data 8
        0x7629f752d4269e5L    # 4.30309393333216E-273
        0x3112d7a7361bb809L    # 2.66610443661142E-72
    .end array-data

    :array_43
    .array-data 8
        -0x541c68955b78de98L    # -2.866278952481185E-97
        -0x5ac01cdb3436b8a5L
        0x1f50de1308c779c2L    # 7.678430038730587E-158
    .end array-data

    :array_44
    .array-data 8
        0x6e4700c89cb85d76L    # 1.6630007203013553E223
        0x8e245798cc85f2eL
    .end array-data

    :array_45
    .array-data 8
        0x3adf3c5703037fecL    # 4.0371199512775747E-25
        -0xf8cfc4c8c5ba57fL    # -4.72324615280877E233
        -0x548d13ba0e9fee4fL    # -2.1628684390320412E-99
    .end array-data

    :array_46
    .array-data 8
        -0x373fedf24dcbf75eL    # -2.799879725521792E42
        0x607fe7bf4c79a174L    # 6.8444741557092255E156
    .end array-data

    :array_47
    .array-data 8
        0x7456ce1f33a1b46L
        0x73ab79c898d7920cL    # 1.536864106701211E249
        0x2bebf9d1d314a503L    # 4.0929347661980426E-97
    .end array-data

    :array_48
    .array-data 8
        -0x7ebcdcc8f50b4ee2L
        -0x1487b6c98edbc21L
    .end array-data

    :array_49
    .array-data 8
        -0x56eb59ca6b2e2f73L    # -8.586298719038003E-111
        -0x2d13ae4ae1f5efc3L    # -2.884358393407084E91
        -0x2e1db8e7a73f3d40L    # -2.840603907130371E86
    .end array-data

    :array_4a
    .array-data 8
        -0x169149aef98246adL    # -7.3464529249005526E199
        0x6f8462f0d9ce05acL    # 1.5454292394700744E229
    .end array-data

    :array_4b
    .array-data 8
        -0x473f6682fcd1c0c5L    # -2.49762476277252E-35
        -0x1ac4b50b5e81a70aL    # -4.423901519233492E179
        -0x21f8b72cc8ff4fb3L    # -9.086033683386258E144
    .end array-data

    :array_4c
    .array-data 8
        -0x4a20f5917214a3a7L    # -3.3185847856091632E-49
        -0x42179915c05ad984L    # -1.7754800392274995E-10
    .end array-data

    :array_4d
    .array-data 8
        -0x17a3ff0d371054e8L    # -5.1106095731097005E194
        0x127b59b5b1bb792cL
    .end array-data
.end method

.method public ping(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, 0x7e3eaa959bc9a682L    # 1.2835645698582766E300

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    new-array v5, v5, [J

    .line 34
    .line 35
    fill-array-data v5, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v1, Ljava/io/BufferedReader;

    .line 60
    .line 61
    new-instance v2, Ljava/io/InputStreamReader;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .line 72
    .line 73
    const/16 p1, 0x1000

    .line 74
    .line 75
    new-array p1, p1, [C

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuffer;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/Reader;->read([C)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-lez v3, :cond_0

    .line 87
    .line 88
    invoke-virtual {v2, p1, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_2

    .line 102
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_2
    return-object v0

    .line 106
    nop

    .line 107
    :array_0
    .array-data 8
        0x1122caae5de5d2a6L
        0x1d91a00921d3440bL    # 2.988924613230497E-166
        0x62729c5a1edb68beL    # 1.7147527267887915E166
        0x867c0d0a040bc8fL
    .end array-data
.end method
