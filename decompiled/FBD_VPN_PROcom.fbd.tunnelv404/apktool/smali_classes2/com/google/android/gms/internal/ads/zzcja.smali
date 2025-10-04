.class final Lcom/google/android/gms/internal/ads/zzcja;
.super Lcom/google/android/gms/internal/ads/zzgq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzht;


# static fields
.field private static final zzb:Ljava/util/regex/Pattern;


# instance fields
.field private final zzc:I

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzh:Ljava/net/HttpURLConnection;

.field private final zzi:Ljava/util/Queue;

.field private zzj:Ljava/io/InputStream;

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private final zzr:J

.field private final zzs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcja;->zzb:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0x784db5a4df0957d2L    # 3.1390782389828186E271
        0x4dc0d9f4c92325abL    # 3.5493172887472876E66
        0x73d1546da7264293L    # 7.754787886605121E249
        0x42a95622477ef017L    # 1.3928866496376045E13
        -0x139e644ce10681edL    # -1.1855556490025283E214
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhy;IIJJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zze:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 16
    .line 17
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzc:I

    .line 18
    .line 19
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayDeque;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:Ljava/util/Queue;

    .line 27
    .line 28
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzr:J

    .line 29
    .line 30
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzs:J

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgq;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private final zzl()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzh:Ljava/net/HttpURLConnection;

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        -0x66a287fe4086c4c3L
        0x3c4ef2150fcedd1fL    # 3.3551323478172142E-18
        0x2e59b7a698eba1fcL    # 2.068464446536512E-85
        0x741159424aad1c7bL    # 1.2421170742431276E251
        -0x644bbeb13b181568L
        -0x4052bba01d708ab2L    # -0.05716228142385181
    .end array-data
.end method


# virtual methods
.method public final zza([BII)I
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzm:J

    .line 10
    .line 11
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzn:J

    .line 12
    .line 13
    sub-long/2addr v1, v3

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    const/4 v8, -0x1

    .line 17
    cmp-long v9, v1, v5

    .line 18
    .line 19
    if-nez v9, :cond_1

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzo:J

    .line 24
    .line 25
    add-long/2addr v1, v3

    .line 26
    int-to-long v9, v0

    .line 27
    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzs:J

    .line 28
    .line 29
    add-long/2addr v1, v9

    .line 30
    add-long/2addr v1, v3

    .line 31
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzq:J

    .line 32
    .line 33
    const-wide/16 v11, 0x1

    .line 34
    .line 35
    add-long v13, v5, v11

    .line 36
    .line 37
    cmp-long v0, v1, v13

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzp:J

    .line 42
    .line 43
    cmp-long v2, v5, v0

    .line 44
    .line 45
    if-gez v2, :cond_2

    .line 46
    .line 47
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzr:J

    .line 48
    .line 49
    add-long/2addr v5, v13

    .line 50
    sub-long/2addr v5, v3

    .line 51
    const-wide/16 v2, -0x1

    .line 52
    .line 53
    add-long/2addr v5, v2

    .line 54
    add-long v15, v13, v9

    .line 55
    .line 56
    add-long/2addr v2, v15

    .line 57
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    const/4 v6, 0x2

    .line 66
    move-object/from16 v1, p0

    .line 67
    .line 68
    move-wide v2, v13

    .line 69
    move-wide v13, v4

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcja;->zzk(JJI)Ljava/net/HttpURLConnection;

    .line 71
    .line 72
    .line 73
    iput-wide v13, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzq:J

    .line 74
    .line 75
    move-wide v5, v13

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_0
    add-long/2addr v5, v11

    .line 80
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzo:J

    .line 81
    .line 82
    sub-long/2addr v5, v0

    .line 83
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzn:J

    .line 84
    .line 85
    sub-long/2addr v5, v0

    .line 86
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    long-to-int v1, v0

    .line 91
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;

    .line 92
    .line 93
    move-object/from16 v2, p1

    .line 94
    .line 95
    move/from16 v3, p2

    .line 96
    .line 97
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eq v0, v8, :cond_3

    .line 102
    .line 103
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzn:J

    .line 104
    .line 105
    int-to-long v3, v0

    .line 106
    add-long/2addr v1, v3

    .line 107
    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzn:J

    .line 108
    .line 109
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzgq;->zzg(I)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return v0

    .line 113
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 120
    .line 121
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 122
    .line 123
    const/16 v3, 0x7d0

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 127
    .line 128
    .line 129
    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhb;)J
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzn:J

    .line 8
    .line 9
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzf:J

    .line 10
    .line 11
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 12
    .line 13
    const-wide/16 v10, -0x1

    .line 14
    .line 15
    cmp-long v4, v2, v10

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzr:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzr:J

    .line 23
    .line 24
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    :goto_0
    add-long/2addr v2, v5

    .line 29
    add-long v7, v2, v10

    .line 30
    .line 31
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzo:J

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    move-object v4, p0

    .line 35
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzcja;->zzk(JJI)Ljava/net/HttpURLConnection;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzh:Ljava/net/HttpURLConnection;

    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    new-array v4, v1, [J

    .line 44
    .line 45
    fill-array-data v4, :array_0

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcja;->zzb:Ljava/util/regex/Pattern;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhb;->zzg:J

    .line 102
    .line 103
    cmp-long v7, v2, v10

    .line 104
    .line 105
    if-eqz v7, :cond_1

    .line 106
    .line 107
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzm:J

    .line 108
    .line 109
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzo:J

    .line 110
    .line 111
    add-long/2addr v0, v2

    .line 112
    add-long/2addr v0, v10

    .line 113
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzp:J

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzo:J

    .line 121
    .line 122
    sub-long v2, v0, v2

    .line 123
    .line 124
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzm:J

    .line 125
    .line 126
    add-long/2addr v0, v10

    .line 127
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzp:J

    .line 128
    .line 129
    :goto_1
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzq:J

    .line 130
    .line 131
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzk:Z

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzj(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 134
    .line 135
    .line 136
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzm:J

    .line 137
    .line 138
    return-wide v0

    .line 139
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 145
    .line 146
    const/4 v4, 0x5

    .line 147
    new-array v4, v4, [J

    .line 148
    .line 149
    fill-array-data v4, :array_1

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 166
    .line 167
    new-array v0, v0, [J

    .line 168
    .line 169
    fill-array-data v0, :array_2

    .line 170
    .line 171
    .line 172
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciy;

    .line 190
    .line 191
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzciy;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :array_0
    .array-data 8
        0x26480b58dd8c96b7L
        0x77de440fcc223ba7L    # 2.4983267990394756E269
        0x2886e80c60a353d7L
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_1
    .array-data 8
        -0x4d442392f1c49c28L    # -2.6455638382636252E-64
        0x790ea3b03fb961f9L    # 1.3260088716403686E275
        -0x34c9488f5dd8f155L    # -2.175814411307168E54
        -0x14a9a2c56511a54fL    # -1.1488144768213019E209
        0x65556125f0c91b7L
    .end array-data

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
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 8
        0x242b8d4fe9ab8e13L    # 1.895331089359788E-134
        -0x3cd4b6901c262e6fL    # -3.8402846420441045E15
    .end array-data
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzh:Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v2

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v2

    .line 14
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhp;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 17
    .line 18
    const/16 v5, 0x7d0

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 22
    .line 23
    .line 24
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzl()V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzk:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzk:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzl()V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzk:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzk:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzh()V

    .line 52
    .line 53
    .line 54
    :cond_2
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzh:Ljava/net/HttpURLConnection;

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

.method public final zzk(JJI)Ljava/net/HttpURLConnection;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    .line 6
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 13
    .line 14
    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 22
    .line 23
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzc:I

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 26
    .line 27
    .line 28
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhs;->zza()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v4, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    move-object v6, p1

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v7, v2, [J

    .line 87
    .line 88
    fill-array-data v7, :array_0

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array p2, v2, [J

    .line 107
    .line 108
    fill-array-data p2, :array_1

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 129
    .line 130
    new-array p3, v2, [J

    .line 131
    .line 132
    fill-array-data p3, :array_2

    .line 133
    .line 134
    .line 135
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {v4, p2, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array p2, v1, [J

    .line 148
    .line 149
    fill-array-data p2, :array_3

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zze:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 165
    .line 166
    new-array p2, v1, [J

    .line 167
    .line 168
    fill-array-data p2, :array_4

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array p3, v2, [J

    .line 181
    .line 182
    fill-array-data p3, :array_5

    .line 183
    .line 184
    .line 185
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {v4, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 196
    .line 197
    new-array p2, v2, [J

    .line 198
    .line 199
    fill-array-data p2, :array_6

    .line 200
    .line 201
    .line 202
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:Ljava/util/Queue;

    .line 216
    .line 217
    invoke-interface {p1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhb;->zza:Landroid/net/Uri;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzl:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    .line 234
    const/16 p1, 0xc8

    .line 235
    .line 236
    if-lt p2, p1, :cond_2

    .line 237
    .line 238
    const/16 p1, 0x12b

    .line 239
    .line 240
    if-gt p2, p1, :cond_2

    .line 241
    .line 242
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;

    .line 247
    .line 248
    if-eqz p2, :cond_1

    .line 249
    .line 250
    new-instance p2, Ljava/io/SequenceInputStream;

    .line 251
    .line 252
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;

    .line 253
    .line 254
    invoke-direct {p2, p3, p1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 255
    .line 256
    .line 257
    move-object p1, p2

    .line 258
    goto :goto_1

    .line 259
    :catch_1
    move-exception p1

    .line 260
    goto :goto_2

    .line 261
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    .line 263
    return-object v4

    .line 264
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzl()V

    .line 265
    .line 266
    .line 267
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 268
    .line 269
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 270
    .line 271
    const/16 p4, 0x7d0

    .line 272
    .line 273
    invoke-direct {p2, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 274
    .line 275
    .line 276
    throw p2

    .line 277
    :cond_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzl()V

    .line 282
    .line 283
    .line 284
    new-instance p2, Lcom/google/android/gms/internal/ads/zzciz;

    .line 285
    .line 286
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzl:I

    .line 287
    .line 288
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 289
    .line 290
    invoke-direct {p2, p3, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzciz;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzhb;I)V

    .line 291
    .line 292
    .line 293
    throw p2

    .line 294
    :catch_2
    move-exception p2

    .line 295
    move-object v3, p2

    .line 296
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcja;->zzl()V

    .line 297
    .line 298
    .line 299
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 304
    .line 305
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 306
    .line 307
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 308
    .line 309
    new-array p4, v0, [J

    .line 310
    .line 311
    fill-array-data p4, :array_7

    .line 312
    .line 313
    .line 314
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p3

    .line 321
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const/16 v5, 0x7d0

    .line 326
    .line 327
    move-object v1, p2

    .line 328
    move v6, p5

    .line 329
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 330
    .line 331
    .line 332
    throw p2

    .line 333
    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    .line 338
    .line 339
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcja;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 340
    .line 341
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 342
    .line 343
    new-array p4, v0, [J

    .line 344
    .line 345
    fill-array-data p4, :array_8

    .line 346
    .line 347
    .line 348
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    const/16 v8, 0x7d0

    .line 360
    .line 361
    move-object v4, p2

    .line 362
    move v9, p5

    .line 363
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzhb;II)V

    .line 364
    .line 365
    .line 366
    throw p2

    .line 367
    :array_0
    .array-data 8
        0x402b9ff1a1f76996L    # 13.812390386058535
        -0x568785f616f9c2a7L    # -6.513804001779969E-109
    .end array-data

    .line 368
    .line 369
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
    :array_1
    .array-data 8
        -0x69a6f1fb0bc7a6d5L    # -5.114382503723545E-201
        -0x46a89709849398fcL    # -1.803441648775526E-32
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_2
    .array-data 8
        0x53f48062358a434fL    # 2.7369334453270366E96
        0x493b2a02c1859928L
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    :array_3
    .array-data 8
        -0x16cb798d5bd4b507L    # -6.137115173334538E198
        0x2aa95dad82a3f704L    # 3.539176854845418E-103
        -0x2ac6fa9c4ee1a214L    # -3.5025481635998755E102
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_4
    .array-data 8
        -0x3ec51bd2594aa57L    # -4.794866887941151E289
        0x250dfd896634951dL    # 3.380133263305073E-130
        0xbdc49e327027d43L
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_5
    .array-data 8
        0x6b5ce03d337292f6L    # 1.4833138315335891E209
        0x22861b69eccf94b0L    # 2.266123327391366E-142
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_6
    .array-data 8
        0x1d0ddbb8be5c7d1cL
        0x7512104ef0da457L
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_7
    .array-data 8
        -0x552c213b1f415542L
        -0x433ddc007fad17a6L    # -5.035032776798094E-16
        0x6b5240e00ed94b6dL    # 9.37651014051902E208
        -0x54336cfe39a72337L    # -1.0451200864147245E-97
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :array_8
    .array-data 8
        -0x775a6588178e6c20L    # -5.234266175981482E-267
        -0x1b53c6312c10cb91L    # -8.935809870790272E176
        -0x3c7ba1b248aa9d85L    # -1.8346199729702896E17
        -0x779e2fa06327c7f9L    # -2.697579911771345E-268
    .end array-data
.end method
