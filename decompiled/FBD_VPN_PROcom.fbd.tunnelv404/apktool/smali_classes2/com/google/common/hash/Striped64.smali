.class abstract Lcom/google/common/hash/Striped64;
.super Ljava/lang/Number;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/hash/Striped64$Cell;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/google/common/hash/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    new-instance v1, Ljava/util/Random;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/google/common/hash/Striped64;->rng:Ljava/util/Random;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sput v1, Lcom/google/common/hash/Striped64;->NCPU:I

    .line 25
    .line 26
    :try_start_0
    invoke-static {}, Lcom/google/common/hash/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sput-object v1, Lcom/google/common/hash/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 31
    .line 32
    const-class v2, Lcom/google/common/hash/Striped64;

    .line 33
    .line 34
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v4, v0, [J

    .line 37
    .line 38
    fill-array-data v4, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    sput-wide v3, Lcom/google/common/hash/Striped64;->baseOffset:J

    .line 57
    .line 58
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v0, v0, [J

    .line 61
    .line 62
    fill-array-data v0, :array_1

    .line 63
    .line 64
    .line 65
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    sput-wide v0, Lcom/google/common/hash/Striped64;->busyOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/Error;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    nop

    .line 91
    :array_0
    .array-data 8
        -0x36365dd62195265aL    # -2.9268227456238974E47
        -0x44bf50628f682f47L    # -2.7604664935139367E-23
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
    :array_1
    .array-data 8
        -0x15926889076d78b7L    # -4.6389147172869804E204
        -0x14f04bbadca281d3L    # -5.089364479362922E207
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/hash/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/hash/Striped64$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/common/hash/Striped64$1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    new-array v3, v3, [J

    .line 25
    .line 26
    fill-array-data v3, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x651ffd95b988dc3fL    # 1.2963413196074462E179
        0x7e9cd1ce7f290212L    # 7.720100882670725E301
        0x13fb886ceda0875dL
        -0x7be45d19fc735c2L
        -0x15e7bfad63c5a215L    # -1.1880409548564201E203
    .end array-data
.end method


# virtual methods
.method public final casBase(JJ)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/google/common/hash/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lcom/google/common/hash/Striped64;->baseOffset:J

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move-wide v4, p1

    .line 7
    move-wide v6, p3

    .line 8
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final casBusy()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/google/common/hash/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lcom/google/common/hash/Striped64;->busyOffset:J

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    move-object v1, p0

    .line 8
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public abstract fn(JJ)J
.end method

.method public final internalReset(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/google/common/hash/Striped64;->base:J

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iput-wide p1, v3, Lcom/google/common/hash/Striped64$Cell;->value:J

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public final retryUpdate(J[IZ)V
    .locals 16
    .param p3    # [I
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez p3, :cond_1

    .line 8
    .line 9
    sget-object v5, Lcom/google/common/hash/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    new-array v6, v0, [I

    .line 12
    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v5, Lcom/google/common/hash/Striped64;->rng:Ljava/util/Random;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    :cond_0
    aput v5, v6, v4

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    aget v5, p3, v4

    .line 29
    .line 30
    move-object/from16 v6, p3

    .line 31
    .line 32
    :goto_0
    move v7, v5

    .line 33
    const/4 v8, 0x0

    .line 34
    move/from16 v5, p4

    .line 35
    .line 36
    :cond_2
    :goto_1
    iget-object v9, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 37
    .line 38
    if-eqz v9, :cond_d

    .line 39
    .line 40
    array-length v10, v9

    .line 41
    if-lez v10, :cond_d

    .line 42
    .line 43
    add-int/lit8 v11, v10, -0x1

    .line 44
    .line 45
    and-int/2addr v11, v7

    .line 46
    aget-object v11, v9, v11

    .line 47
    .line 48
    if-nez v11, :cond_5

    .line 49
    .line 50
    iget v9, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 51
    .line 52
    if-nez v9, :cond_4

    .line 53
    .line 54
    new-instance v9, Lcom/google/common/hash/Striped64$Cell;

    .line 55
    .line 56
    invoke-direct {v9, v2, v3}, Lcom/google/common/hash/Striped64$Cell;-><init>(J)V

    .line 57
    .line 58
    .line 59
    iget v10, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 60
    .line 61
    if-nez v10, :cond_4

    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/Striped64;->casBusy()Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_4

    .line 68
    .line 69
    :try_start_0
    iget-object v10, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 70
    .line 71
    if-eqz v10, :cond_3

    .line 72
    .line 73
    array-length v11, v10

    .line 74
    if-lez v11, :cond_3

    .line 75
    .line 76
    add-int/lit8 v11, v11, -0x1

    .line 77
    .line 78
    and-int/2addr v11, v7

    .line 79
    aget-object v12, v10, v11

    .line 80
    .line 81
    if-nez v12, :cond_3

    .line 82
    .line 83
    aput-object v9, v10, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    const/4 v9, 0x1

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const/4 v9, 0x0

    .line 90
    :goto_2
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 91
    .line 92
    if-eqz v9, :cond_2

    .line 93
    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :goto_3
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 97
    .line 98
    throw v0

    .line 99
    :cond_4
    :goto_4
    const/4 v8, 0x0

    .line 100
    goto :goto_7

    .line 101
    :cond_5
    if-nez v5, :cond_6

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    goto :goto_7

    .line 105
    :cond_6
    iget-wide v12, v11, Lcom/google/common/hash/Striped64$Cell;->value:J

    .line 106
    .line 107
    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/hash/Striped64;->fn(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v14

    .line 111
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/common/hash/Striped64$Cell;->cas(JJ)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eqz v11, :cond_7

    .line 116
    .line 117
    goto/16 :goto_a

    .line 118
    .line 119
    :cond_7
    sget v11, Lcom/google/common/hash/Striped64;->NCPU:I

    .line 120
    .line 121
    if-ge v10, v11, :cond_4

    .line 122
    .line 123
    iget-object v11, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 124
    .line 125
    if-eq v11, v9, :cond_8

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_8
    if-nez v8, :cond_9

    .line 129
    .line 130
    const/4 v8, 0x1

    .line 131
    goto :goto_7

    .line 132
    :cond_9
    iget v11, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 133
    .line 134
    if-nez v11, :cond_c

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/Striped64;->casBusy()Z

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    if-eqz v11, :cond_c

    .line 141
    .line 142
    :try_start_1
    iget-object v8, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 143
    .line 144
    if-ne v8, v9, :cond_b

    .line 145
    .line 146
    shl-int/lit8 v8, v10, 0x1

    .line 147
    .line 148
    new-array v8, v8, [Lcom/google/common/hash/Striped64$Cell;

    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    :goto_5
    if-ge v11, v10, :cond_a

    .line 152
    .line 153
    aget-object v12, v9, v11

    .line 154
    .line 155
    aput-object v12, v8, v11

    .line 156
    .line 157
    add-int/lit8 v11, v11, 0x1

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto :goto_6

    .line 162
    :cond_a
    iput-object v8, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    .line 164
    :cond_b
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :goto_6
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 170
    .line 171
    throw v0

    .line 172
    :cond_c
    :goto_7
    shl-int/lit8 v9, v7, 0xd

    .line 173
    .line 174
    xor-int/2addr v7, v9

    .line 175
    ushr-int/lit8 v9, v7, 0x11

    .line 176
    .line 177
    xor-int/2addr v7, v9

    .line 178
    shl-int/lit8 v9, v7, 0x5

    .line 179
    .line 180
    xor-int/2addr v7, v9

    .line 181
    aput v7, v6, v4

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :cond_d
    iget v10, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 186
    .line 187
    if-nez v10, :cond_f

    .line 188
    .line 189
    iget-object v10, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 190
    .line 191
    if-ne v10, v9, :cond_f

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/hash/Striped64;->casBusy()Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_f

    .line 198
    .line 199
    :try_start_2
    iget-object v10, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;

    .line 200
    .line 201
    if-ne v10, v9, :cond_e

    .line 202
    .line 203
    const/4 v9, 0x2

    .line 204
    new-array v9, v9, [Lcom/google/common/hash/Striped64$Cell;

    .line 205
    .line 206
    and-int/lit8 v10, v7, 0x1

    .line 207
    .line 208
    new-instance v11, Lcom/google/common/hash/Striped64$Cell;

    .line 209
    .line 210
    invoke-direct {v11, v2, v3}, Lcom/google/common/hash/Striped64$Cell;-><init>(J)V

    .line 211
    .line 212
    .line 213
    aput-object v11, v9, v10

    .line 214
    .line 215
    iput-object v9, v1, Lcom/google/common/hash/Striped64;->cells:[Lcom/google/common/hash/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    .line 217
    const/4 v9, 0x1

    .line 218
    goto :goto_8

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    goto :goto_9

    .line 221
    :cond_e
    const/4 v9, 0x0

    .line 222
    :goto_8
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 223
    .line 224
    if-eqz v9, :cond_2

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :goto_9
    iput v4, v1, Lcom/google/common/hash/Striped64;->busy:I

    .line 228
    .line 229
    throw v0

    .line 230
    :cond_f
    iget-wide v9, v1, Lcom/google/common/hash/Striped64;->base:J

    .line 231
    .line 232
    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/google/common/hash/Striped64;->fn(JJ)J

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/google/common/hash/Striped64;->casBase(JJ)Z

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-eqz v9, :cond_2

    .line 241
    .line 242
    :goto_a
    return-void
.end method
