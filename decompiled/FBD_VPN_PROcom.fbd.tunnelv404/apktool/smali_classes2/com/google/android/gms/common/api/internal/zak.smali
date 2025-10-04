.class public final Lcom/google/android/gms/common/api/internal/zak;
.super Lcom/google/android/gms/common/api/internal/zap;
.source "SourceFile"


# instance fields
.field private final zad:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/common/api/internal/zaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zap;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 16
    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x3696e1fd60a1082aL    # 1.0020498106300913E-45
        0x3cd127fb5a2c8152L    # 9.52359251506767E-16
        0xd3d35f060f892f6L
    .end array-data
.end method

.method public static zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zak;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x3

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
    const-class v1, Lcom/google/android/gms/common/api/internal/zak;

    .line 21
    .line 22
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/google/android/gms/common/api/internal/zak;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/zak;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :array_0
    .array-data 8
        0x1b0edd2829765194L
        0x1e6194fb66334a72L
        -0x7eea51d573603785L
    .end array-data
.end method

.method private final zai(I)Lcom/google/android/gms/common/api/internal/zaj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/common/api/internal/zaj;

    .line 22
    .line 23
    return-object p1
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    new-array v5, v5, [J

    .line 25
    .line 26
    fill-array-data v5, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget v4, v2, Lcom/google/android/gms/common/api/internal/zaj;->zaa:I

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v4, v0, [J

    .line 48
    .line 49
    fill-array-data v4, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v5, v0, [J

    .line 71
    .line 72
    fill-array-data v5, :array_2

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    return-void

    .line 93
    :array_0
    .array-data 8
        0x17f514c2511e97baL
        0x3ff9e5d96be09cf7L    # 1.6186155523262735
        -0x18a976dc1d44c188L    # -6.275501126926985E189
        0x9ba12f22d8c43e8L    # 8.28040488338076E-262
    .end array-data

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
    :array_1
    .array-data 8
        0x7f9d513f2df1c73bL    # 5.1468393854031566E306
        -0x6b09015dbdf59969L
    .end array-data

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
    :array_2
    .array-data 8
        -0x3ca57c1390e16688L
        -0xe7500384e07aaa6L    # -8.790559614694006E238
    .end array-data
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0xe

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    new-array v2, v1, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 36
    .line 37
    new-array v1, v1, [J

    .line 38
    .line 39
    fill-array-data v1, :array_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    new-array v1, v1, [J

    .line 52
    .line 53
    fill-array-data v1, :array_2

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ge v0, v1, :cond_1

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 88
    .line 89
    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0xfdf6c4ba292e1dbL    # -1.2868023619415633E232
        0x93767a7a3d13d40L
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
    :array_1
    .array-data 8
        -0x4404e0e8d4bf757cL    # -9.189103769411606E-20
        0x65bef90ea9fcbfa7L    # 1.2852244779416007E182
    .end array-data

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
    :array_2
    .array-data 8
        -0x633e1a1dc1032783L    # -3.705071229679741E-170
        0x734a742151a2d602L    # 2.312021073629595E247
        -0x7a80e47e3cafec39L    # -3.347098325296978E-282
    .end array-data
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/zap;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    if-gez p2, :cond_0

    .line 31
    .line 32
    new-instance p1, Ljava/lang/Exception;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v0, v1, [J

    .line 40
    .line 41
    fill-array-data v0, :array_2

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    const/16 v1, 0xe

    .line 54
    .line 55
    new-array v1, v1, [J

    .line 56
    .line 57
    fill-array-data v1, :array_3

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/zak;->zae(I)V

    .line 82
    .line 83
    .line 84
    iget-object p2, v0, Lcom/google/android/gms/common/api/internal/zaj;->zac:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    invoke-interface {p2, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 8
        0x584a3990dfbd730L
        0x5d03bfb9a2ad823fL    # 1.1759029792217674E140
        0x9dd9c4ca20daffbL
    .end array-data

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
    :array_1
    .array-data 8
        -0x159111349ed2bfa2L    # -4.84915624740287E204
        0x17987eba7a16946cL
        -0xa2ddf8d8a8c98cL
        0x240397db33bd699L
        0x689ed51edc669b46L    # 9.002973449903784E195
        0x369c83cac6e594e1L    # 1.2486801093763664E-45
        -0x3cd0fe19d57c7f5L
        0x396299e0dec528f2L    # 2.8659513126735835E-32
        0x7fad906619d795f9L    # 1.0380293748368946E307
    .end array-data

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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 8
        0x3306c5d54346062eL    # 6.919696843306883E-63
        -0xe5be1b21896ab99L    # -2.620109824233692E239
        -0x1e7e54e3af039f43L    # -4.968038261945793E161
    .end array-data

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
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_3
    .array-data 8
        -0x7456ca10eeba7907L
        0x413b991e00ecd0adL    # 1808670.0036135123
        0x7816bba188f11b2cL    # 3.002421121403699E270
        -0x3a5625f1e60fd2c8L    # -4.000368832907764E27
        -0x3baa6017d19dc25eL    # -1.5956165447760148E21
        -0x6e1a325c79ba3856L
        -0x354befcc2d75e5b7L    # -7.506568263047761E51
        -0x71f57974789f4ffeL    # -4.972538453505267E-241
        -0x6dcf0789f8bf3a4aL    # -4.694822029465571E-221
        0x59066d767ea3da0eL    # 7.239204978404297E120
        -0x2861f843063653acL    # -1.1555187517514085E114
        0x2247bde271b31dc1L
        -0x4d3307c12fc6ad97L    # -5.5016765843836814E-64
        0x49bf23a6893f565bL    # 1.7777374731982628E47
    .end array-data
.end method

.method public final zac()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zak;->zai(I)Lcom/google/android/gms/common/api/internal/zaj;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method public final zad(ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6
    .param p3    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v3, 0x6

    .line 6
    new-array v3, v3, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p2, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const/16 v4, 0x36

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v5, 0x7

    .line 42
    new-array v5, v5, [J

    .line 43
    .line 44
    fill-array-data v5, :array_1

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zap;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/google/android/gms/common/api/internal/zam;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x31

    .line 86
    .line 87
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    const/4 v4, 0x5

    .line 93
    new-array v4, v4, [J

    .line 94
    .line 95
    fill-array-data v4, :array_2

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v4, v0, [J

    .line 107
    .line 108
    fill-array-data v4, :array_3

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 118
    .line 119
    new-array v0, v0, [J

    .line 120
    .line 121
    fill-array-data v0, :array_4

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 131
    .line 132
    new-array v3, v1, [J

    .line 133
    .line 134
    fill-array-data v3, :array_5

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaj;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaj;-><init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zap;->zaa:Z

    .line 157
    .line 158
    if-eqz p1, :cond_1

    .line 159
    .line 160
    if-nez v2, :cond_1

    .line 161
    .line 162
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 163
    .line 164
    new-array p3, v1, [J

    .line 165
    .line 166
    fill-array-data p3, :array_6

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array p3, v1, [J

    .line 178
    .line 179
    fill-array-data p3, :array_7

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 197
    .line 198
    .line 199
    :cond_1
    return-void

    .line 200
    nop

    .line 201
    :array_0
    .array-data 8
        -0x3b93cb77e55c6594L    # -4.162353110725161E21
        0x61d14b47b35f08b8L    # 1.556089955276345E163
        -0x54fb01e06b277fabL    # -1.874559095867718E-101
        -0x49261e09a3f65e74L    # -1.8134669637410594E-44
        0x1ae840e80cd61f23L    # 4.675927182644659E-179
        -0x399fdd0711176a92L    # -1.0227792259032437E31
    .end array-data

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
    :array_1
    .array-data 8
        0x393117ca4565d135L    # 3.2919786035963665E-33
        0x3e2eb22584ab30deL    # 3.5734713290430265E-9
        -0x686feab9d040801aL
        -0x7aff90e80e6d73cfL
        0x769d5d73947c7307L    # 2.311675638963013E263
        0xed3c65af64ba1e0L    # 3.036799258086646E-237
        0x7e1c898f6d8b4334L    # 2.9861338442011595E299
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
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
    :array_2
    .array-data 8
        -0x62798c65eb85e2d1L    # -1.903702669756353E-166
        0x307adaa185c46d8L
        0x3432fe90c5228d40L    # 3.0259819446139086E-57
        -0x1507e0d011f65763L    # -1.9360973850388248E207
        0x5f4d5efee0fe1acaL    # 1.201787580338474E151
    .end array-data

    .line 262
    .line 263
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
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_3
    .array-data 8
        0x238790f771c81574L
        0x10c8e2f3d8a9914L
    .end array-data

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
    :array_4
    .array-data 8
        0x44ce5120071109e0L    # 2.8633497717625598E23
        0x688e1252ff93e1b0L    # 4.390393384230956E195
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    :array_5
    .array-data 8
        -0x19da2a2d51eb08a7L    # -1.1597528718118475E184
        0x54b68c4964d2eb59L    # 1.2329529547499408E100
        0x71d8408a659946f7L    # 2.526772364080564E240
    .end array-data

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
    :array_6
    .array-data 8
        0xc0e27c4caad5360L
        -0x8ac482c5546f7aeL    # -6.358001959607978E266
        -0x73b2f70a045cd16L    # -5.630098271170128E273
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_7
    .array-data 8
        -0x37bcac10d93e3022L    # -1.3153865280368201E40
        -0xcc5752ff36231e9L
        0x4da12826d542766fL    # 9.034132031183473E65
    .end array-data
.end method

.method public final zae(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/common/api/internal/zaj;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zak;->zad:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/zaj;->zab:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
