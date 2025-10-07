.class public final Lcom/google/android/gms/common/api/internal/zacp;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    xor-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    new-array v2, v2, [J

    .line 32
    .line 33
    fill-array-data v2, :array_1

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 8
        -0x7d02816ed88a1b47L
        -0x78bbeaaa9678621L
        -0x518d037f3b7e5be1L    # -6.108329857984065E-85
        -0x4136adfe64bbf816L    # -3.018419386547647E-6
    .end array-data

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
    .line 68
    .line 69
    :array_1
    .array-data 8
        0x1c5322412161d14cL
        -0x2643939954fe420dL    # -1.8789485716157323E124
        0x459ccaca8ca7d733L    # 2.2276849508069296E27
        0x6d7318b6a4269540L
        0x6014d21afd4612a2L    # 6.979006817732013E154
    .end array-data
.end method


# virtual methods
.method public final addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/PendingResult$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :array_0
    .array-data 8
        0x18dd9f4a65d21324L    # 6.648450907498107E-189
        0x1730c3189f1d55baL    # 5.605974626664269E-197
        -0x16c4bafca64b8815L    # -8.153717161661437E198
        -0x48ee422f259acbf8L
        -0x6dc9b1aca098dd0eL    # -6.170837412217432E-221
        0x14dc02b1ed1a668fL
        -0x63a30499ea87f7c0L
        0x20b75d5550f7f8c8L    # 4.461082153016048E-151
        -0x25c4acf119065367L    # -4.624124983013872E126
        0x1a3ecffaab92faeeL
        -0x39d002e5a8b6a7ddL    # -1.267202294848576E30
        -0x4a293efff34acae0L
        0x3172af033febc675L    # 1.6919307807729466E-70
    .end array-data
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0xd

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 8
        -0x85f57b73079f3adL    # -1.71874857824347E268
        0x50375a4023732521L    # 2.7040395317083384E78
        0x611b4cdca8947d1dL    # 5.997140392873435E159
        0x3832a25702f94e92L    # 5.476081632003427E-38
        0xdc819e47ffb29baL
        -0x516be19827ffed82L    # -2.5890634413313882E-84
        -0x48f2c7bc328754b1L    # -1.6378255707257775E-43
        0x2336a33f5e3acab0L
        -0x6b8bdf33d476748aL
        -0x38ed0c1ece66a565L    # -2.460195266850974E34
        0x7f52f6e50527831cL    # 2.0808245445956202E305
        0x6fdc13fedddd2526L    # 6.811214095619967E230
        -0x90c4b8eb826b5a2L    # -9.92771754689131E264
    .end array-data
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0xd

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x74ce6b03f03a33efL    # 4.4602317080694264E254
        -0x56e20ebde51728d3L    # -1.245054690448051E-110
        0x3a6a1ec98feb49f2L    # 2.637472561870458E-27
        0x46761a05642d85c7L    # 2.801716325239456E31
        0x173031f999f638ddL    # 5.416385399017009E-197
        -0x4a9fe25b1a867c35L    # -1.3460542026029244E-51
        0x62f16bb7049f1298L    # 4.1090811796529445E168
        0x653bef001bc2458dL    # 4.5277691025794997E179
        0x2388ae8559951045L
        -0x5bd097b010778c01L    # -2.160552862125919E-134
        0x515e21a851eb2326L    # 9.146168500054549E83
        -0x39b4a086fbca818eL    # -4.337415527437186E30
        0x1c7c52372f06ae6eL    # 1.832117968042168E-171
    .end array-data
.end method

.method public final cancel()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        0x298911e5d84ef813L
        0x41daaef51b04d952L    # 1.7906945080757642E9
        -0x124584ba09d30211L    # -3.73921140509038E220
        -0xdfef43264a5e567L    # -1.4207960155274256E241
        -0x5394c6841157eb38L    # -1.0196521551211379E-94
        0x52113b94cd1674b9L    # 2.1425604171075183E87
        -0x224b527a88661cceL
        0x28a994d57a4d96a0L    # 8.310279766980686E-113
        0x126c7285892625e5L    # 6.295859039121987E-220
        0xda29b461e84cf52L    # 5.450032574700077E-243
        -0x612c1db2ea2799f8L    # -3.535784793735265E-160
        -0x2283d96de0da58c9L    # -2.1454908284626463E142
        -0x31c8e5b42582eed9L    # -6.228480972358489E68
    .end array-data
.end method

.method public final isCanceled()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    new-array v2, v2, [J

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :array_0
    .array-data 8
        -0x73db4768b6200cd9L    # -3.617641677107399E-250
        0xb2b6676b1cdeaf9L
        0x25c5eee8e0c5a1a9L
        0x4f2b13be5a8dbd65L    # 2.3920567927943394E73
        0x59740049e6d3e874L    # 8.26366550973364E122
        0x3397c90265870722L    # 3.7003904575011124E-60
        0x2be63be0d3c3f455L    # 3.2528725255359977E-97
        0x2112f0fd935f4d56L
        0x52297d7a32eaf2c9L    # 6.33842091713037E87
        -0x654d39b428b5c4e5L    # -4.524526882670431E-180
        0x687caf84231594L
        -0x7ceb2cdda50cacedL    # -8.151619329217184E-294
        0x132786ab43b05515L    # 2.132662617699677E-216
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v1, 0xd

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        -0x1e551484b96d9161L    # -3.0277520888974046E162
        -0x6e9c339e18851b9eL    # -6.685942846803847E-225
        -0x52bd59a5c544f05L    # -4.685407513368001E283
        0x6aa55f9ed1d22aa3L    # 5.360965961296422E205
        -0x5bb1f98497f50d63L    # -8.261893465179586E-134
        -0x4d2caf82442d1e8eL    # -7.336054790104816E-64
        0x479a85a1866b4e3cL    # 8.813444872580596E36
        -0x74a82852768fc81eL    # -5.081305524829425E-254
        -0x33fa5b72a0e75842L    # -1.698174317988247E58
        0x228de195a61f1a2L
        -0x13f2e49fda6903edL    # -3.0621287633187708E212
        0x7350e2ce6edb263L
        0x1c50476f19f56cddL    # 2.63275989136577E-172
    .end array-data
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/16 p3, 0xd

    new-array p3, p3, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 8
        0x56466b9ebd6768edL    # 4.1136908450708516E107
        -0x6fc5a9ef74fdc44dL
        -0x15e87f9857a5087cL    # -1.1513150631535594E203
        -0x60920ac726ceff15L    # -2.727492871147765E-157
        -0x16a343b82c9d4e0aL
        0x3ec046d77922d181L    # 1.9403368663689184E-6
        -0x5ba6e4eec8baf8eeL
        -0x3be1f2f384f9c8d5L    # -1.3858564597503143E20
        -0x39d8d0771061cd18L    # -9.184795393824969E29
        0x774a2801e1f1b760L    # 4.216985780598662E266
        0x32adee963cb97481L    # 1.4211057163213552E-64
        0x4a39ca9a250335e8L    # 3.769419460798664E49
        -0x27cba5f2d613a1bfL    # -8.019003061397113E116
    .end array-data
.end method

.method public final then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult<",
            "TS;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :array_0
    .array-data 8
        0x12bea500f64e4331L    # 2.170282893713612E-218
        -0x31402d3fd62dc46aL    # -2.196359627148622E71
        -0x39f528f4f67b6e30L    # -2.6581060570165665E29
        -0x689f3964a683733bL    # -4.488448815120718E-196
        0x7e1368363897fefdL    # 2.0307471111875355E299
        0xfd93c118bfa722aL    # 2.539688875840997E-232
        0x5ef0d999b6c7e30cL    # 2.1545561498631484E149
        0x77b3a688bbad270fL    # 4.055181367441773E268
        -0x226f717d729bdad3L    # -5.047440473257998E142
        0xea0b683f4f00327L    # 3.208237998933461E-238
        -0x18ca7c7d3cd2755fL    # -1.4977270921101243E189
        0x596922b4cec9f392L    # 5.192506096235359E122
        -0x2ed22afd23502fbcL    # -1.1319110144650952E83
    .end array-data
.end method

.method public final zaa()Lcom/google/android/gms/common/api/Status;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacp;->zaa:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
