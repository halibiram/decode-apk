.class public final Lcom/google/android/play/core/appupdate/internal/zzad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private volatile zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

.field private volatile zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/play/core/appupdate/internal/zzad;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/play/core/appupdate/internal/zzad;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    return-void
.end method

.method public static zzb(Lcom/google/android/play/core/appupdate/internal/zzaf;)Lcom/google/android/play/core/appupdate/internal/zzaf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzad;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/internal/zzad;-><init>(Lcom/google/android/play/core/appupdate/internal/zzaf;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/play/core/appupdate/internal/zzad;->zza:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzc:Ljava/lang/Object;

    .line 19
    .line 20
    if-eq v2, v1, :cond_1

    .line 21
    .line 22
    if-ne v2, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    new-array v5, v5, [J

    .line 37
    .line 38
    fill-array-data v5, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    new-array v4, v4, [J

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    new-array v2, v2, [J

    .line 79
    .line 80
    fill-array-data v2, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzc:Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzad;->zzb:Lcom/google/android/play/core/appupdate/internal/zzaf;

    .line 107
    .line 108
    :cond_2
    monitor-exit p0

    .line 109
    goto :goto_2

    .line 110
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw v0

    .line 112
    :cond_3
    :goto_2
    return-object v0

    .line 113
    :array_0
    .array-data 8
        0x5b705b86ec52b6c7L    # 2.9026573317089656E132
        0x4b0b045db40ef870L    # 3.2346496881153465E53
        0x7b43f62708703afdL    # 5.936627446501229E285
        0x3f5a5db7bc0418eaL    # 0.001609258106385842
        0x59efe62690f724a5L    # 1.6869633215281342E125
        -0x262a55fd978e2d14L    # -5.728472845209966E124
        -0x347a913be58e2d88L    # -6.569097244117481E55
        0x74cec359e67b8715L    # 4.5108285114328497E254
        0x511e94b00f7c9398L    # 5.801600697430806E82
        0x4ee7542c6b4945b1L    # 1.288075834976383E72
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
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 8
        0x31bdddc378c823a2L    # 4.3273488204780877E-69
        -0x2eab5bcc2f283b43L    # -6.265536885541125E83
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
    :array_2
    .array-data 8
        0x1af44c6d1d77ecd3L    # 7.826856750871742E-179
        -0x3292b34779e5a3a2L    # -9.642554885485633E64
        0x632663faa0be04c6L    # 4.225053402998451E169
        -0x76f17aa5887222bbL    # -4.732725660410951E-265
        0x58b4d19cbd5e76d8L    # 2.099974154718497E119
        -0x158700a04428c8L
        -0x62924dcdfd474642L
    .end array-data
.end method
