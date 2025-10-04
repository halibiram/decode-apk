.class public final Lcom/google/android/play/core/appupdate/internal/zzi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/Set;

.field private static final zzb:Ljava/util/Set;

.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Lcom/google/android/play/core/appupdate/internal/zzm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

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
    move-result-object v0

    .line 16
    new-instance v2, Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    new-array v5, v4, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Lcom/google/android/play/core/appupdate/internal/zzi;->zza:Ljava/util/Set;

    .line 45
    .line 46
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v2, v4, [J

    .line 49
    .line 50
    fill-array-data v2, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v2, Ljava/util/HashSet;

    .line 61
    .line 62
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    new-array v4, v4, [J

    .line 65
    .line 66
    fill-array-data v4, :array_3

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    sput-object v2, Lcom/google/android/play/core/appupdate/internal/zzi;->zzb:Ljava/util/Set;

    .line 88
    .line 89
    new-instance v0, Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/google/android/play/core/appupdate/internal/zzi;->zzc:Ljava/util/Map;

    .line 95
    .line 96
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 97
    .line 98
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 99
    .line 100
    new-array v1, v1, [J

    .line 101
    .line 102
    fill-array-data v1, :array_4

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/google/android/play/core/appupdate/internal/zzi;->zzd:Lcom/google/android/play/core/appupdate/internal/zzm;

    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :array_0
    .array-data 8
        0x7cccc9dd79f49336L    # 1.4364330006367582E293
        0x431348c81fc47f8aL    # 1.3570122302832345E15
        0x4065f6ff91e87de1L    # 175.718697504125
    .end array-data

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
    :array_1
    .array-data 8
        0x46ad336dd4da25e2L    # 2.9613225299132246E32
        0x1656a1b20a4aac95L
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
        -0x350d2df0ff58d0f6L    # -1.1266560860936977E53
        -0x381f20a335c73751L    # -1.7941929708286445E38
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
        -0x360766b81db2b56bL    # -2.2469448719040195E48
        0x3d8f96a5d0606e4aL    # 3.591192992236469E-12
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
        -0x470586134a7dcb84L    # -3.1869648520113574E-34
        -0x471c242a870c209aL    # -1.195203600549026E-34
        -0x3be574b18a6e22a9L    # -1.2241335895131198E20
    .end array-data
.end method

.method public static declared-synchronized zza(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    const-class p0, Lcom/google/android/play/core/appupdate/internal/zzi;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/play/core/appupdate/internal/zzi;->zzc:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [J

    .line 10
    .line 11
    fill-array-data v2, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    new-array v4, v4, [J

    .line 36
    .line 37
    fill-array-data v4, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/16 v4, 0x2afc

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v0

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        -0x6906fd3c30cd59e4L
        -0x7c62038d177baa5L
        0x45bb113278e3d2a9L    # 8.376885352459567E27
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x7d36acfe1285dd16L
        0x4330aa35dee05e3bL    # 4.690747976605243E15
    .end array-data
.end method
