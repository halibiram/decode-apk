.class Lcom/android/volley/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/VolleyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog$Marker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field private static final MIN_DURATION_FOR_LOGGING_MS:J


# instance fields
.field private mFinished:Z

.field private final mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/VolleyLog$MarkerLog$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/volley/VolleyLog$MarkerLog;->ENABLED:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 13
    .line 14
    return-void
.end method

.method private getTotalDuration()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 20
    .line 21
    iget-wide v0, v0, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v3, v2}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨(ILjava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 31
    .line 32
    iget-wide v2, v2, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 33
    .line 34
    sub-long/2addr v2, v0

    .line 35
    return-wide v2
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;J)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 7
    .line 8
    new-instance v7, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    move-object v1, v7

    .line 15
    move-object v2, p1

    .line 16
    move-wide v3, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 p3, 0x5

    .line 32
    new-array p3, p3, [J

    .line 33
    .line 34
    fill-array-data p3, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x149d8ef532103e08L    # -1.894632232240048E209
        -0x297b2cd98c5c8557L    # -6.113492804966666E108
        0x5bc0c889169b9722L    # 9.530299019151443E133
        0x5f5dcc790d9223aeL    # 2.4385714280662237E151
        0xcbb8fb3b039d01L
    .end array-data
.end method

.method public finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x2f1f7dbece13efafL    # 1.0374574592022272E-81
        -0x7fc316a80bea0948L
        -0x396ad3bcfb7853cL
        -0x6eaba38b10a75fb9L    # -3.4379990585967805E-225
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 8
        -0x2352680f37ec6341L    # -2.7532434834143336E138
        0x6005dad38264d5ceL    # 3.6628103126793966E154
        0x14846942d6eee408L    # 7.760702963999451E-210
        0xf08a0cb9d05e68eL
        0x199c2401a5957844L    # 2.58700224919268E-185
        0x8a295c5549cebc1L
        -0x1c100d3eccbdc30aL    # -2.4693050300672648E173
        0x70b627b417fd8e20L    # 8.805422284043838E234
        0x6976c5ac6316e094L
        0x35c2eacf3cff3f7bL    # 1.0112258120905262E-49
    .end array-data
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v3, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mFinished:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/volley/VolleyLog$MarkerLog;->getTotalDuration()J

    .line 9
    .line 10
    .line 11
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    cmp-long v8, v4, v6

    .line 15
    .line 16
    if-gtz v8, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 27
    .line 28
    iget-wide v6, v6, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 29
    .line 30
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    new-array v9, v1, [J

    .line 33
    .line 34
    fill-array-data v9, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v8, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-array v5, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v4, v5, v2

    .line 51
    .line 52
    aput-object p1, v5, v3

    .line 53
    .line 54
    invoke-static {v8, v5}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/volley/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;

    .line 74
    .line 75
    iget-wide v8, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->time:J

    .line 76
    .line 77
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 78
    .line 79
    new-array v10, v1, [J

    .line 80
    .line 81
    fill-array-data v10, :array_1

    .line 82
    .line 83
    .line 84
    invoke-direct {v5, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    sub-long v6, v8, v6

    .line 92
    .line 93
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    iget-wide v10, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->thread:J

    .line 98
    .line 99
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    iget-object v4, v4, Lcom/android/volley/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    .line 104
    .line 105
    new-array v10, v1, [Ljava/lang/Object;

    .line 106
    .line 107
    aput-object v6, v10, v2

    .line 108
    .line 109
    aput-object v7, v10, v3

    .line 110
    .line 111
    aput-object v4, v10, v0

    .line 112
    .line 113
    invoke-static {v5, v10}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    move-wide v6, v8

    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    monitor-exit p0

    .line 121
    return-void

    .line 122
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    throw p1

    .line 124
    nop

    .line 125
    :array_0
    .array-data 8
        -0x6a3f5edd416e9119L    # -6.629953384045965E-204
        0xa254932c1ad6fe8L
        -0x11fb1f033484d0a9L    # -9.433949532682563E221
    .end array-data

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
    :array_1
    .array-data 8
        -0x718262b16db74258L
        -0x460b27c1f03089dbL    # -1.6443566534455185E-29
        -0x526dbed540a53b3eL    # -3.5845333586320606E-89
    .end array-data
.end method
