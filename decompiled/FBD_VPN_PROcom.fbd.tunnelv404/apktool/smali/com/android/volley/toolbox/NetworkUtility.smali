.class final Lcom/android/volley/toolbox/NetworkUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    }
.end annotation


# static fields
.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static attemptRetryOnException(Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/android/volley/Request;->getTimeoutMs()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$000(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/android/volley/VolleyError;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-interface {v3, v5}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    new-array v5, v5, [J

    .line 23
    .line 24
    fill-array-data v5, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p1, v2, v1

    .line 45
    .line 46
    aput-object v4, v2, v0

    .line 47
    .line 48
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception v3

    .line 57
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 58
    .line 59
    const/4 v6, 0x5

    .line 60
    new-array v6, v6, [J

    .line 61
    .line 62
    fill-array-data v6, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p1, v2, v1

    .line 83
    .line 84
    aput-object v4, v2, v0

    .line 85
    .line 86
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v3

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        0x72adeb61d6777b2cL    # 2.5536435457432175E244
        0x7419bb134e87afa0L    # 1.842252148162812E251
        0xfd1d52ea2e65881L
        -0x936ba484bd1e06aL
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :array_1
    .array-data 8
        0x55a94cac4ff3aed8L    # 4.5331545347691266E104
        0x3d648f16bddfa99cL    # 5.843202404978663E-13
        -0x6f9cd2be5d7bdf66L    # -9.881640853324337E-230
        -0x170f1323b22c4070L
        0x64c1ca1966732081L    # 2.2527343766188214E177
    .end array-data
.end method

.method public static getNotModifiedNetworkResponse(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/volley/NetworkResponse;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/16 v1, 0x130

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p3, p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->combineHeaders(Ljava/util/List;Lcom/android/volley/Cache$Entry;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    new-instance p3, Lcom/android/volley/NetworkResponse;

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    const/16 v5, 0x130

    .line 30
    .line 31
    move-object v4, p3

    .line 32
    move-wide v8, p1

    .line 33
    invoke-direct/range {v4 .. v10}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object p3
.end method

.method public static inputStreamToBytes(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    .line 3
    .line 4
    invoke-direct {v1, p2, p1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x400

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, -0x1

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v3

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-array v0, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 58
    .line 59
    .line 60
    return-object v3

    .line 61
    :catchall_1
    move-exception v3

    .line 62
    const/4 p1, 0x0

    .line 63
    :goto_2
    if-eqz p0, :cond_1

    .line 64
    .line 65
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :catch_1
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v0, v0, [J

    .line 72
    .line 73
    fill-array-data v0, :array_1

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {p0, v0}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 92
    .line 93
    .line 94
    throw v3

    .line 95
    :array_0
    .array-data 8
        -0x2da716f9de2d3508L    # -4.95537842385814E88
        -0x7878076c03aba3f7L
        -0x1d68bfac63e9ec92L    # -8.569281360746261E166
        0x137a62b93659981bL    # 7.654039770998453E-215
        0x3e966400063dabb1L    # 3.336463178990288E-7
        -0x4da20f4d548b9216L    # -4.4421788594168676E-66
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_1
    .array-data 8
        0x447eae0c0ee1ec8cL    # 9.055099802193689E21
        0x5f9c52ccc363c611L    # 3.7085468983921793E152
        0x512497c05299e43bL    # 7.813466782469136E82
        0x607492aa8ec4a431L    # 4.413403086876391E156
        0x5e7ee3ae3445eff9L    # 1.5428618806751863E147
        0x2b9557cf244b1b69L    # 9.75791400627275E-99
    .end array-data
.end method

.method public static logSlowRequests(JLcom/android/volley/Request;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    sget-boolean v1, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const-wide/16 v1, 0xbb8

    .line 7
    .line 8
    cmp-long v3, p0, v1

    .line 9
    .line 10
    if-lez v3, :cond_2

    .line 11
    .line 12
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    array-length p1, p3

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    new-array p3, v0, [J

    .line 43
    .line 44
    fill-array-data p3, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p2}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    invoke-interface {p4}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    const/4 v2, 0x5

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    aput-object p2, v2, v3

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    aput-object p0, v2, p2

    .line 78
    .line 79
    aput-object p1, v2, v0

    .line 80
    .line 81
    const/4 p0, 0x3

    .line 82
    aput-object p3, v2, p0

    .line 83
    .line 84
    const/4 p0, 0x4

    .line 85
    aput-object p4, v2, p0

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void

    .line 91
    :array_0
    .array-data 8
        0x6a0aaf894e461837L    # 6.536503791829979E202
        -0x2a534d952d6eea49L    # -5.141906083322064E104
        0x56d5c9101a157f8bL    # 2.0465577660600486E110
        0x206232c90305b122L
        -0x449c3ed0e970052bL    # -1.3072514086403245E-22
        -0x5d3c2471d9d749dL    # -3.203963983500196E280
        0x898c50e274159cbL    # 3.0007197277135964E-267
        -0xf3919b3d514d45eL
        0x2e14019414943f10L    # 1.0056922898785321E-86
        0x31a91ee56bfa197L
        0x6601428156332c4bL    # 2.2918320260035776E183
        -0x724c77d616f9bea2L
    .end array-data

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
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
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x144544ce30afd01fL
        -0x7db41d604d630a0fL    # -1.33244357932238E-297
    .end array-data
.end method

.method public static shouldRetryException(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
    .locals 10
    .param p4    # Lcom/android/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "[B)",
            "Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 8
    .line 9
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array p2, v0, [J

    .line 12
    .line 13
    fill-array-data p2, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/android/volley/TimeoutError;

    .line 24
    .line 25
    invoke-direct {p2}, Lcom/android/volley/TimeoutError;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2, v2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    instance-of v1, p1, Ljava/net/MalformedURLException;

    .line 33
    .line 34
    if-nez v1, :cond_9

    .line 35
    .line 36
    if-eqz p4, :cond_7

    .line 37
    .line 38
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    new-array v3, v3, [J

    .line 46
    .line 47
    fill-array-data v3, :array_1

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-array v5, v0, [Ljava/lang/Object;

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    aput-object v3, v5, v6

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    aput-object v4, v5, v3

    .line 72
    .line 73
    invoke-static {v1, v5}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    if-eqz p5, :cond_6

    .line 77
    .line 78
    invoke-virtual {p4}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    new-instance p4, Lcom/android/volley/NetworkResponse;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    sub-long v7, v3, p2

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v3, p4

    .line 92
    move v4, p1

    .line 93
    move-object v5, p5

    .line 94
    invoke-direct/range {v3 .. v9}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 95
    .line 96
    .line 97
    const/16 p2, 0x191

    .line 98
    .line 99
    if-eq p1, p2, :cond_5

    .line 100
    .line 101
    const/16 p2, 0x193

    .line 102
    .line 103
    if-ne p1, p2, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/16 p2, 0x190

    .line 107
    .line 108
    if-lt p1, p2, :cond_3

    .line 109
    .line 110
    const/16 p2, 0x1f3

    .line 111
    .line 112
    if-le p1, p2, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    new-instance p0, Lcom/android/volley/ClientError;

    .line 116
    .line 117
    invoke-direct {p0, p4}, Lcom/android/volley/ClientError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    .line 122
    .line 123
    if-lt p1, p2, :cond_4

    .line 124
    .line 125
    const/16 p2, 0x257

    .line 126
    .line 127
    if-gt p1, p2, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryServerErrors()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 136
    .line 137
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array p2, v0, [J

    .line 140
    .line 141
    fill-array-data p2, :array_2

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    new-instance p2, Lcom/android/volley/ServerError;

    .line 152
    .line 153
    invoke-direct {p2, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, p2, v2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_4
    new-instance p0, Lcom/android/volley/ServerError;

    .line 161
    .line 162
    invoke-direct {p0, p4}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    :goto_1
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 167
    .line 168
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array p2, v0, [J

    .line 171
    .line 172
    fill-array-data p2, :array_3

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    new-instance p2, Lcom/android/volley/AuthFailureError;

    .line 183
    .line 184
    invoke-direct {p2, p4}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, p1, p2, v2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_6
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 192
    .line 193
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 194
    .line 195
    new-array p2, v0, [J

    .line 196
    .line 197
    fill-array-data p2, :array_4

    .line 198
    .line 199
    .line 200
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    new-instance p2, Lcom/android/volley/NetworkError;

    .line 208
    .line 209
    invoke-direct {p2}, Lcom/android/volley/NetworkError;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p1, p2, v2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_7
    invoke-virtual {p0}, Lcom/android/volley/Request;->shouldRetryConnectionErrors()Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-eqz p0, :cond_8

    .line 221
    .line 222
    new-instance p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    .line 223
    .line 224
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 225
    .line 226
    const/4 p2, 0x3

    .line 227
    new-array p2, p2, [J

    .line 228
    .line 229
    fill-array-data p2, :array_5

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    new-instance p2, Lcom/android/volley/NoConnectionError;

    .line 240
    .line 241
    invoke-direct {p2}, Lcom/android/volley/NoConnectionError;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, p1, p2, v2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V

    .line 245
    .line 246
    .line 247
    return-object p0

    .line 248
    :cond_8
    new-instance p0, Lcom/android/volley/NoConnectionError;

    .line 249
    .line 250
    invoke-direct {p0, p1}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    .line 255
    .line 256
    new-instance p3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance p4, Lcom/panda912/muddy/ObfuscatedString;

    .line 262
    .line 263
    new-array p5, v0, [J

    .line 264
    .line 265
    fill-array-data p5, :array_6

    .line 266
    .line 267
    .line 268
    invoke-direct {p4, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw p2

    .line 293
    :array_0
    .array-data 8
        -0x4bad64744a8f38e9L    # -1.1857447160035384E-56
        0x70aab461a6564935L    # 5.306802939112688E234
    .end array-data

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
    :array_1
    .array-data 8
        -0x41873e715fe9f4e9L    # -9.22235941138953E-8
        0x7d7c5fd9d7a52275L    # 2.899497304388107E296
        -0x7f9e1ed79bc21c1dL    # -7.956651657483818E-307
        0x6fc17558e98be143L    # 2.1175361832258435E230
        0x6b9c9421f3c2b034L    # 2.3488679129116642E210
        0x3aeabd1212973e3cL    # 6.911754991102412E-25
    .end array-data

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
    :array_2
    .array-data 8
        -0x7150db10c1d0aa99L    # -5.978492265479986E-238
        0x26cf4d009596f043L    # 9.469936478606049E-122
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
    :array_3
    .array-data 8
        -0x2762c35aa7616559L    # -7.372751586964459E118
        -0x4d27aeeba2ce8f5dL    # -9.236041337721468E-64
    .end array-data

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
    :array_4
    .array-data 8
        -0x4984e0ae5515d65fL    # -2.9692572851311073E-46
        0x24c28fc807e1aef9L
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
    :array_5
    .array-data 8
        0x7dabb32e47f508b4L
        -0x56e94637a576181aL    # -9.449724122188612E-111
        -0x411b0803bd62bbfdL    # -9.99865195053414E-6
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :array_6
    .array-data 8
        0x6a4174a7f9a5ca65L    # 6.841070327919582E203
        -0x3f9252bf6c2a3155L    # -237.41413299330938
    .end array-data
.end method
