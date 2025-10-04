.class abstract Lcom/google/android/gms/internal/ads/zzgds;
.super Lcom/google/android/gms/internal/ads/zzgdb$zzi;
.source "SourceFile"


# static fields
.field private static final zzba:Lcom/google/android/gms/internal/ads/zzgdo;

.field private static final zzbb:Lcom/google/android/gms/internal/ads/zzgex;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgex;

    .line 3
    .line 4
    const-class v2, Lcom/google/android/gms/internal/ads/zzgds;

    .line 5
    .line 6
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgex;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lcom/google/android/gms/internal/ads/zzgds;->zzbb:Lcom/google/android/gms/internal/ads/zzgex;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgdp;

    .line 13
    .line 14
    const-class v4, Ljava/util/Set;

    .line 15
    .line 16
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v6, v0, [J

    .line 19
    .line 20
    fill-array-data v6, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzgdp;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    move-object v9, v1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgdr;

    .line 59
    .line 60
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzgdr;-><init>(Lcom/google/android/gms/internal/ads/zzgdq;)V

    .line 61
    .line 62
    .line 63
    move-object v9, v0

    .line 64
    :goto_0
    sput-object v3, Lcom/google/android/gms/internal/ads/zzgds;->zzba:Lcom/google/android/gms/internal/ads/zzgdo;

    .line 65
    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgds;->zzbb:Lcom/google/android/gms/internal/ads/zzgex;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zza()Ljava/util/logging/Logger;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 75
    .line 76
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    new-array v1, v1, [J

    .line 81
    .line 82
    fill-array-data v1, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    new-array v1, v1, [J

    .line 96
    .line 97
    fill-array-data v1, :array_3

    .line 98
    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    const/4 v1, 0x5

    .line 110
    new-array v1, v1, [J

    .line 111
    .line 112
    fill-array-data v1, :array_4

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        -0x251707282a2985beL    # -8.654903486862332E129
        -0x7b75aa2318198c7eL
        0x25438246304ed7c2L    # 3.518068440676705E-129
    .end array-data

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
        -0x580f86a1a342c7a7L    # -2.61314360837084E-116
        0x32509404ea3d7882L    # 2.459678455841326E-66
        0x6f413857c7c0d9feL    # 8.15872203886221E227
    .end array-data

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
    .line 158
    .line 159
    :array_2
    .array-data 8
        0x5b854c752683f15dL    # 7.558931999268169E132
        -0x435206f9d1d3d23bL    # -2.079777361082711E-16
        -0x4120f2eab008e394L    # -7.4031606795483275E-6
        -0x71a477afc9c6abd8L    # -1.651614537566781E-239
        0x849906abef1a2cL
        0x30c0a4d669bbbb81L    # 7.359462255025002E-74
        0x102b8c36f08d981cL    # 8.871945985462898E-231
        0x684d86b930ff5e9L
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
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_3
    .array-data 8
        -0xdb98058978831ddL    # -3.000426217631023E242
        0xbad9b4022091d98L
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
    :array_4
    .array-data 8
        0x566dff7be2d4ec6aL    # 2.201610720600856E108
        -0x13c8c6ec89cbb883L    # -1.9544942389298407E213
        -0x4359d14c6f1ca5fdL    # -1.539215106708226E-16
        -0x3d6515c6a8f979adL    # -7.398321668513581E12
        0x60494b85a93cc74L
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdb$zzi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgds;->remaining:I

    return-void
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzgds;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzgds;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgds;->remaining:I

    return-void
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzgds;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzgds;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgds;->remaining:I

    return p0
.end method


# virtual methods
.method public final zzA()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgds;->zzba:Lcom/google/android/gms/internal/ads/zzgdo;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgdo;->zza(Lcom/google/android/gms/internal/ads/zzgds;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzC()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgds;->zze(Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgds;->zzba:Lcom/google/android/gms/internal/ads/zzgdo;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgdo;->zzb(Lcom/google/android/gms/internal/ads/zzgds;Ljava/util/Set;Ljava/util/Set;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    .line 24
    .line 25
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    check-cast v0, Ljava/util/Set;

    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public final zzF()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgds;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method public abstract zze(Ljava/util/Set;)V
.end method
