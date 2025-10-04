.class public Lcom/tknetwork/tunnel/core/PasswordCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHPASSWORD:I = 0x3

.field public static final PCKS12ORCERTPASSWORD:I = 0x2

.field private static mInstance:Lcom/tknetwork/tunnel/core/PasswordCache;


# instance fields
.field private mAuthPassword:Ljava/lang/String;

.field private mKeyOrPkcs12Password:Ljava/lang/String;

.field private final mUuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mUuid:Ljava/util/UUID;

    .line 5
    .line 6
    return-void
.end method

.method public static getAuthPassword(Ljava/util/UUID;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/tknetwork/tunnel/core/PasswordCache;->mAuthPassword:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mAuthPassword:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;
    .locals 1

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/core/PasswordCache;->mInstance:Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/tknetwork/tunnel/core/PasswordCache;->mUuid:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/tknetwork/tunnel/core/PasswordCache;-><init>(Ljava/util/UUID;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/tknetwork/tunnel/core/PasswordCache;->mInstance:Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 19
    .line 20
    :cond_1
    sget-object p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mInstance:Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 21
    .line 22
    return-object p0
.end method

.method public static getPKCS12orCertificatePassword(Ljava/util/UUID;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/tknetwork/tunnel/core/PasswordCache;->mKeyOrPkcs12Password:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mKeyOrPkcs12Password:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 14

    .line 1
    check-cast p0, Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/String;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/String;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/String;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/String;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v7, Ljava/lang/String;

    .line 24
    .line 25
    new-instance v8, Ljava/lang/String;

    .line 26
    .line 27
    new-instance v9, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v10, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v11, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v12, Ljava/lang/String;

    .line 34
    .line 35
    const/16 v13, 0x288

    .line 36
    .line 37
    new-array v13, v13, [C

    .line 38
    .line 39
    fill-array-data v13, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    const/4 v13, 0x0

    .line 50
    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-static {v11, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-static {v10, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-static {v9, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v8, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v7, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v6, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-static {v5, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v4, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2, v13}, Landroid/util/Base64;->decode([BI)[B

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 174
    .line 175
    .line 176
    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    .line 177
    .line 178
    .line 179
    :cond_0
    return-void

    .line 180
    nop

    .line 181
    :array_0
    .array-data 2
        0x56s
        0x6ds
        0x30s
        0x77s
        0x64s
        0x32s
        0x51s
        0x79s
        0x55s
        0x58s
        0x6cs
        0x57s
        0x61s
        0x32s
        0x68s
        0x57s
        0x56s
        0x30s
        0x64s
        0x6fs
        0x56s
        0x56s
        0x59s
        0x77s
        0x5as
        0x47s
        0x39s
        0x58s
        0x52s
        0x6cs
        0x6cs
        0x33s
        0x57s
        0x6bs
        0x63s
        0x35s
        0x56s
        0x32s
        0x4as
        0x48s
        0x65s
        0x44s
        0x42s
        0x61s
        0x52s
        0x57s
        0x68s
        0x72s
        0x56s
        0x6ds
        0x78s
        0x4bs
        0x63s
        0x32s
        0x4es
        0x45s
        0x51s
        0x6cs
        0x56s
        0x57s
        0x62s
        0x55s
        0x30s
        0x78s
        0x56s
        0x6ds
        0x70s
        0x42s
        0x65s
        0x46s
        0x64s
        0x48s
        0x56s
        0x6bs
        0x64s
        0x58s
        0xas
        0x62s
        0x46s
        0x70s
        0x70s
        0x56s
        0x6bs
        0x5as
        0x61s
        0x65s
        0x56s
        0x64s
        0x57s
        0x5as
        0x48s
        0x70s
        0x6cs
        0x52s
        0x6cs
        0x6cs
        0x34s
        0x56s
        0x32s
        0x35s
        0x47s
        0x56s
        0x51s
        0x70s
        0x69s
        0x52s
        0x31s
        0x4as
        0x50s
        0x57s
        0x56s
        0x64s
        0x30s
        0x59s
        0x56s
        0x4es
        0x57s
        0x57s
        0x6es
        0x52s
        0x6as
        0x52s
        0x55s
        0x70s
        0x73s
        0x55s
        0x6ds
        0x31s
        0x53s
        0x53s
        0x56s
        0x5as
        0x74s
        0x64s
        0x48s
        0x4es
        0x68s
        0x5as
        0x33s
        0x42s
        0x54s
        0x59s
        0x6ds
        0x74s
        0x4bs
        0x57s
        0x56s
        0x5as
        0x74s
        0x63s
        0x45s
        0x4as
        0x6bs
        0xas
        0x4ds
        0x6cs
        0x5as
        0x48s
        0x56s
        0x32s
        0x35s
        0x47s
        0x56s
        0x47s
        0x46s
        0x73s
        0x53s
        0x6ds
        0x46s
        0x57s
        0x61s
        0x6bs
        0x46s
        0x34s
        0x54s
        0x6bs
        0x5as
        0x61s
        0x53s
        0x45s
        0x35s
        0x56s
        0x4fs
        0x57s
        0x68s
        0x56s
        0x57s
        0x45s
        0x4as
        0x55s
        0x57s
        0x57s
        0x74s
        0x61s
        0x64s
        0x31s
        0x64s
        0x57s
        0x5as
        0x46s
        0x68s
        0x6cs
        0x52s
        0x6cs
        0x70s
        0x72s
        0x43s
        0x6bs
        0x31s
        0x73s
        0x57s
        0x6bs
        0x68s
        0x57s
        0x4ds
        0x6as
        0x56s
        0x4cs
        0x57s
        0x56s
        0x5as
        0x4bs
        0x52s
        0x31s
        0x4es
        0x74s
        0x52s
        0x6cs
        0x64s
        0x68s
        0xas
        0x61s
        0x31s
        0x70s
        0x4ds
        0x56s
        0x54s
        0x46s
        0x61s
        0x59s
        0x57s
        0x52s
        0x48s
        0x55s
        0x6bs
        0x6cs
        0x55s
        0x62s
        0x57s
        0x68s
        0x53s
        0x56s
        0x30s
        0x56s
        0x4bs
        0x56s
        0x56s
        0x64s
        0x58s
        0x65s
        0x47s
        0x46s
        0x54s
        0x4ds
        0x56s
        0x70s
        0x58s
        0x56s
        0x32s
        0x74s
        0x6bs
        0x56s
        0x6ds
        0x45s
        0x79s
        0x55s
        0x6cs
        0x52s
        0x44s
        0x61s
        0x7as
        0x46s
        0x46s
        0x55s
        0x57s
        0x70s
        0x53s
        0x57s
        0x47s
        0x45s
        0x78s
        0x63s
        0x48s
        0x4as
        0x57s
        0x4ds
        0x47s
        0x52s
        0x4cs
        0x56s
        0x6ds
        0x78s
        0x6bs
        0x63s
        0x31s
        0x5as
        0x73s
        0xas
        0x56s
        0x6cs
        0x63s
        0x4bs
        0x59s
        0x6cs
        0x5as
        0x4bs
        0x56s
        0x56s
        0x5as
        0x71s
        0x52s
        0x6ds
        0x46s
        0x57s
        0x4ds
        0x6cs
        0x4as
        0x49s
        0x56s
        0x57s
        0x74s
        0x6bs
        0x59s
        0x56s
        0x4as
        0x73s
        0x63s
        0x48s
        0x4as
        0x55s
        0x56s
        0x45s
        0x4as
        0x4cs
        0x5as
        0x44s
        0x46s
        0x61s
        0x57s
        0x47s
        0x4es
        0x46s
        0x5as
        0x46s
        0x52s
        0x4es
        0x56s
        0x31s
        0x4as
        0x59s
        0x56s
        0x6as
        0x4as
        0x30s
        0x61s
        0x31s
        0x5as
        0x74s
        0x52s
        0x58s
        0x64s
        0x4fs
        0x56s
        0x6cs
        0x5as
        0x45s
        0x59s
        0x58s
        0x70s
        0x47s
        0x56s
        0x31s
        0x52s
        0x73s
        0xas
        0x57s
        0x6ds
        0x39s
        0x58s
        0x52s
        0x30s
        0x56s
        0x34s
        0x59s
        0x30s
        0x68s
        0x4bs
        0x56s
        0x30s
        0x31s
        0x48s
        0x55s
        0x6bs
        0x78s
        0x57s
        0x4ds
        0x56s
        0x70s
        0x58s
        0x59s
        0x7as
        0x46s
        0x61s
        0x63s
        0x77s
        0x70s
        0x57s
        0x62s
        0x47s
        0x4es
        0x4cs
        0x57s
        0x57s
        0x74s
        0x6fs
        0x51s
        0x6ds
        0x56s
        0x73s
        0x57s
        0x6es
        0x46s
        0x52s
        0x62s
        0x55s
        0x5as
        0x59s
        0x59s
        0x6cs
        0x5as
        0x61s
        0x56s
        0x31s
        0x52s
        0x73s
        0x57s
        0x6ds
        0x74s
        0x5as
        0x56s
        0x6bs
        0x70s
        0x30s
        0x56s
        0x57s
        0x78s
        0x6bs
        0x56s
        0x30s
        0x31s
        0x47s
        0xas
        0x57s
        0x6bs
        0x78s
        0x61s
        0x52s
        0x45s
        0x5as
        0x68s
        0x56s
        0x6cs
        0x5as
        0x47s
        0x63s
        0x31s
        0x70s
        0x47s
        0x55s
        0x6bs
        0x35s
        0x69s
        0x52s
        0x58s
        0x41s
        0x32s
        0x56s
        0x6ds
        0x70s
        0x4bs
        0x4ds
        0x47s
        0x45s
        0x78s
        0x57s
        0x58s
        0x6cs
        0x54s
        0x62s
        0x46s
        0x70s
        0x59s
        0x59s
        0x6bs
        0x64s
        0x6fs
        0x52s
        0x56s
        0x6cs
        0x73s
        0x56s
        0x6cs
        0x70s
        0x4es
        0x62s
        0x46s
        0x5as
        0x30s
        0x43s
        0x6ds
        0x56s
        0x48s
        0x4fs
        0x56s
        0x64s
        0x4es
        0x52s
        0x45s
        0x59s
        0x78s
        0x57s
        0x56s
        0x56s
        0x6bs
        0x62s
        0x31s
        0x59s
        0x77s
        0xas
        0x4ds
        0x55s
        0x68s
        0x56s
        0x61s
        0x32s
        0x52s
        0x68s
        0x56s
        0x6cs
        0x64s
        0x53s
        0x55s
        0x46s
        0x56s
        0x71s
        0x52s
        0x6bs
        0x74s
        0x6as
        0x64s
        0x33s
        0x42s
        0x68s
        0x55s
        0x6as
        0x4as
        0x30s
        0x54s
        0x46s
        0x5as
        0x71s
        0x51s
        0x6ds
        0x46s
        0x54s
        0x4ds
        0x56s
        0x4as
        0x58s
        0x56s
        0x32s
        0x35s
        0x4fs
        0x56s
        0x6ds
        0x45s
        0x79s
        0x55s
        0x6cs
        0x68s
        0x55s
        0x56s
        0x6cs
        0x5as
        0x7as
        0x54s
        0x6bs
        0x5as
        0x61s
        0x64s
        0x47s
        0x56s
        0x49s
        0x54s
        0x6cs
        0x70s
        0x57s
        0x61s
        0x33s
        0x42s
        0x35s
        0x56s
        0x6as
        0x4as
        0x34s
        0xas
        0x61s
        0x31s
        0x59s
        0x79s
        0x52s
        0x58s
        0x67s
        0x4bs
        0x55s
        0x32s
        0x74s
        0x4fs
        0x56s
        0x57s
        0x4as
        0x46s
        0x56s
        0x54s
        0x56s
        0x56s
        0x52s
        0x6bs
        0x55s
        0x35s
        0x55s
        0x46s
        0x45s
        0x39s
        0x50s
        0x51s
        0x3ds
        0x3ds
    .end array-data
.end method

.method public static setCachedPassword(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/tknetwork/tunnel/core/PasswordCache;->getInstance(Ljava/util/UUID;)Lcom/tknetwork/tunnel/core/PasswordCache;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object p2, p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mAuthPassword:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/tknetwork/tunnel/core/PasswordCache;->mKeyOrPkcs12Password:Ljava/lang/String;

    .line 20
    .line 21
    :goto_0
    return-void
.end method
