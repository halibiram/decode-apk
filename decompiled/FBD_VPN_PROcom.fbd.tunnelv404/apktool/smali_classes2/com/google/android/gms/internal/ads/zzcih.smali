.class final Lcom/google/android/gms/internal/ads/zzcih;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzht;


# static fields
.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzd:Ljavax/net/ssl/SSLSocketFactory;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzi:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzj:Ljava/net/HttpURLConnection;

.field private zzk:Ljava/io/InputStream;

.field private zzl:Z

.field private zzm:I

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:I

.field private final zzs:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

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
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcih;->zzb:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcih;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x284f2459a25cf0c0L
        -0x7d18b44fc62e2389L
        0x4d85c1c6e41400c0L    # 2.864091656666098E65
        0x7157d7b4f22110e5L    # 9.703542033945463E237
        -0x1c2c69d98cb790c0L    # -7.569285773719037E172
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhy;III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcig;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcig;-><init>(Lcom/google/android/gms/internal/ads/zzcih;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzs:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzg:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    .line 30
    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcih;->zze:I

    .line 32
    .line 33
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzf:I

    .line 34
    .line 35
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzr:I

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgq;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzcih;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzr:I

    return p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzcih;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzs:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final zzn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x5d552cf2d60313b7L
        -0x4c8eb6afe1a3360eL    # -6.723337446264039E-61
        0x2cb31a2a2242dadL
        -0x6b855c8dc4d65e3dL    # -5.064215502584077E-210
        0x65310eae53719445L    # 2.764833165125365E179
        0x271cb9bc8e4b02eaL
    .end array-data
.end method


# virtual methods
.method public final zza([BII)I
    .locals 8

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzp:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzn:J

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, -0x1

    .line 7
    cmp-long v6, v0, v2

    .line 8
    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcih;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [B

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x1000

    .line 24
    .line 25
    new-array v0, v0, [B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzp:J

    .line 32
    .line 33
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzn:J

    .line 34
    .line 35
    cmp-long v3, v1, v6

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    array-length v3, v0

    .line 40
    sub-long/2addr v6, v1

    .line 41
    int-to-long v1, v3

    .line 42
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    long-to-int v2, v1

    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    if-eq v1, v5, :cond_2

    .line 60
    .line 61
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzp:J

    .line 62
    .line 63
    int-to-long v6, v1

    .line 64
    add-long/2addr v2, v6

    .line 65
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzp:J

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcih;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    if-nez p3, :cond_5

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 92
    .line 93
    const-wide/16 v2, -0x1

    .line 94
    .line 95
    cmp-long v4, v0, v2

    .line 96
    .line 97
    if-eqz v4, :cond_7

    .line 98
    .line 99
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzq:J

    .line 100
    .line 101
    sub-long/2addr v0, v6

    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    cmp-long v4, v0, v6

    .line 105
    .line 106
    if-nez v4, :cond_6

    .line 107
    .line 108
    :goto_2
    const/4 v4, -0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    int-to-long v6, p3

    .line 111
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    long-to-int p3, v0

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;

    .line 117
    .line 118
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-ne v4, v5, :cond_9

    .line 123
    .line 124
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 125
    .line 126
    cmp-long p3, p1, v2

    .line 127
    .line 128
    if-nez p3, :cond_8

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_9
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzq:J

    .line 138
    .line 139
    int-to-long v0, v4

    .line 140
    add-long/2addr p1, v0

    .line 141
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzq:J

    .line 142
    .line 143
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    :goto_3
    return v4

    .line 147
    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 148
    .line 149
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    .line 150
    .line 151
    const/16 v0, 0x7d0

    .line 152
    .line 153
    const/4 v1, 0x2

    .line 154
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 155
    .line 156
    .line 157
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v5, 0x2

    .line 7
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzq:J

    .line 12
    .line 13
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzp:J

    .line 14
    .line 15
    :try_start_0
    new-instance v6, Ljava/net/URL;

    .line 16
    .line 17
    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    invoke-direct {v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 27
    .line 28
    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 29
    .line 30
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzhb;->zza(I)Z

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    add-int/lit8 v0, v4, 0x1

    .line 36
    .line 37
    const/16 v2, 0x14

    .line 38
    .line 39
    if-gt v4, v2, :cond_16

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    instance-of v4, v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    move-object v4, v2

    .line 52
    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    .line 55
    .line 56
    invoke-virtual {v4, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    move-object v4, v0

    .line 62
    goto/16 :goto_c

    .line 63
    .line 64
    :cond_0
    :goto_1
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzcih;->zze:I

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 67
    .line 68
    .line 69
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzf:I

    .line 70
    .line 71
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhs;->zza()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v15

    .line 92
    if-eqz v15, :cond_1

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    check-cast v15, Ljava/util/Map$Entry;

    .line 99
    .line 100
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v17

    .line 104
    move-object/from16 v3, v17

    .line 105
    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    check-cast v15, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v3, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const-wide/16 v3, -0x1

    .line 119
    .line 120
    cmp-long v15, v10, v8

    .line 121
    .line 122
    if-nez v15, :cond_2

    .line 123
    .line 124
    cmp-long v15, v12, v3

    .line 125
    .line 126
    if-eqz v15, :cond_4

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_2
    move-wide v8, v10

    .line 130
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    new-array v4, v5, [J

    .line 138
    .line 139
    fill-array-data v4, :array_0

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 156
    .line 157
    new-array v4, v5, [J

    .line 158
    .line 159
    fill-array-data v4, :array_1

    .line 160
    .line 161
    .line 162
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    const-wide/16 v18, -0x1

    .line 177
    .line 178
    cmp-long v4, v12, v18

    .line 179
    .line 180
    if-eqz v4, :cond_3

    .line 181
    .line 182
    add-long/2addr v8, v12

    .line 183
    add-long v8, v8, v18

    .line 184
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    :cond_3
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 201
    .line 202
    new-array v8, v5, [J

    .line 203
    .line 204
    fill-array-data v8, :array_2

    .line 205
    .line 206
    .line 207
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v2, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_4
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    const/4 v4, 0x3

    .line 220
    new-array v8, v4, [J

    .line 221
    .line 222
    fill-array-data v8, :array_3

    .line 223
    .line 224
    .line 225
    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzg:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    if-nez v14, :cond_5

    .line 238
    .line 239
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 240
    .line 241
    const/4 v4, 0x3

    .line 242
    new-array v8, v4, [J

    .line 243
    .line 244
    fill-array-data v8, :array_4

    .line 245
    .line 246
    .line 247
    invoke-direct {v3, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 255
    .line 256
    new-array v8, v5, [J

    .line 257
    .line 258
    fill-array-data v8, :array_5

    .line 259
    .line 260
    .line 261
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_5
    const/4 v3, 0x0

    .line 272
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    const/16 v8, 0x12c

    .line 286
    .line 287
    if-eq v4, v8, :cond_6

    .line 288
    .line 289
    const/16 v8, 0x12d

    .line 290
    .line 291
    if-eq v4, v8, :cond_6

    .line 292
    .line 293
    const/16 v8, 0x12e

    .line 294
    .line 295
    if-eq v4, v8, :cond_6

    .line 296
    .line 297
    const/16 v8, 0x12f

    .line 298
    .line 299
    if-eq v4, v8, :cond_6

    .line 300
    .line 301
    const/16 v8, 0x133

    .line 302
    .line 303
    if-eq v4, v8, :cond_6

    .line 304
    .line 305
    const/16 v8, 0x134

    .line 306
    .line 307
    if-ne v4, v8, :cond_7

    .line 308
    .line 309
    :cond_6
    const/4 v4, 0x1

    .line 310
    const/4 v8, 0x3

    .line 311
    const-wide/16 v16, 0x0

    .line 312
    .line 313
    goto/16 :goto_a

    .line 314
    .line 315
    :cond_7
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzm:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 322
    .line 323
    const/16 v2, 0xc8

    .line 324
    .line 325
    if-lt v0, v2, :cond_11

    .line 326
    .line 327
    const/16 v3, 0x12b

    .line 328
    .line 329
    if-le v0, v3, :cond_8

    .line 330
    .line 331
    goto/16 :goto_9

    .line 332
    .line 333
    :cond_8
    if-ne v0, v2, :cond_9

    .line 334
    .line 335
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 336
    .line 337
    const-wide/16 v8, 0x0

    .line 338
    .line 339
    cmp-long v0, v2, v8

    .line 340
    .line 341
    if-nez v0, :cond_a

    .line 342
    .line 343
    :cond_9
    const-wide/16 v2, 0x0

    .line 344
    .line 345
    :cond_a
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzn:J

    .line 346
    .line 347
    const/4 v2, 0x1

    .line 348
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzhb;->zza(I)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_10

    .line 353
    .line 354
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 355
    .line 356
    const-wide/16 v8, -0x1

    .line 357
    .line 358
    cmp-long v0, v2, v8

    .line 359
    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 363
    .line 364
    goto/16 :goto_8

    .line 365
    .line 366
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 367
    .line 368
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 369
    .line 370
    const/4 v3, 0x3

    .line 371
    new-array v4, v3, [J

    .line 372
    .line 373
    fill-array-data v4, :array_6

    .line 374
    .line 375
    .line 376
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-nez v3, :cond_c

    .line 392
    .line 393
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 394
    .line 395
    .line 396
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 397
    goto :goto_4

    .line 398
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 404
    .line 405
    const/4 v6, 0x5

    .line 406
    new-array v8, v6, [J

    .line 407
    .line 408
    fill-array-data v8, :array_7

    .line 409
    .line 410
    .line 411
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 425
    .line 426
    new-array v6, v5, [J

    .line 427
    .line 428
    fill-array-data v6, :array_8

    .line 429
    .line 430
    .line 431
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :cond_c
    const-wide/16 v3, -0x1

    .line 449
    .line 450
    :goto_4
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 451
    .line 452
    const/4 v8, 0x3

    .line 453
    new-array v8, v8, [J

    .line 454
    .line 455
    fill-array-data v8, :array_9

    .line 456
    .line 457
    .line 458
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    invoke-virtual {v0, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    if-nez v6, :cond_e

    .line 474
    .line 475
    sget-object v6, Lcom/google/android/gms/internal/ads/zzcih;->zzb:Ljava/util/regex/Pattern;

    .line 476
    .line 477
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-eqz v8, :cond_e

    .line 486
    .line 487
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 492
    .line 493
    .line 494
    move-result-wide v8

    .line 495
    const/4 v10, 0x1

    .line 496
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 501
    .line 502
    .line 503
    move-result-wide v10

    .line 504
    sub-long/2addr v8, v10

    .line 505
    const-wide/16 v16, 0x0

    .line 506
    .line 507
    cmp-long v6, v3, v16

    .line 508
    .line 509
    const-wide/16 v10, 0x1

    .line 510
    .line 511
    add-long/2addr v8, v10

    .line 512
    if-gez v6, :cond_d

    .line 513
    .line 514
    move-wide v3, v8

    .line 515
    goto :goto_5

    .line 516
    :cond_d
    cmp-long v6, v3, v8

    .line 517
    .line 518
    if-eqz v6, :cond_e

    .line 519
    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 526
    .line 527
    const/4 v11, 0x4

    .line 528
    new-array v11, v11, [J

    .line 529
    .line 530
    fill-array-data v11, :array_a

    .line 531
    .line 532
    .line 533
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v10

    .line 540
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 547
    .line 548
    new-array v10, v5, [J

    .line 549
    .line 550
    fill-array-data v10, :array_b

    .line 551
    .line 552
    .line 553
    invoke-direct {v2, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 567
    .line 568
    new-array v10, v5, [J

    .line 569
    .line 570
    fill-array-data v10, :array_c

    .line 571
    .line 572
    .line 573
    invoke-direct {v2, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 591
    .line 592
    .line 593
    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 594
    :cond_e
    :goto_5
    const-wide/16 v5, -0x1

    .line 595
    .line 596
    goto :goto_6

    .line 597
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .line 601
    .line 602
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 603
    .line 604
    const/4 v8, 0x5

    .line 605
    new-array v8, v8, [J

    .line 606
    .line 607
    fill-array-data v8, :array_d

    .line 608
    .line 609
    .line 610
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 624
    .line 625
    new-array v5, v5, [J

    .line 626
    .line 627
    fill-array-data v5, :array_e

    .line 628
    .line 629
    .line 630
    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    goto :goto_5

    .line 648
    :goto_6
    cmp-long v0, v3, v5

    .line 649
    .line 650
    if-eqz v0, :cond_f

    .line 651
    .line 652
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzn:J

    .line 653
    .line 654
    sub-long/2addr v3, v5

    .line 655
    goto :goto_7

    .line 656
    :cond_f
    move-wide v3, v5

    .line 657
    :goto_7
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 658
    .line 659
    goto :goto_8

    .line 660
    :cond_10
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 661
    .line 662
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 663
    .line 664
    :goto_8
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 665
    .line 666
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 671
    .line 672
    const/4 v2, 0x1

    .line 673
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzl:Z

    .line 674
    .line 675
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 676
    .line 677
    .line 678
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzo:J

    .line 679
    .line 680
    return-wide v2

    .line 681
    :catch_3
    move-exception v0

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcih;->zzn()V

    .line 683
    .line 684
    .line 685
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 686
    .line 687
    const/16 v3, 0x7d0

    .line 688
    .line 689
    const/4 v4, 0x1

    .line 690
    invoke-direct {v2, v0, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 691
    .line 692
    .line 693
    throw v2

    .line 694
    :cond_11
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 695
    .line 696
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 697
    .line 698
    .line 699
    move-result-object v6

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcih;->zzn()V

    .line 701
    .line 702
    .line 703
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhr;

    .line 704
    .line 705
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzm:I

    .line 706
    .line 707
    const/4 v5, 0x0

    .line 708
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfy;->zzf:[B

    .line 709
    .line 710
    const/4 v4, 0x0

    .line 711
    move-object v2, v0

    .line 712
    move-object/from16 v7, p1

    .line 713
    .line 714
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhb;[B)V

    .line 715
    .line 716
    .line 717
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzcih;->zzm:I

    .line 718
    .line 719
    const/16 v3, 0x1a0

    .line 720
    .line 721
    if-ne v2, v3, :cond_12

    .line 722
    .line 723
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgx;

    .line 724
    .line 725
    const/16 v3, 0x7d8

    .line 726
    .line 727
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 731
    .line 732
    .line 733
    :cond_12
    throw v0

    .line 734
    :catch_4
    move-exception v0

    .line 735
    move-object v4, v0

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcih;->zzn()V

    .line 737
    .line 738
    .line 739
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 740
    .line 741
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 742
    .line 743
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 752
    .line 753
    const/4 v5, 0x4

    .line 754
    new-array v5, v5, [J

    .line 755
    .line 756
    fill-array-data v5, :array_f

    .line 757
    .line 758
    .line 759
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    const/16 v6, 0x7d0

    .line 771
    .line 772
    const/4 v8, 0x1

    .line 773
    move-object v2, v0

    .line 774
    move-object/from16 v5, p1

    .line 775
    .line 776
    move v7, v8

    .line 777
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 778
    .line 779
    .line 780
    throw v0

    .line 781
    :goto_a
    :try_start_5
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 782
    .line 783
    new-array v15, v5, [J

    .line 784
    .line 785
    fill-array-data v15, :array_10

    .line 786
    .line 787
    .line 788
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v9

    .line 799
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 800
    .line 801
    .line 802
    if-eqz v9, :cond_15

    .line 803
    .line 804
    new-instance v2, Ljava/net/URL;

    .line 805
    .line 806
    invoke-direct {v2, v6, v9}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v6

    .line 813
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 814
    .line 815
    new-array v15, v5, [J

    .line 816
    .line 817
    fill-array-data v15, :array_11

    .line 818
    .line 819
    .line 820
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v9

    .line 827
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v9

    .line 831
    if-nez v9, :cond_13

    .line 832
    .line 833
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 834
    .line 835
    new-array v15, v5, [J

    .line 836
    .line 837
    fill-array-data v15, :array_12

    .line 838
    .line 839
    .line 840
    invoke-direct {v9, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v9

    .line 847
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v9

    .line 851
    if-eqz v9, :cond_14

    .line 852
    .line 853
    :cond_13
    const/4 v9, 0x5

    .line 854
    goto :goto_b

    .line 855
    :cond_14
    new-instance v0, Ljava/net/ProtocolException;

    .line 856
    .line 857
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 858
    .line 859
    const/4 v9, 0x5

    .line 860
    new-array v3, v9, [J

    .line 861
    .line 862
    fill-array-data v3, :array_13

    .line 863
    .line 864
    .line 865
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    throw v0

    .line 884
    :goto_b
    move v4, v0

    .line 885
    move-object v6, v2

    .line 886
    move-wide/from16 v8, v16

    .line 887
    .line 888
    const/4 v2, 0x1

    .line 889
    goto/16 :goto_0

    .line 890
    .line 891
    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    .line 892
    .line 893
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 894
    .line 895
    const/4 v3, 0x4

    .line 896
    new-array v4, v3, [J

    .line 897
    .line 898
    fill-array-data v4, :array_14

    .line 899
    .line 900
    .line 901
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v2

    .line 908
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    throw v0

    .line 912
    :cond_16
    new-instance v2, Ljava/net/NoRouteToHostException;

    .line 913
    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .line 918
    .line 919
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 920
    .line 921
    const/4 v5, 0x4

    .line 922
    new-array v6, v5, [J

    .line 923
    .line 924
    fill-array-data v6, :array_15

    .line 925
    .line 926
    .line 927
    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    invoke-direct {v2, v0}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 948
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    .line 949
    .line 950
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 951
    .line 952
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 961
    .line 962
    const/4 v5, 0x4

    .line 963
    new-array v5, v5, [J

    .line 964
    .line 965
    fill-array-data v5, :array_16

    .line 966
    .line 967
    .line 968
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    const/16 v6, 0x7d0

    .line 980
    .line 981
    const/4 v8, 0x1

    .line 982
    move-object v2, v0

    .line 983
    move-object/from16 v5, p1

    .line 984
    .line 985
    move v7, v8

    .line 986
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 987
    .line 988
    .line 989
    throw v0

    .line 990
    nop

    .line 991
    :array_0
    .array-data 8
        0x7cc17b8d5d949a52L    # 8.723132330564681E292
        0x5b4a5b73f4b86071L    # 5.8463932234275424E131
    .end array-data

    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_1
    .array-data 8
        -0x59cc2c7e8b35e753L
        -0x19072b85bdf193ceL    # -1.0803733562074115E188
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :array_2
    .array-data 8
        -0x112b87e0ae42daa6L    # -7.57666746177686E225
        -0x2930dc7d841bf05bL    # -1.4626117176807117E110
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_3
    .array-data 8
        0x5bd793ba5af86810L    # 2.677612795292605E134
        0x3d4d372d5d1e9258L
        -0x6997b2307888f9f0L    # -9.922239968771245E-201
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_4
    .array-data 8
        -0x4871610606ad9142L    # -4.3938982704479E-41
        -0x7dacbc1eb0dd6173L    # -1.841097712395872E-297
        -0x4c83ff951f51f9e8L    # -1.0890911026267803E-60
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_5
    .array-data 8
        0x460226c28b7a736bL    # 1.797628182383419E29
        -0x7864c60c3cc03096L    # -5.03284740316298E-272
    .end array-data

    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    :array_6
    .array-data 8
        -0x6e8505f5d0ca800eL
        0x5e8b945a4ed4c14dL    # 2.75508075125039E147
        0x86b278f1aa5f6c2L
    .end array-data

    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    :array_7
    .array-data 8
        0x37929959fca9314fL    # 5.337659648995979E-41
        0x1bc2432d48709fafL    # 5.768602445760952E-175
        -0x57431829b499f690L    # -1.878035613493249E-112
        -0x382a472148d876cfL    # -1.1549475095750065E38
        0x1a78cb67db71664bL
    .end array-data

    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    :array_8
    .array-data 8
        0x64348ba664e7921fL    # 5.081528673688791E174
        0x45a0b69752182870L
    .end array-data

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_9
    .array-data 8
        -0x69eef3591e0af6c2L
        0x4f30abf67562fb09L    # 2.945639617089184E73
        0x685f6d7b01319ac3L    # 5.7354729628153074E194
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    :array_a
    .array-data 8
        -0x7e281e0ed8840935L    # -8.915499441230777E-300
        -0x34ebc7def60941bdL    # -4.841549499981608E53
        -0x632f3e8861a3860aL    # -6.937226050016573E-170
        -0x43c655418b06b013L    # -1.391409158144551E-18
    .end array-data

    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    :array_b
    .array-data 8
        0x7acd7cd16e593934L    # 3.4256653255935373E283
        0x3968b82595995e82L    # 3.8086148254584617E-32
    .end array-data

    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    :array_c
    .array-data 8
        0x28cca93369bb7a5cL
        0x403041cd36a839cbL    # 16.25703755957674
    .end array-data

    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    :array_d
    .array-data 8
        0x6f64b19fc3997aa2L    # 3.921822179729827E228
        0x3fea23b912bcf57eL    # 0.8168607107142376
        0x780649f506a35e3cL    # 1.4718876699294662E270
        -0x3e71873a2a41898fL    # -6.390393071799935E7
        -0x3ce5fc2fe27ffccdL    # -1.8306354443716608E15
    .end array-data

    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    :array_e
    .array-data 8
        0x61b53a8b4685f9cdL    # 4.775301791099981E162
        0x541b3eac7c598ed5L    # 1.45486452711754E97
    .end array-data

    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    :array_f
    .array-data 8
        0x4b55c5f2a5202973L    # 8.341845896229188E54
        0x1fbace9d7ba670d3L    # 7.810016209420683E-156
        0x394189b4cefe180dL    # 6.755359197508524E-33
        0x103fa9de0387d83cL
    .end array-data

    :array_10
    .array-data 8
        0x1f845507fcf1174dL    # 7.40449833507564E-157
        0x528c1f963159c6adL    # 4.4756521921850845E89
    .end array-data

    :array_11
    .array-data 8
        -0x327bbd10aca23d84L    # -2.6672265500724335E65
        0x2a14780c489363f6L    # 5.577978467212862E-106
    .end array-data

    :array_12
    .array-data 8
        -0x698de179da22dba1L    # -1.479458340653034E-200
        0x15210abfd7d2f384L    # 6.63518885233228E-207
    .end array-data

    :array_13
    .array-data 8
        0x75c596b7b9680e3fL    # 2.0745962968404942E259
        -0x211e4c687665902fL    # -1.1317192463969168E149
        0x451d96291df3d492L    # 8.941990554016021E24
        -0x4fe91688c58d2e0eL    # -4.946792065117531E-77
        -0x4950a272970f2778L    # -2.74702134346689E-45
    .end array-data

    :array_14
    .array-data 8
        0x6d275493fed900d7L    # 6.434114053657617E217
        -0x4ad4b069ad54b9beL    # -1.4256948496117395E-52
        -0x47d56bc5a9f03e6fL    # -3.905435268353029E-38
        0x6cd15b1a9de2d906L
    .end array-data

    :array_15
    .array-data 8
        -0x5262ad32e6ca9559L    # -5.758060710754178E-89
        0x3ecfe338fc54b0fcL    # 3.8012967446180253E-6
        -0xb9a5f5bc26100f2L    # -4.955104556831354E252
        0x242239420c33907L    # 8.66736598058929E-298
    .end array-data

    :array_16
    .array-data 8
        0x59cf038c3392a109L    # 4.1003791964209275E124
        0x30407e7bcb466f16L    # 2.84891248717209E-76
        -0x469f1ab6beae0946L    # -2.603186912507125E-32
        -0x1293404dd54076dbL    # -1.268547615747251E219
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    sget v3, Lcom/google/android/gms/internal/ads/zzfy;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v2

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhp;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    .line 19
    .line 20
    const/16 v5, 0x7d0

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 24
    .line 25
    .line 26
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcih;->zzn()V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzl:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzl:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzs:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzk:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcih;->zzn()V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzl:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzl:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzs:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    .line 65
    .line 66
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzj:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzm(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzr:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzs:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/net/Socket;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcih;->zzr:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    new-array v2, v2, [J

    .line 38
    .line 39
    fill-array-data v2, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x54a3f6c5df6f4396L    # 5.45827237231975E99
        0x2a70fdf583ea708eL    # 2.96351214649036E-104
        0x4e3c9d27d8ccbc51L    # 7.714289285253791E68
        0x71df59cf7e457f6eL    # 3.266370873184309E240
        0x24cf872c88547ed1L
        -0x1230cb76167e2eaeL    # -8.81240033318108E220
    .end array-data
.end method
