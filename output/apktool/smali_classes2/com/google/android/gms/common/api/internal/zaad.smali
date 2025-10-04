.class public final Lcom/google/android/gms/common/api/internal/zaad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zaa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 25
    .line 26
    return-void
.end method

.method public static bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zab(Lcom/google/android/gms/common/api/internal/zaad;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    return-object p0
.end method

.method private final zah(ZLcom/google/android/gms/common/api/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 62
    .line 63
    invoke-virtual {v2, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 106
    .line 107
    new-instance v2, Lcom/google/android/gms/common/api/ApiException;

    .line 108
    .line 109
    invoke-direct {v2, p2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    return-void

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    throw p1
.end method


# virtual methods
.method public final zac(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/google/android/gms/common/api/internal/zaab;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/common/api/internal/zaab;-><init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zad(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TTResult;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaac;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zaac;-><init>(Lcom/google/android/gms/common/api/internal/zaad;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final zae(ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x7

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v3, v0, [J

    .line 28
    .line 29
    fill-array-data v3, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v3, 0x3

    .line 44
    if-ne p1, v3, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v3, v0, [J

    .line 49
    .line 50
    fill-array-data v3, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 64
    .line 65
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v0, v0, [J

    .line 68
    .line 69
    fill-array-data v0, :array_3

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 86
    .line 87
    const/16 p2, 0x14

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        0x234785ddd0eb1485L    # 9.87650216690895E-139
        -0x3d8babe2daaa4c47L    # -1.3969686746512327E12
        -0x50528b65328e71cbL    # -4.96840920817521E-79
        0x1043e3081abd42afL    # 2.561882210934905E-230
        0x43fb7f7c5fe36727L    # 3.170302579752373E19
        -0x6d3b3e00404d08b8L
        -0x5c05dea5e90f1d1bL    # -2.24691186942183E-135
    .end array-data

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
    :array_1
    .array-data 8
        -0x2e8fcfa6ea87cfb1L    # -1.9655995866163714E84
        -0x3c6bc1c6946e8289L    # -3.6466661586995552E17
        0x4a5ccca64330aa86L    # 1.683615509571987E50
        -0x421e55e2efd7c16L
        0x3cd052d9935d70d0L    # 9.061436290683343E-16
    .end array-data

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
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 8
        0x6e737e37d02e7073L    # 1.1273956277163785E224
        -0x23290880252b04c6L    # -1.7093791469108843E139
        -0x580a51235357f917L    # -3.439395734166103E-116
        -0x5fc31554752a61beL
        -0x56740d0254b3d0ceL    # -1.487581244468788E-108
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
    .line 170
    .line 171
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
    :array_3
    .array-data 8
        0x3e6f47799eef61fcL    # 5.826204928894728E-8
        -0x509dfb7c0ae57094L    # -1.899455116492587E-80
        0x11bac5621e9bc45aL
        -0x314781a413704a41L    # -1.690485463372782E71
        0x14e974f38c8a3e52L
    .end array-data
.end method

.method public final zaf()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaad;->zah(ZLcom/google/android/gms/common/api/Status;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zaa:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaad;->zab:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method
