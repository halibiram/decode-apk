.class public Lcom/tknetwork/tunnel/utils/VPNUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;
    }
.end annotation


# static fields
.field private static Listener:Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;

.field private static mService:Lcom/tknetwork/tunnel/service/c_05;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

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
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    new-array v4, v3, [J

    .line 20
    .line 21
    const-wide v5, -0x59c93047b90250b9L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    aput-wide v5, v4, v7

    .line 28
    .line 29
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array v1, v1, [J

    .line 43
    .line 44
    fill-array-data v1, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v2, v3, [J

    .line 57
    .line 58
    const-wide v3, -0x1775ec840c944030L

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    aput-wide v3, v2, v7

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->d_01(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :array_0
    .array-data 8
        0x69090e9ce6810c2fL    # 9.365212929842252E197
        -0x364d07e41684baf7L    # -1.0829485016542985E47
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        0x23533a33a98583d3L    # 1.614587007100206E-138
        0x3094187166116ba8L    # 1.1107069139112948E-74
    .end array-data
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/utils/c_12$Parser;->parse(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static findProcessId(Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    new-array v4, v2, [J

    .line 20
    .line 21
    fill-array-data v4, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    new-array v6, v5, [J

    .line 35
    .line 36
    fill-array-data v6, :array_2

    .line 37
    .line 38
    .line 39
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    :goto_0
    if-ge v4, v5, :cond_2

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    aget-object v7, v1, v4

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    new-instance v7, Ljava/io/BufferedReader;

    .line 65
    .line 66
    new-instance v8, Ljava/io/InputStreamReader;

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v10, v2, [J

    .line 87
    .line 88
    fill-array-data v10, :array_3

    .line 89
    .line 90
    .line 91
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-nez v9, :cond_0

    .line 103
    .line 104
    invoke-virtual {v8, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_0

    .line 109
    .line 110
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 111
    .line 112
    new-array v1, v2, [J

    .line 113
    .line 114
    fill-array-data v1, :array_4

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v8, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :try_start_0
    aget-object v0, p0, v0

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    .line 137
    :catch_0
    return p0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_1

    .line 140
    :catch_1
    :try_start_2
    aget-object p0, p0, v3

    .line 141
    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    .line 148
    .line 149
    :catch_2
    return p0

    .line 150
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 151
    .line 152
    .line 153
    :catch_3
    throw p0

    .line 154
    :cond_1
    add-int/2addr v4, v0

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    const/4 p0, -0x1

    .line 157
    return p0

    .line 158
    nop

    .line 159
    :array_0
    .array-data 8
        0x2475820572a4e252L    # 4.73456240749607E-133
        0x505ffceb093f82f2L    # 1.4815811508351968E79
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
    :array_1
    .array-data 8
        -0x2e4c581921d9a210L    # -3.8184840423863696E85
        -0x5dfa6a25662b1d08L    # -8.643139608773049E-145
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
    :array_2
    .array-data 8
        0x5de87e5fe696575fL    # 2.3894693427337748E144
        -0x18616d15ebc0b4a8L    # -1.362221986348997E191
        -0x2502f754c979e2ccL    # -2.0125327666200485E130
    .end array-data

    .line 184
    .line 185
    .line 186
    .line 187
    :array_3
    .array-data 8
        0xe1f7a72bf7b0d36L
        -0x4a9012f9cc607e62L    # -2.6665735746897008E-51
    .end array-data

    :array_4
    .array-data 8
        -0x43a1119a7d30cbc4L    # -6.7071427479987714E-18
        0x2ecc8ae0bbe4e42aL    # 2.938482392170304E-83
    .end array-data
.end method

.method public static getService()Lcom/tknetwork/tunnel/service/c_05;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/utils/VPNUtil;->mService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    return-object v0
.end method

.method public static isProtected(Ljava/net/Socket;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/utils/VPNUtil;->Listener:Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;->protectSocket(Ljava/net/Socket;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static killProcess(Ljava/io/File;Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tknetwork/tunnel/utils/VPNUtil;->findProcessId(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    add-int/2addr v4, v1

    .line 3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    const-wide v8, 0x12041a3d1936b5edL    # 6.951574197016463E-222

    aput-wide v8, v7, v3

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_0

    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    new-array v9, v2, [J

    fill-array-data v9, :array_1

    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_2

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_3

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_4

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_5

    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/2addr v7, v1

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-static {v5, p1}, Lcom/tknetwork/tunnel/utils/VPNUtil;->killProcess(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    .line 10
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    const/4 v5, 0x4

    if-gt v4, v5, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_6

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v5

    :array_0
    .array-data 8
        -0x6817f5a54c021eabL
        -0x452c64c62c9185f0L    # -2.534061486803133E-25
    .end array-data

    :array_1
    .array-data 8
        -0x7b272f6a2126be9dL
        0x96200b478c85081L
    .end array-data

    :array_2
    .array-data 8
        -0x271f40a579854fb0L    # -1.351442669474328E120
        -0x252bc27e8e69282L
    .end array-data

    :array_3
    .array-data 8
        0x2f7290345b6cdc63L    # 3.913959431012486E-80
        0x49dab4a8c86ef56aL    # 6.098503889806184E47
    .end array-data

    :array_4
    .array-data 8
        -0x3838662fc630aa95L    # -6.2741777287556755E37
        0x176fd6f0926b487bL    # 8.51884170178171E-196
    .end array-data

    :array_5
    .array-data 8
        -0x60047159fc1e94cfL
        0x403f6495341278e2L    # 31.392901663312735
    .end array-data

    :array_6
    .array-data 8
        0x9bbac3521505193L    # 8.78810205200706E-262
        0x333e26a0c2540e46L    # 7.329275474801696E-62
        0x351f57a5c1ed4555L    # 8.180741065367575E-53
    .end array-data
.end method

.method public static killProcess(Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tknetwork/tunnel/utils/VPNUtil;->killProcess(Ljava/io/File;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 8
        0x7d9a333a8e7f08ebL    # 1.0709245982571859E297
        -0x11cfb12f93b1d4baL    # -5.89486672098945E222
    .end array-data
.end method

.method public static killProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide v3, -0x6910c6ae334621edL

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v3, [J

    fill-array-data v6, :array_1

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x3

    if-ge v5, v2, :cond_0

    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_2

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v3, [J

    fill-array-data v7, :array_3

    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/2addr v5, v1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 8
        0x632068ddea33c25dL    # 3.096467512117117E169
        -0x8126959518edd97L    # -4.884822694099716E269
    .end array-data

    :array_1
    .array-data 8
        0x6b2cfbc86daa1f1cL
        -0x691d9be2ad4c6af6L
    .end array-data

    :array_2
    .array-data 8
        -0x750ab1e20b6468f5L    # -7.094604338047928E-256
        -0x181d9d1c028b714eL
    .end array-data

    :array_3
    .array-data 8
        -0x6bb48f35eb0618bdL    # -6.520882739358329E-211
        0x4050e467afd41237L    # 67.56882854185174
    .end array-data
.end method

.method public static networkStateChange(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    new-array v3, v2, [J

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_9

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-ne v1, v3, :cond_1

    .line 43
    .line 44
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    new-array v0, v2, [J

    .line 47
    .line 48
    fill-array-data v0, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_8

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eq p0, v3, :cond_7

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    if-eq p0, v1, :cond_7

    .line 73
    .line 74
    if-eq p0, v0, :cond_7

    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    if-eq p0, v1, :cond_7

    .line 78
    .line 79
    const/16 v1, 0xb

    .line 80
    .line 81
    if-eq p0, v1, :cond_7

    .line 82
    .line 83
    const/16 v1, 0x10

    .line 84
    .line 85
    if-ne p0, v1, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    if-eq p0, v2, :cond_6

    .line 89
    .line 90
    const/4 v1, 0x5

    .line 91
    if-eq p0, v1, :cond_6

    .line 92
    .line 93
    const/4 v1, 0x6

    .line 94
    if-eq p0, v1, :cond_6

    .line 95
    .line 96
    const/16 v1, 0x8

    .line 97
    .line 98
    if-eq p0, v1, :cond_6

    .line 99
    .line 100
    const/16 v1, 0x9

    .line 101
    .line 102
    if-eq p0, v1, :cond_6

    .line 103
    .line 104
    const/16 v1, 0xa

    .line 105
    .line 106
    if-eq p0, v1, :cond_6

    .line 107
    .line 108
    const/16 v1, 0xc

    .line 109
    .line 110
    if-eq p0, v1, :cond_6

    .line 111
    .line 112
    const/16 v1, 0xe

    .line 113
    .line 114
    if-eq p0, v1, :cond_6

    .line 115
    .line 116
    const/16 v1, 0xf

    .line 117
    .line 118
    if-eq p0, v1, :cond_6

    .line 119
    .line 120
    const/16 v1, 0x11

    .line 121
    .line 122
    if-ne p0, v1, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/16 v1, 0xd

    .line 126
    .line 127
    if-eq p0, v1, :cond_5

    .line 128
    .line 129
    const/16 v1, 0x12

    .line 130
    .line 131
    if-eq p0, v1, :cond_5

    .line 132
    .line 133
    const/16 v1, 0x13

    .line 134
    .line 135
    if-ne p0, v1, :cond_4

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const/16 v0, 0x14

    .line 139
    .line 140
    if-ne p0, v0, :cond_8

    .line 141
    .line 142
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    new-array v0, v2, [J

    .line 145
    .line 146
    fill-array-data v0, :array_2

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :cond_5
    :goto_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 158
    .line 159
    new-array v0, v0, [J

    .line 160
    .line 161
    fill-array-data v0, :array_3

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_6
    :goto_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 173
    .line 174
    new-array v0, v2, [J

    .line 175
    .line 176
    fill-array-data v0, :array_4

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :cond_7
    :goto_2
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 188
    .line 189
    new-array v0, v2, [J

    .line 190
    .line 191
    fill-array-data v0, :array_5

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_8
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 203
    .line 204
    new-array v0, v2, [J

    .line 205
    .line 206
    fill-array-data v0, :array_6

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :cond_9
    :goto_3
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v0, v2, [J

    .line 220
    .line 221
    fill-array-data v0, :array_7

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    nop

    .line 233
    :array_0
    .array-data 8
        -0x402f1791417876f8L    # -0.2641865597380648
        -0x3e7e46747ddd8ce5L    # -3.717156826682111E7
        0x71cdac7e8d63b8efL    # 1.5458231790559268E240
    .end array-data

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
    :array_1
    .array-data 8
        -0x52025df67535512eL
        0x2a9a889c619c430eL    # 1.851050513247258E-103
        -0x7f96d11516213b4L
    .end array-data

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
    .line 264
    .line 265
    :array_2
    .array-data 8
        -0xd0623bf7ac9324bL
        -0x6fb440fbbf7387d3L    # -3.574342710743099E-230
        0x73293aa5017300c7L    # 5.5124908926295944E246
    .end array-data

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
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_3
    .array-data 8
        -0x25da749d16fc095bL    # -1.8229895393866536E126
        0x82ce751115aa9aeL
        -0x5522803622ce37a2L
        -0x55119a3eabfd3743L    # -6.785925340351647E-102
    .end array-data

    .line 282
    .line 283
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
    :array_4
    .array-data 8
        -0x6301d45892926d84L    # -4.996493091014637E-169
        -0x7800e08312db2d9eL
        0x9f7366f7717373aL
    .end array-data

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
    :array_5
    .array-data 8
        0x6fa3ce0901de6dadL    # 6.005341608391759E229
        -0x25545d806fea11edL    # -5.986098332590563E128
        -0x6834b3479753c763L    # -4.674665098435277E-194
    .end array-data

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
    :array_6
    .array-data 8
        0x4f0965a5c0fc8d6eL    # 5.609090214442449E72
        0x5843ba893cb4a462L
        -0x59c21c7d7dcec5caL
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
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
    :array_7
    .array-data 8
        -0x41b9bb5ae94d27b6L    # -1.036941262573845E-8
        0x26616d855fd144acL    # 8.23862558680358E-124
        0x44775f0c5150efa5L    # 6.897984835787251E21
    .end array-data
.end method

.method public static saveTextFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/FileWriter;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return v0
.end method

.method public static setVPNProtectListener(Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/utils/VPNUtil;->Listener:Lcom/tknetwork/tunnel/utils/VPNUtil$VPNProtectListener;

    .line 2
    .line 3
    return-void
.end method

.method public static setVPNService(Lcom/tknetwork/tunnel/service/c_05;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tknetwork/tunnel/utils/VPNUtil;->mService:Lcom/tknetwork/tunnel/service/c_05;

    .line 2
    .line 3
    return-void
.end method
